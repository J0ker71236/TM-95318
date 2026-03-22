.class Lio/appium/android/apis/app/RemoteService$Binding$4;
.super Ljava/lang/Object;
.source "RemoteService.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    .line 373
    iput-object p1, p0, Lio/appium/android/apis/app/RemoteService$Binding$4;->this$0:Lio/appium/android/apis/app/RemoteService$Binding;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .line 375
    iget-object v0, p0, Lio/appium/android/apis/app/RemoteService$Binding$4;->this$0:Lio/appium/android/apis/app/RemoteService$Binding;

    invoke-static {v0}, Lio/appium/android/apis/app/RemoteService$Binding;->access$300(Lio/appium/android/apis/app/RemoteService$Binding;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 378
    iget-object v0, p0, Lio/appium/android/apis/app/RemoteService$Binding$4;->this$0:Lio/appium/android/apis/app/RemoteService$Binding;

    iget-object v0, v0, Lio/appium/android/apis/app/RemoteService$Binding;->mService:Lio/appium/android/apis/app/IRemoteService;

    if-eqz v0, :cond_0

    .line 380
    :try_start_0
    iget-object v0, p0, Lio/appium/android/apis/app/RemoteService$Binding$4;->this$0:Lio/appium/android/apis/app/RemoteService$Binding;

    iget-object v0, v0, Lio/appium/android/apis/app/RemoteService$Binding;->mService:Lio/appium/android/apis/app/IRemoteService;

    iget-object v1, p0, Lio/appium/android/apis/app/RemoteService$Binding$4;->this$0:Lio/appium/android/apis/app/RemoteService$Binding;

    invoke-static {v1}, Lio/appium/android/apis/app/RemoteService$Binding;->access$000(Lio/appium/android/apis/app/RemoteService$Binding;)Lio/appium/android/apis/app/IRemoteServiceCallback;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/appium/android/apis/app/IRemoteService;->unregisterCallback(Lio/appium/android/apis/app/IRemoteServiceCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 384
    goto :goto_0

    .line 381
    :catch_0
    move-exception v0

    .line 388
    :cond_0
    :goto_0
    iget-object v0, p0, Lio/appium/android/apis/app/RemoteService$Binding$4;->this$0:Lio/appium/android/apis/app/RemoteService$Binding;

    invoke-static {v0}, Lio/appium/android/apis/app/RemoteService$Binding;->access$100(Lio/appium/android/apis/app/RemoteService$Binding;)Landroid/content/ServiceConnection;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/appium/android/apis/app/RemoteService$Binding;->unbindService(Landroid/content/ServiceConnection;)V

    .line 389
    iget-object v0, p0, Lio/appium/android/apis/app/RemoteService$Binding$4;->this$0:Lio/appium/android/apis/app/RemoteService$Binding;

    invoke-static {v0}, Lio/appium/android/apis/app/RemoteService$Binding;->access$200(Lio/appium/android/apis/app/RemoteService$Binding;)Landroid/content/ServiceConnection;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/appium/android/apis/app/RemoteService$Binding;->unbindService(Landroid/content/ServiceConnection;)V

    .line 390
    iget-object v0, p0, Lio/appium/android/apis/app/RemoteService$Binding$4;->this$0:Lio/appium/android/apis/app/RemoteService$Binding;

    iget-object v0, v0, Lio/appium/android/apis/app/RemoteService$Binding;->mKillButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 391
    iget-object v0, p0, Lio/appium/android/apis/app/RemoteService$Binding$4;->this$0:Lio/appium/android/apis/app/RemoteService$Binding;

    invoke-static {v0, v1}, Lio/appium/android/apis/app/RemoteService$Binding;->access$302(Lio/appium/android/apis/app/RemoteService$Binding;Z)Z

    .line 392
    iget-object v0, p0, Lio/appium/android/apis/app/RemoteService$Binding$4;->this$0:Lio/appium/android/apis/app/RemoteService$Binding;

    iget-object v0, v0, Lio/appium/android/apis/app/RemoteService$Binding;->mCallbackText:Landroid/widget/TextView;

    const-string v1, "Unbinding."

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 394
    :cond_1
    return-void
.end method
