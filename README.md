# GoLilypad-Proxy Server Container

This will create a Lilypad proxy server.  This is the front door of a Lilypad Network.  Its what actually does the packet routing between the server and the player. You can run this temporarily without a Lilypad-Connect server running but no new players will be able to join your network.  Nor will anyone be able to switch servers or communicate anything between servers (this includes Private messages or other plugin related communication). Your server will also appear to have a player count of 0 our of 0 slots without a Lilypad-Connect that this proxy instance can connect to.

## How-To
Run via docker run

    docker run -d chamuns/GoLilypad-Proxy

Run via docker-compose.yml

    docker-compose up -d

You get a bit more control and make less errors launching this container by docker-compose so I suggest you try to install docker-compose and stick to using that over the commands themselves but if you're already confident with using `docker run` and know what you'd like to pass to it argument wise feel free.  The docker volumes all exist within /app/ inside of the container.  

I haven't decided how I want to run things as underprivileged users as a standard in my containers yet so currently the application is running with too many privileges inside of the container but you could theoretically make the entire container read only.

## Current Status
Complete tested and functional.

## ToDo
- Create docker-compose.yml file to launch proxy
- Write how-to use container guide
- Tags for past MC versions
- Tag for latest version.

## Health & Statistics
#### Repository Health
[![GitHub issues](https://img.shields.io/github/issues/chamunks/Lilypad-Proxy.svg?style=flat-square)](https://github.com/chamunks/Lilypad-Proxy) out of [![GitHub total issues](https://img.shields.io/github/issues-raw/chamunks/Lilypad-Proxy.svg?style=flat-square)](https://github.com/chamunks/Lilypad-Proxy)

#### Container Build Health
[![Docker Pulls](https://img.shields.io/docker/pulls/chamunks/Lilypad-Proxy.svg?style=flat-square)](https://registry.hub.docker.com/u/chamunks/Lilypad-Proxy/)
[![Docker Stars](https://img.shields.io/docker/stars/chamunks/Lilypad-Proxy.svg?style=flat-square)](https://registry.hub.docker.com/u/chamunks/Lilypad-Proxy/)
[![Docker Build Status](http://hubstatus.container42.com/chamunks/Lilypad-Proxy)](https://registry.hub.docker.com/u/chamunks/Lilypad-Proxy)

#### Repository Statistics/Info
[![GitHub license](https://img.shields.io/github/license/chamunks/Lilypad-Proxy.svg?style=flat-square)](https://github.com/chamunks/Lilypad-Proxy)

[![GitHub forks](https://img.shields.io/github/forks/chamunks/Lilypad-Proxy.svg?style=flat-square)](https://github.com/chamunks/Lilypad-Proxy)
[![GitHub stars](https://img.shields.io/github/stars/chamunks/Lilypad-Proxy.svg?style=flat-square)](https://github.com/chamunks/Lilypad-Proxy)
