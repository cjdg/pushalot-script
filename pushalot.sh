#!/bin/bash

#
#	Small Script for working with pushalot service
#
#

AUTHTOKEN="XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX"  # REQUIRED 32 char string
TITLE=$(hostname)				# OPTIONAL up to 250 char
BODY=$1					# REQUIRED 32768 chars

curl https://pushalot.com/api/sendmessage -F "AuthorizationToken=$AUTHTOKEN" -F "Body=$BODY" -F "Title=$TITLE"
