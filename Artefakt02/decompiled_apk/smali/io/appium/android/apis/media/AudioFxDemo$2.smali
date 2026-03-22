.class Lio/appium/android/apis/media/AudioFxDemo$2;
.super Ljava/lang/Object;
.source "AudioFxDemo.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/appium/android/apis/media/AudioFxDemo;->setupEqualizerFxAndUI()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/appium/android/apis/media/AudioFxDemo;

.field final synthetic val$band:S

.field final synthetic val$minEQLevel:S


# direct methods
.method constructor <init>(Lio/appium/android/apis/media/AudioFxDemo;SS)V
    .locals 0
    .param p1, "this$0"    # Lio/appium/android/apis/media/AudioFxDemo;

    .line 145
    iput-object p1, p0, Lio/appium/android/apis/media/AudioFxDemo$2;->this$0:Lio/appium/android/apis/media/AudioFxDemo;

    iput-short p2, p0, Lio/appium/android/apis/media/AudioFxDemo$2;->val$band:S

    iput-short p3, p0, Lio/appium/android/apis/media/AudioFxDemo$2;->val$minEQLevel:S

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 3
    .param p1, "seekBar"    # Landroid/widget/SeekBar;
    .param p2, "progress"    # I
    .param p3, "fromUser"    # Z

    .line 148
    iget-object v0, p0, Lio/appium/android/apis/media/AudioFxDemo$2;->this$0:Lio/appium/android/apis/media/AudioFxDemo;

    invoke-static {v0}, Lio/appium/android/apis/media/AudioFxDemo;->access$100(Lio/appium/android/apis/media/AudioFxDemo;)Landroid/media/audiofx/Equalizer;

    move-result-object v0

    iget-short v1, p0, Lio/appium/android/apis/media/AudioFxDemo$2;->val$band:S

    iget-short v2, p0, Lio/appium/android/apis/media/AudioFxDemo$2;->val$minEQLevel:S

    add-int/2addr v2, p2

    int-to-short v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/media/audiofx/Equalizer;->setBandLevel(SS)V

    .line 149
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .line 151
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .line 152
    return-void
.end method
