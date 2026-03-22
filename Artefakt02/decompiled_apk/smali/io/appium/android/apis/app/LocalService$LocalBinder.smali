.class public Lio/appium/android/apis/app/LocalService$LocalBinder;
.super Landroid/os/Binder;
.source "LocalService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/appium/android/apis/app/LocalService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LocalBinder"
.end annotation


# instance fields
.field final synthetic this$0:Lio/appium/android/apis/app/LocalService;


# direct methods
.method public constructor <init>(Lio/appium/android/apis/app/LocalService;)V
    .locals 0
    .param p1, "this$0"    # Lio/appium/android/apis/app/LocalService;

    .line 57
    iput-object p1, p0, Lio/appium/android/apis/app/LocalService$LocalBinder;->this$0:Lio/appium/android/apis/app/LocalService;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method


# virtual methods
.method getService()Lio/appium/android/apis/app/LocalService;
    .locals 1

    .line 59
    iget-object v0, p0, Lio/appium/android/apis/app/LocalService$LocalBinder;->this$0:Lio/appium/android/apis/app/LocalService;

    return-object v0
.end method
