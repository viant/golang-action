#!/bin/sh

# Set go defaults here
GO111MODULE=auto

# Get to the github workspace
cd /github/workspace

# Execute
sh -c "$*"
