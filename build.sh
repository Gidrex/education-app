#!/bin/sh
cd flutter_app
nix run ~/Work/education-app#flutter build apk --release
