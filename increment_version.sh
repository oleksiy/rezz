#!/usr/bin/env bash
date_tag=$(date +"%Y-%m-%d".1)
# For mac
# sed -i '' "s/0.0.1-SNAPSHOT/$date_tag/" pom.xml
# For everywhere else
sed -i "s/0.0.1-SNAPSHOT/$date_tag/" pom.xml