# Crunchy [![Crunchy Build Status](https://img.shields.io/github/workflow/status/MrFishCakes/Crunchy/Build%20Crunchy)](https://github.com/MrFishCakes/Crunchy/actions) [![Maven Version](https://img.shields.io/maven-metadata/v?metadataUrl=http%3A%2F%2F138.201.100.162%3A81%2Freleases%2Fdashboard%2Freleases%2Fdev%2Fmrfishcakes%2Fcrunchy%2Fcrunchy-api%2Fmaven-metadata.xml)](https://mrfishcakes.dev) [![Discord](https://img.shields.io/discord/891090110140022875.svg?label=&logo=discord&logoColor=ffffff&color=7389D8&labelColor=6A7EC2)](https://discord.gg/xkSa7Jj2Ak)
A fork of [Paper](https://github.com/PaperMC/Paper/) built to enhance gameplay features, make quality of life better for owners and developers where possible.

### How do I get the server jar?
Firstly there are some requirements to build the server jar:
- JDK/JRE 16 (or higher)
- Maven ([Installation](https://maven.apache.org/install.html))
- Access to git commands
  - Linux/MacOS will have these by default
  - Windows users will need to install [Git for Windows](https://git-scm.com/download/win)
- Anything that Paper requires in order to build

#### Building the server jar
1. Clone this repository into a safe location and `cd` into it.
2. When in the root folder, run the following:

    `./gradlew applyPatches && ./gradlew reobfJar`
3. The final server jar can be found in the `Crunchy-Server/build/libs` folder called `Crunchy-Server-reobf.jar`

### Accessing the API
As Crunchy is built using Gradle, you will need this installed in order to access the API.
1. Follow the steps above so that the environment is setup.
2. In the main directory run: `./gradlew publishToMavenLocal`. This will publish `Crunchy-API` and `Crunchy-Server` to Maven local.
3. Using your preferred build tool, add Crunchy-API (Or server depending on needs [NMS access]).

<b>Group ID:</b> dev.mrfishcakes.crunchy   
<b>Artifact ID:</b> crunchy-api (API)   
<b>Artifact ID:</b> crunchy-server (NMS)  
<b>Version:</b> 1.17.1-R0.1-SNAPSHOT
