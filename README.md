# Ansible script to deploy wagtaildemo

## roles
* Common - this role provides basic prerequesite settings, useful utilities and repositories;
* Es - elasticsearch role, provides deployment of elasticsearch 1.7.5;
* nginx - provides installation and basic configuration for wagtaildemo as reverse proxy server;
* pgdatabase - provides installation postgresql database cluster, create database for wagtaildemo;
* redis - provides redis installation and basic configuration for wagtail as session storage;
* uwsgi - installation of uwsgi. also creates systemd unit file for wagtaildemo;
* wagtail - wagtaildemo installation.

## host roles
Two roles must be on the same host, these are: uwsgi, wagtail.
Other roles may be on separated hosts with debian-8 or rhel7 operating systems.

## vars
* IP_<ROLE>_HOST - provides public ip addresses;
* WT_USER - user for wagtaildemo deployment. it's also database and os user;
* WT_GROUP - primary os group for WT_USER'
* WT_HOME - path to wagtaildemo installation. (RHEL7 support selinux=Enforcing mode);
* WT_PASSWD - password for wagtail user;
* PROJ_NAME - project name e.g: wagtaildemo;
* PROJ_FQDN - project fqdn e.g: wagtaildemo.labs.localnet.P
