#!/usr/bin/env bash
date_tag=$(date +"%Y-%m-%d".1)
sed -i '' "s/0.0.1-SNAPSHOT/$date_tag/" pom.xml