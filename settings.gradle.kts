pluginManagement {
	repositories {
		gradlePluginPortal()
		maven("https://papermc.io/repo/repository/maven-public")
	}
}

rootProject.name = "Crunchy"

include("Crunchy-API", "Crunchy-Server")