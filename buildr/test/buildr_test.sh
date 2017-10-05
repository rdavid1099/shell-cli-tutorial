#!/usr/bin/env bats

load test_helper

setup() {
  rm -rf testing && mkdir testing
  cd testing
}

teardown() {
  cd ..
  rm -rf testing
}

@test "it executes new command" {
  run $BUILDR new

  [ "$status" -eq 1 ]
  [ "${lines[0]}" = "Error: A project name must be given after the command 'new'" ]
}

@test "it executes new command with project name" {
  run $BUILDR new testrb

  [ "$status" -eq 0 ]
  [ "${lines[0]}" = "Building workspace for project 'testrb'" ]
}

@test "it generates a complete workspace when new and a name is passed" {
  run $BUILDR new testrb

  [ "$status" -eq 0 ]
  [ -d "./testrb/config" ]
  [ -d "./testrb/lib" ]
  [ -d "./testrb/test" ]
  [ -e "./testrb/.gitignore" ]
  [ -e "./testrb/Gemfile" ]
  [ -e "./testrb/Rakefile" ]
  [ -e "./testrb/README.md" ]
  [ -e "./testrb/test/test_helper.rb" ]
}