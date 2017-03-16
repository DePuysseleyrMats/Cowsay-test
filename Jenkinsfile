node {
  deleteDir()
  checkout scm
  echo 'beginnning workflow...'

  stage 'prepare gems'
  sh '''#!/bin/bash
  source ~/.rvm/scripts/rvm
  gem update bundler
  gem --version
  gem update --system
  bundle install --path=.bundle/gems/ --without system_tests
  '''

  stage 'syntax testing'
  sh '''#!/bin/bash
  source ~/.rvm/scripts/rvm
  bundle exec puppet parser validate manifests/
  '''

  stage 'lint testing'
  sh '''#!/bin/bash
  source ~/.rvm/scripts/rvm
  bundle exec bundle exec puppet-lint --no-autoloader_layout-check manifests/*.pp
  '''

  stage 'rspec testing'
  sh '''#!/bin/bash
  source ~/.rvm/scripts/rvm
  bundle exec rake test
  '''


}
