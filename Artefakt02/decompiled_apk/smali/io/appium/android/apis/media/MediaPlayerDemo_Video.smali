.class public Lio/appium/android/apis/media/MediaPlayerDemo_Video;
.super Landroid/app/Activity;
.source "MediaPlayerDemo_Video.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnBufferingUpdateListener;
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnPreparedListener;
.implements Landroid/media/MediaPlayer$OnVideoSizeChangedListener;
.implements Landroid/view/SurfaceHolder$Callback;


# static fields
.field private static final LOCAL_AUDIO:I = 0x1

.field private static final LOCAL_VIDEO:I = 0x4

.field private static final MEDIA:Ljava/lang/String; = "media"

.field private static final RESOURCES_AUDIO:I = 0x3

.field private static final STREAM_AUDIO:I = 0x2

.field private static final STREAM_VIDEO:I = 0x5

.field private static final TAG:Ljava/lang/String; = "MediaPlayerDemo"


# instance fields
.field private extras:Landroid/os/Bundle;

.field private holder:Landroid/view/SurfaceHolder;

.field private mIsVideoReadyToBePlayed:Z

.field private mIsVideoSizeKnown:Z

.field private mMediaPlayer:Landroid/media/MediaPlayer;

.field private mPreview:Landroid/view/SurfaceView;

.field private mVideoHeight:I

.field private mVideoWidth:I

.field private path:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 35
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 53
    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/appium/android/apis/media/MediaPlayerDemo_Video;->mIsVideoSizeKnown:Z

    .line 54
    iput-boolean v0, p0, Lio/appium/android/apis/media/MediaPlayerDemo_Video;->mIsVideoReadyToBePlayed:Z

    return-void
.end method

.method private doCleanUp()V
    .locals 1

    .line 208
    const/4 v0, 0x0

    iput v0, p0, Lio/appium/android/apis/media/MediaPlayerDemo_Video;->mVideoWidth:I

    .line 209
    iput v0, p0, Lio/appium/android/apis/media/MediaPlayerDemo_Video;->mVideoHeight:I

    .line 210
    iput-boolean v0, p0, Lio/appium/android/apis/media/MediaPlayerDemo_Video;->mIsVideoReadyToBePlayed:Z

    .line 211
    iput-boolean v0, p0, Lio/appium/android/apis/media/MediaPlayerDemo_Video;->mIsVideoSizeKnown:Z

    .line 212
    return-void
.end method

.method private playVideo(Ljava/lang/Integer;)V
    .locals 4
    .param p1, "Media"    # Ljava/lang/Integer;

    .line 73
    invoke-direct {p0}, Lio/appium/android/apis/media/MediaPlayerDemo_Video;->doCleanUp()V

    .line 76
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 104
    :pswitch_0
    const-string v0, ""

    iput-object v0, p0, Lio/appium/android/apis/media/MediaPlayerDemo_Video;->path:Ljava/lang/String;

    .line 105
    iget-object v0, p0, Lio/appium/android/apis/media/MediaPlayerDemo_Video;->path:Ljava/lang/String;

    const-string v2, ""

    if-ne v0, v2, :cond_0

    .line 107
    const-string v0, "Please edit MediaPlayerDemo_Video Activity, and set the path variable to your media file URL."

    .line 108
    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 112
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 81
    :pswitch_1
    const-string v0, ""

    iput-object v0, p0, Lio/appium/android/apis/media/MediaPlayerDemo_Video;->path:Ljava/lang/String;

    .line 82
    iget-object v0, p0, Lio/appium/android/apis/media/MediaPlayerDemo_Video;->path:Ljava/lang/String;

    const-string v2, ""

    if-ne v0, v2, :cond_0

    .line 84
    const-string v0, "Please edit MediaPlayerDemo_Video Activity, and set the path variable to your media file path. Your media file must be stored on sdcard."

    .line 85
    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 90
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 122
    :cond_0
    :goto_0
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lio/appium/android/apis/media/MediaPlayerDemo_Video;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 123
    iget-object v0, p0, Lio/appium/android/apis/media/MediaPlayerDemo_Video;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lio/appium/android/apis/media/MediaPlayerDemo_Video;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 124
    iget-object v0, p0, Lio/appium/android/apis/media/MediaPlayerDemo_Video;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lio/appium/android/apis/media/MediaPlayerDemo_Video;->holder:Landroid/view/SurfaceHolder;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    .line 125
    iget-object v0, p0, Lio/appium/android/apis/media/MediaPlayerDemo_Video;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepare()V

    .line 126
    iget-object v0, p0, Lio/appium/android/apis/media/MediaPlayerDemo_Video;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V

    .line 127
    iget-object v0, p0, Lio/appium/android/apis/media/MediaPlayerDemo_Video;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 128
    iget-object v0, p0, Lio/appium/android/apis/media/MediaPlayerDemo_Video;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 129
    iget-object v0, p0, Lio/appium/android/apis/media/MediaPlayerDemo_Video;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnVideoSizeChangedListener(Landroid/media/MediaPlayer$OnVideoSizeChangedListener;)V

    .line 130
    iget-object v0, p0, Lio/appium/android/apis/media/MediaPlayerDemo_Video;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 135
    goto :goto_1

    .line 133
    :catch_0
    move-exception v0

    .line 134
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "MediaPlayerDemo"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 136
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private releaseMediaPlayer()V
    .locals 1

    .line 201
    iget-object v0, p0, Lio/appium/android/apis/media/MediaPlayerDemo_Video;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 202
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 203
    const/4 v0, 0x0

    iput-object v0, p0, Lio/appium/android/apis/media/MediaPlayerDemo_Video;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 205
    :cond_0
    return-void
