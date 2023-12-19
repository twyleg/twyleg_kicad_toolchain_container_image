# twyleg_kicad_toolchain_container_image

Container image that ships all tools required by twyleg_kicad_utils. It's tested with *podman* to make use of rootless execution.

## Usage

### Build

	cd twyleg_kicad_utils_toolchain_container_image/
	podman run --tag kicad_toolchain .

### Run

Kiri:
	cd <KICAD_PROJECT>
	podman run -v ./:/root/project -w /root/project -p 8282 kicad_toolchain

