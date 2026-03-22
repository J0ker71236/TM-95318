.class Lio/appium/android/apis/app/RemoteService$Binding$6;
.super Lio/appium/android/apis/app/IRemoteServiceCallback$Stub;
.source "RemoteService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/appium/android/apis/app/RemoteService$Binding;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/appium/android/apis/app/RemoteService$Binding;


# direct methods
.method constructor <init>(Lio/appium/android/apis/app/RemoteService$Binding;)V
    .locals 0
    .param p1, "this$0"    # Lio/appium/android/apis/app/RemoteService$Binding;

    .line 435
    iput-object p1, p0, Lio/appium/android/apis/app/RemoteService$Binding$6;->this$0:Lio/appium/android/apis/app/RemoteService$Binding;

    invoke-direct {p0}, Lio/appium/android/apis/app/IRemoteServiceCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public valueChanged(I)V
    .locals 4
    .param p1, "value"    # I

    .line 444
    iget-object v0, p0, Lio/appium/android/apis/app/RemoteService$Binding$6;->this$0:Lio/appium/android/apis/app/RemoteService$Binding;

    invoke-static {v0}, Lio/appium/android/apis/app/RemoteService$Binding;->access$400(Lio/appium/android/apis/app/RemoteService$Binding;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lio/appium/android/apis/app/RemoteService$Binding$6;->this$0:Lio/appium/android/apis/app/RemoteService$Binding;

    invoke-static {v1}, Lio/appium/android/apis/app/RemoteService$Binding;->access$400(Lio/appium/android/apis/app/RemoteService$Binding;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 445
    return-void
.end method
