#! /bin/bash
#Запуск контейнеров
docker run --name ubuntu -di brunneis/python:3.8.6-ubuntu-focal 
docker run --name fedora -di pycontribs/fedora
docker run --name centos7 -di centos:latest
#Запуск плейбука
ansible-playbook site.yml -i ./inventory/prod.yml --ask-vault-pass
#Остановка контейнеров
docker stop ubuntu
docker stop fedora
docker stop centos7
#Удаление контейнеров
docker container  rm $(docker ps -a -f status=created -f status=exited -q)