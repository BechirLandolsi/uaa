#!/bin/sh

BASEDIR=`pwd`
cd $1
./mvnw package -DskipTests=true -Dmaven.repo.local=$BASEDIR/m2/rootfs/opt/m2
./mvnw help:evaluate -Dexpression=project.artifactId -Dmaven.test.skip=true -Dmaven.repo.local=$BASEDIR/m2/rootfs/opt/m2
artifactId=`./mvnw help:evaluate -Dexpression=project.artifactId -Dmaven.test.skip=true -Dmaven.repo.local=$BASEDIR/m2/rootfs/opt/m2 | egrep -v '(^\[INFO])'`