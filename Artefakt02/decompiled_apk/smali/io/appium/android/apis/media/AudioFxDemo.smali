.class public Lio/appium/android/apis/media/AudioFxDemo;
.super Landroid/app/Activity;
.source "AudioFxDemo.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AudioFxDemo"

.field private static final VISUALIZER_HEIGHT_DIP:F = 50.0f


# instance fields
.field private mEqualizer:Landroid/media/audiofx/Equalizer;

.field private mLinearLayout:Landroid/widget/LinearLayout;

.field private mMediaPlayer:Landroid/media/MediaPlayer;

.field private mStatusTextView:Landroid/widget/TextView;

.field private mVisualizer:Landroid/media/audiofx/Visualizer;

.field private mVisualizerView:Lio/appium/android/apis/media/VisualizerView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lio/appium/android/apis/media/AudioFxDemo;)Landroid/media/audiofx/Visualizer;
    .locals 1
    .param p0, "x0"    # Lio/appium/android/apis/media/AudioFxDemo;

    .line 44
    iget-object v0, p0, Lio/appium/android/apis/media/AudioFxDemo;->mVisualizer:Landroid/media/audiofx/Visualizer;

    return-object v0
.end method

.method static synthetic access$100(Lio/appium/android/apis/media/AudioFxDemo;)Landroid/media/audiofx/Equalizer;
    .locals 1
    .param p0, "x0"    # Lio/appium/android/apis/media/AudioFxDemo;

    .line 44
    iget-object v0, p0, Lio/appium/android/apis/media/AudioFxDemo;->mEqualizer:Landroid/media/audiofx/Equalizer;

    return-object v0
.end method

.method static synthetic access$200(Lio/appium/android/apis/media/AudioFxDemo;)Lio/appium/android/apis/media/VisualizerView;
    .locals 1
    .param p0, "x0"    # Lio/appium/android/apis/media/AudioFxDemo;

    .line 44
    iget-object v0, p0, Lio/appium/android/apis/media/AudioFxDemo;->mVisualizerView:Lio/appium/android/apis/media/VisualizerView;

    return-object v0
.end method

