.class public Lio/appium/android/apis/view/SeekBar1;
.super Landroid/app/Activity;
.source "SeekBar1.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# instance fields
.field mProgressText:Landroid/widget/TextView;

.field mSeekBar:Landroid/widget/SeekBar;

.field mTrackingText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 38
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 40
    const v0, 0x7f0b00f2

    invoke-virtual {p0, v0}, Lio/appium/android/apis/view/SeekBar1;->setContentView(I)V

    .line 42
    const v0, 0x7f0901bb

    invoke-virtual {p0, v0}, Lio/appium/android/apis/view/SeekBar1;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lio/appium/android/apis/view/SeekBar1;->mSeekBar:Landroid/widget/SeekBar;

    .line 43
    iget-object v0, p0, Lio/appium/android/apis/view/SeekBar1;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 44
    const v0, 0x7f090169

    invoke-virtual {p0, v0}, Lio/appium/android/apis/view/SeekBar1;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lio/appium/android/apis/view/SeekBar1;->mProgressText:Landroid/widget/TextView;

    .line 45
    const v0, 0x7f090228

    invoke-virtual {p0, v0}, Lio/appium/android/apis/view/SeekBar1;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lio/appium/android/apis/view/SeekBar1;->mTrackingText:Landroid/widget/TextView;

    .line 46
    return-void
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 3
    .param p1, "seekBar"    # Landroid/widget/SeekBar;
    .param p2, "progress"    # I
    .param p3, "fromTouch"    # Z

    .line 49
    iget-object v0, p0, Lio/appium/android/apis/view/SeekBar1;->mProgressText:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    const v2, 0x7f0e02d0

    invoke-virtual {p0, v2}, Lio/appium/android/apis/view/SeekBar1;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 49
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 51
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .line 54
    iget-object v0, p0, Lio/appium/android/apis/view/SeekBar1;->mTrackingText:Landroid/widget/TextView;

    const v1, 0x7f0e02d2

    invoke-virtual {p0, v1}, Lio/appium/android/apis/view/SeekBar1;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 55
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .line 58
    iget-object v0, p0, Lio/appium/android/apis/view/SeekBar1;->mTrackingText:Landroid/widget/TextView;

    const v1, 0x7f0e02d1

    invoke-virtual {p0, v1}, Lio/appium/android/apis/view/SeekBar1;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 59
    return-void
.end method
