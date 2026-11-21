#!/usr/bin/env bash
rm -rf bin
mkdir bin

odin build . -out:bin/main

