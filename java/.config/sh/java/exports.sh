export JAVA_OPTS="--illegal-access=warn --add-opens java.base/java.util=ALL-UNNAMED"

# android
export ANDROID_SDK_ROOT="$HOME/Library/Android/sdk"
export PATH="$PATH:$ANDROID_SDK_ROOT/platform-tools/"
export PATH="$PATH:$ANDROID_SDK_ROOT/cmdline-tools/latest/bin/"
export PATH="$PATH:$ANDROID_SDK_ROOT/emulator/"
