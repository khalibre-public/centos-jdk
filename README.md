Base Docker images for Khalibre projects with JDK

This repository contains images used as a base image for all Khalibre images that require Java Development Kit.
Types of images

Currently this repository contains following images:

    JDK 8 (in the jdk8 branch)

Both images extend the khalibre/centos-base:latest image and add latest OpenJDK distribution for selected version. Additionally a JAVA_HOME environment variable is set.
Availability

Both images are built on Docker HUB and available for immediate pull from the public registry.

OpenJDK 8

docker pull khalibre/centos-jdk:8

Issues

All issues should be reported in the GitHub issue tracker.
