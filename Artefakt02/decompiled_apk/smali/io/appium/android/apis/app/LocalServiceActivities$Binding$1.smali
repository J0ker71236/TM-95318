.class Lio/appium/android/apis/app/LocalServiceActivities$Binding$1;
.super Ljava/lang/Object;
.source "LocalServiceActivities.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/appium/android/apis/app/LocalServiceActivities$Binding;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/appium/android/apis/app/LocalServiceActivities$Binding;


# direct methods
.method constructor <init>(Lio/appium/android/apis/app/LocalServiceActivities$Binding;)V
    .locals 0
    .param p1, "this$0"    # Lio/appium/android/apis/app/LocalServiceActivities$Binding;

    .line 96
    iput-object p1, p0, Lio/appium/android/apis/app/LocalServiceActivities$Binding$1;->this$0:Lio/appium/android/apis/app/LocalServiceActivities$Binding;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3
    .param p1, "className"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .line 103
    iget-object v0, p0, Lio/appium/android/apis/app/LocalServiceActivities$Binding$1;->this$0:Lio/appium/android/apis/app/LocalServiceActivities$Binding;

    move-object v1, p2

    check-cast v1, Lio/appium/android/apis/app/LocalService$LocalBinder;

    invoke-virtual {v1}, Lio/appium/android/apis/app/LocalService$LocalBinder;->getService()Lio/appium/android/apis/app/LocalService;

    move-result-object v1

    invoke-static {v0, v1}, Lio/appium/android/apis/app/LocalServiceActivities$Binding;->access$002(Lio/appium/android/apis/app/LocalServiceActivities$Binding;Lio/appium/android/apis/app/LocalService;)Lio/appium/android/apis/app/LocalService;

    .line 106
    iget-object v0, p0, Lio/appium/android/apis/app/LocalServiceActivities$Binding$1;->this$0:Lio/appium/android/apis/app/LocalServiceActivities$Binding;

    const v1, 0x7f0e01fa

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 107
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 108
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3
    .param p1, "className"    # Landroid/content/ComponentName;

    .line 115
    iget-object v0, p0, Lio/appium/android/apis/app/LocalServiceActivities$Binding$1;->this$0:Lio/appium/android/apis/app/LocalServiceActivities$Binding;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lio/appium/android/apis/app/LocalServiceActivities$Binding;->access$002(Lio/appium/android/apis/app/LocalServiceActivities$Binding;Lio/appium/android/apis/app/LocalService;)Lio/appium/android/apis/app/LocalService;

    .line 116
    iget-object v0, p0, Lio/appium/android/apis/app/LocalServiceActivities$Binding$1;->this$0:Lio/appium/android/apis/app/LocalServiceActivities$Binding;

    const v1, 0x7f0e01fc

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 117
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 118
    return-void
.end method
