#!/bin/bash

# To run, type: ". /apps/client/deploy.sh"
pwd
git pull
npm run build
pm2 restart index
