#!/bin/sh

set -e

if [ -z "${IMPORT}" ]; then
  IMPORT="${GITHUB_REPOSITORY}"
fi
WORKDIR="${GOPATH}/src/github.com/${IMPORT}"

# PROJECT_PATH specifies the subdirectory in the working directory that the Go project is
if [ -z "${PROJECT_PATH}" ]; then
  PROJECT_PATH="."
fi

# Go can only find dependencies if they're under $GOPATH/src.
# GitHub Actions mounts your repository outside of $GOPATH.
# So symlink the repository into $GOPATH, and then cd to it.
mkdir -p "$(dirname "${WORKDIR}")"
ln -s "${PWD}" "${WORKDIR}"
cd "${WORKDIR}/${PROJECT_PATH}"

sh -c "$*"
