.class public Lio/appium/android/apis/view/Focus3;
.super Landroid/app/Activity;
.source "Focus3.java"


# instance fields
.field private mBottomButton:Landroid/widget/Button;

.field private mTopButton:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public getBottomButton()Landroid/widget/Button;
    .locals 1

    .line 43
    iget-object v0, p0, Lio/appium/android/apis/view/Focus3;->mBottomButton:Landroid/widget/Button;

    return-object v0
.end method

.method public getTopButton()Landroid/widget/Button;
    .locals 1

    .line 39
    iget-object v0, p0, Lio/appium/android/apis/view/Focus3;->mTopButton:Landroid/widget/Button;

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 30
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 32
    const v0, 0x7f0b005e

    invoke-virtual {p0, v0}, Lio/appium/android/apis/view/Focus3;->setContentView(I)V

    .line 34
    const v0, 0x7f090226

    invoke-virtual {p0, v0}, Lio/appium/android/apis/view/Focus3;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lio/appium/android/apis/view/Focus3;->mTopButton:Landroid/widget/Button;

    .line 35
    const v0, 0x7f09003e

    invoke-virtual {p0, v0}, Lio/appium/android/apis/view/Focus3;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lio/appium/android/apis/view/Focus3;->mBottomButton:Landroid/widget/Button;

    .line 36
    return-void
.end method
