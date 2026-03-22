.class public Lio/appium/android/apis/app/DeviceAdminSample$DeviceAdminSampleReceiver;
.super Landroid/app/admin/DeviceAdminReceiver;
.source "DeviceAdminSample.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/appium/android/apis/app/DeviceAdminSample;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DeviceAdminSampleReceiver"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 927
    invoke-direct {p0}, Landroid/app/admin/DeviceAdminReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onDisableRequested(Landroid/content/Context;Landroid/content/Intent;)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 940
    const v0, 0x7f0e0084

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onDisabled(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 945
    const v0, 0x7f0e0085

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lio/appium/android/apis/app/DeviceAdminSample$DeviceAdminSampleReceiver;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 946
    return-void
.end method

.method public onEnabled(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 935
    const v0, 0x7f0e0086

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lio/appium/android/apis/app/DeviceAdminSample$DeviceAdminSampleReceiver;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 936
    return-void
.end method

.method public onPasswordChanged(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 950
    const v0, 0x7f0e0087

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lio/appium/android/apis/app/DeviceAdminSample$DeviceAdminSampleReceiver;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 951
    return-void
.end method

.method public onPasswordExpiring(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 965
    const-string v0, "device_policy"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 967
    .local v0, "dpm":Landroid/app/admin/DevicePolicyManager;
    new-instance v1, Landroid/content/ComponentName;

    const-class v2, Lio/appium/android/apis/app/DeviceAdminSample$DeviceAdminSampleReceiver;

    invoke-direct {v1, p1, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->getPasswordExpiration(Landroid/content/ComponentName;)J

    move-result-wide v1

    .line 969
    .local v1, "expr":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long v3, v1, v3

    .line 970
    .local v3, "delta":J
    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-gez v7, :cond_0

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    .line 971
    .local v5, "expired":Z
    :goto_0
    if-eqz v5, :cond_1

    const v6, 0x7f0e0145

    goto :goto_1

    :cond_1
    const v6, 0x7f0e0143

    :goto_1
    invoke-virtual {p1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 973
    .local v6, "message":Ljava/lang/String;
    invoke-virtual {p0, p1, v6}, Lio/appium/android/apis/app/DeviceAdminSample$DeviceAdminSampleReceiver;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 974
    const-string v7, "DeviceAdminSample"

    invoke-static {v7, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 975
    return-void
.end method

.method public onPasswordFailed(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 955
    const v0, 0x7f0e0088

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lio/appium/android/apis/app/DeviceAdminSample$DeviceAdminSampleReceiver;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 956
    return-void
.end method

.method public onPasswordSucceeded(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 960
    const v0, 0x7f0e0089

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lio/appium/android/apis/app/DeviceAdminSample$DeviceAdminSampleReceiver;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 961
    return-void
.end method

.method showToast(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "msg"    # Ljava/lang/String;

    .line 929
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const v2, 0x7f0e0083

    invoke-virtual {p1, v2, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 930
    .local v0, "status":Ljava/lang/String;
    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 931
    return-void
.end method
