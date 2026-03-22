.class public Lio/appium/android/apis/view/CustomView1;
.super Landroid/app/Activity;
.source "CustomView1.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 37
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 38
    const v0, 0x7f0b0052

    invoke-virtual {p0, v0}, Lio/appium/android/apis/view/CustomView1;->setContentView(I)V

    .line 39
    return-void
.end method
