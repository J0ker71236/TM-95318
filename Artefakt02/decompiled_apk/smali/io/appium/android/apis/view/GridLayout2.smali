.class public Lio/appium/android/apis/view/GridLayout2;
.super Landroid/app/Activity;
.source "GridLayout2.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 29
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 30
    const v0, 0x7f0b0078

    invoke-virtual {p0, v0}, Lio/appium/android/apis/view/GridLayout2;->setContentView(I)V

    .line 31
    return-void
.end method
