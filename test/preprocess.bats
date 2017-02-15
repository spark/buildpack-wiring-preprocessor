#!/usr/bin/env bats

@test "Process file" {
  # Copy test data to input
  cp /test/fixtures/script/input.ino /input
  # Run buildpack
  /bin/run
  # Compare expected output
  diff /output/input.cpp /test/fixtures/script/output.cpp
  # Assert
  [ "$?" -eq 0 ]
}

@test "Process single if else" {
  # Copy test data to input
  cp /test/fixtures/ifelse/input.ino /input
  # Run buildpack
  /bin/run
  # Compare expected output
  diff /output/input.cpp /test/fixtures/ifelse/output.cpp
  # Assert
  [ "$?" -eq 0 ]
}

@test "Process functions with custom types" {
  # Copy test data to input
  cp /test/fixtures/types/input.ino /input
  # Run buildpack
  /bin/run
  # Compare expected output
  diff /output/input.cpp /test/fixtures/types/output.cpp
  # Assert
  [ "$?" -eq 0 ]
}


@test "Process file with other includes" {
  # Copy test data to input
  cp /test/fixtures/include/input.ino /input
  # Run buildpack
  /bin/run
  # Compare expected output
  diff /output/input.cpp /test/fixtures/include/output.cpp
  # Assert
  [ "$?" -eq 0 ]
}

@test "Process long file" {
  # Copy test data to input
  cp /test/fixtures/long/input.ino /input
  # Run buildpack
  /bin/run
  # Compare expected output
  diff /output/input.cpp /test/fixtures/long/output.cpp
  # Assert
  [ "$?" -eq 0 ]
}
