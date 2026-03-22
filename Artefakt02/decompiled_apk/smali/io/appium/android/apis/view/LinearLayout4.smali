.class public Lio/appium/android/apis/view/LinearLayout4;
.super Landroid/app/Activity;
.source "LinearLayout4.java"


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

    .line 35
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 36
    const v0, 0x7f0b0098

    invoke-virtual {p0, v0}, Lio/appium/android/apis/view/LinearLayout4;->setContentView(I)V

    .line 37
    return-void
.end method
