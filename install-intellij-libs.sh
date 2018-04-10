#!/bin/sh

echo 'Installing Intellij artifacts to Maven local repository'

mvn install:install-file -Dfile="libs/javac2.jar" -DgroupId=com.intellij -DartifactId=javac2 -Dversion=18.1 -Dpackaging=jar
mvn install:install-file -Dfile="libs/asm-all.jar" -DgroupId=com.intellij -DartifactId=asm-all -Dversion=18.1 -Dpackaging=jar
mvn install:install-file -Dfile="libs/forms_rt.jar" -DgroupId=com.intellij -DartifactId=forms_rt -Dversion=18.1 -Dpackaging=jar
