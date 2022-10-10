# Capsule Function Builder (CaBu)

## Install Capsule Builder

```bash
CAPSULE_BUILDER_VERSION="v0.0.1"
wget -O - https://raw.githubusercontent.com/bots-garden/capsule-function-builder/${CAPSULE_BUILDER_VERSION}/install-capsule-builder.sh | bash
```

> The script will install Capsule Builder in `$HOME/.local/bin`

🖐 **On macOS**:
- create the `$HOME/.local/bin` directory
- add it to your path:
  ```bash
  export CAPSULE_PATH="$HOME/.local"
  export PATH="$CAPSULE_PATH/bin:$PATH"
  ```
> if you want to install Capsule Builder somewhere else, override the `CAPSULE_BUILDER_PATH` variable (default value: `CAPSULE_BUILDER_PATH="$HOME/.local/bin"`)


or

```bash
CAPSULE_BUILDER_VERSION="v0.0.1"
wget https://github.com/bots-garden/capsule-function-builder/releases/download/${CAPSULE_BUILDER_VERSION}/install-capsule-builder.sh

chmod +x install-capsule-builder.sh
./install-capsule-builder.sh
```

- This script will download the `capsule-builder` script and copy it to `$HOME/.local/bin`
- Then type `capsule-builder help` or `cabu help`
