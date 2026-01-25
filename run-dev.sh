#!/bin/bash

# Jekyll development server with hot reload and additional options
bundle exec jekyll serve \
  --config _config.yml,_config_dev.yml \
  --livereload \
  --watch \
  --incremental \
  --open-url \
  --host=0.0.0.0 \
  --port=4000
