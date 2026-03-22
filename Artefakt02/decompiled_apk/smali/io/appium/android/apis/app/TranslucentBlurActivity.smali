.class public Lio/appium/android/apis/app/TranslucentBlurActivity;
.super Landroid/app/Activity;
.source "TranslucentBlurActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "icicle"    # Landroid/os/Bundle;

    .line 44
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 47
    invoke-virtual {p0}, Lio/appium/android/apis/app/TranslucentBlurActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 53
    const v0, 0x7f0b011a

    invoke-virtual {p0, v0}, Lio/appium/android/apis/app/TranslucentBlurActivity;->setContentView(I)V

    .line 54
    return-void
.end method
