.class Lio/appium/android/apis/app/ForegroundService$Controller$1;
.super Ljava/lang/Object;
.source "ForegroundService.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/appium/android/apis/app/ForegroundService$Controller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/appium/android/apis/app/ForegroundService$Controller;


# direct methods
.method constructor <init>(Lio/appium/android/apis/app/ForegroundService$Controller;)V
    .locals 0
    .param p1, "this$0"    # Lio/appium/android/apis/app/ForegroundService$Controller;

    .line 239
    iput-object p1, p0, Lio/appium/android/apis/app/ForegroundService$Controller$1;->this$0:Lio/appium/android/apis/app/ForegroundService$Controller;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .line 241
    new-instance v0, Landroid/content/Intent;

    const-string v1, "io.appium.android.apis.FOREGROUND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 242
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lio/appium/android/apis/app/ForegroundService$Controller$1;->this$0:Lio/appium/android/apis/app/ForegroundService$Controller;

    const-class v2, Lio/appium/android/apis/app/ForegroundService;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 243
    iget-object v1, p0, Lio/appium/android/apis/app/ForegroundService$Controller$1;->this$0:Lio/appium/android/apis/app/ForegroundService$Controller;

    invoke-virtual {v1, v0}, Lio/appium/android/apis/app/ForegroundService$Controller;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 244
    return-void
.end method
