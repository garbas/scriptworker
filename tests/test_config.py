#!/usr/bin/env python
# coding=utf-8
"""Test scriptworker.config
"""
from copy import deepcopy
from frozendict import frozendict
import json
import mock
import os
import pytest
import scriptworker.config as config


@pytest.fixture(scope='function')
def test_config():
    return deepcopy(config.DEFAULT_CONFIG)


class TestConfig(object):
    def test_nontext_to_unicode(self):
        d = {'a': [1, 2, 3]}
        config.list_to_tuple(d)
        assert d == {'a': (1, 2, 3)}

    def test_check_config_invalid_key(self, test_config):
        test_config['invalid_key_for_testing'] = 1
        messages = config.check_config(test_config, "test_path")
        assert "Unknown key" in "\n".join(messages)

    def test_check_config_invalid_type(self, test_config):
        test_config['log_dir'] = tuple(test_config['log_dir'])
        messages = config.check_config(test_config, "test_path")
        assert "log_dir: type" in "\n".join(messages)

    def test_check_config_good(self, test_config):
        for key, value in test_config.items():
            if value == "...":
                test_config[key] = "filled_in"
        messages = config.check_config(test_config, "test_path")
        assert messages == []

    def test_create_config_missing_file(self):
        with pytest.raises(SystemExit):
            config.create_config("this_file_does_not_exist.json")

    def test_create_config_bad_config(self):
        path = os.path.join(os.path.dirname(__file__), "data", "bad.json")
        with pytest.raises(SystemExit):
            config.create_config(path)

    def test_create_config_good(self, test_config):
        path = os.path.join(os.path.dirname(__file__), "data", "good.json")
        with open(path, "r") as fh:
            contents = json.load(fh)
        test_config.update(contents)
        test_creds = test_config['credentials']
        del(test_config['credentials'])
        generated_config, generated_creds = config.create_config(path)
        assert generated_config == test_config
        assert generated_creds == test_creds
        assert isinstance(generated_config, frozendict)
        assert isinstance(generated_creds, frozendict)

    def test_bad_worker_creds(self):
        path = os.path.join(os.path.dirname(__file__), "data", "good.json")
        with mock.patch.object(config, 'CREDS_FILES', new=(path, )):
            assert config.read_worker_creds(key="nonexistent_key") is None

    def test_no_creds_in_config(self):
        fake_creds = {"foo": "bar"}

        def fake_read(*args, **kwargs):
            return deepcopy(fake_creds)

        path = os.path.join(os.path.dirname(__file__), "data", "no_creds.json")
        with mock.patch.object(config, 'read_worker_creds', new=fake_read):
            _, creds = config.create_config(path=path)
        assert creds == fake_creds

    def test_missing_creds(self):
        with mock.patch.object(config, 'CREDS_FILES', new=['this_file_does_not_exist']):
            assert config.read_worker_creds() is None
