
all: modrinth curseforge

refresh-all: refreshmr refreshcf

update-all: updatemr updatecf

modrinth:
	echo modrinth:
	cd pack/modrinth && packwiz mr export && mv *.mrpack ../../build/

curseforge:
	echo curseforge:
	cd pack/curseforge && packwiz cf export && mv *.zip ../../build/

refreshmr:
	echo modrinth:
	cd pack/modrinth && packwiz refresh

refreshcf:
	echo curseforge:
	cd pack/curseforge && packwiz refresh

updatemr:
	echo modrinth:
	cd pack/modrinth && packwiz update --all

updatecf:
	echo curseforge:
	cd pack/curseforge && packwiz update --all
