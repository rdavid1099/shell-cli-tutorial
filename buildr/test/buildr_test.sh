#!/usr/bin/env bats

load test_helper

setup() {
  mkdir testing
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