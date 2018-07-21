## Dotfiles
### Overview
This setup was taken from: https://developer.atlassian.com/blog/2016/02/best-way-to-store-dotfiles-git-bare-repo/

#### To clone
```
git clone --bare https://github.com/brianzable/dotfiles.git $HOME/.cfg
```

#### Modifying
```
echo "alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'" >> $HOME/.bashrc
source ~/.bashrc
```
Then run git commands with `config` instead of `git`, this will ensure it doesn't collide with other git repos.
