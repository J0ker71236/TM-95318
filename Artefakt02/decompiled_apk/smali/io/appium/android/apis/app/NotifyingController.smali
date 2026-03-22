.class public Lio/appium/android/apis/app/NotifyingController;
.super Landroid/app/Activity;
.source "NotifyingController.java"


# instance fields
.field private mStartListener:Landroid/view/View$OnClickListener;

.field private mStopListener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 34
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 47
    new-instance v0, Lio/appium/android/apis/app/NotifyingController$1;

    invoke-direct {v0, p0}, Lio/appium/android/apis/app/NotifyingController$1;-><init>(Lio/appium/android/apis/app/NotifyingController;)V

    iput-object v0, p0, Lio/appium/android/apis/app/NotifyingController;->mStartListener:Landroid/view/View$OnClickListener;

    .line 54
    new-instance v0, Lio/appium/android/apis/app/NotifyingController$2;

    invoke-direct {v0, p0}, Lio/appium/android/apis/app/NotifyingController$2;-><init>(Lio/appium/android/apis/app/NotifyingController;)V

    iput-object v0, p0, Lio/appium/android/apis/app/NotifyingController;->mStopListener:Landroid/view/View$OnClickListener;

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 37
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 39
    const v0, 0x7f0b00b7

    invoke-virtual {p0, v0}, Lio/appium/android/apis/app/NotifyingController;->setContentView(I)V

    .line 41
    const v0, 0x7f090150

    invoke-virtual {p0, v0}, Lio/appium/android/apis/app/NotifyingController;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 42
    .local v0, "button":Landroid/widget/Button;
    iget-object v1, p0, Lio/appium/android/apis/app/NotifyingController;->mStartListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 43
    const v1, 0x7f090151

    invoke-virtual {p0, v1}, Lio/appium/android/apis/app/NotifyingController;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Landroid/widget/Button;

    .line 44
    iget-object v1, p0, Lio/appium/android/apis/app/NotifyingController;->mStopListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 45
    return-void
.end method
