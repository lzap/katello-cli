#!/bin/bash

header "Environment"

ENV="tstenv_$RAND"
ENV2="tstenv2_$RAND"
test "environment create" environment create --org="$TEST_ORG" --name="$ENV" --prior="Locker"
test "environment update" environment update --org="$TEST_ORG" --name="$ENV" --new_name="$ENV2"
test "environment list" environment list --org="$TEST_ORG"
test "environment info" environment info --org="$TEST_ORG" --name="$ENV2"
test "environment delete" environment delete --org="$TEST_ORG" --name="$ENV2"
