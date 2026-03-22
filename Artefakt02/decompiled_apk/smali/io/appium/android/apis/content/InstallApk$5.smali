.class Lio/appium/android/apis/content/InstallApk$5;
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

    .line 137
    iput-object p1, p0, Lio/appium/android/apis/content/InstallApk$5;->this$0:Lio/appium/android/apis/content/InstallApk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .line 139
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.UNINSTALL_PACKAGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 140
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "package:com.example.android.helloactivity"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 142
    const-string v1, "android.intent.extra.RETURN_RESULT"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 143
    iget-object v1, p0, Lio/appium/android/apis/content/InstallApk$5;->this$0:Lio/appium/android/apis/content/InstallApk;

    const/4 v2, 0x2

    invoke-virtual {v1, v0, v2}, Lio/appium/android/apis/content/InstallApk;->startActivityForResult(Landroid/content/Intent;I)V

    .line 144
    return-void
.end method
