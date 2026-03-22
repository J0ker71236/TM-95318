.class public Lio/appium/android/apis/view/ImageView1;
.super Landroid/app/Activity;
.source "ImageView1.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 33
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 34
    const v0, 0x7f0b007e

    invoke-virtual {p0, v0}, Lio/appium/android/apis/view/ImageView1;->setContentView(I)V

    .line 35
    return-void
.end method
