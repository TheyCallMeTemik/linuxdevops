#!/bin/bash
if ! docker ps -q -f name=linuxsis; then
  docker start linuxsis
fi
