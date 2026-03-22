.class Lio/appium/android/apis/app/IsolatedService$Controller$ServiceInfo$4;
.super Ljava/lang/Object;
.source "IsolatedService.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/appium/android/apis/app/IsolatedService$Controller$ServiceInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/appium/android/apis/app/IsolatedService$Controller$ServiceInfo;


# direct methods
.method constructor <init>(Lio/appium/android/apis/app/IsolatedService$Controller$ServiceInfo;)V
    .locals 0
    .param p1, "this$0"    # Lio/appium/android/apis/app/IsolatedService$Controller$ServiceInfo;

    .line 164
    iput-object p1, p0, Lio/appium/android/apis/app/IsolatedService$Controller$ServiceInfo$4;->this$0:Lio/appium/android/apis/app/IsolatedService$Controller$ServiceInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .param p1, "className"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .line 167
    iget-object v0, p0, Lio/appium/android/apis/app/IsolatedService$Controller$ServiceInfo$4;->this$0:Lio/appium/android/apis/app/IsolatedService$Controller$ServiceInfo;

    invoke-static {p2}, Lio/appium/android/apis/app/IRemoteService$Stub;->asInterface(Landroid/os/IBinder;)Lio/appium/android/apis/app/IRemoteService;

    move-result-object v1

    iput-object v1, v0, Lio/appium/android/apis/app/IsolatedService$Controller$ServiceInfo;->mService:Lio/appium/android/apis/app/IRemoteService;

    .line 168
    iget-object v0, p0, Lio/appium/android/apis/app/IsolatedService$Controller$ServiceInfo$4;->this$0:Lio/appium/android/apis/app/IsolatedService$Controller$ServiceInfo;

    iget-boolean v0, v0, Lio/appium/android/apis/app/IsolatedService$Controller$ServiceInfo;->mServiceBound:Z

    if-eqz v0, :cond_0

    .line 169
    iget-object v0, p0, Lio/appium/android/apis/app/IsolatedService$Controller$ServiceInfo$4;->this$0:Lio/appium/android/apis/app/IsolatedService$Controller$ServiceInfo;

    iget-object v0, v0, Lio/appium/android/apis/app/IsolatedService$Controller$ServiceInfo;->mStatus:Landroid/widget/TextView;

    const-string v1, "CONNECTED"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 171
    :cond_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "className"    # Landroid/content/ComponentName;

    .line 176
    iget-object v0, p0, Lio/appium/android/apis/app/IsolatedService$Controller$ServiceInfo$4;->this$0:Lio/appium/android/apis/app/IsolatedService$Controller$ServiceInfo;

    const/4 v1, 0x0

    iput-object v1, v0, Lio/appium/android/apis/app/IsolatedService$Controller$ServiceInfo;->mService:Lio/appium/android/apis/app/IRemoteService;

    .line 177
    iget-boolean v0, v0, Lio/appium/android/apis/app/IsolatedService$Controller$ServiceInfo;->mServiceBound:Z

    if-eqz v0, :cond_0

    .line 178
    iget-object v0, p0, Lio/appium/android/apis/app/IsolatedService$Controller$ServiceInfo$4;->this$0:Lio/appium/android/apis/app/IsolatedService$Controller$ServiceInfo;

    iget-object v0, v0, Lio/appium/android/apis/app/IsolatedService$Controller$ServiceInfo;->mStatus:Landroid/widget/TextView;

    const-string v1, "DISCONNECTED"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 180
    :cond_0
    return-void
.end method
