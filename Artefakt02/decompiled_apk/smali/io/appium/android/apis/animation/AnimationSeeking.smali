.class public Lio/appium/android/apis/animation/AnimationSeeking;
.super Landroid/app/Activity;
.source "AnimationSeeking.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/appium/android/apis/animation/AnimationSeeking$MyAnimationView;
    }
.end annotation


# static fields
.field private static final DURATION:I = 0x5dc


# instance fields
.field private mSeekBar:Landroid/widget/SeekBar;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 49
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 57
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 58
    const v0, 0x7f0b0032

    invoke-virtual {p0, v0}, Lio/appium/android/apis/animation/AnimationSeeking;->setContentView(I)V

    .line 59
    const v0, 0x7f090073

    invoke-virtual {p0, v0}, Lio/appium/android/apis/animation/AnimationSeeking;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 60
    .local v0, "container":Landroid/widget/LinearLayout;
    new-instance v1, Lio/appium/android/apis/animation/AnimationSeeking$MyAnimationView;

    invoke-direct {v1, p0, p0}, Lio/appium/android/apis/animation/AnimationSeeking$MyAnimationView;-><init>(Lio/appium/android/apis/animation/AnimationSeeking;Landroid/content/Context;)V

    .line 61
    .local v1, "animView":Lio/appium/android/apis/animation/AnimationSeeking$MyAnimationView;
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 63
    const v2, 0x7f0901e9

    invoke-virtual {p0, v2}, Lio/appium/android/apis/animation/AnimationSeeking;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 64
    .local v2, "starter":Landroid/widget/Button;
    new-instance v3, Lio/appium/android/apis/animation/AnimationSeeking$1;

    invoke-direct {v3, p0, v1}, Lio/appium/android/apis/animation/AnimationSeeking$1;-><init>(Lio/appium/android/apis/animation/AnimationSeeking;Lio/appium/android/apis/animation/AnimationSeeking$MyAnimationView;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 70
    const v3, 0x7f0901bc

    invoke-virtual {p0, v3}, Lio/appium/android/apis/animation/AnimationSeeking;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/SeekBar;

    iput-object v3, p0, Lio/appium/android/apis/animation/AnimationSeeking;->mSeekBar:Landroid/widget/SeekBar;

    .line 71
    iget-object v3, p0, Lio/appium/android/apis/animation/AnimationSeeking;->mSeekBar:Landroid/widget/SeekBar;

    const/16 v4, 0x5dc

    invoke-virtual {v3, v4}, Landroid/widget/SeekBar;->setMax(I)V

    .line 72
    iget-object v3, p0, Lio/appium/android/apis/animation/AnimationSeeking;->mSeekBar:Landroid/widget/SeekBar;

    new-instance v4, Lio/appium/android/apis/animation/AnimationSeeking$2;

    invoke-direct {v4, p0, v1}, Lio/appium/android/apis/animation/AnimationSeeking$2;-><init>(Lio/appium/android/apis/animation/AnimationSeeking;Lio/appium/android/apis/animation/AnimationSeeking$MyAnimationView;)V

    invoke-virtual {v3, v4}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 87
    return-void
.end method
