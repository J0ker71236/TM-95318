.class Lio/appium/android/apis/app/AlarmService_Service$1;
.super Ljava/lang/Object;
.source "AlarmService_Service.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/appium/android/apis/app/AlarmService_Service;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/appium/android/apis/app/AlarmService_Service;


# direct methods
.method constructor <init>(Lio/appium/android/apis/app/AlarmService_Service;)V
    .locals 0
    .param p1, "this$0"    # Lio/appium/android/apis/app/AlarmService_Service;

    .line 73
    iput-object p1, p0, Lio/appium/android/apis/app/AlarmService_Service$1;->this$0:Lio/appium/android/apis/app/AlarmService_Service;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 77
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3a98

    add-long/2addr v0, v2

    .line 78
    .local v0, "endTime":J
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v4, v2, v0

    if-gez v4, :cond_0

    .line 79
    iget-object v2, p0, Lio/appium/android/apis/app/AlarmService_Service$1;->this$0:Lio/appium/android/apis/app/AlarmService_Service;

    invoke-static {v2}, Lio/appium/android/apis/app/AlarmService_Service;->access$000(Lio/appium/android/apis/app/AlarmService_Service;)Landroid/os/IBinder;

    move-result-object v2

    monitor-enter v2

    .line 81
    :try_start_0
    iget-object v3, p0, Lio/appium/android/apis/app/AlarmService_Service$1;->this$0:Lio/appium/android/apis/app/AlarmService_Service;

    invoke-static {v3}, Lio/appium/android/apis/app/AlarmService_Service;->access$000(Lio/appium/android/apis/app/AlarmService_Service;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v4, v0, v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
    goto :goto_1

    .line 84
    :catchall_0
    move-exception v3

    goto :goto_2

    .line 82
    :catch_0
    move-exception v3

    .line 84
    :goto_1
    :try_start_1
    monitor-exit v2

    goto :goto_0

    :goto_2
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 88
    :cond_0
    iget-object v2, p0, Lio/appium/android/apis/app/AlarmService_Service$1;->this$0:Lio/appium/android/apis/app/AlarmService_Service;

    invoke-virtual {v2}, Lio/appium/android/apis/app/AlarmService_Service;->stopSelf()V

    .line 89
    return-void
.end method
