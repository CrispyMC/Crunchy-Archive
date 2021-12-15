
Crunchy [![Crunchy Build Status](https://img.shields.io/github/workflow/status/MrFishCakes/Crunchy/Build%20Crunchy)](https://github.com/MrFishCakes/Crunchy/actions) [![Discord](https://img.shields.io/discord/891090110140022875.svg?label=&logo=discord&logoColor=ffffff&color=7389D8&labelColor=6A7EC2)](https://discord.gg/xkSa7Jj2Ak)
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
    <url>https://maven.mrfishcakes.dev/</url>
</repository>
```
* Artifact Information:
```xml
<dependency>
    <groupId>dev.mrfishcakes.crunchy</groupId>
    <artifactId>crunchy-api</artifactId>
    <version>1.18.1-R0.1-SNAPSHOT</version>
    <scope>provided</scope>
</dependency>
 ```

**Or alternatively, with Gradle:**

* Repository:
```kotlin
repositories {
    maven {
        url = uri("https://maven.mrfishcakes.dev/")
    }
}

dependencies {
    compileOnly("dev.mrfishcakes.crunchy:crunchy-api:1.18.1-R0.1-SNAPSHOT")
}

java {
    toolchain.languageVersion.set(JavaLanguageVersion.of(17))
}
```
How to compile from source
------
To compile Crunchy, you need JDK 17 (Or later) and an internet connection.

Clone this repository and run `./gradlew applyPatches`, then `./gradlew createReobfBundlerJar` from your terminal. You can find the compiled jar in `build/libs` directory.

View a full list of tasks by running `./gradlew tasks`.

Note for Windows users: Using GitBash is suggested, but you can use the  `gradlew.bat` file provided.
