#!/bin/bash
set -e
cd
ls -1d .dot_files/files/.* | while read f; do
  [ "$f" == '.dot_files/files/.' ] ||
  [ "$f" == '.dot_files/files/..' ] ||
  [ "$f" == '.dot_files/files/.git' ] ||
  ln -vsf "$f" .
done