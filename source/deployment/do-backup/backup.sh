#!/bin/bash
set -xeuo pipefail

rclone sync -P local:/main/photos/originals/ onedrive:/originals/
rclone --transfers 32 sync -P local:/main/photos/data/ onedrive:/data/

