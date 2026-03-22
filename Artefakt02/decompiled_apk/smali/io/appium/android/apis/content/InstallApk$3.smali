.class Lio/appium/android/apis/content/InstallApk$3;
.super Ljava/lang/Object;
.source "InstallApk.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/appium/android/apis/content/InstallApk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/appium/android/apis/content/InstallApk;


# direct methods
.method constructor <init>(Lio/appium/android/apis/content/InstallApk;)V
    .locals 0
    .param p1, "this$0"    # Lio/appium/android/apis/content/InstallApk;

    .line 115
    iput-object p1, p0, Lio/appium/android/apis/content/InstallApk$3;->this$0:Lio/appium/android/apis/content/InstallApk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .line 117
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.INSTALL_PACKAGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 118
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lio/appium/android/apis/content/InstallApk$3;->this$0:Lio/appium/android/apis/content/InstallApk;

    const-string v2, "HelloActivity.apk"

    invoke-static {v1, v2}, Lio/appium/android/apis/content/InstallApk;->access$000(Lio/appium/android/apis/content/InstallApk;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 119
    const-string v1, "android.intent.extra.NOT_UNKNOWN_SOURCE"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 120
    const-string v1, "android.intent.extra.RETURN_RESULT"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 121
    const-string v1, "android.intent.extra.ALLOW_REPLACE"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 122
    const-string v1, "android.intent.extra.INSTALLER_PACKAGE_NAME"

    iget-object v3, p0, Lio/appium/android/apis/content/InstallApk$3;->this$0:Lio/appium/android/apis/content/InstallApk;

    .line 123
    invoke-virtual {v3}, Lio/appium/android/apis/content/InstallApk;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 122
    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 124
    iget-object v1, p0, Lio/appium/android/apis/content/InstallApk$3;->this$0:Lio/appium/android/apis/content/InstallApk;

    invoke-virtual {v1, v0, v2}, Lio/appium/android/apis/content/InstallApk;->startActivityForResult(Landroid/content/Intent;I)V

    .line 125
    return-void
.end method
