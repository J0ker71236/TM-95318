.class Lio/appium/android/apis/animation/AnimationSeeking$2;
.super Ljava/lang/Object;
.source "AnimationSeeking.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/appium/android/apis/animation/AnimationSeeking;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/appium/android/apis/animation/AnimationSeeking;

.field final synthetic val$animView:Lio/appium/android/apis/animation/AnimationSeeking$MyAnimationView;


# direct methods
.method constructor <init>(Lio/appium/android/apis/animation/AnimationSeeking;Lio/appium/android/apis/animation/AnimationSeeking$MyAnimationView;)V
    .locals 0
    .param p1, "this$0"    # Lio/appium/android/apis/animation/AnimationSeeking;

    .line 72
    iput-object p1, p0, Lio/appium/android/apis/animation/AnimationSeeking$2;->this$0:Lio/appium/android/apis/animation/AnimationSeeking;

    iput-object p2, p0, Lio/appium/android/apis/animation/AnimationSeeking$2;->val$animView:Lio/appium/android/apis/animation/AnimationSeeking$MyAnimationView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 3
    .param p1, "seekBar"    # Landroid/widget/SeekBar;
    .param p2, "progress"    # I
    .param p3, "fromUser"    # Z

    .line 82
    iget-object v0, p0, Lio/appium/android/apis/animation/AnimationSeeking$2;->val$animView:Lio/appium/android/apis/animation/AnimationSeeking$MyAnimationView;

    invoke-virtual {v0}, Lio/appium/android/apis/animation/AnimationSeeking$MyAnimationView;->getHeight()I

    move-result v0

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lio/appium/android/apis/animation/AnimationSeeking$2;->val$animView:Lio/appium/android/apis/animation/AnimationSeeking$MyAnimationView;

    int-to-long v1, p2

    invoke-virtual {v0, v1, v2}, Lio/appium/android/apis/animation/AnimationSeeking$MyAnimationView;->seek(J)V

    .line 85
    :cond_0
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .line 77
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .line 74
    return-void
.end method
