.class public Lio/appium/android/apis/app/ForwardTarget;
.super Landroid/app/Activity;
.source "ForwardTarget.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 36
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 38
    const v0, 0x7f0b0062

    invoke-virtual {p0, v0}, Lio/appium/android/apis/app/ForwardTarget;->setContentView(I)V

    .line 39
    return-void
.end method
