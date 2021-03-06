#!/bin/bash
set -e

polytest () {
  printf "=====================================================\n\n"
  printf "          Testing polyglot-$1 started. \n\n"
  printf "=====================================================\n\n"
  cd $1
  mvn clean install -U
  printf "=====================================================\n\n"
  printf "          Testing polyglot-$1 completed. \n\n"
  printf "=====================================================\n\n"
  cd ..
}

polytest atom
polytest groovy
polytest ruby
polytest scala
polytest yaml
polytest java
polytest kotlin


