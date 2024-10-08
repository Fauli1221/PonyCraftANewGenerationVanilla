
all: 1211 1211-sodium06

refresh-all: refresh1211 refresh1211-sodium06

update-all: update1211 update1211-sodium06

1211:
	echo 1.21.1:
	cd pack/1.21.1 && packwiz mr export && mv *.mrpack ../../build/

1211-sodium06:
	echo 1.21.1-sodium-0.6:
	cd pack/1.21.1-sodium-0.6 && packwiz mr export && mv *.mrpack ../../build/

refresh1211:
	echo 1.21.1:
	cd pack/1.21.1 && packwiz refresh

refresh1211-sodium06:
	echo 1.21.1-sodium-0.6:
	cd pack/1.21.1-sodium-0.6 && packwiz refresh

update1211:
	echo 1.21.1:
	cd pack/1.21.1 && packwiz update --all

update1211-sodium06:
	echo 1.21.1-sodium-0.6:
	cd pack/1.21.1-sodium-0.6 && packwiz update --all
