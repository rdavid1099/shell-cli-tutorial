#!/bin/bash

execute_new_command() {
  if [ "$1" = "" ]; then
    echo "Error: A project name must be given after the command 'new'"
    exit 1
  else
    echo "Building workspace for project '${1}'"
  fi
}
