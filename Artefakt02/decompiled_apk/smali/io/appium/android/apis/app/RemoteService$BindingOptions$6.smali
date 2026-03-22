.class Lio/appium/android/apis/app/RemoteService$BindingOptions$6;
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

    .line 614
    iput-object p1, p0, Lio/appium/android/apis/app/RemoteService$BindingOptions$6;->this$0:Lio/appium/android/apis/app/RemoteService$BindingOptions;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .line 616
    iget-object v0, p0, Lio/appium/android/apis/app/RemoteService$BindingOptions$6;->this$0:Lio/appium/android/apis/app/RemoteService$BindingOptions;

    iget-object v0, v0, Lio/appium/android/apis/app/RemoteService$BindingOptions;->mCurConnection:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_0

    .line 617
    iget-object v0, p0, Lio/appium/android/apis/app/RemoteService$BindingOptions$6;->this$0:Lio/appium/android/apis/app/RemoteService$BindingOptions;

    iget-object v1, v0, Lio/appium/android/apis/app/RemoteService$BindingOptions;->mCurConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Lio/appium/android/apis/app/RemoteService$BindingOptions;->unbindService(Landroid/content/ServiceConnection;)V

    .line 618
    iget-object v0, p0, Lio/appium/android/apis/app/RemoteService$BindingOptions$6;->this$0:Lio/appium/android/apis/app/RemoteService$BindingOptions;

    const/4 v1, 0x0

    iput-object v1, v0, Lio/appium/android/apis/app/RemoteService$BindingOptions;->mCurConnection:Landroid/content/ServiceConnection;

    .line 620
    :cond_0
    new-instance v0, Lio/appium/android/apis/app/RemoteService$BindingOptions$MyServiceConnection;

    iget-object v1, p0, Lio/appium/android/apis/app/RemoteService$BindingOptions$6;->this$0:Lio/appium/android/apis/app/RemoteService$BindingOptions;

    invoke-direct {v0, v1}, Lio/appium/android/apis/app/RemoteService$BindingOptions$MyServiceConnection;-><init>(Lio/appium/android/apis/app/RemoteService$BindingOptions;)V

    .line 621
    .local v0, "conn":Landroid/content/ServiceConnection;
    iget-object v1, p0, Lio/appium/android/apis/app/RemoteService$BindingOptions$6;->this$0:Lio/appium/android/apis/app/RemoteService$BindingOptions;

    new-instance v2, Landroid/content/Intent;

    const-class v3, Lio/appium/android/apis/app/IRemoteService;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v3, 0x41

    invoke-virtual {v1, v2, v0, v3}, Lio/appium/android/apis/app/RemoteService$BindingOptions;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 623
    iget-object v1, p0, Lio/appium/android/apis/app/RemoteService$BindingOptions$6;->this$0:Lio/appium/android/apis/app/RemoteService$BindingOptions;

    iput-object v0, v1, Lio/appium/android/apis/app/RemoteService$BindingOptions;->mCurConnection:Landroid/content/ServiceConnection;

    .line 625
    :cond_1
    return-void
.end method
