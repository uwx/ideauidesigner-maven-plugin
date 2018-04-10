Introduction
-----------

All credit goes to original authors of the maven plugin and the install-intellij-libs.sh.

And of course some credit goes to all authors who kept this plugin up-to-date.

I forked this and made some changes to improve the usability (added required libraries, all-in-one script installer, added some more details on the installation process) 

Changes
-----

I made some adaptions because I intend to use this for several future projects of mine.

Only tested by me so don't assume it will work perfectly.

Added the required Intellij IDEA libraries to libs folder (from 2018.1 Community Edition).

Adapted the sh script so that no input parameter is required and everything is installed directly.

Removed forms_rt from plugin dependencies since it is only required during runtime.

Updated the Javac2 import since the old one was deprecated.


Usage
-----

Clone this repository

You may change the jar files in the libs folder to match your Intellij installation -> Find your Intellij Installation folder -> The 3 jar files are in the lib folder there

Run the sh script (I used Git Bash on Windows) which will install the 3 Intellij IDEA libraries into your local Maven repository and afterwards it will install the plugin

To use the plugin in your maven project you need add the dependency
```
<dependency>
    <groupId>com.intellij</groupId>
    <artifactId>forms_rt</artifactId>
    <version>18.1</version>
</dependency>
```
And add the plugin
```
<plugin>
    <groupId>org.codehaus.mojo</groupId>
    <artifactId>ideauidesigner-maven-plugin</artifactId>
    <version>18.1</version>
    <executions>
        <execution>
            <goals>
                <goal>javac2</goal>
            </goals>
        </execution>
    </executions>
    <configuration>
        <fork>true</fork>
        <debug>true</debug>
        <failOnError>true</failOnError>
    </configuration>
</plugin>
```

The version number has no particular meaning its just required by Maven. 

You can use older libraries in the libs folder.