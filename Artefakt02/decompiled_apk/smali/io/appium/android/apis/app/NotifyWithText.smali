.class public Lio/appium/android/apis/app/NotifyWithText;
.super Landroid/app/Activity;
.source "NotifyWithText.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 39
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 41
    const v0, 0x7f0b00b6

    invoke-virtual {p0, v0}, Lio/appium/android/apis/app/NotifyWithText;->setContentView(I)V

    .line 46
    const v0, 0x7f0901c4

    invoke-virtual {p0, v0}, Lio/appium/android/apis/app/NotifyWithText;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 47
    .local v0, "button":Landroid/widget/Button;
    new-instance v1, Lio/appium/android/apis/app/NotifyWithText$1;

    invoke-direct {v1, p0}, Lio/appium/android/apis/app/NotifyWithText$1;-><init>(Lio/appium/android/apis/app/NotifyWithText;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 67
    const v1, 0x7f09011e

    invoke-virtual {p0, v1}, Lio/appium/android/apis/app/NotifyWithText;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Landroid/widget/Button;

    .line 68
    new-instance v1, Lio/appium/android/apis/app/NotifyWithText$2;

    invoke-direct {v1, p0}, Lio/appium/android/apis/app/NotifyWithText$2;-><init>(Lio/appium/android/apis/app/NotifyWithText;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 79
    return-void
.end method
