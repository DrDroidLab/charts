#!/bin/bash
# This has been picked from https://github.com/open-telemetry/opentelemetry-python/blob/e4a4410dc046f011194eff78e801fb230961eec8/scripts/proto_codegen.sh
# This doesn't generate the grpc stubs
set -ex

repo_root="$(git rev-parse --show-toplevel)"

cd "$repo_root"/

echo "Package agent charts for version $1"
helm package agent --app-version $1 --version $1

mv "drdroid-agent-$1.tgz" docs

helm repo index docs --url https://drdroidlab.github.io/




