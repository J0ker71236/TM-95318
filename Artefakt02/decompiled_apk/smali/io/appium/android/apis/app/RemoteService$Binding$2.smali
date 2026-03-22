.class Lio/appium/android/apis/app/RemoteService$Binding$2;
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

    .line 343
    iput-object p1, p0, Lio/appium/android/apis/app/RemoteService$Binding$2;->this$0:Lio/appium/android/apis/app/RemoteService$Binding;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .param p1, "className"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .line 348
    iget-object v0, p0, Lio/appium/android/apis/app/RemoteService$Binding$2;->this$0:Lio/appium/android/apis/app/RemoteService$Binding;

    invoke-static {p2}, Lio/appium/android/apis/app/ISecondary$Stub;->asInterface(Landroid/os/IBinder;)Lio/appium/android/apis/app/ISecondary;

    move-result-object v1

    iput-object v1, v0, Lio/appium/android/apis/app/RemoteService$Binding;->mSecondaryService:Lio/appium/android/apis/app/ISecondary;

    .line 349
    iget-object v0, p0, Lio/appium/android/apis/app/RemoteService$Binding$2;->this$0:Lio/appium/android/apis/app/RemoteService$Binding;

    iget-object v0, v0, Lio/appium/android/apis/app/RemoteService$Binding;->mKillButton:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 350
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "className"    # Landroid/content/ComponentName;

    .line 353
    iget-object v0, p0, Lio/appium/android/apis/app/RemoteService$Binding$2;->this$0:Lio/appium/android/apis/app/RemoteService$Binding;

    const/4 v1, 0x0

    iput-object v1, v0, Lio/appium/android/apis/app/RemoteService$Binding;->mSecondaryService:Lio/appium/android/apis/app/ISecondary;

    .line 354
    iget-object v0, v0, Lio/appium/android/apis/app/RemoteService$Binding;->mKillButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 355
    return-void
.end method
