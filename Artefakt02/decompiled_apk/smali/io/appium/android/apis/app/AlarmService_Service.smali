.class public Lio/appium/android/apis/app/AlarmService_Service;
.super Landroid/app/Service;
.source "AlarmService_Service.java"


# instance fields
.field private final mBinder:Landroid/os/IBinder;

.field mNM:Landroid/app/NotificationManager;

.field mTask:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 44
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 73
    new-instance v0, Lio/appium/android/apis/app/AlarmService_Service$1;

    invoke-direct {v0, p0}, Lio/appium/android/apis/app/AlarmService_Service$1;-><init>(Lio/appium/android/apis/app/AlarmService_Service;)V

    iput-object v0, p0, Lio/appium/android/apis/app/AlarmService_Service;->mTask:Ljava/lang/Runnable;

    .line 124
    new-instance v0, Lio/appium/android/apis/app/AlarmService_Service$2;

    invoke-direct {v0, p0}, Lio/appium/android/apis/app/AlarmService_Service$2;-><init>(Lio/appium/android/apis/app/AlarmService_Service;)V

    iput-object v0, p0, Lio/appium/android/apis/app/AlarmService_Service;->mBinder:Landroid/os/IBinder;

    return-void
.end method

.method static synthetic access$000(Lio/appium/android/apis/app/AlarmService_Service;)Landroid/os/IBinder;
    .locals 1
    .param p0, "x0"    # Lio/appium/android/apis/app/AlarmService_Service;

    .line 44
    iget-object v0, p0, Lio/appium/android/apis/app/AlarmService_Service;->mBinder:Landroid/os/IBinder;

    return-object v0
.end method

.method private showNotification()V
    .locals 6

    .line 102
    const v0, 0x7f0e0091

    invoke-virtual {p0, v0}, Lio/appium/android/apis/app/AlarmService_Service;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 104
    .local v1, "text":Ljava/lang/CharSequence;
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lio/appium/android/apis/app/AlarmService;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v3, 0x0

    invoke-static {p0, v3, v2, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 107
    .local v2, "contentIntent":Landroid/app/PendingIntent;
    new-instance v3, Landroid/app/Notification$Builder;

    invoke-direct {v3, p0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 108
    const v4, 0x7f0800c1

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v3

    .line 109
    invoke-virtual {v3, v1}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v3

    .line 110
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v3

    .line 111
    const v4, 0x7f0e008f

    invoke-virtual {p0, v4}, Lio/appium/android/apis/app/AlarmService_Service;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v3

    .line 112
    invoke-virtual {v3, v1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v3

    .line 113
    invoke-virtual {v3, v2}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v3

    .line 114
    invoke-virtual {v3}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v3

    .line 117
    .local v3, "notification":Landroid/app/Notification;
    iget-object v4, p0, Lio/appium/android/apis/app/AlarmService_Service;->mNM:Landroid/app/NotificationManager;

    invoke-virtual {v4, v0, v3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 118
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .line 94
    iget-object v0, p0, Lio/appium/android/apis/app/AlarmService_Service;->mBinder:Landroid/os/IBinder;

    return-object v0
.end method

.method public onCreate()V
    .locals 4

    .line 49
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Lio/appium/android/apis/app/AlarmService_Service;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lio/appium/android/apis/app/AlarmService_Service;->mNM:Landroid/app/NotificationManager;

    .line 52
    invoke-direct {p0}, Lio/appium/android/apis/app/AlarmService_Service;->showNotification()V

    .line 57
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lio/appium/android/apis/app/AlarmService_Service;->mTask:Ljava/lang/Runnable;

    const-string v2, "AlarmService_Service"

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 58
    .local v0, "thr":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 59
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 64
    iget-object v0, p0, Lio/appium/android/apis/app/AlarmService_Service;->mNM:Landroid/app/NotificationManager;

    const v1, 0x7f0e0091

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 67
    const v0, 0x7f0e008e

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 68
    return-void
.end method
