.class Lio/appium/android/apis/app/RemoteService$3;
.super Landroid/os/Handler;
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

    .line 149
    iput-object p1, p0, Lio/appium/android/apis/app/RemoteService$3;->this$0:Lio/appium/android/apis/app/RemoteService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .line 151
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 174
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    goto :goto_2

    .line 156
    :cond_0
    iget-object v0, p0, Lio/appium/android/apis/app/RemoteService$3;->this$0:Lio/appium/android/apis/app/RemoteService;

    iget v2, v0, Lio/appium/android/apis/app/RemoteService;->mValue:I

    add-int/2addr v2, v1

    iput v2, v0, Lio/appium/android/apis/app/RemoteService;->mValue:I

    move v0, v2

    .line 159
    .local v0, "value":I
    iget-object v2, p0, Lio/appium/android/apis/app/RemoteService$3;->this$0:Lio/appium/android/apis/app/RemoteService;

    iget-object v2, v2, Lio/appium/android/apis/app/RemoteService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v2

    .line 160
    .local v2, "N":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_1

    .line 162
    :try_start_0
    iget-object v4, p0, Lio/appium/android/apis/app/RemoteService$3;->this$0:Lio/appium/android/apis/app/RemoteService;

    iget-object v4, v4, Lio/appium/android/apis/app/RemoteService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4, v3}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v4

    check-cast v4, Lio/appium/android/apis/app/IRemoteServiceCallback;

    invoke-interface {v4, v0}, Lio/appium/android/apis/app/IRemoteServiceCallback;->valueChanged(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 166
    goto :goto_1

    .line 163
    :catch_0
    move-exception v4

    .line 160
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 168
    .end local v3    # "i":I
    :cond_1
    iget-object v3, p0, Lio/appium/android/apis/app/RemoteService$3;->this$0:Lio/appium/android/apis/app/RemoteService;

    iget-object v3, v3, Lio/appium/android/apis/app/RemoteService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 171
    invoke-virtual {p0, v1}, Lio/appium/android/apis/app/RemoteService$3;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v3, 0x3e8

    invoke-virtual {p0, v1, v3, v4}, Lio/appium/android/apis/app/RemoteService$3;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 172
    .end local v0    # "value":I
    .end local v2    # "N":I
    nop

    .line 176
    :goto_2
    return-void
.end method
