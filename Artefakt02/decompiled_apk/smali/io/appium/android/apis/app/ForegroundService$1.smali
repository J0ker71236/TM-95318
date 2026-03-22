.class Lio/appium/android/apis/app/ForegroundService$1;
.super Ljava/lang/Object;
.source "ForegroundService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/appium/android/apis/app/ForegroundService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/appium/android/apis/app/ForegroundService;


# direct methods
.method constructor <init>(Lio/appium/android/apis/app/ForegroundService;)V
    .locals 0
    .param p1, "this$0"    # Lio/appium/android/apis/app/ForegroundService;

    .line 59
    iput-object p1, p0, Lio/appium/android/apis/app/ForegroundService$1;->this$0:Lio/appium/android/apis/app/ForegroundService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 61
    const-string v0, "ForegroundService"

    const-string v1, "PULSE!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    iget-object v0, p0, Lio/appium/android/apis/app/ForegroundService$1;->this$0:Lio/appium/android/apis/app/ForegroundService;

    invoke-static {v0}, Lio/appium/android/apis/app/ForegroundService;->access$000(Lio/appium/android/apis/app/ForegroundService;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x1388

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 63
    return-void
.end method
