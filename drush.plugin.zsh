#ensure that the /home/.drush/drush_zsh.drush.inc is symlink to our file
if [[ ! -h ~/.drush/drush_zsh.drush.inc ]] ; then
  print 'Symlinking drush_zsh drush command'
  ln -s $ZSH/plugins/drush/drush_zsh.drush.inc ~/.drush
fi

# add drush completion function to path
fpath=($ZSH/plugins/drush $fpath)
autoload -U compinit
compinit -i
