#!/bin/bash
set -ex

if [ -z "$1" ]
then
      echo "no version defined. please define a version"
      exit 1
else
      echo "Version defined as $1"
fi

repo_root="$(git rev-parse --show-toplevel)"
ver=$1
cd "$repo_root"/

echo "Package agent charts for version $1"
helm package agent --app-version $ver --version $ver

mv "drdroid-agent-$ver.tgz" docs

echo "Reindexing charts repo"
helm repo index docs --url https://drdroidlab.github.io/charts
