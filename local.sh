#!/bin/bash

function _up() {
  docker-compose --env-file ./src/PharmApp/.env up -d
}

function _stop() {
  docker-compose --env-file ./src/PharmApp/.env stop
}

function _rebuild() {
  docker-compose --env-file ./src/PharmApp/.env up -d --build --force-recreate --remove-orphans
}

function _ssh() {
  docker-compose --env-file ./src/PharmApp/.env exec app bash
}

case $1 in
"start") _up ;;
"stop") _stop ;;
"rebuild") _rebuild ;;
"ssh") _ssh ;;
esac