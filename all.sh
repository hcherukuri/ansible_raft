#!/bin/bash
set -eo pipefail
rm -rf downstream upstream
mkdir -p downstream upstream
for play in $(ls -1 playbooks/*.yml)
do
  ansible-playbook "${play}" &
done
