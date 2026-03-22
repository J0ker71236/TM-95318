.class public Lio/appium/android/apis/app/LocalService;
.super Landroid/app/Service;
.source "LocalService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/appium/android/apis/app/LocalService$LocalBinder;
    }
.end annotation


# instance fields
.field private NOTIFICATION:I

.field private final mBinder:Landroid/os/IBinder;

.field private mNM:Landroid/app/NotificationManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 45
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 50
    const v0, 0x7f0e01fe

    iput v0, p0, Lio/appium/android/apis/app/LocalService;->NOTIFICATION:I

    .line 95
    new-instance v0, Lio/appium/android/apis/app/LocalService$LocalBinder;

    invoke-direct {v0, p0}, Lio/appium/android/apis/app/LocalService$LocalBinder;-><init>(Lio/appium/android/apis/app/LocalService;)V

    iput-object v0, p0, Lio/appium/android/apis/app/LocalService;->mBinder:Landroid/os/IBinder;

    return-void
.end method

.method private showNotification()V
    .locals 5

    .line 102
    const v0, 0x7f0e01fe

    invoke-virtual {p0, v0}, Lio/appium/android/apis/app/LocalService;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 104
    .local v0, "text":Ljava/lang/CharSequence;
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lio/appium/android/apis/app/LocalServiceActivities$Controller;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v2, 0x0

    invoke-static {p0, v2, v1, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 107
    .local v1, "contentIntent":Landroid/app/PendingIntent;
    new-instance v2, Landroid/app/Notification$Builder;

    invoke-direct {v2, p0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 108
    const v3, 0x7f0800c1

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v2

    .line 109
    invoke-virtual {v2, v0}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v2

    .line 110
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v2

    .line 111
    const v3, 0x7f0e01fd

    invoke-virtual {p0, v3}, Lio/appium/android/apis/app/LocalService;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v2

    .line 112
    invoke-virtual {v2, v0}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v2

    .line 113
    invoke-virtual {v2, v1}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v2

    .line 114
    invoke-virtual {v2}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v2

    .line 116
    .local v2, "notification":Landroid/app/Notification;
    iget-object v3, p0, Lio/appium/android/apis/app/LocalService;->mNM:Landroid/app/NotificationManager;

    iget v4, p0, Lio/appium/android/apis/app/LocalService;->NOTIFICATION:I

    invoke-virtual {v3, v4, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 117
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .line 90
    iget-object v0, p0, Lio/appium/android/apis/app/LocalService;->mBinder:Landroid/os/IBinder;

    return-object v0
.end method

.method public onCreate()V
    .locals 1

    .line 65
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Lio/appium/android/apis/app/LocalService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lio/appium/android/apis/app/LocalService;->mNM:Landroid/app/NotificationManager;

    .line 68
    invoke-direct {p0}, Lio/appium/android/apis/app/LocalService;->showNotification()V

    .line 69
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 82
    iget-object v0, p0, Lio/appium/android/apis/app/LocalService;->mNM:Landroid/app/NotificationManager;

    iget v1, p0, Lio/appium/android/apis/app/LocalService;->NOTIFICATION:I

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 85
    const v0, 0x7f0e01ff

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 86
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .line 73
    const-string v0, "LocalService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received start id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    const/4 v0, 0x1

    return v0
.end method
