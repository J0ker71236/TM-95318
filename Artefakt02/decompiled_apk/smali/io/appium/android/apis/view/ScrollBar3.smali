.class public Lio/appium/android/apis/view/ScrollBar3;
.super Landroid/app/Activity;
.source "ScrollBar3.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 29
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 31
    const v0, 0x7f0b00e7

    invoke-virtual {p0, v0}, Lio/appium/android/apis/view/ScrollBar3;->setContentView(I)V

    .line 33
    const v0, 0x7f090246

    invoke-virtual {p0, v0}, Lio/appium/android/apis/view/ScrollBar3;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/high16 v1, 0x1000000

    invoke-virtual {v0, v1}, Landroid/view/View;->setScrollBarStyle(I)V

    .line 34
    return-void
.end method
