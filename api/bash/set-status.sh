#!/usr/bin/env bash

. plumbing.sh

# $1 = username/repo
# $2 = ref
# $3 = status info (in JSON format)
postStatus()
{
  callAPI "repos/$1/statuses/$2" -d "$3"
}

postStatus "$@"
