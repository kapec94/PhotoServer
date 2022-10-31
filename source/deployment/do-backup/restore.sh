#!/bin/bash
set -xeuo pipefail

rclone sync -P onedrive:/originals/ local:/main/photos/originals/ 
rclone --transfers 32 sync -P onedrive:/data/ local:/main/photos/data/
