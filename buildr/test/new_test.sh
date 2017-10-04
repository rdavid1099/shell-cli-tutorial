#!/usr/bin/env bats

load test_helper

setup() {
  source ./lib/new/new.sh
  rm -rf testing && mkdir testing
  cd testing
}

teardown() {
  cd ..
  rm -rf testing
}

@test "it creates the base directories of a Ruby workspace" {
  create_base_directories testrb

  [ -d "./testrb/" ]
  [ -d "./testrb/lib/" ]
  [ -d "./testrb/config/" ]
  [ -d "./testrb/test/" ]
}