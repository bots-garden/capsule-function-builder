# Manual release process

- Change the version number (`vN.N.N`) in:
  - `./docker/.env`
  - build and push the image
  - `/README.md`
  - `update-for-release.sh`
  - `install-capsule-builder.sh`
- Update and run `update-for-release.sh`
- On GitHub: create a release + a tag (`vN.N.N`)
