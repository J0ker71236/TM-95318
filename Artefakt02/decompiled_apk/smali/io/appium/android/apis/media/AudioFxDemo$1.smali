.class Lio/appium/android/apis/media/AudioFxDemo$1;
.super Ljava/lang/Object;
.source "AudioFxDemo.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/appium/android/apis/media/AudioFxDemo;->onCreate(Landroid/os/Bundle;)V
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

    .line 85
    iput-object p1, p0, Lio/appium/android/apis/media/AudioFxDemo$1;->this$0:Lio/appium/android/apis/media/AudioFxDemo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 2
    .param p1, "mediaPlayer"    # Landroid/media/MediaPlayer;

    .line 87
    iget-object v0, p0, Lio/appium/android/apis/media/AudioFxDemo$1;->this$0:Lio/appium/android/apis/media/AudioFxDemo;

    invoke-static {v0}, Lio/appium/android/apis/media/AudioFxDemo;->access$000(Lio/appium/android/apis/media/AudioFxDemo;)Landroid/media/audiofx/Visualizer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/audiofx/Visualizer;->setEnabled(Z)I

    .line 88
    return-void
.end method
