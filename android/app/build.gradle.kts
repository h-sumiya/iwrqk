import com.android.build.api.variant.FilterConfiguration
import java.util.Properties

plugins {
    id("com.android.application")
    id("kotlin-android")
    // The Flutter Gradle Plugin must be applied after the Android and Kotlin Gradle plugins.
    id("dev.flutter.flutter-gradle-plugin")
}

val keystorePropertiesFile = rootProject.file("keystore.properties")
val keystoreProperties = Properties()
if (keystorePropertiesFile.exists()) {
    keystorePropertiesFile.reader().use { keystoreProperties.load(it) }
}

val keyAlias: String? = System.getenv("KEY_ALIAS") ?: keystoreProperties.getProperty("keyAlias")
val keyPassword: String? = System.getenv("KEY_PASSWORD") ?: keystoreProperties.getProperty("keyPassword")
val storeFilePath: String? = System.getenv("KEYSTORE") ?: keystoreProperties.getProperty("storeFile")
val storePassword: String? = System.getenv("KEYSTORE_PASSWORD") ?: keystoreProperties.getProperty("storePassword")
val resolvedStoreFile = storeFilePath?.let { file(it) } ?: file("keystore.jks")
val storeFile = resolvedStoreFile.takeIf { it.exists() }
val canSign =
    keyAlias != null && keyPassword != null && storeFile?.exists() == true && storePassword != null

android {
    namespace = "com.iwrqk.app"
    compileSdk = flutter.compileSdkVersion
    ndkVersion = flutter.ndkVersion

    compileOptions {
        sourceCompatibility = JavaVersion.VERSION_17
        targetCompatibility = JavaVersion.VERSION_17
    }

    kotlinOptions {
        jvmTarget = "17"
    }

    defaultConfig {
        // TODO: Specify your own unique Application ID (https://developer.android.com/studio/build/application-id.html).
        applicationId = "com.iwrqk.app"
        // You can update the following values to match your application needs.
        // For more information, see: https://flutter.dev/to/review-gradle-config.
        minSdk = 24
        targetSdk = flutter.targetSdkVersion
        versionCode = flutter.versionCode
        versionName = flutter.versionName
        multiDexEnabled = true
        setProperty("archivesBaseName", "iwrqk-${flutter.versionName}+${flutter.versionCode}")
    }

    splits {
        abi {
            isEnable = true
            reset()
            isUniversalApk = true
            include("armeabi-v7a", "arm64-v8a", "x86_64")
        }
    }

    signingConfigs {
        getByName("debug") {
            storeFile?.let { this.storeFile = it }
            storePassword?.let { this.storePassword = it }
            keyAlias?.let { this.keyAlias = it }
            keyPassword?.let { this.keyPassword = it }
            enableV1Signing = true
            enableV2Signing = true
        }
        create("release") {
            storeFile?.let { this.storeFile = it }
            storePassword?.let { this.storePassword = it }
            keyAlias?.let { this.keyAlias = it }
            keyPassword?.let { this.keyPassword = it }
            enableV1Signing = true
            enableV2Signing = true
        }
    }

    buildTypes {
        getByName("release") {
            signingConfig =
                if (canSign) signingConfigs.getByName("release") else signingConfigs.getByName("debug")
            isMinifyEnabled = true
            isShrinkResources = true
        }
        getByName("debug") {
            if (canSign) {
                signingConfig = signingConfigs.getByName("debug")
            }
            isMinifyEnabled = true
            isShrinkResources = true
        }
    }
}

androidComponents {
    onVariants(selector().all()) { variant ->
        // TODO: AGP 8.0+ incompatible API usage.
        // variant.outputs.forEach { output ->
        //     val abiFilter =
        //         output.filters.find { it.filterType == FilterConfiguration.FilterType.ABI }?.identifier
        //     val suffix = abiFilter?.let { "-$it" } ?: ""
        //     val versionName = variant.versionName.orNull ?: "1.0"
        //     val versionCode = variant.versionCode.orNull ?: 1
        //     output.outputFileName.set("iwrqk-$versionName+$versionCode$suffix.apk")
        // }
    }
}

flutter {
    source = "../.."
}
