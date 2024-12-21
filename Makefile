
all: 1211 1214

refresh-all: refresh1211 refresh1214

update-all: update1211 update1214

1211:
	echo 1.21.1:
	cd pack/1.21.1 && packwiz mr export && mv *.mrpack ../../build/

1214:
	echo 1.21.4:
	cd pack/1.21.4 && packwiz mr export && mv *.mrpack ../../build/

refresh1211:
	echo 1.21.1:
	cd pack/1.21.1 && packwiz refresh

refresh1214:
	echo 1.21.4:
	cd pack/1.21.4 && packwiz refresh

update1211:
	echo 1.21.1:
	cd pack/1.21.1 && packwiz update --all

update1214:
	echo 1.21.4:
	cd pack/1.21.4 && packwiz update --all
