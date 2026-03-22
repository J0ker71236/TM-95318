.class Lio/appium/android/apis/content/ExternalStorage$7;
.super Landroid/content/BroadcastReceiver;
.source "ExternalStorage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/appium/android/apis/content/ExternalStorage;->startWatchingExternalStorage()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/appium/android/apis/content/ExternalStorage;


# direct methods
.method constructor <init>(Lio/appium/android/apis/content/ExternalStorage;)V
    .locals 0
    .param p1, "this$0"    # Lio/appium/android/apis/content/ExternalStorage;

    .line 159
    iput-object p1, p0, Lio/appium/android/apis/content/ExternalStorage$7;->this$0:Lio/appium/android/apis/content/ExternalStorage;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 162
    const-string v0, "test"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Storage: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    iget-object v0, p0, Lio/appium/android/apis/content/ExternalStorage$7;->this$0:Lio/appium/android/apis/content/ExternalStorage;

    invoke-virtual {v0}, Lio/appium/android/apis/content/ExternalStorage;->updateExternalStorageState()V

    .line 164
    return-void
.end method
