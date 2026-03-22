.class Lio/appium/android/apis/app/MessengerServiceActivities$Binding$1;
.super Ljava/lang/Object;
.source "MessengerServiceActivities.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/appium/android/apis/app/MessengerServiceActivities$Binding;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/appium/android/apis/app/MessengerServiceActivities$Binding;


# direct methods
.method constructor <init>(Lio/appium/android/apis/app/MessengerServiceActivities$Binding;)V
    .locals 0
    .param p1, "this$0"    # Lio/appium/android/apis/app/MessengerServiceActivities$Binding;

    .line 65
    iput-object p1, p0, Lio/appium/android/apis/app/MessengerServiceActivities$Binding$1;->this$0:Lio/appium/android/apis/app/MessengerServiceActivities$Binding;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 5
    .param p1, "className"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .line 73
    iget-object v0, p0, Lio/appium/android/apis/app/MessengerServiceActivities$Binding$1;->this$0:Lio/appium/android/apis/app/MessengerServiceActivities$Binding;

    new-instance v1, Landroid/os/Messenger;

    invoke-direct {v1, p2}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    iput-object v1, v0, Lio/appium/android/apis/app/MessengerServiceActivities$Binding;->mService:Landroid/os/Messenger;

    .line 74
    iget-object v0, p0, Lio/appium/android/apis/app/MessengerServiceActivities$Binding$1;->this$0:Lio/appium/android/apis/app/MessengerServiceActivities$Binding;

    iget-object v0, v0, Lio/appium/android/apis/app/MessengerServiceActivities$Binding;->mCallbackText:Landroid/widget/TextView;

    const-string v1, "Attached."

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 79
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    invoke-static {v2, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 81
    .local v0, "msg":Landroid/os/Message;
    iget-object v3, p0, Lio/appium/android/apis/app/MessengerServiceActivities$Binding$1;->this$0:Lio/appium/android/apis/app/MessengerServiceActivities$Binding;

    iget-object v3, v3, Lio/appium/android/apis/app/MessengerServiceActivities$Binding;->mMessenger:Landroid/os/Messenger;

    iput-object v3, v0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 82
    iget-object v3, p0, Lio/appium/android/apis/app/MessengerServiceActivities$Binding$1;->this$0:Lio/appium/android/apis/app/MessengerServiceActivities$Binding;

    iget-object v3, v3, Lio/appium/android/apis/app/MessengerServiceActivities$Binding;->mService:Landroid/os/Messenger;

    invoke-virtual {v3, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V

    .line 85
    const/4 v3, 0x3

    .line 86
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v4

    .line 85
    invoke-static {v2, v3, v4, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v2

    move-object v0, v2

    .line 87
    iget-object v2, p0, Lio/appium/android/apis/app/MessengerServiceActivities$Binding$1;->this$0:Lio/appium/android/apis/app/MessengerServiceActivities$Binding;

    iget-object v2, v2, Lio/appium/android/apis/app/MessengerServiceActivities$Binding;->mService:Landroid/os/Messenger;

    invoke-virtual {v2, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    .end local v0    # "msg":Landroid/os/Message;
    goto :goto_0

    .line 88
    :catch_0
    move-exception v0

    .line 96
    :goto_0
    iget-object v0, p0, Lio/appium/android/apis/app/MessengerServiceActivities$Binding$1;->this$0:Lio/appium/android/apis/app/MessengerServiceActivities$Binding;

    const v2, 0x7f0e027a

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 97
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 98
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3
    .param p1, "className"    # Landroid/content/ComponentName;

    .line 103
    iget-object v0, p0, Lio/appium/android/apis/app/MessengerServiceActivities$Binding$1;->this$0:Lio/appium/android/apis/app/MessengerServiceActivities$Binding;

    const/4 v1, 0x0

    iput-object v1, v0, Lio/appium/android/apis/app/MessengerServiceActivities$Binding;->mService:Landroid/os/Messenger;

    .line 104
    iget-object v0, v0, Lio/appium/android/apis/app/MessengerServiceActivities$Binding;->mCallbackText:Landroid/widget/TextView;

    const-string v1, "Disconnected."

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 107
    iget-object v0, p0, Lio/appium/android/apis/app/MessengerServiceActivities$Binding$1;->this$0:Lio/appium/android/apis/app/MessengerServiceActivities$Binding;

    const v1, 0x7f0e027c

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 108
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 109
    return-void
.end method
