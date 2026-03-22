.class public Lio/appium/android/apis/app/CustomDialogActivity;
.super Landroid/app/Activity;
.source "CustomDialogActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 41
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 46
    const v0, 0x7f0b004e

    invoke-virtual {p0, v0}, Lio/appium/android/apis/app/CustomDialogActivity;->setContentView(I)V

    .line 47
    return-void
.end method
