.class Lio/appium/android/apis/app/RemoteService$Binding$1;
.super Ljava/lang/Object;
.source "RemoteService.java"

# interfaces
.implements Landroid/content/ServiceConnection;


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

    .line 299
    iput-object p1, p0, Lio/appium/android/apis/app/RemoteService$Binding$1;->this$0:Lio/appium/android/apis/app/RemoteService$Binding;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3
    .param p1, "className"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .line 307
    iget-object v0, p0, Lio/appium/android/apis/app/RemoteService$Binding$1;->this$0:Lio/appium/android/apis/app/RemoteService$Binding;

    invoke-static {p2}, Lio/appium/android/apis/app/IRemoteService$Stub;->asInterface(Landroid/os/IBinder;)Lio/appium/android/apis/app/IRemoteService;

    move-result-object v1

    iput-object v1, v0, Lio/appium/android/apis/app/RemoteService$Binding;->mService:Lio/appium/android/apis/app/IRemoteService;

    .line 308
    iget-object v0, p0, Lio/appium/android/apis/app/RemoteService$Binding$1;->this$0:Lio/appium/android/apis/app/RemoteService$Binding;

    iget-object v0, v0, Lio/appium/android/apis/app/RemoteService$Binding;->mKillButton:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 309
    iget-object v0, p0, Lio/appium/android/apis/app/RemoteService$Binding$1;->this$0:Lio/appium/android/apis/app/RemoteService$Binding;

    iget-object v0, v0, Lio/appium/android/apis/app/RemoteService$Binding;->mCallbackText:Landroid/widget/TextView;

    const-string v1, "Attached."

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 314
    :try_start_0
    iget-object v0, p0, Lio/appium/android/apis/app/RemoteService$Binding$1;->this$0:Lio/appium/android/apis/app/RemoteService$Binding;

    iget-object v0, v0, Lio/appium/android/apis/app/RemoteService$Binding;->mService:Lio/appium/android/apis/app/IRemoteService;

    iget-object v1, p0, Lio/appium/android/apis/app/RemoteService$Binding$1;->this$0:Lio/appium/android/apis/app/RemoteService$Binding;

    invoke-static {v1}, Lio/appium/android/apis/app/RemoteService$Binding;->access$000(Lio/appium/android/apis/app/RemoteService$Binding;)Lio/appium/android/apis/app/IRemoteServiceCallback;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/appium/android/apis/app/IRemoteService;->registerCallback(Lio/appium/android/apis/app/IRemoteServiceCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 320
    goto :goto_0

    .line 315
    :catch_0
    move-exception v0

    .line 323
    :goto_0
    iget-object v0, p0, Lio/appium/android/apis/app/RemoteService$Binding$1;->this$0:Lio/appium/android/apis/app/RemoteService$Binding;

    const v1, 0x7f0e027a

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 324
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 325
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3
    .param p1, "className"    # Landroid/content/ComponentName;

    .line 330
    iget-object v0, p0, Lio/appium/android/apis/app/RemoteService$Binding$1;->this$0:Lio/appium/android/apis/app/RemoteService$Binding;

    const/4 v1, 0x0

    iput-object v1, v0, Lio/appium/android/apis/app/RemoteService$Binding;->mService:Lio/appium/android/apis/app/IRemoteService;

    .line 331
    iget-object v0, v0, Lio/appium/android/apis/app/RemoteService$Binding;->mKillButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 332
    iget-object v0, p0, Lio/appium/android/apis/app/RemoteService$Binding$1;->this$0:Lio/appium/android/apis/app/RemoteService$Binding;

    iget-object v0, v0, Lio/appium/android/apis/app/RemoteService$Binding;->mCallbackText:Landroid/widget/TextView;

    const-string v2, "Disconnected."

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 335
    iget-object v0, p0, Lio/appium/android/apis/app/RemoteService$Binding$1;->this$0:Lio/appium/android/apis/app/RemoteService$Binding;

    const v2, 0x7f0e027c

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 336
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 337
    return-void
.end method
