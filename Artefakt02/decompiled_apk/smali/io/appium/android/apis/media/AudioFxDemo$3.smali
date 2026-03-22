.class Lio/appium/android/apis/media/AudioFxDemo$3;
.super Ljava/lang/Object;
.source "AudioFxDemo.java"

# interfaces
.implements Landroid/media/audiofx/Visualizer$OnDataCaptureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/appium/android/apis/media/AudioFxDemo;->setupVisualizerFxAndUI()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/appium/android/apis/media/AudioFxDemo;


# direct methods
.method constructor <init>(Lio/appium/android/apis/media/AudioFxDemo;)V
    .locals 0
    .param p1, "this$0"    # Lio/appium/android/apis/media/AudioFxDemo;

    .line 175
    iput-object p1, p0, Lio/appium/android/apis/media/AudioFxDemo$3;->this$0:Lio/appium/android/apis/media/AudioFxDemo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFftDataCapture(Landroid/media/audiofx/Visualizer;[BI)V
    .locals 0
    .param p1, "visualizer"    # Landroid/media/audiofx/Visualizer;
    .param p2, "bytes"    # [B
    .param p3, "samplingRate"    # I

    .line 181
    return-void
.end method

.method public onWaveFormDataCapture(Landroid/media/audiofx/Visualizer;[BI)V
    .locals 1
    .param p1, "visualizer"    # Landroid/media/audiofx/Visualizer;
    .param p2, "bytes"    # [B
    .param p3, "samplingRate"    # I

    .line 178
    iget-object v0, p0, Lio/appium/android/apis/media/AudioFxDemo$3;->this$0:Lio/appium/android/apis/media/AudioFxDemo;

    invoke-static {v0}, Lio/appium/android/apis/media/AudioFxDemo;->access$200(Lio/appium/android/apis/media/AudioFxDemo;)Lio/appium/android/apis/media/VisualizerView;

    move-result-object v0

    invoke-virtual {v0, p2}, Lio/appium/android/apis/media/VisualizerView;->updateVisualizer([B)V

    .line 179
    return-void
.end method
