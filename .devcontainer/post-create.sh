#!/bin/sh
set -x
npm install
bundle install || bundler _2.1.4_ install
