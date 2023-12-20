FROM ubuntu:jammy

LABEL description="Kiri container for twyleg_kicad_utils"
MAINTAINER Torsten Wylegala <mail@twyleg.de>

RUN apt-get update ;\
	DEBIAN_FRONTEND=noninteractive apt-get install -y software-properties-common wget tzdata ;\
	wget -O /etc/apt/sources.list.d/kibot.list https://set-soft.github.io/debian/kibot.list ;\
	wget -O /etc/apt/kibot.gpg https://set-soft.github.io/debian/kibot.gpg ;\
	add-apt-repository ppa:kicad/kicad-7.0-releases ;\
	apt-get update ;\
	apt-get install -y \
		sudo \
		curl \
		kibot \
		kicad ;\
	apt-get clean ;\
	rm -rf /var/lib/apt/lists/* ;\
	rm -rf /var/tmp/*

RUN bash -c "$(curl -fsSL https://raw.githubusercontent.com/leoheck/kiri/main/install_dependencies.sh)"
RUN bash -c "INSTALL_KIRI_REMOTELLY=1; $(curl -fsSL https://raw.githubusercontent.com/leoheck/kiri/main/install_kiri.sh)"

RUN pip install \
	"mistune>=2.0.2,<=2.0.5" \
	pcbdraw

EXPOSE 8282

COPY docker-entrypoint.sh /usr/local/bin/
ENTRYPOINT ["/usr/local/bin/docker-entrypoint.sh"]

CMD ["/bin/bash"]
