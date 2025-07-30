# QMK Userspace

This is a fork of [QMK Userspace](https://github.com/qmk/qmk_userspace) to implement a custom keymap for the Lily58 keyboard.

See [External QMK Userspace](https://docs.qmk.fm/newbs_external_userspace) for more information.

## Getting started

1. Follow the instructions in the [QMK Docs](https://docs.qmk.fm/newbs_getting_started) to set up your build environment
2. Enable userspace in QMK config using `qmk config user.overlay_dir="$(realpath qmk_userspace)"`
3. (Optional) Add a new keymap for your board using `qmk new-keymap` e.g. `qmk new-keymap -kb lily58 -km agentcosmic`
4. Add your keymap(s) to the build by running `qmk userspace-add -kb <your_keyboard> -km <your_keymap>`
   - This will automatically update your `qmk.json` file
   - Corresponding `qmk userspace-remove -kb <your_keyboard> -km <your_keymap>` will delete it
   - Listing the build targets can be done with `qmk userspace-list`
5. Set global userspace path: `qmk config user.overlay_dir="$(realpath .)"`. You MUST be located in the `qmk_firmware` or `qmk_userspace` repository for this to work correctly

## Building and flashing

1. Update your keymaps e.g. `./keyboards/lily58/rev1/keymaps/agentcosmic/keymap.c`
2. Checkout `qmk_firmware` to the version you want to build against
3. `cd` into `qmk_firmware` repository
4. Run:

```bash
    qmk compile -kb lily58 -km agentcosmic
    qmk flash -kb lily58 -km agentcosmic
```

5. Press the boot key to enter bootloader mode
