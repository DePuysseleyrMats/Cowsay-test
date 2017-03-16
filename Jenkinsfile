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

  stage 'rspec testing'
  sh '''#!/bin/bash
  source ~/.rvm/scripts/rvm
  bundle exec rake test
  '''
  
  stage 'beaker testing'
  sh '''#!/bin/bash
  source ~/.rvm/scripts/rvm
  bundle exec rake beaker
  '''



}