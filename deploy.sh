#!/bin/bash

# Exit immediately if any command fails
set -e

# 1️⃣ Install dependencies
npm install

# 2️⃣ Build React app
npm run build

# 3️⃣ Deploy build folder to HTML5 repo
# Replace 'html5-apps-repo' with your actual HTML5 repo name
cf html5-deploy --source build/ --target-id html5-apps-repo