.end method

.method private startVideoPlayback()V
    .locals 3

    .line 215
    const-string v0, "MediaPlayerDemo"

    const-string v1, "startVideoPlayback"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    iget-object v0, p0, Lio/appium/android/apis/media/MediaPlayerDemo_Video;->holder:Landroid/view/SurfaceHolder;

    iget v1, p0, Lio/appium/android/apis/media/MediaPlayerDemo_Video;->mVideoWidth:I

    iget v2, p0, Lio/appium/android/apis/media/MediaPlayerDemo_Video;->mVideoHeight:I

    invoke-interface {v0, v1, v2}, Landroid/view/SurfaceHolder;->setFixedSize(II)V

    .line 217
    iget-object v0, p0, Lio/appium/android/apis/media/MediaPlayerDemo_Video;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 218
    return-void
.end method


# virtual methods
.method public onBufferingUpdate(Landroid/media/MediaPlayer;I)V
    .locals 3
    .param p1, "arg0"    # Landroid/media/MediaPlayer;
    .param p2, "percent"    # I

    .line 139
    const-string v0, "MediaPlayerDemo"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onBufferingUpdate percent:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    return-void
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 2
    .param p1, "arg0"    # Landroid/media/MediaPlayer;

    .line 144
    const-string v0, "MediaPlayerDemo"

    const-string v1, "onCompletion called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "icicle"    # Landroid/os/Bundle;

    .line 62
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 63
    const v0, 0x7f0b00ad

    invoke-virtual {p0, v0}, Lio/appium/android/apis/media/MediaPlayerDemo_Video;->setContentView(I)V

    .line 64
    const v0, 0x7f090201

    invoke-virtual {p0, v0}, Lio/appium/android/apis/media/MediaPlayerDemo_Video;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceView;

    iput-object v0, p0, Lio/appium/android/apis/media/MediaPlayerDemo_Video;->mPreview:Landroid/view/SurfaceView;

    .line 65
    iget-object v0, p0, Lio/appium/android/apis/media/MediaPlayerDemo_Video;->mPreview:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iput-object v0, p0, Lio/appium/android/apis/media/MediaPlayerDemo_Video;->holder:Landroid/view/SurfaceHolder;

    .line 66
    iget-object v0, p0, Lio/appium/android/apis/media/MediaPlayerDemo_Video;->holder:Landroid/view/SurfaceHolder;

    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 67
    iget-object v0, p0, Lio/appium/android/apis/media/MediaPlayerDemo_Video;->holder:Landroid/view/SurfaceHolder;

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setType(I)V

    .line 68
    invoke-virtual {p0}, Lio/appium/android/apis/media/MediaPlayerDemo_Video;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lio/appium/android/apis/media/MediaPlayerDemo_Video;->extras:Landroid/os/Bundle;

    .line 70
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .line 195
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 196
    invoke-direct {p0}, Lio/appium/android/apis/media/MediaPlayerDemo_Video;->releaseMediaPlayer()V

    .line 197
    invoke-direct {p0}, Lio/appium/android/apis/media/MediaPlayerDemo_Video;->doCleanUp()V

    .line 198
    return-void
