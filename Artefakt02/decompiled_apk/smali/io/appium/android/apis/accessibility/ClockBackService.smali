.class public Lio/appium/android/apis/accessibility/ClockBackService;
.super Landroid/accessibilityservice/AccessibilityService;
.source "ClockBackService.java"


# static fields
.field private static final EVENT_NOTIFICATION_TIMEOUT_MILLIS:I = 0x50

.field private static final INDEX_RINGER_NORMAL:I = 0x400

.field private static final INDEX_RINGER_SILENT:I = 0x1000

.field private static final INDEX_RINGER_VIBRATE:I = 0x800

.field private static final INDEX_SCREEN_OFF:I = 0x200

.field private static final INDEX_SCREEN_ON:I = 0x100

.field private static final LOG_TAG:Ljava/lang/String; = "ClockBackService"

.field private static final MESSAGE_PLAY_EARCON:I = 0x5

.field private static final MESSAGE_SHUTDOWN_TTS:I = 0x4

.field private static final MESSAGE_SPEAK:I = 0x1

.field private static final MESSAGE_START_TTS:I = 0x3

.field private static final MESSAGE_STOP_PLAY_EARCON:I = 0x6

.field private static final MESSAGE_STOP_SPEAK:I = 0x2

.field private static final MESSAGE_STOP_VIBRATE:I = 0x8

.field private static final MESSAGE_VIBRATE:I = 0x7

.field private static final PACKAGE_NAMES:[Ljava/lang/String;

.field private static final QUEUING_MODE_INTERRUPT:I = 0x2

.field private static final SPACE:Ljava/lang/String; = " "

.field private static sSoundsResourceIds:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final sVibrationPatterns:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "[J>;"
        }
    .end annotation
.end field


# instance fields
.field private isInfrastructureInitialized:Z

.field private mAudioManager:Landroid/media/AudioManager;

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field mContext:Landroid/content/Context;

.field private final mEarconNames:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mHandler:Landroid/os/Handler;

.field mProvidedFeedbackType:I

.field private mTts:Landroid/speech/tts/TextToSpeech;

.field private final mUtterance:Ljava/lang/StringBuilder;

