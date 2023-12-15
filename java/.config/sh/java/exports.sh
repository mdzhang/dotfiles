#export JAVA_OPTS="--illegal-access=warn --add-opens java.base/java.util=ALL-UNNAMED"

if [ -f ~/.asdf/plugins/java/set-java-home.$SHELL_NAME ]; then
  . ~/.asdf/plugins/java/set-java-home.$SHELL_NAME
fi

# android
export ANDROID_SDK_ROOT="$HOME/Library/Android/sdk"
export ANDROID_HOME="$ANDROID_SDK_ROOT"
export PATH="$PATH:$ANDROID_SDK_ROOT/platform-tools/"
export PATH="$PATH:$ANDROID_SDK_ROOT/cmdline-tools/latest/bin/"
export PATH="$PATH:$ANDROID_SDK_ROOT/emulator/"