.end method

.method protected onPause()V
    .locals 0

    .line 188
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 189
    invoke-direct {p0}, Lio/appium/android/apis/media/MediaPlayerDemo_Video;->releaseMediaPlayer()V

    .line 190
    invoke-direct {p0}, Lio/appium/android/apis/media/MediaPlayerDemo_Video;->doCleanUp()V

    .line 191
    return-void
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 2
    .param p1, "mediaplayer"    # Landroid/media/MediaPlayer;

    .line 162
    const-string v0, "MediaPlayerDemo"

    const-string v1, "onPrepared called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/appium/android/apis/media/MediaPlayerDemo_Video;->mIsVideoReadyToBePlayed:Z

    .line 164
    iget-boolean v0, p0, Lio/appium/android/apis/media/MediaPlayerDemo_Video;->mIsVideoReadyToBePlayed:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lio/appium/android/apis/media/MediaPlayerDemo_Video;->mIsVideoSizeKnown:Z

    if-eqz v0, :cond_0

    .line 165
    invoke-direct {p0}, Lio/appium/android/apis/media/MediaPlayerDemo_Video;->startVideoPlayback()V

    .line 167
    :cond_0
    return-void
.end method

.method public onVideoSizeChanged(Landroid/media/MediaPlayer;II)V
    .locals 3
    .param p1, "mp"    # Landroid/media/MediaPlayer;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .line 148
    const-string v0, "MediaPlayerDemo"

    const-string v1, "onVideoSizeChanged called"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    if-eqz p2, :cond_2

    if-nez p3, :cond_0

    goto :goto_0

    .line 153
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/appium/android/apis/media/MediaPlayerDemo_Video;->mIsVideoSizeKnown:Z

    .line 154
    iput p2, p0, Lio/appium/android/apis/media/MediaPlayerDemo_Video;->mVideoWidth:I

    .line 155
    iput p3, p0, Lio/appium/android/apis/media/MediaPlayerDemo_Video;->mVideoHeight:I

    .line 156
    iget-boolean v0, p0, Lio/appium/android/apis/media/MediaPlayerDemo_Video;->mIsVideoReadyToBePlayed:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lio/appium/android/apis/media/MediaPlayerDemo_Video;->mIsVideoSizeKnown:Z

    if-eqz v0, :cond_1

    .line 157
    invoke-direct {p0}, Lio/appium/android/apis/media/MediaPlayerDemo_Video;->startVideoPlayback()V

    .line 159
    :cond_1
    return-void

    .line 150
    :cond_2
    :goto_0
    const-string v0, "MediaPlayerDemo"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid video width("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ") or height("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 2
    .param p1, "surfaceholder"    # Landroid/view/SurfaceHolder;
    .param p2, "i"    # I
    .param p3, "j"    # I
    .param p4, "k"    # I

    .line 170
    const-string v0, "MediaPlayerDemo"

    const-string v1, "surfaceChanged called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 2
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .line 180
    const-string v0, "MediaPlayerDemo"

    const-string v1, "surfaceCreated called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    iget-object v0, p0, Lio/appium/android/apis/media/MediaPlayerDemo_Video;->extras:Landroid/os/Bundle;

    const-string v1, "media"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/appium/android/apis/media/MediaPlayerDemo_Video;->playVideo(Ljava/lang/Integer;)V

    .line 184
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 2
    .param p1, "surfaceholder"    # Landroid/view/SurfaceHolder;

    .line 175
    const-string v0, "MediaPlayerDemo"

    const-string v1, "surfaceDestroyed called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    return-void
.end method