.field private mVibrator:Landroid/os/Vibrator;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 80
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "com.android.alarmclock"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "com.google.android.deskclock"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "com.android.deskclock"

    const/4 v3, 0x2

    aput-object v1, v0, v3

    sput-object v0, Lio/appium/android/apis/accessibility/ClockBackService;->PACKAGE_NAMES:[Ljava/lang/String;

    .line 141
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lio/appium/android/apis/accessibility/ClockBackService;->sVibrationPatterns:Landroid/util/SparseArray;

    .line 143
    sget-object v0, Lio/appium/android/apis/accessibility/ClockBackService;->sVibrationPatterns:Landroid/util/SparseArray;

    new-array v1, v3, [J

    fill-array-data v1, :array_0

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 146
    sget-object v0, Lio/appium/android/apis/accessibility/ClockBackService;->sVibrationPatterns:Landroid/util/SparseArray;

    new-array v1, v3, [J

    fill-array-data v1, :array_1

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 149
    sget-object v0, Lio/appium/android/apis/accessibility/ClockBackService;->sVibrationPatterns:Landroid/util/SparseArray;

    const/4 v1, 0x4

    new-array v4, v1, [J

    fill-array-data v4, :array_2

    invoke-virtual {v0, v1, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 152
    sget-object v0, Lio/appium/android/apis/accessibility/ClockBackService;->sVibrationPatterns:Landroid/util/SparseArray;

    new-array v4, v1, [J

    fill-array-data v4, :array_3

    const/16 v5, 0x8

    invoke-virtual {v0, v5, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 155
    sget-object v0, Lio/appium/android/apis/accessibility/ClockBackService;->sVibrationPatterns:Landroid/util/SparseArray;

    const/4 v4, 0x6

    new-array v6, v4, [J

    fill-array-data v6, :array_4

    const/16 v7, 0x20

    invoke-virtual {v0, v7, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 158
    sget-object v0, Lio/appium/android/apis/accessibility/ClockBackService;->sVibrationPatterns:Landroid/util/SparseArray;

    new-array v6, v4, [J

    fill-array-data v6, :array_5

    const/16 v8, 0x80

    invoke-virtual {v0, v8, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 161
    sget-object v0, Lio/appium/android/apis/accessibility/ClockBackService;->sVibrationPatterns:Landroid/util/SparseArray;

    new-array v6, v4, [J

    fill-array-data v6, :array_6

    const/16 v9, 0x100

    invoke-virtual {v0, v9, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 164
    sget-object v0, Lio/appium/android/apis/accessibility/ClockBackService;->sVibrationPatterns:Landroid/util/SparseArray;

    new-array v4, v4, [J

    fill-array-data v4, :array_7

    const/16 v6, 0x200

    invoke-virtual {v0, v6, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 170
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lio/appium/android/apis/accessibility/ClockBackService;->sSoundsResourceIds:Landroid/util/SparseArray;

    .line 172
    sget-object v0, Lio/appium/android/apis/accessibility/ClockBackService;->sSoundsResourceIds:Landroid/util/SparseArray;

    .line 173
    const v4, 0x7f0d000d

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    .line 172
    invoke-virtual {v0, v2, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 174
    sget-object v0, Lio/appium/android/apis/accessibility/ClockBackService;->sSoundsResourceIds:Landroid/util/SparseArray;

    .line 175
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 174
    invoke-virtual {v0, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 176
    sget-object v0, Lio/appium/android/apis/accessibility/ClockBackService;->sSoundsResourceIds:Landroid/util/SparseArray;

    .line 177
    const v2, 0x7f0d000e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 176
    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 178
    sget-object v0, Lio/appium/android/apis/accessibility/ClockBackService;->sSoundsResourceIds:Landroid/util/SparseArray;

    .line 179
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 178
    invoke-virtual {v0, v5, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 180
    sget-object v0, Lio/appium/android/apis/accessibility/ClockBackService;->sSoundsResourceIds:Landroid/util/SparseArray;

    .line 181
    const v1, 0x7f0d0010

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 180
    invoke-virtual {v0, v7, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 182
    sget-object v0, Lio/appium/android/apis/accessibility/ClockBackService;->sSoundsResourceIds:Landroid/util/SparseArray;

    .line 183
    const v1, 0x7f0d000f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 182
    invoke-virtual {v0, v8, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 184
    sget-object v0, Lio/appium/android/apis/accessibility/ClockBackService;->sSoundsResourceIds:Landroid/util/SparseArray;

    const v1, 0x7f0d000c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v9, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 185
    sget-object v0, Lio/appium/android/apis/accessibility/ClockBackService;->sSoundsResourceIds:Landroid/util/SparseArray;

    const v1, 0x7f0d000b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v6, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 186
    sget-object v0, Lio/appium/android/apis/accessibility/ClockBackService;->sSoundsResourceIds:Landroid/util/SparseArray;

    const v1, 0x7f0d0009

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x1000

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 187
    sget-object v0, Lio/appium/android/apis/accessibility/ClockBackService;->sSoundsResourceIds:Landroid/util/SparseArray;

    const v1, 0x7f0d000a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x800

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 188
    sget-object v0, Lio/appium/android/apis/accessibility/ClockBackService;->sSoundsResourceIds:Landroid/util/SparseArray;

    const v1, 0x7f0d0008

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x400

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 189
    return-void

    nop

    :array_0
    .array-data 8
        0x0
        0x64
    .end array-data

    :array_1
    .array-data 8
        0x0
        0x64
    .end array-data

    :array_2
    .array-data 8
        0x0
        0xf
        0xa
        0xf
    .end array-data

    :array_3
    .array-data 8
        0x0
        0xf
        0xa
        0xf
    .end array-data

    :array_4
    .array-data 8
        0x0
        0x19
        0x32
        0x19
        0x32
        0x19
    .end array-data

    :array_5
    .array-data 8
        0x0
        0xf
        0xa
        0xf
        0xf
        0xa
    .end array-data

    :array_6
    .array-data 8
        0x0
        0xa
        0xa
        0x14
        0x14
        0x1e
    .end array-data

    :array_7
    .array-data 8
        0x0
        0x1e
        0x14
        0x14
        0xa
        0xa
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .line 61
    invoke-direct {p0}, Landroid/accessibilityservice/AccessibilityService;-><init>()V

    .line 194
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lio/appium/android/apis/accessibility/ClockBackService;->mEarconNames:Landroid/util/SparseArray;

    .line 207
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lio/appium/android/apis/accessibility/ClockBackService;->mUtterance:Ljava/lang/StringBuilder;

    .line 224
    new-instance v0, Lio/appium/android/apis/accessibility/ClockBackService$1;

    invoke-direct {v0, p0}, Lio/appium/android/apis/accessibility/ClockBackService$1;-><init>(Lio/appium/android/apis/accessibility/ClockBackService;)V

    iput-object v0, p0, Lio/appium/android/apis/accessibility/ClockBackService;->mHandler:Landroid/os/Handler;

    .line 272
    new-instance v0, Lio/appium/android/apis/accessibility/ClockBackService$2;

    invoke-direct {v0, p0}, Lio/appium/android/apis/accessibility/ClockBackService$2;-><init>(Lio/appium/android/apis/accessibility/ClockBackService;)V

    iput-object v0, p0, Lio/appium/android/apis/accessibility/ClockBackService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lio/appium/android/apis/accessibility/ClockBackService;)Landroid/speech/tts/TextToSpeech;
    .locals 1
    .param p0, "x0"    # Lio/appium/android/apis/accessibility/ClockBackService;

    .line 61
    iget-object v0, p0, Lio/appium/android/apis/accessibility/ClockBackService;->mTts:Landroid/speech/tts/TextToSpeech;

    return-object v0
.end method

.method static synthetic access$002(Lio/appium/android/apis/accessibility/ClockBackService;Landroid/speech/tts/TextToSpeech;)Landroid/speech/tts/TextToSpeech;
    .locals 0
    .param p0, "x0"    # Lio/appium/android/apis/accessibility/ClockBackService;
    .param p1, "x1"    # Landroid/speech/tts/TextToSpeech;

    .line 61
    iput-object p1, p0, Lio/appium/android/apis/accessibility/ClockBackService;->mTts:Landroid/speech/tts/TextToSpeech;

    return-object p1
.end method

.method static synthetic access$100(Lio/appium/android/apis/accessibility/ClockBackService;)V
    .locals 0
    .param p0, "x0"    # Lio/appium/android/apis/accessibility/ClockBackService;

    .line 61
    invoke-direct {p0}, Lio/appium/android/apis/accessibility/ClockBackService;->registerBroadCastReceiver()V

    return-void
.end method

.method static synthetic access$200(Lio/appium/android/apis/accessibility/ClockBackService;I)V
    .locals 0
    .param p0, "x0"    # Lio/appium/android/apis/accessibility/ClockBackService;
    .param p1, "x1"    # I

    .line 61
    invoke-direct {p0, p1}, Lio/appium/android/apis/accessibility/ClockBackService;->playEarcon(I)V

    return-void
.end method

.method static synthetic access$300()Landroid/util/SparseArray;
    .locals 1

    .line 61
    sget-object v0, Lio/appium/android/apis/accessibility/ClockBackService;->sVibrationPatterns:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$400(Lio/appium/android/apis/accessibility/ClockBackService;)Landroid/os/Vibrator;
    .locals 1
    .param p0, "x0"    # Lio/appium/android/apis/accessibility/ClockBackService;

    .line 61
    iget-object v0, p0, Lio/appium/android/apis/accessibility/ClockBackService;->mVibrator:Landroid/os/Vibrator;

    return-object v0
.end method

.method static synthetic access$500(Lio/appium/android/apis/accessibility/ClockBackService;I)V
    .locals 0
    .param p0, "x0"    # Lio/appium/android/apis/accessibility/ClockBackService;
    .param p1, "x1"    # I

    .line 61
    invoke-direct {p0, p1}, Lio/appium/android/apis/accessibility/ClockBackService;->configureForRingerMode(I)V

    return-void
.end method

.method static synthetic access$600(Lio/appium/android/apis/accessibility/ClockBackService;I)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lio/appium/android/apis/accessibility/ClockBackService;
    .param p1, "x1"    # I

    .line 61
    invoke-direct {p0, p1}, Lio/appium/android/apis/accessibility/ClockBackService;->generateScreenOnOrOffUtternace(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private configureForRingerMode(I)V
    .locals 4
    .param p1, "ringerMode"    # I

    .line 432
    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x5

    if-nez p1, :cond_0

    .line 434
    iput v0, p0, Lio/appium/android/apis/accessibility/ClockBackService;->mProvidedFeedbackType:I

    .line 437
    const/4 v0, 0x7

    invoke-direct {p0, v0}, Lio/appium/android/apis/accessibility/ClockBackService;->setServiceInfo(I)V

    .line 442
    iget-object v0, p0, Lio/appium/android/apis/accessibility/ClockBackService;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x1000

    invoke-virtual {v0, v2, v3, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 443
    :cond_0
    const/4 v3, 0x1

    if-ne p1, v3, :cond_1

    .line 445
    const/4 v0, 0x4

    iput v0, p0, Lio/appium/android/apis/accessibility/ClockBackService;->mProvidedFeedbackType:I

    .line 448
    invoke-direct {p0, v2}, Lio/appium/android/apis/accessibility/ClockBackService;->setServiceInfo(I)V

    .line 452
    iget-object v0, p0, Lio/appium/android/apis/accessibility/ClockBackService;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x800

    invoke-virtual {v0, v2, v3, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 453
    :cond_1
    if-ne p1, v0, :cond_2

    .line 456
    iput v3, p0, Lio/appium/android/apis/accessibility/ClockBackService;->mProvidedFeedbackType:I

    .line 457
    invoke-direct {p0, v3}, Lio/appium/android/apis/accessibility/ClockBackService;->setServiceInfo(I)V

    .line 460
    iget-object v0, p0, Lio/appium/android/apis/accessibility/ClockBackService;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x400

    invoke-virtual {v0, v2, v3, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 462
    :cond_2
    :goto_0
    return-void
.end method

.method private formatUtterance(Landroid/view/accessibility/AccessibilityEvent;)Ljava/lang/String;
    .locals 7
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .line 524
    iget-object v0, p0, Lio/appium/android/apis/accessibility/ClockBackService;->mUtterance:Ljava/lang/StringBuilder;

    .line 527
    .local v0, "utterance":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 529
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v2

    .line 532
    .local v2, "eventText":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    .line 533
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    .line 535
    .local v4, "subText":Ljava/lang/CharSequence;
    invoke-interface {v4, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    const/16 v6, 0x30

    if-ne v5, v6, :cond_0

    .line 536
    const/4 v5, 0x1

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v6

    invoke-interface {v4, v5, v6}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v4

    .line 538
    :cond_0
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 539
    const-string v5, " "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 540
    .end local v4    # "subText":Ljava/lang/CharSequence;
    goto :goto_0

    .line 542
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 547
    :cond_2
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v1

    .line 548
    .local v1, "contentDescription":Ljava/lang/CharSequence;
    if-eqz v1, :cond_3

    .line 549
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 550
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 553
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private generateScreenOnOrOffUtternace(I)Ljava/lang/String;
    .locals 9
    .param p1, "feedbackIndex"    # I

    .line 380
    const/16 v0, 0x100

    if-ne p1, v0, :cond_0

    const v0, 0x7f0e03a2

    goto :goto_0

    :cond_0
    const v0, 0x7f0e03a1

    .line 382
    .local v0, "resourceId":I
    :goto_0
    iget-object v1, p0, Lio/appium/android/apis/accessibility/ClockBackService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 385
    .local v1, "template":Ljava/lang/String;
    iget-object v2, p0, Lio/appium/android/apis/accessibility/ClockBackService;->mAudioManager:Landroid/media/AudioManager;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v2

    .line 386
    .local v2, "currentRingerVolume":I
    iget-object v4, p0, Lio/appium/android/apis/accessibility/ClockBackService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v4, v3}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v3

    .line 387
    .local v3, "maxRingerVolume":I
    const/16 v4, 0x64

    div-int/2addr v4, v3

    mul-int v4, v4, v2

    .line 390
    .local v4, "volumePercent":I
    rem-int/lit8 v5, v4, 0xa

    .line 391
    .local v5, "adjustment":I
    const/4 v6, 0x5

    if-ge v5, v6, :cond_1

    .line 392
    sub-int/2addr v4, v5

    goto :goto_1

    .line 393
    :cond_1
    if-le v5, v6, :cond_2

    .line 394
    rsub-int/lit8 v6, v5, 0xa

    add-int/2addr v4, v6

    .line 397
    :cond_2
    :goto_1
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v1, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method

.method private playEarcon(I)V
    .locals 5
    .param p1, "earconId"    # I

    .line 562
    iget-object v0, p0, Lio/appium/android/apis/accessibility/ClockBackService;->mEarconNames:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 563
    .local v0, "earconName":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 565
    sget-object v1, Lio/appium/android/apis/accessibility/ClockBackService;->sSoundsResourceIds:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 566
    .local v1, "resourceId":Ljava/lang/Integer;
    if-eqz v1, :cond_0

    .line 567
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 568
    iget-object v2, p0, Lio/appium/android/apis/accessibility/ClockBackService;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {p0}, Lio/appium/android/apis/accessibility/ClockBackService;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v2, v0, v3, v4}, Landroid/speech/tts/TextToSpeech;->addEarcon(Ljava/lang/String;Ljava/lang/String;I)I

    .line 569
    iget-object v2, p0, Lio/appium/android/apis/accessibility/ClockBackService;->mEarconNames:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 573
    .end local v1    # "resourceId":Ljava/lang/Integer;
    :cond_0
    iget-object v1, p0, Lio/appium/android/apis/accessibility/ClockBackService;->mTts:Landroid/speech/tts/TextToSpeech;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Landroid/speech/tts/TextToSpeech;->playEarcon(Ljava/lang/String;ILjava/util/HashMap;)I

    .line 574
    return-void
.end method

.method private registerBroadCastReceiver()V
    .locals 3

    .line 364
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 365
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.media.RINGER_MODE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 366
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 367
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 369
    iget-object v1, p0, Lio/appium/android/apis/accessibility/ClockBackService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v0, v2, v2}, Lio/appium/android/apis/accessibility/ClockBackService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 370
    return-void
.end method

.method private setServiceInfo(I)V
    .locals 3
    .param p1, "feedbackType"    # I

    .line 475
    new-instance v0, Landroid/accessibilityservice/AccessibilityServiceInfo;

    invoke-direct {v0}, Landroid/accessibilityservice/AccessibilityServiceInfo;-><init>()V

    .line 477
    .local v0, "info":Landroid/accessibilityservice/AccessibilityServiceInfo;
    const/4 v1, -0x1

    iput v1, v0, Landroid/accessibilityservice/AccessibilityServiceInfo;->eventTypes:I

    .line 479
    iput p1, v0, Landroid/accessibilityservice/AccessibilityServiceInfo;->feedbackType:I

    .line 481
    const-wide/16 v1, 0x50

    iput-wide v1, v0, Landroid/accessibilityservice/AccessibilityServiceInfo;->notificationTimeout:J

    .line 483
    sget-object v1, Lio/appium/android/apis/accessibility/ClockBackService;->PACKAGE_NAMES:[Ljava/lang/String;

    iput-object v1, v0, Landroid/accessibilityservice/AccessibilityServiceInfo;->packageNames:[Ljava/lang/String;

    .line 484
    invoke-virtual {p0, v0}, Lio/appium/android/apis/accessibility/ClockBackService;->setServiceInfo(Landroid/accessibilityservice/AccessibilityServiceInfo;)V

    .line 485
    return-void
.end method


# virtual methods
.method public onAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 4
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .line 489
    const-string v0, "ClockBackService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lio/appium/android/apis/accessibility/ClockBackService;->mProvidedFeedbackType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    iget v0, p0, Lio/appium/android/apis/accessibility/ClockBackService;->mProvidedFeedbackType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 493
    iget-object v0, p0, Lio/appium/android/apis/accessibility/ClockBackService;->mHandler:Landroid/os/Handler;

    invoke-direct {p0, p1}, Lio/appium/android/apis/accessibility/ClockBackService;->formatUtterance(Landroid/view/accessibility/AccessibilityEvent;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 494
    :cond_0
    const/4 v1, 0x4

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    .line 495
    iget-object v0, p0, Lio/appium/android/apis/accessibility/ClockBackService;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v3

    invoke-virtual {v0, v1, v3, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 496
    :cond_1
    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 497
    iget-object v0, p0, Lio/appium/android/apis/accessibility/ClockBackService;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x7

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v3

    invoke-virtual {v0, v1, v3, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 501
    :goto_0
    return-void

    .line 499
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected feedback type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lio/appium/android/apis/accessibility/ClockBackService;->mProvidedFeedbackType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onInterrupt()V
    .locals 3

    .line 506
    iget v0, p0, Lio/appium/android/apis/accessibility/ClockBackService;->mProvidedFeedbackType:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 507
    iget-object v0, p0, Lio/appium/android/apis/accessibility/ClockBackService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 508
    :cond_0
    const/4 v2, 0x4

    if-ne v0, v2, :cond_1

    .line 509
    iget-object v0, p0, Lio/appium/android/apis/accessibility/ClockBackService;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 510
    :cond_1
    if-ne v0, v1, :cond_2

    .line 511
    iget-object v0, p0, Lio/appium/android/apis/accessibility/ClockBackService;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 515
    :goto_0
    return-void

    .line 513
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected feedback type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lio/appium/android/apis/accessibility/ClockBackService;->mProvidedFeedbackType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onServiceConnected()V
    .locals 2

    .line 319
    iget-boolean v0, p0, Lio/appium/android/apis/accessibility/ClockBackService;->isInfrastructureInitialized:Z

    if-eqz v0, :cond_0

    .line 320
    return-void

    .line 323
    :cond_0
    iput-object p0, p0, Lio/appium/android/apis/accessibility/ClockBackService;->mContext:Landroid/content/Context;

    .line 326
    iget-object v0, p0, Lio/appium/android/apis/accessibility/ClockBackService;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 329
    const-string v0, "vibrator"

    invoke-virtual {p0, v0}, Lio/appium/android/apis/accessibility/ClockBackService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lio/appium/android/apis/accessibility/ClockBackService;->mVibrator:Landroid/os/Vibrator;

    .line 332
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Lio/appium/android/apis/accessibility/ClockBackService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lio/appium/android/apis/accessibility/ClockBackService;->mAudioManager:Landroid/media/AudioManager;

    .line 335
    iget-object v0, p0, Lio/appium/android/apis/accessibility/ClockBackService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    .line 336
    .local v0, "ringerMode":I
    invoke-direct {p0, v0}, Lio/appium/android/apis/accessibility/ClockBackService;->configureForRingerMode(I)V

    .line 339
    const/4 v1, 0x1

    iput-boolean v1, p0, Lio/appium/android/apis/accessibility/ClockBackService;->isInfrastructureInitialized:Z

    .line 340
    return-void
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .line 344
    iget-boolean v0, p0, Lio/appium/android/apis/accessibility/ClockBackService;->isInfrastructureInitialized:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 346
    iget-object v0, p0, Lio/appium/android/apis/accessibility/ClockBackService;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 349
    iget-object v0, p0, Lio/appium/android/apis/accessibility/ClockBackService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 350
    invoke-virtual {p0, v0}, Lio/appium/android/apis/accessibility/ClockBackService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 354
    :cond_0
    iput-boolean v1, p0, Lio/appium/android/apis/accessibility/ClockBackService;->isInfrastructureInitialized:Z

    .line 356
    :cond_1
    return v1
.end method
