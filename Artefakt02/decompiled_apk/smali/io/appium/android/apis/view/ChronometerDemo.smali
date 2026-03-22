.class public Lio/appium/android/apis/view/ChronometerDemo;
.super Landroid/app/Activity;
.source "ChronometerDemo.java"


# instance fields
.field mChronometer:Landroid/widget/Chronometer;

.field mClearFormatListener:Landroid/view/View$OnClickListener;

.field mResetListener:Landroid/view/View$OnClickListener;

.field mSetFormatListener:Landroid/view/View$OnClickListener;

.field mStartListener:Landroid/view/View$OnClickListener;

.field mStopListener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 31
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 61
    new-instance v0, Lio/appium/android/apis/view/ChronometerDemo$1;

    invoke-direct {v0, p0}, Lio/appium/android/apis/view/ChronometerDemo$1;-><init>(Lio/appium/android/apis/view/ChronometerDemo;)V

    iput-object v0, p0, Lio/appium/android/apis/view/ChronometerDemo;->mStartListener:Landroid/view/View$OnClickListener;

    .line 67
    new-instance v0, Lio/appium/android/apis/view/ChronometerDemo$2;

    invoke-direct {v0, p0}, Lio/appium/android/apis/view/ChronometerDemo$2;-><init>(Lio/appium/android/apis/view/ChronometerDemo;)V

    iput-object v0, p0, Lio/appium/android/apis/view/ChronometerDemo;->mStopListener:Landroid/view/View$OnClickListener;

    .line 73
    new-instance v0, Lio/appium/android/apis/view/ChronometerDemo$3;

    invoke-direct {v0, p0}, Lio/appium/android/apis/view/ChronometerDemo$3;-><init>(Lio/appium/android/apis/view/ChronometerDemo;)V

    iput-object v0, p0, Lio/appium/android/apis/view/ChronometerDemo;->mResetListener:Landroid/view/View$OnClickListener;

    .line 79
    new-instance v0, Lio/appium/android/apis/view/ChronometerDemo$4;

    invoke-direct {v0, p0}, Lio/appium/android/apis/view/ChronometerDemo$4;-><init>(Lio/appium/android/apis/view/ChronometerDemo;)V

    iput-object v0, p0, Lio/appium/android/apis/view/ChronometerDemo;->mSetFormatListener:Landroid/view/View$OnClickListener;

    .line 85
    new-instance v0, Lio/appium/android/apis/view/ChronometerDemo$5;

    invoke-direct {v0, p0}, Lio/appium/android/apis/view/ChronometerDemo$5;-><init>(Lio/appium/android/apis/view/ChronometerDemo;)V

    iput-object v0, p0, Lio/appium/android/apis/view/ChronometerDemo;->mClearFormatListener:Landroid/view/View$OnClickListener;

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 36
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 38
    const v0, 0x7f0b0049

    invoke-virtual {p0, v0}, Lio/appium/android/apis/view/ChronometerDemo;->setContentView(I)V

    .line 42
    const v0, 0x7f09006a

    invoke-virtual {p0, v0}, Lio/appium/android/apis/view/ChronometerDemo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Chronometer;

    iput-object v0, p0, Lio/appium/android/apis/view/ChronometerDemo;->mChronometer:Landroid/widget/Chronometer;

    .line 45
    const v0, 0x7f0901e5

    invoke-virtual {p0, v0}, Lio/appium/android/apis/view/ChronometerDemo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 46
    .local v0, "button":Landroid/widget/Button;
    iget-object v1, p0, Lio/appium/android/apis/view/ChronometerDemo;->mStartListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 48
    const v1, 0x7f0901f5

    invoke-virtual {p0, v1}, Lio/appium/android/apis/view/ChronometerDemo;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Landroid/widget/Button;

    .line 49
    iget-object v1, p0, Lio/appium/android/apis/view/ChronometerDemo;->mStopListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 51
    const v1, 0x7f090186

    invoke-virtual {p0, v1}, Lio/appium/android/apis/view/ChronometerDemo;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Landroid/widget/Button;

    .line 52
    iget-object v1, p0, Lio/appium/android/apis/view/ChronometerDemo;->mResetListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 54
    const v1, 0x7f0901c1

    invoke-virtual {p0, v1}, Lio/appium/android/apis/view/ChronometerDemo;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Landroid/widget/Button;

    .line 55
    iget-object v1, p0, Lio/appium/android/apis/view/ChronometerDemo;->mSetFormatListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 57
    const v1, 0x7f09006c

    invoke-virtual {p0, v1}, Lio/appium/android/apis/view/ChronometerDemo;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Landroid/widget/Button;

    .line 58
    iget-object v1, p0, Lio/appium/android/apis/view/ChronometerDemo;->mClearFormatListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 59
    return-void
.end method
