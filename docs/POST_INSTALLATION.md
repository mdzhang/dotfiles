# Post-Installation

1. Activate dark terminal theme (see dotfiles)
1. Open and setup Dropbox
1. Setup 1Password
    - Sync with Dropbox
    - Add license
1. Login to Chrome
1. Login to <https://github.com> (so I can add new keys)
1. [Git SSH setup](https://help.github.com/articles/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent/)
    ```sh
    ssh-keygen -t rsa -b 4096 -C "zhang.michelle.d@gmail.com"
    pbcopy < ~/.ssh/id_rsa.pub
    ```

    - [Add to GitHub](https://github.com/settings/keys)

1. [GPG setup](https://help.github.com/articles/generating-a-new-gpg-key/)
    ```sh
    gpg --list-keys
    gpg --gen-key
    gpg --list-secret-keys --keyid-format LONG
    gpg --armor --export <GPG key ID>
    ```

    - [Add to GitHub](https://github.com/settings/keys)

