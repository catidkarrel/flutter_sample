import com.android.build.gradle.AppExtension

val android = project.extensions.getByType(AppExtension::class.java)

android.apply {
    flavorDimensions("flavor-type")

    productFlavors {
        create("dev") {
            dimension = "flavor-type"
            applicationId = "jp.co.mobileit.fluttersample"
            resValue(type = "string", name = "app_name", value = "DEV Flutter Sample")
        }
        create("prod") {
            dimension = "flavor-type"
            applicationId = "jp.co.mobileit.fluttersampleprod"
            resValue(type = "string", name = "app_name", value = "Flutter Sample")
        }
    }
}