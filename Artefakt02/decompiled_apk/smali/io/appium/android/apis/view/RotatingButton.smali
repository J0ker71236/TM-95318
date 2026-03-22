.class public Lio/appium/android/apis/view/RotatingButton;
.super Landroid/app/Activity;
.source "RotatingButton.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 38
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 39
    const v0, 0x7f0b00e0

    invoke-virtual {p0, v0}, Lio/appium/android/apis/view/RotatingButton;->setContentView(I)V

    .line 40
    const v0, 0x7f090193

    invoke-virtual {p0, v0}, Lio/appium/android/apis/view/RotatingButton;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 42
    .local v0, "rotatingButton":Landroid/widget/Button;
    const v1, 0x7f090229

    invoke-virtual {p0, v1}, Lio/appium/android/apis/view/RotatingButton;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/SeekBar;

    .line 43
    .local v1, "seekBar":Landroid/widget/SeekBar;
    const/16 v2, 0x190

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setMax(I)V

    .line 44
    new-instance v2, Lio/appium/android/apis/view/RotatingButton$1;

    invoke-direct {v2, p0, v0}, Lio/appium/android/apis/view/RotatingButton$1;-><init>(Lio/appium/android/apis/view/RotatingButton;Landroid/widget/Button;)V

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 56
    const v2, 0x7f09022a

    invoke-virtual {p0, v2}, Lio/appium/android/apis/view/RotatingButton;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v1, v2

    check-cast v1, Landroid/widget/SeekBar;

    .line 57
    const/16 v2, 0x320

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setMax(I)V

    .line 58
    new-instance v2, Lio/appium/android/apis/view/RotatingButton$2;

    invoke-direct {v2, p0, v0}, Lio/appium/android/apis/view/RotatingButton$2;-><init>(Lio/appium/android/apis/view/RotatingButton;Landroid/widget/Button;)V

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 71
    const v2, 0x7f09019e

    invoke-virtual {p0, v2}, Lio/appium/android/apis/view/RotatingButton;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v1, v2

    check-cast v1, Landroid/widget/SeekBar;

    .line 72
    const/16 v2, 0x32

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setMax(I)V

    .line 73
    const/16 v3, 0xa

    invoke-virtual {v1, v3}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 74
    new-instance v4, Lio/appium/android/apis/view/RotatingButton$3;

    invoke-direct {v4, p0, v0}, Lio/appium/android/apis/view/RotatingButton$3;-><init>(Lio/appium/android/apis/view/RotatingButton;Landroid/widget/Button;)V

    invoke-virtual {v1, v4}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 87
    const v4, 0x7f09019f

    invoke-virtual {p0, v4}, Lio/appium/android/apis/view/RotatingButton;->findViewById(I)Landroid/view/View;

    move-result-object v4

    move-object v1, v4

    check-cast v1, Landroid/widget/SeekBar;

    .line 88
    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setMax(I)V

    .line 89
    invoke-virtual {v1, v3}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 90
    new-instance v2, Lio/appium/android/apis/view/RotatingButton$4;

    invoke-direct {v2, p0, v0}, Lio/appium/android/apis/view/RotatingButton$4;-><init>(Lio/appium/android/apis/view/RotatingButton;Landroid/widget/Button;)V

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 103
    const v2, 0x7f090194

    invoke-virtual {p0, v2}, Lio/appium/android/apis/view/RotatingButton;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v1, v2

    check-cast v1, Landroid/widget/SeekBar;

    .line 104
    const/16 v2, 0x168

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setMax(I)V

    .line 105
    new-instance v3, Lio/appium/android/apis/view/RotatingButton$5;

    invoke-direct {v3, p0, v0}, Lio/appium/android/apis/view/RotatingButton$5;-><init>(Lio/appium/android/apis/view/RotatingButton;Landroid/widget/Button;)V

    invoke-virtual {v1, v3}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 119
    const v3, 0x7f090195

    invoke-virtual {p0, v3}, Lio/appium/android/apis/view/RotatingButton;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object v1, v3

    check-cast v1, Landroid/widget/SeekBar;

    .line 120
    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setMax(I)V

    .line 121
    new-instance v3, Lio/appium/android/apis/view/RotatingButton$6;

    invoke-direct {v3, p0, v0}, Lio/appium/android/apis/view/RotatingButton$6;-><init>(Lio/appium/android/apis/view/RotatingButton;Landroid/widget/Button;)V

    invoke-virtual {v1, v3}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 135
    const v3, 0x7f090196

    invoke-virtual {p0, v3}, Lio/appium/android/apis/view/RotatingButton;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object v1, v3

    check-cast v1, Landroid/widget/SeekBar;

    .line 136
    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setMax(I)V

    .line 137
    new-instance v2, Lio/appium/android/apis/view/RotatingButton$7;

    invoke-direct {v2, p0, v0}, Lio/appium/android/apis/view/RotatingButton$7;-><init>(Lio/appium/android/apis/view/RotatingButton;Landroid/widget/Button;)V

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 151
    return-void
.end method
