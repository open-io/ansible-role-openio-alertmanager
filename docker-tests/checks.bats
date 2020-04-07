#! /usr/bin/env bats

# Variable SUT_IP should be set outside this script and should contain the IP
# address of the System Under Test.

# Tests

@test 'Alertmanager is up and running on port 6901' {
  run bash -c "curl -qs http://${SUT_IP}:6901/-/ready"
  echo "output: "$output
  echo "status: "$status
  [[ "${status}" -eq "0"  && "${output}" == "OK" ]]
}
