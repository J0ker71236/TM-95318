.class public Lio/appium/android/apis/view/HorizontalScrollView1;
.super Landroid/app/Activity;
.source "HorizontalScrollView1.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 29
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 31
    const v0, 0x7f0b007a

    invoke-virtual {p0, v0}, Lio/appium/android/apis/view/HorizontalScrollView1;->setContentView(I)V

    .line 32
    return-void
.end method
