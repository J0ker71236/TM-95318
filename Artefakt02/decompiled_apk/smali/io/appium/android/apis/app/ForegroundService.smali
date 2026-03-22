.class public Lio/appium/android/apis/app/ForegroundService;
.super Landroid/app/Service;
.source "ForegroundService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/appium/android/apis/app/ForegroundService$Controller;
    }
.end annotation


# static fields
.field static final ACTION_BACKGROUND:Ljava/lang/String; = "io.appium.android.apis.BACKGROUND"

.field static final ACTION_BACKGROUND_WAKELOCK:Ljava/lang/String; = "io.appium.android.apis.BACKGROUND_WAKELOCK"

.field static final ACTION_FOREGROUND:Ljava/lang/String; = "io.appium.android.apis.FOREGROUND"

.field static final ACTION_FOREGROUND_WAKELOCK:Ljava/lang/String; = "io.appium.android.apis.FOREGROUND_WAKELOCK"

.field private static final mSetForegroundSignature:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static final mStartForegroundSignature:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static final mStopForegroundSignature:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mNM:Landroid/app/NotificationManager;

.field private mPulser:Ljava/lang/Runnable;

.field private mSetForeground:Ljava/lang/reflect/Method;

.field private mSetForegroundArgs:[Ljava/lang/Object;

.field private mStartForeground:Ljava/lang/reflect/Method;

.field private mStartForegroundArgs:[Ljava/lang/Object;

.field private mStopForeground:Ljava/lang/reflect/Method;

.field private mStopForegroundArgs:[Ljava/lang/Object;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 66
    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Class;

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sput-object v1, Lio/appium/android/apis/app/ForegroundService;->mSetForegroundSignature:[Ljava/lang/Class;

    .line 68
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Class;

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v2, v1, v3

    const-class v2, Landroid/app/Notification;

    aput-object v2, v1, v0

    sput-object v1, Lio/appium/android/apis/app/ForegroundService;->mStartForegroundSignature:[Ljava/lang/Class;

    .line 70
    new-array v0, v0, [Ljava/lang/Class;

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v1, v0, v3

    sput-object v0, Lio/appium/android/apis/app/ForegroundService;->mStopForegroundSignature:[Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 51
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 58
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lio/appium/android/apis/app/ForegroundService;->mHandler:Landroid/os/Handler;

    .line 59
    new-instance v0, Lio/appium/android/apis/app/ForegroundService$1;

    invoke-direct {v0, p0}, Lio/appium/android/apis/app/ForegroundService$1;-><init>(Lio/appium/android/apis/app/ForegroundService;)V

    iput-object v0, p0, Lio/appium/android/apis/app/ForegroundService;->mPulser:Ljava/lang/Runnable;

    .line 77
    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    iput-object v1, p0, Lio/appium/android/apis/app/ForegroundService;->mSetForegroundArgs:[Ljava/lang/Object;

    .line 78
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iput-object v1, p0, Lio/appium/android/apis/app/ForegroundService;->mStartForegroundArgs:[Ljava/lang/Object;

    .line 79
    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lio/appium/android/apis/app/ForegroundService;->mStopForegroundArgs:[Ljava/lang/Object;

    return-void
.end method

.method static synthetic access$000(Lio/appium/android/apis/app/ForegroundService;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lio/appium/android/apis/app/ForegroundService;

    .line 51
    iget-object v0, p0, Lio/appium/android/apis/app/ForegroundService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method invokeMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)V
    .locals 3
    .param p1, "method"    # Ljava/lang/reflect/Method;
    .param p2, "args"    # [Ljava/lang/Object;

    .line 83
    :try_start_0
    invoke-virtual {p1, p0, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    :goto_0
    goto :goto_1

    .line 87
    :catch_0
    move-exception v0

    .line 89
    .local v0, "e":Ljava/lang/IllegalAccessException;
    const-string v1, "ApiDemos"

    const-string v2, "Unable to invoke method"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 84
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_1
    move-exception v0

    .line 86
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    const-string v1, "ApiDemos"

    const-string v2, "Unable to invoke method"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v0    # "e":Ljava/lang/reflect/InvocationTargetException;
    goto :goto_0

    .line 91
    :goto_1
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .line 212
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 3

    .line 133
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Lio/appium/android/apis/app/ForegroundService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lio/appium/android/apis/app/ForegroundService;->mNM:Landroid/app/NotificationManager;

    .line 135
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "startForeground"

    sget-object v2, Lio/appium/android/apis/app/ForegroundService;->mStartForegroundSignature:[Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lio/appium/android/apis/app/ForegroundService;->mStartForeground:Ljava/lang/reflect/Method;

    .line 137
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "stopForeground"

    sget-object v2, Lio/appium/android/apis/app/ForegroundService;->mStopForegroundSignature:[Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lio/appium/android/apis/app/ForegroundService;->mStopForeground:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 139
    return-void

    .line 140
    :catch_0
    move-exception v0

    .line 142
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    const/4 v1, 0x0

    iput-object v1, p0, Lio/appium/android/apis/app/ForegroundService;->mStopForeground:Ljava/lang/reflect/Method;

    iput-object v1, p0, Lio/appium/android/apis/app/ForegroundService;->mStartForeground:Ljava/lang/reflect/Method;

    .line 145
    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "setForeground"

    sget-object v2, Lio/appium/android/apis/app/ForegroundService;->mSetForegroundSignature:[Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lio/appium/android/apis/app/ForegroundService;->mSetForeground:Ljava/lang/reflect/Method;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1

    .line 150
    nop

    .line 151
    return-void

    .line 147
    :catch_1
    move-exception v0

    .line 148
    .restart local v0    # "e":Ljava/lang/NoSuchMethodException;
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "OS doesn\'t have Service.startForeground OR Service.setForeground!"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public onDestroy()V
    .locals 1

    .line 156
    const v0, 0x7f0e015b

    invoke-virtual {p0, v0}, Lio/appium/android/apis/app/ForegroundService;->stopForegroundCompat(I)V

    .line 157
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InvalidWakeLockTag"
        }
    .end annotation

    .line 164
    const-string v0, "io.appium.android.apis.FOREGROUND"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const v1, 0x7f0e015b

    if-nez v0, :cond_2

    const-string v0, "io.appium.android.apis.FOREGROUND_WAKELOCK"

    .line 165
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 180
    :cond_0
    const-string v0, "io.appium.android.apis.BACKGROUND"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "io.appium.android.apis.BACKGROUND_WAKELOCK"

    .line 181
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 182
    :cond_1
    invoke-virtual {p0, v1}, Lio/appium/android/apis/app/ForegroundService;->stopForegroundCompat(I)V

    goto :goto_1

    .line 167
    :cond_2
    :goto_0
    invoke-virtual {p0, v1}, Lio/appium/android/apis/app/ForegroundService;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 168
    .local v0, "text":Ljava/lang/CharSequence;
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lio/appium/android/apis/app/ForegroundService$Controller;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v3, 0x0

    invoke-static {p0, v3, v2, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 171
    .local v2, "contentIntent":Landroid/app/PendingIntent;
    new-instance v3, Landroid/app/Notification$Builder;

    invoke-direct {v3, p0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f0800c1

    .line 172
    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v3

    .line 173
    invoke-virtual {v3, v0}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v3

    .line 174
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v3

    const v4, 0x7f0e008f

    .line 175
    invoke-virtual {p0, v4}, Lio/appium/android/apis/app/ForegroundService;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v3

    .line 176
    invoke-virtual {v3, v0}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v3

    .line 177
    invoke-virtual {v3, v2}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v3

    .line 178
    invoke-virtual {v3}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v3

    .line 179
    .local v3, "notification":Landroid/app/Notification;
    invoke-virtual {p0, v1, v3}, Lio/appium/android/apis/app/ForegroundService;->startForegroundCompat(ILandroid/app/Notification;)V

    .line 180
    .end local v0    # "text":Ljava/lang/CharSequence;
    .end local v2    # "contentIntent":Landroid/app/PendingIntent;
    .end local v3    # "notification":Landroid/app/Notification;
    nop

    .line 184
    :cond_3
    :goto_1
    const-string v0, "io.appium.android.apis.FOREGROUND_WAKELOCK"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_4

    const-string v0, "io.appium.android.apis.BACKGROUND_WAKELOCK"

    .line 185
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 186
    :cond_4
    iget-object v0, p0, Lio/appium/android/apis/app/ForegroundService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v0, :cond_5

    .line 187
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v0, v2, :cond_6

    .line 188
    const-class v0, Landroid/os/PowerManager;

    invoke-virtual {p0, v0}, Lio/appium/android/apis/app/ForegroundService;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    const-string v2, "wake-service"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lio/appium/android/apis/app/ForegroundService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 190
    iget-object v0, p0, Lio/appium/android/apis/app/ForegroundService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    goto :goto_2

    .line 193
    :cond_5
    invoke-virtual {p0}, Lio/appium/android/apis/app/ForegroundService;->releaseWakeLock()V

    .line 196
    :cond_6
    :goto_2
    iget-object v0, p0, Lio/appium/android/apis/app/ForegroundService;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lio/appium/android/apis/app/ForegroundService;->mPulser:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 197
    iget-object v0, p0, Lio/appium/android/apis/app/ForegroundService;->mPulser:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 200
    return v1
.end method

.method releaseWakeLock()V
    .locals 1

    .line 204
    iget-object v0, p0, Lio/appium/android/apis/app/ForegroundService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    .line 205
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 206
    const/4 v0, 0x0

    iput-object v0, p0, Lio/appium/android/apis/app/ForegroundService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 208
    :cond_0
    return-void
.end method

.method startForegroundCompat(ILandroid/app/Notification;)V
    .locals 3
    .param p1, "id"    # I
    .param p2, "notification"    # Landroid/app/Notification;

    .line 99
    iget-object v0, p0, Lio/appium/android/apis/app/ForegroundService;->mStartForeground:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Lio/appium/android/apis/app/ForegroundService;->mStartForegroundArgs:[Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    .line 101
    iget-object v0, p0, Lio/appium/android/apis/app/ForegroundService;->mStartForegroundArgs:[Ljava/lang/Object;

    const/4 v1, 0x1

    aput-object p2, v0, v1

    .line 102
    iget-object v1, p0, Lio/appium/android/apis/app/ForegroundService;->mStartForeground:Ljava/lang/reflect/Method;

    invoke-virtual {p0, v1, v0}, Lio/appium/android/apis/app/ForegroundService;->invokeMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)V

    .line 103
    return-void

    .line 107
    :cond_0
    iget-object v0, p0, Lio/appium/android/apis/app/ForegroundService;->mSetForegroundArgs:[Ljava/lang/Object;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v2, v0, v1

    .line 108
    iget-object v0, p0, Lio/appium/android/apis/app/ForegroundService;->mSetForeground:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lio/appium/android/apis/app/ForegroundService;->mSetForegroundArgs:[Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lio/appium/android/apis/app/ForegroundService;->invokeMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)V

    .line 109
    iget-object v0, p0, Lio/appium/android/apis/app/ForegroundService;->mNM:Landroid/app/NotificationManager;

    invoke-virtual {v0, p1, p2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 110
    return-void
.end method

.method stopForegroundCompat(I)V
    .locals 3
    .param p1, "id"    # I

    .line 118
    iget-object v0, p0, Lio/appium/android/apis/app/ForegroundService;->mStopForeground:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lio/appium/android/apis/app/ForegroundService;->mStopForegroundArgs:[Ljava/lang/Object;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v2, v0, v1

    .line 120
    iget-object v0, p0, Lio/appium/android/apis/app/ForegroundService;->mStopForeground:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lio/appium/android/apis/app/ForegroundService;->mStopForegroundArgs:[Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lio/appium/android/apis/app/ForegroundService;->invokeMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)V

    .line 121
    return-void

    .line 126
    :cond_0
    iget-object v0, p0, Lio/appium/android/apis/app/ForegroundService;->mNM:Landroid/app/NotificationManager;

    invoke-virtual {v0, p1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 127
    iget-object v0, p0, Lio/appium/android/apis/app/ForegroundService;->mSetForegroundArgs:[Ljava/lang/Object;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object v2, v0, v1

    .line 128
    iget-object v0, p0, Lio/appium/android/apis/app/ForegroundService;->mSetForeground:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lio/appium/android/apis/app/ForegroundService;->mSetForegroundArgs:[Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lio/appium/android/apis/app/ForegroundService;->invokeMethod(Ljava/lang/reflect/Method;[Ljava/lang/Object;)V

    .line 129
    return-void
.end method
