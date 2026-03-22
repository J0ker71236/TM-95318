.class public Lio/appium/android/apis/app/IsolatedService;
.super Landroid/app/Service;
.source "IsolatedService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/appium/android/apis/app/IsolatedService$Controller;
    }
.end annotation


# instance fields
.field private final mBinder:Lio/appium/android/apis/app/IRemoteService$Stub;

.field final mCallbacks:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Lio/appium/android/apis/app/IRemoteServiceCallback;",
            ">;"
        }
    .end annotation
.end field

.field mValue:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 43
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 49
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lio/appium/android/apis/app/IsolatedService;->mCallbacks:Landroid/os/RemoteCallbackList;

    .line 52
    const/4 v0, 0x0

    iput v0, p0, Lio/appium/android/apis/app/IsolatedService;->mValue:I

    .line 74
    new-instance v0, Lio/appium/android/apis/app/IsolatedService$1;

    invoke-direct {v0, p0}, Lio/appium/android/apis/app/IsolatedService$1;-><init>(Lio/appium/android/apis/app/IsolatedService;)V

    iput-object v0, p0, Lio/appium/android/apis/app/IsolatedService;->mBinder:Lio/appium/android/apis/app/IRemoteService$Stub;

    return-void
.end method

.method private broadcastValue(I)V
    .locals 3
    .param p1, "value"    # I

    .line 91
    iget-object v0, p0, Lio/appium/android/apis/app/IsolatedService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 92
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 94
    :try_start_0
    iget-object v2, p0, Lio/appium/android/apis/app/IsolatedService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Lio/appium/android/apis/app/IRemoteServiceCallback;

    invoke-interface {v2, p1}, Lio/appium/android/apis/app/IRemoteServiceCallback;->valueChanged(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    goto :goto_1

    .line 95
    :catch_0
    move-exception v2

    .line 92
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 100
    .end local v1    # "i":I
    :cond_0
    iget-object v1, p0, Lio/appium/android/apis/app/IsolatedService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 101
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .line 68
    iget-object v0, p0, Lio/appium/android/apis/app/IsolatedService;->mBinder:Lio/appium/android/apis/app/IRemoteService$Stub;

    return-object v0
.end method

.method public onCreate()V
    .locals 3

    .line 56
    const-string v0, "IsolatedService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Creating IsolatedService: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    return-void
.end method

.method public onDestroy()V
    .locals 3

    .line 61
    const-string v0, "IsolatedService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Destroying IsolatedService: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    iget-object v0, p0, Lio/appium/android/apis/app/IsolatedService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->kill()V

    .line 64
    return-void
.end method

.method public onTaskRemoved(Landroid/content/Intent;)V
    .locals 3
    .param p1, "rootIntent"    # Landroid/content/Intent;

    .line 85
    const-string v0, "IsolatedService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Task removed in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    invoke-virtual {p0}, Lio/appium/android/apis/app/IsolatedService;->stopSelf()V

    .line 87
    return-void
.end method
