.class public Lio/appium/android/apis/app/RemoteService;
.super Landroid/app/Service;
.source "RemoteService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/appium/android/apis/app/RemoteService$BindingOptions;,
        Lio/appium/android/apis/app/RemoteService$Binding;,
        Lio/appium/android/apis/app/RemoteService$Controller;
    }
.end annotation


# static fields
.field private static final REPORT_MSG:I = 0x1


# instance fields
.field private final mBinder:Lio/appium/android/apis/app/IRemoteService$Stub;

.field final mCallbacks:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Lio/appium/android/apis/app/IRemoteServiceCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final mHandler:Landroid/os/Handler;

.field mNM:Landroid/app/NotificationManager;

.field private final mSecondaryBinder:Lio/appium/android/apis/app/ISecondary$Stub;

.field mValue:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 57
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 63
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lio/appium/android/apis/app/RemoteService;->mCallbacks:Landroid/os/RemoteCallbackList;

    .line 66
    const/4 v0, 0x0

    iput v0, p0, Lio/appium/android/apis/app/RemoteService;->mValue:I

    .line 116
    new-instance v0, Lio/appium/android/apis/app/RemoteService$1;

    invoke-direct {v0, p0}, Lio/appium/android/apis/app/RemoteService$1;-><init>(Lio/appium/android/apis/app/RemoteService;)V

    iput-object v0, p0, Lio/appium/android/apis/app/RemoteService;->mBinder:Lio/appium/android/apis/app/IRemoteService$Stub;

    .line 128
    new-instance v0, Lio/appium/android/apis/app/RemoteService$2;

    invoke-direct {v0, p0}, Lio/appium/android/apis/app/RemoteService$2;-><init>(Lio/appium/android/apis/app/RemoteService;)V

    iput-object v0, p0, Lio/appium/android/apis/app/RemoteService;->mSecondaryBinder:Lio/appium/android/apis/app/ISecondary$Stub;

    .line 149
    new-instance v0, Lio/appium/android/apis/app/RemoteService$3;

    invoke-direct {v0, p0}, Lio/appium/android/apis/app/RemoteService$3;-><init>(Lio/appium/android/apis/app/RemoteService;)V

    iput-object v0, p0, Lio/appium/android/apis/app/RemoteService;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private showNotification()V
    .locals 6

    .line 185
    const v0, 0x7f0e027e

    invoke-virtual {p0, v0}, Lio/appium/android/apis/app/RemoteService;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 187
    .local v1, "text":Ljava/lang/CharSequence;
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lio/appium/android/apis/app/RemoteService$Controller;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v3, 0x0

    invoke-static {p0, v3, v2, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 190
    .local v2, "contentIntent":Landroid/app/PendingIntent;
    new-instance v3, Landroid/app/Notification$Builder;

    invoke-direct {v3, p0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 191
    const v4, 0x7f0800c1

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v3

    .line 192
    invoke-virtual {v3, v1}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v3

    .line 193
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v3

    .line 194
    const v4, 0x7f0e027d

    invoke-virtual {p0, v4}, Lio/appium/android/apis/app/RemoteService;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v3

    .line 195
    invoke-virtual {v3, v1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v3

    .line 196
    invoke-virtual {v3, v2}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v3

    .line 197
    invoke-virtual {v3}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v3

    .line 200
    .local v3, "notification":Landroid/app/Notification;
    iget-object v4, p0, Lio/appium/android/apis/app/RemoteService;->mNM:Landroid/app/NotificationManager;

    invoke-virtual {v4, v0, v3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 201
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .line 104
    const-class v0, Lio/appium/android/apis/app/IRemoteService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lio/appium/android/apis/app/RemoteService;->mBinder:Lio/appium/android/apis/app/IRemoteService$Stub;

    return-object v0

    .line 107
    :cond_0
    const-class v0, Lio/appium/android/apis/app/ISecondary;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 108
    iget-object v0, p0, Lio/appium/android/apis/app/RemoteService;->mSecondaryBinder:Lio/appium/android/apis/app/ISecondary$Stub;

    return-object v0

    .line 110
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 2

    .line 71
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Lio/appium/android/apis/app/RemoteService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lio/appium/android/apis/app/RemoteService;->mNM:Landroid/app/NotificationManager;

    .line 74
    invoke-direct {p0}, Lio/appium/android/apis/app/RemoteService;->showNotification()V

    .line 79
    iget-object v0, p0, Lio/appium/android/apis/app/RemoteService;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 80
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 85
    iget-object v0, p0, Lio/appium/android/apis/app/RemoteService;->mNM:Landroid/app/NotificationManager;

    const v1, 0x7f0e027e

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 88
    const v0, 0x7f0e027f

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 91
    iget-object v0, p0, Lio/appium/android/apis/app/RemoteService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->kill()V

    .line 95
    iget-object v0, p0, Lio/appium/android/apis/app/RemoteService;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 96
    return-void
.end method

.method public onTaskRemoved(Landroid/content/Intent;)V
    .locals 2
    .param p1, "rootIntent"    # Landroid/content/Intent;

    .line 140
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Task removed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 141
    return-void
.end method
