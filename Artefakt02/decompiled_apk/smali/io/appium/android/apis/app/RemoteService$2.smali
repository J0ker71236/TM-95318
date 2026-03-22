.class Lio/appium/android/apis/app/RemoteService$2;
.super Lio/appium/android/apis/app/ISecondary$Stub;
.source "RemoteService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/appium/android/apis/app/RemoteService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/appium/android/apis/app/RemoteService;


# direct methods
.method constructor <init>(Lio/appium/android/apis/app/RemoteService;)V
    .locals 0
    .param p1, "this$0"    # Lio/appium/android/apis/app/RemoteService;

    .line 128
    iput-object p1, p0, Lio/appium/android/apis/app/RemoteService$2;->this$0:Lio/appium/android/apis/app/RemoteService;

    invoke-direct {p0}, Lio/appium/android/apis/app/ISecondary$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public basicTypes(IJZFDLjava/lang/String;)V
    .locals 0
    .param p1, "anInt"    # I
    .param p2, "aLong"    # J
    .param p4, "aBoolean"    # Z
    .param p5, "aFloat"    # F
    .param p6, "aDouble"    # D
    .param p8, "aString"    # Ljava/lang/String;

    .line 134
    return-void
.end method

.method public getPid()I
    .locals 1

    .line 130
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    return v0
.end method
