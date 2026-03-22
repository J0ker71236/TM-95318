.class Lio/appium/android/apis/app/RemoteService$1;
.super Lio/appium/android/apis/app/IRemoteService$Stub;
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

    .line 116
    iput-object p1, p0, Lio/appium/android/apis/app/RemoteService$1;->this$0:Lio/appium/android/apis/app/RemoteService;

    invoke-direct {p0}, Lio/appium/android/apis/app/IRemoteService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public registerCallback(Lio/appium/android/apis/app/IRemoteServiceCallback;)V
    .locals 1
    .param p1, "cb"    # Lio/appium/android/apis/app/IRemoteServiceCallback;

    .line 118
    if-eqz p1, :cond_0

    iget-object v0, p0, Lio/appium/android/apis/app/RemoteService$1;->this$0:Lio/appium/android/apis/app/RemoteService;

    iget-object v0, v0, Lio/appium/android/apis/app/RemoteService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 119
    :cond_0
    return-void
.end method

.method public unregisterCallback(Lio/appium/android/apis/app/IRemoteServiceCallback;)V
    .locals 1
    .param p1, "cb"    # Lio/appium/android/apis/app/IRemoteServiceCallback;

    .line 121
    if-eqz p1, :cond_0

    iget-object v0, p0, Lio/appium/android/apis/app/RemoteService$1;->this$0:Lio/appium/android/apis/app/RemoteService;

    iget-object v0, v0, Lio/appium/android/apis/app/RemoteService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 122
    :cond_0
    return-void
.end method
