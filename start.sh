#!/bin/bash

printenv JSONCREDS > /keyfile.json
export GOOGLE_APPLICATION_CREDENTIALS="/keyfile.json"
/bin/bash
