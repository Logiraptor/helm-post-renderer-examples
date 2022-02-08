#!/bin/bash

# yq is used to convert yaml to json and back again
yq eval-all "[.]" -o json - | jsonnet main.jsonnet | yq '.[] | splitDoc' -P