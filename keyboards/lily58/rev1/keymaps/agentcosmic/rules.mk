BOOTMAGIC_ENABLE = no # Enable Bootmagic Lite
MOUSEKEY_ENABLE = no # Mouse keys
EXTRAKEY_ENABLE = yes # Audio control and System control
CONSOLE_ENABLE = no # Console for debug
COMMAND_ENABLE = no # Commands for debug and configuration
NKRO_ENABLE = no # N-Key Rollover
BACKLIGHT_ENABLE = no # Enable keyboard backlight functionality
AUDIO_ENABLE = no # Audio output
RGBLIGHT_ENABLE = no # Enable WS2812 RGB underlight.
SWAP_HANDS_ENABLE = no # Enable one-hand typing
OLED_ENABLE = yes # OLED display
LTO_ENABLE = no # Enable LTO (this will cause problem with some keymaps)
# KEY_OVERRIDE_ENABLE = yes  # override key combo with another one
CAPS_WORD_ENABLE = yes # capitalize word
COMBO_ENABLE = yes # for combos

# If you want to change the display of OLED, you need to change here
SRC +=  ./lib/rgb_state_reader.c \
        ./lib/layer_state_reader.c \
        ./lib/logo_reader.c \
        ./lib/keylogger.c \
        # ./lib/mode_icon_reader.c \
        # ./lib/host_led_state_reader.c \
        # ./lib/timelogger.c \
