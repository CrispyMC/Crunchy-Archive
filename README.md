Crunchy [![Crunchy Build Status](https://img.shields.io/github/workflow/status/MrFishCakes/Crunchy/Build%20Crunchy)](https://github.com/MrFishCakes/Crunchy/actions) [![Maven Version](https://img.shields.io/maven-metadata/v?metadataUrl=http%3A%2F%2F138.201.100.162%3A81%2Freleases%2Fdashboard%2Freleases%2Fdev%2Fmrfishcakes%2Fcrunchy%2Fcrunchy-api%2Fmaven-metadata.xml)](https://mrfishcakes.dev) [![Discord](https://img.shields.io/discord/891090110140022875.svg?label=&logo=discord&logoColor=ffffff&color=7389D8&labelColor=6A7EC2)](https://discord.gg/xkSa7Jj2Ak)
===========

A fork of [Paper](https://github.com/PaperMC/Paper/) built to enhance gameplay features, make quality of life better for owners and developers where possible.


**Support and Discussion:**
For support with developing with or using Crunchy, please join the Discord server.

How To (Server Administrators)
------
The latest download can be found on the releases tab on the right side of this page.

Disclaimer: Releases might not always be the latest version and [manually compiling](https://github.com/MrFishCakes/Crunchy#how-to-compile-from-source) is always suggested.

How To (Plugin Developers)
------
  * See API Patches [here](patches/api)
  * See Server Patches [here](patches/server)
  * Maven Repository:
```xml
<repository>
    <id>mrfishcakes</id>
    <url>http://138.201.100.162:81/releases/dashboard/releases/</url>
</repository>
```
* Artifact Information:
```xml
<dependency>
    <groupId>dev.mrfishcakes.crunchy</groupId>
    <artifactId>crunchy-api</artifactId>
    <version>1.17.1-R0.1-SNAPSHOT</version>
    <scope>provided</scope>
</dependency>
 ```

**Or alternatively, with Gradle:**

* Repository:
```kotlin
repositories {
    maven {
        url = uri("http://138.201.100.162:81/releases/dashboard/releases/")
    }
}

dependencies {
    compileOnly("dev.mrfishcakes.crunchy:crunchy-api:1.17.1-R0.1-SNAPSHOT")
}

java {
    toolchain.languageVersion.set(JavaLanguageVersion.of(16))
}
```
How to compile from source
------
To compile Crunchy, you need JDK 16 (Or later) and an internet connection.

Clone this repository and run `./gradlew applyPatches`, then `./gradlew reobfJar` from your terminal. You can find the compiled jar in `Crunchy-Server/build/libs` directory.

View a full list of tasks by running `./gradlew tasks`.

Note for Windows users: Using GitBash is suggested, but you can use the  `gradlew.bat` file provided.