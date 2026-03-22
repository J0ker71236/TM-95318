.class Lio/appium/android/apis/app/IsolatedService$1;
.super Lio/appium/android/apis/app/IRemoteService$Stub;
.source "IsolatedService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/appium/android/apis/app/IsolatedService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/appium/android/apis/app/IsolatedService;


# direct methods
.method constructor <init>(Lio/appium/android/apis/app/IsolatedService;)V
    .locals 0
    .param p1, "this$0"    # Lio/appium/android/apis/app/IsolatedService;

    .line 74
    iput-object p1, p0, Lio/appium/android/apis/app/IsolatedService$1;->this$0:Lio/appium/android/apis/app/IsolatedService;

    invoke-direct {p0}, Lio/appium/android/apis/app/IRemoteService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public registerCallback(Lio/appium/android/apis/app/IRemoteServiceCallback;)V
    .locals 1
    .param p1, "cb"    # Lio/appium/android/apis/app/IRemoteServiceCallback;

    .line 76
    if-eqz p1, :cond_0

    iget-object v0, p0, Lio/appium/android/apis/app/IsolatedService$1;->this$0:Lio/appium/android/apis/app/IsolatedService;

    iget-object v0, v0, Lio/appium/android/apis/app/IsolatedService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 77
    :cond_0
    return-void
.end method

.method public unregisterCallback(Lio/appium/android/apis/app/IRemoteServiceCallback;)V
    .locals 1
    .param p1, "cb"    # Lio/appium/android/apis/app/IRemoteServiceCallback;

    .line 79
    if-eqz p1, :cond_0

    iget-object v0, p0, Lio/appium/android/apis/app/IsolatedService$1;->this$0:Lio/appium/android/apis/app/IsolatedService;

    iget-object v0, v0, Lio/appium/android/apis/app/IsolatedService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 80
    :cond_0
    return-void
.end method
