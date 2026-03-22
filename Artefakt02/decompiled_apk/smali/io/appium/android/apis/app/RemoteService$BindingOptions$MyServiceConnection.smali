.class Lio/appium/android/apis/app/RemoteService$BindingOptions$MyServiceConnection;
.super Ljava/lang/Object;
.source "RemoteService.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/appium/android/apis/app/RemoteService$BindingOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyServiceConnection"
.end annotation


# instance fields
.field final mUnbindOnDisconnect:Z

.field final synthetic this$0:Lio/appium/android/apis/app/RemoteService$BindingOptions;


# direct methods
.method public constructor <init>(Lio/appium/android/apis/app/RemoteService$BindingOptions;)V
    .locals 1
    .param p1, "this$0"    # Lio/appium/android/apis/app/RemoteService$BindingOptions;

    .line 478
    iput-object p1, p0, Lio/appium/android/apis/app/RemoteService$BindingOptions$MyServiceConnection;->this$0:Lio/appium/android/apis/app/RemoteService$BindingOptions;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 479
    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/appium/android/apis/app/RemoteService$BindingOptions$MyServiceConnection;->mUnbindOnDisconnect:Z

    .line 480
    return-void
.end method

.method public constructor <init>(Lio/appium/android/apis/app/RemoteService$BindingOptions;Z)V
    .locals 0
    .param p1, "this$0"    # Lio/appium/android/apis/app/RemoteService$BindingOptions;
    .param p2, "unbindOnDisconnect"    # Z

    .line 482
    iput-object p1, p0, Lio/appium/android/apis/app/RemoteService$BindingOptions$MyServiceConnection;->this$0:Lio/appium/android/apis/app/RemoteService$BindingOptions;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 483
    iput-boolean p2, p0, Lio/appium/android/apis/app/RemoteService$BindingOptions$MyServiceConnection;->mUnbindOnDisconnect:Z

    .line 484
    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3
    .param p1, "className"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .line 488
    iget-object v0, p0, Lio/appium/android/apis/app/RemoteService$BindingOptions$MyServiceConnection;->this$0:Lio/appium/android/apis/app/RemoteService$BindingOptions;

    iget-object v0, v0, Lio/appium/android/apis/app/RemoteService$BindingOptions;->mCurConnection:Landroid/content/ServiceConnection;

    if-eq v0, p0, :cond_0

    .line 489
    return-void

    .line 491
    :cond_0
    iget-object v0, p0, Lio/appium/android/apis/app/RemoteService$BindingOptions$MyServiceConnection;->this$0:Lio/appium/android/apis/app/RemoteService$BindingOptions;

    iget-object v0, v0, Lio/appium/android/apis/app/RemoteService$BindingOptions;->mCallbackText:Landroid/widget/TextView;

    const-string v1, "Attached."

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 492
    iget-object v0, p0, Lio/appium/android/apis/app/RemoteService$BindingOptions$MyServiceConnection;->this$0:Lio/appium/android/apis/app/RemoteService$BindingOptions;

    const v1, 0x7f0e027a

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 493
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 494
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3
    .param p1, "className"    # Landroid/content/ComponentName;

    .line 497
    iget-object v0, p0, Lio/appium/android/apis/app/RemoteService$BindingOptions$MyServiceConnection;->this$0:Lio/appium/android/apis/app/RemoteService$BindingOptions;

    iget-object v0, v0, Lio/appium/android/apis/app/RemoteService$BindingOptions;->mCurConnection:Landroid/content/ServiceConnection;

    if-eq v0, p0, :cond_0

    .line 498
    return-void

    .line 500
    :cond_0
    iget-object v0, p0, Lio/appium/android/apis/app/RemoteService$BindingOptions$MyServiceConnection;->this$0:Lio/appium/android/apis/app/RemoteService$BindingOptions;

    iget-object v0, v0, Lio/appium/android/apis/app/RemoteService$BindingOptions;->mCallbackText:Landroid/widget/TextView;

    const-string v1, "Disconnected."

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 501
    iget-object v0, p0, Lio/appium/android/apis/app/RemoteService$BindingOptions$MyServiceConnection;->this$0:Lio/appium/android/apis/app/RemoteService$BindingOptions;

    const v1, 0x7f0e027c

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 502
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 503
    iget-boolean v0, p0, Lio/appium/android/apis/app/RemoteService$BindingOptions$MyServiceConnection;->mUnbindOnDisconnect:Z

    if-eqz v0, :cond_1

    .line 504
    iget-object v0, p0, Lio/appium/android/apis/app/RemoteService$BindingOptions$MyServiceConnection;->this$0:Lio/appium/android/apis/app/RemoteService$BindingOptions;

    invoke-virtual {v0, p0}, Lio/appium/android/apis/app/RemoteService$BindingOptions;->unbindService(Landroid/content/ServiceConnection;)V

    .line 505
    iget-object v0, p0, Lio/appium/android/apis/app/RemoteService$BindingOptions$MyServiceConnection;->this$0:Lio/appium/android/apis/app/RemoteService$BindingOptions;

    const/4 v1, 0x0

    iput-object v1, v0, Lio/appium/android/apis/app/RemoteService$BindingOptions;->mCurConnection:Landroid/content/ServiceConnection;

    .line 506
    const v1, 0x7f0e0280

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 507
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 509
    :cond_1
    return-void
.end method
