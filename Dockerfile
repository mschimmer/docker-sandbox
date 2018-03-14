FROM centos:7

LABEL \
	name="docker-sandbox" \
	vendor="Markus Schimmer" \
	Summary="Docker Sandbox" \
	architecture="x86_64" \
	vcs-type="git" \
	vcs-url="https://github.com/mschimmer/docker-sandbox" 

ENV \	
	LC_ALL=en_EN.UTF-8 \
	TZ=Europe/Berlin 

USER root

RUN \
	log() { echo -e "\e[96m### $1 ###\e[0m"; } && \
	log "Update base system and installing base system tools LATEST" && \
		yum -y update && \
		yum -y install epel-release && \
		yum -y install sudo wget bash-completion bash-completion-extras && \
	log "Installing git 2.x and tig repo browser..." && \
		yum -y install git2u tig && \
	log "Summary of installed tools and versions" && \
		git --version && \
	log "Cleanup yum system cache" && \
		du -sh /var/cache/yum && \
		rm -rf /var/cache/yum && \
	log "Installations completed"