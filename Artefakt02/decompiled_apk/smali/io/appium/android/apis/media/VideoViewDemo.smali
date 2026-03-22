.class public Lio/appium/android/apis/media/VideoViewDemo;
.super Landroid/app/Activity;
.source "VideoViewDemo.java"


# instance fields
.field private mVideoView:Landroid/widget/VideoView;

.field private path:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 26
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 32
    const-string v0, ""

    iput-object v0, p0, Lio/appium/android/apis/media/VideoViewDemo;->path:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "icicle"    # Landroid/os/Bundle;

    .line 37
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 38
    const v0, 0x7f0b011c

    invoke-virtual {p0, v0}, Lio/appium/android/apis/media/VideoViewDemo;->setContentView(I)V

    .line 39
    const v0, 0x7f090202

    invoke-virtual {p0, v0}, Lio/appium/android/apis/media/VideoViewDemo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/VideoView;

    iput-object v0, p0, Lio/appium/android/apis/media/VideoViewDemo;->mVideoView:Landroid/widget/VideoView;

    .line 41
    iget-object v0, p0, Lio/appium/android/apis/media/VideoViewDemo;->path:Ljava/lang/String;

    const-string v1, ""

    if-ne v0, v1, :cond_0

    .line 43
    const-string v0, "Please edit VideoViewDemo Activity, and set path variable to your media file URL/path"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 47
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 55
    :cond_0
    iget-object v1, p0, Lio/appium/android/apis/media/VideoViewDemo;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v1, v0}, Landroid/widget/VideoView;->setVideoPath(Ljava/lang/String;)V

    .line 56
    iget-object v0, p0, Lio/appium/android/apis/media/VideoViewDemo;->mVideoView:Landroid/widget/VideoView;

    new-instance v1, Landroid/widget/MediaController;

    invoke-direct {v1, p0}, Landroid/widget/MediaController;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setMediaController(Landroid/widget/MediaController;)V

    .line 57
    iget-object v0, p0, Lio/appium/android/apis/media/VideoViewDemo;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->requestFocus()Z

    .line 60
    :goto_0
    return-void
.end method
