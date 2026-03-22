.class Lio/appium/android/apis/app/RemoteService$Controller$2;
.super Ljava/lang/Object;
.source "RemoteService.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/appium/android/apis/app/RemoteService$Controller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/appium/android/apis/app/RemoteService$Controller;


# direct methods
.method constructor <init>(Lio/appium/android/apis/app/RemoteService$Controller;)V
    .locals 0
    .param p1, "this$0"    # Lio/appium/android/apis/app/RemoteService$Controller;

    .line 240
    iput-object p1, p0, Lio/appium/android/apis/app/RemoteService$Controller$2;->this$0:Lio/appium/android/apis/app/RemoteService$Controller;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .line 245
    iget-object v0, p0, Lio/appium/android/apis/app/RemoteService$Controller$2;->this$0:Lio/appium/android/apis/app/RemoteService$Controller;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "io.appium.android.apis.app.REMOTE_SERVICE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lio/appium/android/apis/app/RemoteService$Controller;->stopService(Landroid/content/Intent;)Z

    .line 247
    return-void
.end method