.method private setupEqualizerFxAndUI()V
    .locals 16

    .line 98
    move-object/from16 v0, p0

    new-instance v1, Landroid/media/audiofx/Equalizer;

    iget-object v2, v0, Lio/appium/android/apis/media/AudioFxDemo;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->getAudioSessionId()I

    move-result v2

    const/4 v3, 0x0

    invoke-direct {v1, v3, v2}, Landroid/media/audiofx/Equalizer;-><init>(II)V

    iput-object v1, v0, Lio/appium/android/apis/media/AudioFxDemo;->mEqualizer:Landroid/media/audiofx/Equalizer;

    .line 99
    iget-object v1, v0, Lio/appium/android/apis/media/AudioFxDemo;->mEqualizer:Landroid/media/audiofx/Equalizer;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/media/audiofx/Equalizer;->setEnabled(Z)I

    .line 101
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 102
    .local v1, "eqTextView":Landroid/widget/TextView;
    const-string v4, "Equalizer:"

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 103
    iget-object v4, v0, Lio/appium/android/apis/media/AudioFxDemo;->mLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 105
    iget-object v4, v0, Lio/appium/android/apis/media/AudioFxDemo;->mEqualizer:Landroid/media/audiofx/Equalizer;

    invoke-virtual {v4}, Landroid/media/audiofx/Equalizer;->getNumberOfBands()S

    move-result v4

    .line 107
    .local v4, "bands":S
    iget-object v5, v0, Lio/appium/android/apis/media/AudioFxDemo;->mEqualizer:Landroid/media/audiofx/Equalizer;

    invoke-virtual {v5}, Landroid/media/audiofx/Equalizer;->getBandLevelRange()[S

    move-result-object v5

    aget-short v5, v5, v3

    .line 108
    .local v5, "minEQLevel":S
    iget-object v6, v0, Lio/appium/android/apis/media/AudioFxDemo;->mEqualizer:Landroid/media/audiofx/Equalizer;

    invoke-virtual {v6}, Landroid/media/audiofx/Equalizer;->getBandLevelRange()[S

    move-result-object v6

    aget-short v6, v6, v2

    .line 110
    .local v6, "maxEQLevel":S
    const/4 v7, 0x0

    .local v7, "i":S
    :goto_0
    if-ge v7, v4, :cond_0

    .line 111
    move v8, v7

    .line 113
    .local v8, "band":S
    new-instance v9, Landroid/widget/TextView;

    invoke-direct {v9, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 114
    .local v9, "freqTextView":Landroid/widget/TextView;
    new-instance v10, Landroid/view/ViewGroup$LayoutParams;

    const/4 v11, -0x1

    const/4 v12, -0x2

    invoke-direct {v10, v11, v12}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 117
    invoke-virtual {v9, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 118
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v13, v0, Lio/appium/android/apis/media/AudioFxDemo;->mEqualizer:Landroid/media/audiofx/Equalizer;

    invoke-virtual {v13, v8}, Landroid/media/audiofx/Equalizer;->getCenterFreq(S)I

    move-result v13

    div-int/lit16 v13, v13, 0x3e8

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, " Hz"

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 119
    iget-object v10, v0, Lio/appium/android/apis/media/AudioFxDemo;->mLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v10, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 121
    new-instance v10, Landroid/widget/LinearLayout;

    invoke-direct {v10, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 122
    .local v10, "row":Landroid/widget/LinearLayout;
    invoke-virtual {v10, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 124
    new-instance v13, Landroid/widget/TextView;

    invoke-direct {v13, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 125
    .local v13, "minDbTextView":Landroid/widget/TextView;
    new-instance v14, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v14, v12, v12}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 128
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    div-int/lit8 v15, v5, 0x64

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, " dB"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 130
    new-instance v14, Landroid/widget/TextView;

    invoke-direct {v14, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 131
    .local v14, "maxDbTextView":Landroid/widget/TextView;
    new-instance v15, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v15, v12, v12}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 134
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    div-int/lit8 v2, v6, 0x64

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " dB"

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 136
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v11, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 139
    .local v2, "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    const/high16 v11, 0x3f800000    # 1.0f

    iput v11, v2, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 140
    new-instance v11, Landroid/widget/SeekBar;

    invoke-direct {v11, v0}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;)V

    .line 141
    .local v11, "bar":Landroid/widget/SeekBar;
    invoke-virtual {v11, v2}, Landroid/widget/SeekBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 142
    sub-int v12, v6, v5

    invoke-virtual {v11, v12}, Landroid/widget/SeekBar;->setMax(I)V

    .line 143
    iget-object v12, v0, Lio/appium/android/apis/media/AudioFxDemo;->mEqualizer:Landroid/media/audiofx/Equalizer;

    invoke-virtual {v12, v8}, Landroid/media/audiofx/Equalizer;->getBandLevel(S)S

    move-result v12

    invoke-virtual {v11, v12}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 145
    new-instance v12, Lio/appium/android/apis/media/AudioFxDemo$2;

    invoke-direct {v12, v0, v8, v5}, Lio/appium/android/apis/media/AudioFxDemo$2;-><init>(Lio/appium/android/apis/media/AudioFxDemo;SS)V

    invoke-virtual {v11, v12}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 155
    invoke-virtual {v10, v13}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 156
    invoke-virtual {v10, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 157
    invoke-virtual {v10, v14}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 159
    iget-object v12, v0, Lio/appium/android/apis/media/AudioFxDemo;->mLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v12, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 110
    .end local v2    # "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    .end local v8    # "band":S
    .end local v9    # "freqTextView":Landroid/widget/TextView;
    .end local v10    # "row":Landroid/widget/LinearLayout;
    .end local v11    # "bar":Landroid/widget/SeekBar;
    .end local v13    # "minDbTextView":Landroid/widget/TextView;
    .end local v14    # "maxDbTextView":Landroid/widget/TextView;
    add-int/lit8 v2, v7, 0x1

    int-to-short v7, v2

    const/4 v2, 0x1

    goto/16 :goto_0

    .line 161
    .end local v7    # "i":S
    :cond_0
    return-void
.end method

.method private setupVisualizerFxAndUI()V
    .locals 5

    .line 166
    new-instance v0, Lio/appium/android/apis/media/VisualizerView;

    invoke-direct {v0, p0}, Lio/appium/android/apis/media/VisualizerView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lio/appium/android/apis/media/AudioFxDemo;->mVisualizerView:Lio/appium/android/apis/media/VisualizerView;

    .line 167
    iget-object v0, p0, Lio/appium/android/apis/media/AudioFxDemo;->mVisualizerView:Lio/appium/android/apis/media/VisualizerView;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    .line 169
    invoke-virtual {p0}, Lio/appium/android/apis/media/AudioFxDemo;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    const/high16 v3, 0x42480000    # 50.0f

    mul-float v2, v2, v3

    float-to-int v2, v2

    const/4 v3, -0x1

    invoke-direct {v1, v3, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 167
    invoke-virtual {v0, v1}, Lio/appium/android/apis/media/VisualizerView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 170
    iget-object v0, p0, Lio/appium/android/apis/media/AudioFxDemo;->mLinearLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lio/appium/android/apis/media/AudioFxDemo;->mVisualizerView:Lio/appium/android/apis/media/VisualizerView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 173
    new-instance v0, Landroid/media/audiofx/Visualizer;

    iget-object v1, p0, Lio/appium/android/apis/media/AudioFxDemo;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->getAudioSessionId()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/media/audiofx/Visualizer;-><init>(I)V

    iput-object v0, p0, Lio/appium/android/apis/media/AudioFxDemo;->mVisualizer:Landroid/media/audiofx/Visualizer;

    .line 174
    iget-object v0, p0, Lio/appium/android/apis/media/AudioFxDemo;->mVisualizer:Landroid/media/audiofx/Visualizer;

    invoke-static {}, Landroid/media/audiofx/Visualizer;->getCaptureSizeRange()[I

    move-result-object v1

    const/4 v2, 0x1

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/media/audiofx/Visualizer;->setCaptureSize(I)I

    .line 175
    iget-object v0, p0, Lio/appium/android/apis/media/AudioFxDemo;->mVisualizer:Landroid/media/audiofx/Visualizer;

    new-instance v1, Lio/appium/android/apis/media/AudioFxDemo$3;

    invoke-direct {v1, p0}, Lio/appium/android/apis/media/AudioFxDemo$3;-><init>(Lio/appium/android/apis/media/AudioFxDemo;)V

    .line 182
    invoke-static {}, Landroid/media/audiofx/Visualizer;->getMaxCaptureRate()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    .line 175
    const/4 v4, 0x0

    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/media/audiofx/Visualizer;->setDataCaptureListener(Landroid/media/audiofx/Visualizer$OnDataCaptureListener;IZZ)I

    .line 183
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "icicle"    # Landroid/os/Bundle;

    .line 59
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 61
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lio/appium/android/apis/media/AudioFxDemo;->setVolumeControlStream(I)V

    .line 63
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lio/appium/android/apis/media/AudioFxDemo;->mStatusTextView:Landroid/widget/TextView;

    .line 65
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lio/appium/android/apis/media/AudioFxDemo;->mLinearLayout:Landroid/widget/LinearLayout;

    .line 66
    iget-object v0, p0, Lio/appium/android/apis/media/AudioFxDemo;->mLinearLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 67
    iget-object v0, p0, Lio/appium/android/apis/media/AudioFxDemo;->mLinearLayout:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lio/appium/android/apis/media/AudioFxDemo;->mStatusTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 69
    iget-object v0, p0, Lio/appium/android/apis/media/AudioFxDemo;->mLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Lio/appium/android/apis/media/AudioFxDemo;->setContentView(Landroid/view/View;)V

    .line 72
    const v0, 0x7f0d0011

    invoke-static {p0, v0}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;I)Landroid/media/MediaPlayer;

    move-result-object v0

    iput-object v0, p0, Lio/appium/android/apis/media/AudioFxDemo;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 73
    const-string v0, "AudioFxDemo"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MediaPlayer audio session ID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lio/appium/android/apis/media/AudioFxDemo;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->getAudioSessionId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    invoke-direct {p0}, Lio/appium/android/apis/media/AudioFxDemo;->setupVisualizerFxAndUI()V

    .line 76
    invoke-direct {p0}, Lio/appium/android/apis/media/AudioFxDemo;->setupEqualizerFxAndUI()V

    .line 80
    iget-object v0, p0, Lio/appium/android/apis/media/AudioFxDemo;->mVisualizer:Landroid/media/audiofx/Visualizer;

    invoke-virtual {v0, v1}, Landroid/media/audiofx/Visualizer;->setEnabled(Z)I

    .line 85
    iget-object v0, p0, Lio/appium/android/apis/media/AudioFxDemo;->mMediaPlayer:Landroid/media/MediaPlayer;

    new-instance v1, Lio/appium/android/apis/media/AudioFxDemo$1;

    invoke-direct {v1, p0}, Lio/appium/android/apis/media/AudioFxDemo$1;-><init>(Lio/appium/android/apis/media/AudioFxDemo;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 91
    iget-object v0, p0, Lio/appium/android/apis/media/AudioFxDemo;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 92
    iget-object v0, p0, Lio/appium/android/apis/media/AudioFxDemo;->mStatusTextView:Landroid/widget/TextView;

    const-string v1, "Playing audio..."

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 93
    return-void
.end method

.method protected onPause()V
    .locals 1

    .line 187
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 189
    invoke-virtual {p0}, Lio/appium/android/apis/media/AudioFxDemo;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/appium/android/apis/media/AudioFxDemo;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 190
    iget-object v0, p0, Lio/appium/android/apis/media/AudioFxDemo;->mVisualizer:Landroid/media/audiofx/Visualizer;

    invoke-virtual {v0}, Landroid/media/audiofx/Visualizer;->release()V

    .line 191
    iget-object v0, p0, Lio/appium/android/apis/media/AudioFxDemo;->mEqualizer:Landroid/media/audiofx/Equalizer;

    invoke-virtual {v0}, Landroid/media/audiofx/Equalizer;->release()V

    .line 192
    iget-object v0, p0, Lio/appium/android/apis/media/AudioFxDemo;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 193
    const/4 v0, 0x0

    iput-object v0, p0, Lio/appium/android/apis/media/AudioFxDemo;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 195
    :cond_0
    return-void
.end method
