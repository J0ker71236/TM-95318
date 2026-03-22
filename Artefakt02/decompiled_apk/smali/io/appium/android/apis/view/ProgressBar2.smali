.class public Lio/appium/android/apis/view/ProgressBar2;
.super Landroid/app/Activity;
.source "ProgressBar2.java"


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

    .line 34
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 37
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lio/appium/android/apis/view/ProgressBar2;->requestWindowFeature(I)Z

    .line 39
    const v0, 0x7f0b00c2

    invoke-virtual {p0, v0}, Lio/appium/android/apis/view/ProgressBar2;->setContentView(I)V

    .line 42
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lio/appium/android/apis/view/ProgressBar2;->setProgressBarVisibility(Z)V

    .line 43
    return-void
.end method
