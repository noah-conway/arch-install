install-packages:
	sudo ./install-official-packages.sh && ./install-aur-packages

configure-system:
	cd /home/"$USER"
	mkdir Documents Downloads Pictures Projects
	git clone https://github.com/noah-conway/Scripts.git

qtile:
	sudo ./install-qtile-packages.sh
	git clone https://github.com/noah-conway/dotfiles/

	
	
	
