# Crunchy
A fork of Tuinity built to enhance gameplay features, make quality of life better for owners and assist developers where possible.

### What is Crunchy?
Crunchy is a fork of [Paper](https://github.com/PaperMC/Paper/) built for optimisations and quaility of life changes for developers and server owners alike.

### How do I get the server jar?
Firstly there are some requirements to build the server jar:
- JDK 16 (or higher)
- JRE 16 (or higher)
- Maven ([Installation](https://maven.apache.org/install.html))
- Access to git commands
  - Linux/MacOS will have these by default
  - Windows users will need to install [Git for Windows](https://git-scm.com/download/win)

#### Building the server jar
1. Clone this repository into a safe location and `cd` into it.
2. When in the root folder, run the following:

    `./gradlew applyPatches && ./gradlew paperclipJar`
3. The final server jar can be found in the main folder called `Crunchy.jar`


