
<div align="center">

[![Typing SVG](https://readme-typing-svg.herokuapp.com?font=Iosevka&size=64&duration=3000&pause=1000&color=78997A&background=282828&center=true&vCenter=true&width=1000&height=150&lines=Sophos'+Hyprland+Rice..;Gruvbox+Configuration..;Arch+Linux+Setup..)](https://git.io/typing-svg)

*Classic • Simple • Functional*

</div>

---

## **Preview**:-

<!-- Add your screenshots here -->
<img width="1920" height="1080" alt="screenshot-2025-08-16-194823" src="https://github.com/user-attachments/assets/a501dd6a-cc40-47c1-8ed2-e1838b4146bb" />

---

## **What's Included**:-

This rice features a carefully curated collection of tools and configurations:

### **`./system_monitoring`**
- **btop** - Resource monitor with Gruvbox theming
- **cava** - Audio visualizer for aesthetics
- **fastfetch** - Clean system information display

### **`./window_management`** 
- **hypr** - Hyprland compositor configuration
- **waybar** - Status bar with custom modules
- **wlogout** - Logout menu
- **wofi** - Application launcher

### **`./applications`**
- **kitty** - Terminal emulator with Gruvbox colors
- **spicetify** - Themed Spotify client
- **vesktop** - Discord client with custom styling
- **yazi** - File manager with vim-like keybindings
- **zathura** - PDF viewer

### **`./utilities`**
- **swappy** - Screenshot annotation tool
- **zshrc** - Shell configuration with aliases and theming

---

## **Installation**:-

### **Prerequisites**
Make sure you have the following installed:
```bash
# Essential packages
sudo pacman -S hyprland waybar kitty wofi zsh

# Additional tools
yay -S btop cava fastfetch spicetify-cli vesktop swappy yazi zathura
```

### **Setup**
```bash
# Clone the repository
git clone https://github.com/yourusername/hyprland-dotfiles.git
cd hyprland-dotfiles

# Backup existing configs (optional but recommended)
mkdir -p ~/.config/backup
cp -r ~/.config/{hypr,waybar,kitty,wofi,btop,cava,yazi,zathura} ~/.config/backup/ 2>/dev/null

# Create symlinks
ln -sf $(pwd)/hypr ~/.config/
ln -sf $(pwd)/waybar ~/.config/
ln -sf $(pwd)/kitty ~/.config/
ln -sf $(pwd)/wofi ~/.config/
ln -sf $(pwd)/btop ~/.config/
ln -sf $(pwd)/cava ~/.config/
ln -sf $(pwd)/yazi ~/.config/
ln -sf $(pwd)/zathura ~/.config/
ln -sf $(pwd)/spicetify ~/.config/
ln -sf $(pwd)/vesktop ~/.config/
ln -sf $(pwd)/swappy ~/.config/
ln -sf $(pwd)/wlogout ~/.config/

# Link shell configuration
ln -sf $(pwd)/zshrc ~/.zshrc

# Apply Spicetify theme
spicetify config current_theme gruvbox
spicetify apply
```

### **Post-Installation**
```bash
# Reload shell configuration
source ~/.zshrc

# Restart Hyprland or reboot for full effect
```

---

##  **TODO**:-

### **Upcoming Features (when i feel like it)**
- [ ] **Catppuccin Mocha** color palette theme option
- [ ] Theme switcher script for easy palette changes
- [ ] Additional wallpaper collection


---

<div align="center">

**Made with Blood Sweat and tears, took an entier month..**

*Feel free to star ⭐ if you found this useful!*

</div>
