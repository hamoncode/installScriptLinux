<<<<<<< HEAD
#!/bin/sh
=======
#!/bin/bash
>>>>>>> f877517 (update arch version)

# Remove existing .zshrc file and create symlink
if [ -f ~/.zshrc ]; then
    rm -f ~/.zshrc || { echo "Erreur: impossible de supprimer .zshrc"; exit 1; }
fi
ln -s ~/.dotfiles/.zshrc ~/.zshrc || { echo "Erreur: problème lors de la création du symlink pour .zshrc"; exit 1; }

# Remove existing applications directory and create symlink
if [ -d ~/.local/share/applications ]; then
    rm -rf ~/.local/share/applications || { echo "Erreur: impossible de supprimer le dossier applications"; exit 1; }
fi
ln -s ~/.dotfiles/applications ~/.local/share/applications || { echo "Erreur: problème lors de la création du symlink pour applications"; exit 1; }

# Remove existing kitty configuration directory and create symlink
if [ -d ~/.config/kitty ]; then
    rm -rf ~/.config/kitty || { echo "Erreur: impossible de supprimer le dossier kitty"; exit 1; }
fi
ln -s ~/.dotfiles/kitty ~/.config/kitty || { echo "Erreur: problème lors de la création du symlink pour kitty"; exit 1; }

# Clone external plugins
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions || { echo "Erreur: problème lors du clonage de zsh-autosuggestions"; exit 1; }
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting || { echo "Erreur: problème lors du clonage de zsh-syntax-highlighting"; exit 1; }
git clone https://github.com/marlonrichert/zsh-autocomplete.git || { echo "Erreur: problème lors du clonage de zsh-autocomplete"; exit 1; }

<<<<<<< HEAD
# Move zsh-autocomplete plugin to the correct directory
mv zsh-autocomplete ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/ || { echo "Erreur: problème lors du déplacement de zsh-autocomplete"; exit 1; }
=======
# fix des pluggins externes
#git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions || { echo "erreur durant le clone de zsh-autosuggestion"; exit 1; }
#git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting || { echo "erreur durant le clone de zsh-syntax-highlighting"; exit 1; }
#git clone https://github.com/marlonrichert/zsh-autocomplete.git || { echo "erreur durant le clone de zsh-autocomplete"; exit 1; }

# fix manuel du dernier pluggin  
#mv zsh-autocomplete ~/.oh-my-zsh/plugins || { echo "erreur durant le fix zsh-autocomplete"; exit 1; }

echo "configuration reussi!"
>>>>>>> f877517 (update arch version)

echo "Configuration réussie!"
