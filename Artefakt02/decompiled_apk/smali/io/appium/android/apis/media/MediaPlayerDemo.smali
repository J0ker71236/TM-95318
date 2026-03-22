.class public Lio/appium/android/apis/media/MediaPlayerDemo;
.super Landroid/app/Activity;
.source "MediaPlayerDemo.java"


# static fields
.field private static final LOCAL_AUDIO:I = 0x1

.field private static final LOCAL_VIDEO:I = 0x4

.field private static final MEDIA:Ljava/lang/String; = "media"

.field private static final RESOURCES_AUDIO:I = 0x3

.field private static final RESOURCES_VIDEO:I = 0x6

.field private static final STREAM_AUDIO:I = 0x2

.field private static final STREAM_VIDEO:I = 0x5


# instance fields
.field private mLocalAudioListener:Landroid/view/View$OnClickListener;

.field private mLocalVideoListener:Landroid/view/View$OnClickListener;

.field private mResourcesAudioListener:Landroid/view/View$OnClickListener;

.field private mStreamVideoListener:Landroid/view/View$OnClickListener;

.field private mlocalaudio:Landroid/widget/Button;

.field private mlocalvideo:Landroid/widget/Button;

.field private mresourcesaudio:Landroid/widget/Button;

.field private mresourcesvideo:Landroid/widget/Button;

.field private mstreamaudio:Landroid/widget/Button;

.field private mstreamvideo:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 27
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 58
    new-instance v0, Lio/appium/android/apis/media/MediaPlayerDemo$1;

    invoke-direct {v0, p0}, Lio/appium/android/apis/media/MediaPlayerDemo$1;-><init>(Lio/appium/android/apis/media/MediaPlayerDemo;)V

    iput-object v0, p0, Lio/appium/android/apis/media/MediaPlayerDemo;->mLocalAudioListener:Landroid/view/View$OnClickListener;

    .line 68
    new-instance v0, Lio/appium/android/apis/media/MediaPlayerDemo$2;

    invoke-direct {v0, p0}, Lio/appium/android/apis/media/MediaPlayerDemo$2;-><init>(Lio/appium/android/apis/media/MediaPlayerDemo;)V

    iput-object v0, p0, Lio/appium/android/apis/media/MediaPlayerDemo;->mResourcesAudioListener:Landroid/view/View$OnClickListener;

    .line 79
    new-instance v0, Lio/appium/android/apis/media/MediaPlayerDemo$3;

    invoke-direct {v0, p0}, Lio/appium/android/apis/media/MediaPlayerDemo$3;-><init>(Lio/appium/android/apis/media/MediaPlayerDemo;)V

    iput-object v0, p0, Lio/appium/android/apis/media/MediaPlayerDemo;->mLocalVideoListener:Landroid/view/View$OnClickListener;

    .line 89
    new-instance v0, Lio/appium/android/apis/media/MediaPlayerDemo$4;

    invoke-direct {v0, p0}, Lio/appium/android/apis/media/MediaPlayerDemo$4;-><init>(Lio/appium/android/apis/media/MediaPlayerDemo;)V

    iput-object v0, p0, Lio/appium/android/apis/media/MediaPlayerDemo;->mStreamVideoListener:Landroid/view/View$OnClickListener;

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "icicle"    # Landroid/os/Bundle;

    .line 45
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 46
    const v0, 0x7f0b00ac

    invoke-virtual {p0, v0}, Lio/appium/android/apis/media/MediaPlayerDemo;->setContentView(I)V

    .line 47
    const v0, 0x7f09011b

    invoke-virtual {p0, v0}, Lio/appium/android/apis/media/MediaPlayerDemo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lio/appium/android/apis/media/MediaPlayerDemo;->mlocalaudio:Landroid/widget/Button;

    .line 48
    iget-object v0, p0, Lio/appium/android/apis/media/MediaPlayerDemo;->mlocalaudio:Landroid/widget/Button;

    iget-object v1, p0, Lio/appium/android/apis/media/MediaPlayerDemo;->mLocalAudioListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 49
    const v0, 0x7f090188

    invoke-virtual {p0, v0}, Lio/appium/android/apis/media/MediaPlayerDemo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lio/appium/android/apis/media/MediaPlayerDemo;->mresourcesaudio:Landroid/widget/Button;

    .line 50
    iget-object v0, p0, Lio/appium/android/apis/media/MediaPlayerDemo;->mresourcesaudio:Landroid/widget/Button;

    iget-object v1, p0, Lio/appium/android/apis/media/MediaPlayerDemo;->mResourcesAudioListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 52
    const v0, 0x7f09011c

    invoke-virtual {p0, v0}, Lio/appium/android/apis/media/MediaPlayerDemo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lio/appium/android/apis/media/MediaPlayerDemo;->mlocalvideo:Landroid/widget/Button;

    .line 53
    iget-object v0, p0, Lio/appium/android/apis/media/MediaPlayerDemo;->mlocalvideo:Landroid/widget/Button;

    iget-object v1, p0, Lio/appium/android/apis/media/MediaPlayerDemo;->mLocalVideoListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 54
    const v0, 0x7f0901fa

    invoke-virtual {p0, v0}, Lio/appium/android/apis/media/MediaPlayerDemo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lio/appium/android/apis/media/MediaPlayerDemo;->mstreamvideo:Landroid/widget/Button;

    .line 55
    iget-object v0, p0, Lio/appium/android/apis/media/MediaPlayerDemo;->mstreamvideo:Landroid/widget/Button;

    iget-object v1, p0, Lio/appium/android/apis/media/MediaPlayerDemo;->mStreamVideoListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 56
    return-void
.end method
