.class public Lio/appium/android/apis/app/IsolatedService$Controller;
.super Landroid/app/Activity;
.source "IsolatedService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/appium/android/apis/app/IsolatedService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Controller"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/appium/android/apis/app/IsolatedService$Controller$ServiceInfo;
    }
.end annotation


# instance fields
.field mService1:Lio/appium/android/apis/app/IsolatedService$Controller$ServiceInfo;

.field mService2:Lio/appium/android/apis/app/IsolatedService$Controller$ServiceInfo;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 105
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 189
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 191
    const v0, 0x7f0b0087

    invoke-virtual {p0, v0}, Lio/appium/android/apis/app/IsolatedService$Controller;->setContentView(I)V

    .line 193
    new-instance v7, Lio/appium/android/apis/app/IsolatedService$Controller$ServiceInfo;

    const-class v2, Lio/appium/android/apis/app/IsolatedService;

    const v3, 0x7f0901e6

    const v4, 0x7f0901f6

    const v5, 0x7f090033

    const v6, 0x7f0901f2

    move-object v0, v7

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lio/appium/android/apis/app/IsolatedService$Controller$ServiceInfo;-><init>(Landroid/app/Activity;Ljava/lang/Class;IIII)V

    iput-object v7, p0, Lio/appium/android/apis/app/IsolatedService$Controller;->mService1:Lio/appium/android/apis/app/IsolatedService$Controller$ServiceInfo;

    .line 195
    new-instance v7, Lio/appium/android/apis/app/IsolatedService$Controller$ServiceInfo;

    const-class v2, Lio/appium/android/apis/app/IsolatedService2;

    const v3, 0x7f0901e7

    const v4, 0x7f0901f7

    const v5, 0x7f090034

    const v6, 0x7f0901f3

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lio/appium/android/apis/app/IsolatedService$Controller$ServiceInfo;-><init>(Landroid/app/Activity;Ljava/lang/Class;IIII)V

    iput-object v7, p0, Lio/appium/android/apis/app/IsolatedService$Controller;->mService2:Lio/appium/android/apis/app/IsolatedService$Controller$ServiceInfo;

    .line 197
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 201
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 202
    iget-object v0, p0, Lio/appium/android/apis/app/IsolatedService$Controller;->mService1:Lio/appium/android/apis/app/IsolatedService$Controller$ServiceInfo;

    invoke-virtual {v0}, Lio/appium/android/apis/app/IsolatedService$Controller$ServiceInfo;->destroy()V

    .line 203
    iget-object v0, p0, Lio/appium/android/apis/app/IsolatedService$Controller;->mService2:Lio/appium/android/apis/app/IsolatedService$Controller$ServiceInfo;

    invoke-virtual {v0}, Lio/appium/android/apis/app/IsolatedService$Controller$ServiceInfo;->destroy()V

    .line 204
    return-void
.end method
