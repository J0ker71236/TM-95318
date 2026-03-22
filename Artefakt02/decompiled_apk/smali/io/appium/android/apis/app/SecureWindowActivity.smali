.class public Lio/appium/android/apis/app/SecureWindowActivity;
.super Landroid/app/Activity;
.source "SecureWindowActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 50
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 59
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 64
    const v0, 0x7f0b00f1

    invoke-virtual {p0, v0}, Lio/appium/android/apis/app/SecureWindowActivity;->setContentView(I)V

    .line 68
    invoke-virtual {p0}, Lio/appium/android/apis/app/SecureWindowActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x2000

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 70
    return-void
.end method
