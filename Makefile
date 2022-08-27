install-packages:
	sudo ./install-official-packages.sh && ./install-aur-packages.sh

configure-system:
	mkdir Documents Downloads Pictures Projects
	git clone https://github.com/noah-conway/Scripts.git

qtile:
	sudo ./install-qtile-packages.sh
	git clone https://github.com/noah-conway/dotfiles/

	
	
	
