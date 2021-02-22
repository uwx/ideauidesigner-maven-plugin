# IntelliJ .form compiler for Maven

This Maven plugin compiles IntelliJ Form Designer `.form` files in-place onto the relevant `.class` files, using the goal `ideauidesigner:javac2`.
It can be added to your build to avoid having to compile forms manually through IntelliJ.

## Changes from upstream

The whole project was moved to a local Maven repository, so you don't need to copy or install any files locally. It still uses
[@FairPlayer4](https://github.com/FairPlayer4/ideauidesigner-maven-plugin)'s local libraries taken from IntelliJ 2018.1, and
was last tested on 2020.3. If it fails with a further version, the dependencies likely need updating.

## Usage

Add the following plugin repository to your pom.xml
```xml
<pluginRepositories>
    <pluginRepository>
        <id>ideauidesigner-maven-plugin</id>
        <name>ideauidesigner-maven-plugin</name>
        <url>https://uwx.github.io/ideauidesigner-maven-plugin/</url>
    </pluginRepository>
</pluginRepositories>
```
And the plugin
```xml
<plugin>
    <groupId>org.codehaus.mojo</groupId>
    <artifactId>ideauidesigner-maven-plugin</artifactId>
    <version>rev8</version>
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
If necessary, add a dependency on the IntelliJ forms runtime. You have to do this if you use IntelliJ layouts.
```xml
<repositories>  
    <repository>
        <id>ideauidesigner-maven-plugin</id>
        <name>ideauidesigner-maven-plugin</name>
        <url>https://uwx.github.io/ideauidesigner-maven-plugin/</url>
    </repository>
</repositories>

<dependencies>
    <dependency>
        <groupId>com.intellij</groupId>
        <artifactId>forms_rt</artifactId>
        <version>18.1</version>
    </dependency>
</dependencies>
```
