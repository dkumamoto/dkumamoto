export PATH="${PATH}":"${HOME}/dev/flutter/bin:/usr/local/Android/sdk/platform-tools"
alias a=alias
a c='clear'
a h='history 20'
a ll='ls -lags'
a lc='ls -asctrF'
a lf='ls -aF'
a cdM="pushd '/Users/danny/Library/Thunderbird/Profiles/hqh8cp8s.default/Mail/Local Folders'"
a rm="echo Use 'del', or the full path i.e. '/bin/rm'"
a rmbk="sudo tmutil thinlocalsnapshots / 21474836480 4" # clear out 20GB of priority 4 backup
a lsbk="tmutil listlocalsnapshots /" # list local backup snapshots

rmbin() {
    find . -type d '(' -iname "bin" -o -iname "obj" ')' -exec bash -c '
    for i do
    echo "$i"
    trash -rf "$i"
    done' bash {} +
}

# Set PATH, MANPATH, etc., for Homebrew.
eval "$(/opt/homebrew/bin/brew shellenv)"

# enable chruby
source /opt/homebrew/share/chruby/chruby.sh
source /opt/homebrew/share/chruby/auto.sh
chruby ruby-3.1.2
