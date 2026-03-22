.class public Lio/appium/android/apis/app/MessengerServiceActivities$Binding;
.super Landroid/app/Activity;
.source "MessengerServiceActivities.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/appium/android/apis/app/MessengerServiceActivities;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Binding"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/appium/android/apis/app/MessengerServiceActivities$Binding$IncomingHandler;
    }
.end annotation


# instance fields
.field private mBindListener:Landroid/view/View$OnClickListener;

.field mCallbackText:Landroid/widget/TextView;

.field private mConnection:Landroid/content/ServiceConnection;

.field mIsBound:Z

.field final mMessenger:Landroid/os/Messenger;

.field mService:Landroid/os/Messenger;

.field private mUnbindListener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 32
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 35
    const/4 v0, 0x0

    iput-object v0, p0, Lio/appium/android/apis/app/MessengerServiceActivities$Binding;->mService:Landroid/os/Messenger;

    .line 60
    new-instance v0, Landroid/os/Messenger;

    new-instance v1, Lio/appium/android/apis/app/MessengerServiceActivities$Binding$IncomingHandler;

    invoke-direct {v1, p0}, Lio/appium/android/apis/app/MessengerServiceActivities$Binding$IncomingHandler;-><init>(Lio/appium/android/apis/app/MessengerServiceActivities$Binding;)V

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lio/appium/android/apis/app/MessengerServiceActivities$Binding;->mMessenger:Landroid/os/Messenger;

    .line 65
    new-instance v0, Lio/appium/android/apis/app/MessengerServiceActivities$Binding$1;

    invoke-direct {v0, p0}, Lio/appium/android/apis/app/MessengerServiceActivities$Binding$1;-><init>(Lio/appium/android/apis/app/MessengerServiceActivities$Binding;)V

    iput-object v0, p0, Lio/appium/android/apis/app/MessengerServiceActivities$Binding;->mConnection:Landroid/content/ServiceConnection;

    .line 166
    new-instance v0, Lio/appium/android/apis/app/MessengerServiceActivities$Binding$2;

    invoke-direct {v0, p0}, Lio/appium/android/apis/app/MessengerServiceActivities$Binding$2;-><init>(Lio/appium/android/apis/app/MessengerServiceActivities$Binding;)V

    iput-object v0, p0, Lio/appium/android/apis/app/MessengerServiceActivities$Binding;->mBindListener:Landroid/view/View$OnClickListener;

    .line 172
    new-instance v0, Lio/appium/android/apis/app/MessengerServiceActivities$Binding$3;

    invoke-direct {v0, p0}, Lio/appium/android/apis/app/MessengerServiceActivities$Binding$3;-><init>(Lio/appium/android/apis/app/MessengerServiceActivities$Binding;)V

    iput-object v0, p0, Lio/appium/android/apis/app/MessengerServiceActivities$Binding;->mUnbindListener:Landroid/view/View$OnClickListener;

    return-void
.end method


# virtual methods
.method doBindService()V
    .locals 3

    .line 116
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lio/appium/android/apis/app/MessengerService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lio/appium/android/apis/app/MessengerServiceActivities$Binding;->mConnection:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lio/appium/android/apis/app/MessengerServiceActivities$Binding;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 118
    iput-boolean v2, p0, Lio/appium/android/apis/app/MessengerServiceActivities$Binding;->mIsBound:Z

    .line 119
    iget-object v0, p0, Lio/appium/android/apis/app/MessengerServiceActivities$Binding;->mCallbackText:Landroid/widget/TextView;

    const-string v1, "Binding."

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 120
    return-void
.end method

.method doUnbindService()V
    .locals 2

    .line 123
    iget-boolean v0, p0, Lio/appium/android/apis/app/MessengerServiceActivities$Binding;->mIsBound:Z

    if-eqz v0, :cond_1

    .line 126
    iget-object v0, p0, Lio/appium/android/apis/app/MessengerServiceActivities$Binding;->mService:Landroid/os/Messenger;

    if-eqz v0, :cond_0

    .line 128
    const/4 v0, 0x0

    const/4 v1, 0x2

    :try_start_0
    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 130
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lio/appium/android/apis/app/MessengerServiceActivities$Binding;->mMessenger:Landroid/os/Messenger;

    iput-object v1, v0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 131
    iget-object v1, p0, Lio/appium/android/apis/app/MessengerServiceActivities$Binding;->mService:Landroid/os/Messenger;

    invoke-virtual {v1, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 135
    .end local v0    # "msg":Landroid/os/Message;
    goto :goto_0

    .line 132
    :catch_0
    move-exception v0

    .line 139
    :cond_0
    :goto_0
    iget-object v0, p0, Lio/appium/android/apis/app/MessengerServiceActivities$Binding;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Lio/appium/android/apis/app/MessengerServiceActivities$Binding;->unbindService(Landroid/content/ServiceConnection;)V

    .line 140
    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/appium/android/apis/app/MessengerServiceActivities$Binding;->mIsBound:Z

    .line 141
    iget-object v0, p0, Lio/appium/android/apis/app/MessengerServiceActivities$Binding;->mCallbackText:Landroid/widget/TextView;

    const-string v1, "Unbinding."

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 143
    :cond_1
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 152
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 154
    const v0, 0x7f0b00ae

    invoke-virtual {p0, v0}, Lio/appium/android/apis/app/MessengerServiceActivities$Binding;->setContentView(I)V

    .line 157
    const v0, 0x7f090032

    invoke-virtual {p0, v0}, Lio/appium/android/apis/app/MessengerServiceActivities$Binding;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 158
    .local v0, "button":Landroid/widget/Button;
    iget-object v1, p0, Lio/appium/android/apis/app/MessengerServiceActivities$Binding;->mBindListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 159
    const v1, 0x7f090237

    invoke-virtual {p0, v1}, Lio/appium/android/apis/app/MessengerServiceActivities$Binding;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Landroid/widget/Button;

    .line 160
    iget-object v1, p0, Lio/appium/android/apis/app/MessengerServiceActivities$Binding;->mUnbindListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 162
    const v1, 0x7f090054

    invoke-virtual {p0, v1}, Lio/appium/android/apis/app/MessengerServiceActivities$Binding;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lio/appium/android/apis/app/MessengerServiceActivities$Binding;->mCallbackText:Landroid/widget/TextView;

    .line 163
    iget-object v1, p0, Lio/appium/android/apis/app/MessengerServiceActivities$Binding;->mCallbackText:Landroid/widget/TextView;

    const-string v2, "Not attached."

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 164
    return-void
.end method
