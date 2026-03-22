.class Lio/appium/android/apis/app/RemoteService$BindingOptions$3;
.super Ljava/lang/Object;
.source "RemoteService.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/appium/android/apis/app/RemoteService$BindingOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/appium/android/apis/app/RemoteService$BindingOptions;


# direct methods
.method constructor <init>(Lio/appium/android/apis/app/RemoteService$BindingOptions;)V
    .locals 0
    .param p1, "this$0"    # Lio/appium/android/apis/app/RemoteService$BindingOptions;

    .line 572
    iput-object p1, p0, Lio/appium/android/apis/app/RemoteService$BindingOptions$3;->this$0:Lio/appium/android/apis/app/RemoteService$BindingOptions;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .line 574
    iget-object v0, p0, Lio/appium/android/apis/app/RemoteService$BindingOptions$3;->this$0:Lio/appium/android/apis/app/RemoteService$BindingOptions;

    iget-object v0, v0, Lio/appium/android/apis/app/RemoteService$BindingOptions;->mCurConnection:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_0

    .line 575
    iget-object v0, p0, Lio/appium/android/apis/app/RemoteService$BindingOptions$3;->this$0:Lio/appium/android/apis/app/RemoteService$BindingOptions;

    iget-object v1, v0, Lio/appium/android/apis/app/RemoteService$BindingOptions;->mCurConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Lio/appium/android/apis/app/RemoteService$BindingOptions;->unbindService(Landroid/content/ServiceConnection;)V

    .line 576
    iget-object v0, p0, Lio/appium/android/apis/app/RemoteService$BindingOptions$3;->this$0:Lio/appium/android/apis/app/RemoteService$BindingOptions;

    const/4 v1, 0x0

    iput-object v1, v0, Lio/appium/android/apis/app/RemoteService$BindingOptions;->mCurConnection:Landroid/content/ServiceConnection;

    .line 578
    :cond_0
    new-instance v0, Lio/appium/android/apis/app/RemoteService$BindingOptions$MyServiceConnection;

    iget-object v1, p0, Lio/appium/android/apis/app/RemoteService$BindingOptions$3;->this$0:Lio/appium/android/apis/app/RemoteService$BindingOptions;

    invoke-direct {v0, v1}, Lio/appium/android/apis/app/RemoteService$BindingOptions$MyServiceConnection;-><init>(Lio/appium/android/apis/app/RemoteService$BindingOptions;)V

    .line 579
    .local v0, "conn":Landroid/content/ServiceConnection;
    iget-object v1, p0, Lio/appium/android/apis/app/RemoteService$BindingOptions$3;->this$0:Lio/appium/android/apis/app/RemoteService$BindingOptions;

    new-instance v2, Landroid/content/Intent;

    const-class v3, Lio/appium/android/apis/app/IRemoteService;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v3, 0x9

    invoke-virtual {v1, v2, v0, v3}, Lio/appium/android/apis/app/RemoteService$BindingOptions;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 581
    iget-object v1, p0, Lio/appium/android/apis/app/RemoteService$BindingOptions$3;->this$0:Lio/appium/android/apis/app/RemoteService$BindingOptions;

    iput-object v0, v1, Lio/appium/android/apis/app/RemoteService$BindingOptions;->mCurConnection:Landroid/content/ServiceConnection;

    .line 583
    :cond_1
    return-void
.end method
