# OrangeFox Recovery Project for the Samsung Galaxy A20

### How to build ###

```bash
# Create dirs
$ mkdir ofox; cd ofox

# Init repo
$ repo init --depth=1 -u https://gitlab.com/OrangeFox/Manifest.git -b fox_9.0

# Clone a20 repo
$ git clone https://github.com/a2XX-dev/android_device_samsung_a20 -b fox-9.0-new device/samsung/a20

# Sync
$ repo sync --no-repo-verify -c --force-sync --no-clone-bundle --no-tags --optimized-fetch --prune -j`nproc`

# Build
$ source build/envsetup.sh; lunch omni_a20-eng; mka recoveryimage
```

## Credits
* Astrako: For build_ofox.sh file
