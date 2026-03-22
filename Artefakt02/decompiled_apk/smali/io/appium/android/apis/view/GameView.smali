.class public Lio/appium/android/apis/view/GameView;
.super Landroid/view/View;
.source "GameView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/appium/android/apis/view/GameView$Obstacle;,
        Lio/appium/android/apis/view/GameView$Bullet;,
        Lio/appium/android/apis/view/GameView$Ship;,
        Lio/appium/android/apis/view/GameView$Sprite;
    }
.end annotation


# static fields
.field private static final DPAD_STATE_DOWN:I = 0x8

.field private static final DPAD_STATE_LEFT:I = 0x1

.field private static final DPAD_STATE_RIGHT:I = 0x2

.field private static final DPAD_STATE_UP:I = 0x4


# instance fields
.field private final ANIMATION_TIME_STEP:J

.field private final MAX_OBSTACLES:I

.field private final mAnimationRunnable:Ljava/lang/Runnable;

.field private mBulletSize:F

.field private mBulletSpeed:F

.field private final mBullets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/appium/android/apis/view/GameView$Bullet;",
            ">;"
        }
    .end annotation
.end field

.field private mDPadState:I

.field private mLastInputDevice:Landroid/view/InputDevice;

.field private mLastStepTime:J

.field private mMaxObstacleSize:F

.field private mMaxObstacleSpeed:F

.field private mMaxShipSpeed:F

.field private mMaxShipThrust:F

.field private mMinObstacleSize:F

.field private mMinObstacleSpeed:F

.field private final mObstacles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/appium/android/apis/view/GameView$Obstacle;",
            ">;"
        }
    .end annotation
.end field

.field private final mRandom:Ljava/util/Random;

.field private mShip:Lio/appium/android/apis/view/GameView$Ship;

.field private mShipSize:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 84
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 47
    const-wide/16 v0, 0x10

    iput-wide v0, p0, Lio/appium/android/apis/view/GameView;->ANIMATION_TIME_STEP:J

    .line 48
    const/16 v0, 0xc

    iput v0, p0, Lio/appium/android/apis/view/GameView;->MAX_OBSTACLES:I

    .line 77
    new-instance v0, Lio/appium/android/apis/view/GameView$1;

    invoke-direct {v0, p0}, Lio/appium/android/apis/view/GameView$1;-><init>(Lio/appium/android/apis/view/GameView;)V

    iput-object v0, p0, Lio/appium/android/apis/view/GameView;->mAnimationRunnable:Ljava/lang/Runnable;

    .line 86
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lio/appium/android/apis/view/GameView;->mRandom:Ljava/util/Random;

    .line 87
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/appium/android/apis/view/GameView;->mBullets:Ljava/util/List;

    .line 88
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/appium/android/apis/view/GameView;->mObstacles:Ljava/util/List;

    .line 90
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lio/appium/android/apis/view/GameView;->setFocusable(Z)V

    .line 91
    invoke-virtual {p0, v0}, Lio/appium/android/apis/view/GameView;->setFocusableInTouchMode(Z)V

    .line 93
    invoke-virtual {p0}, Lio/appium/android/apis/view/GameView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x40a00000    # 5.0f

    mul-float v0, v0, v1

    .line 94
    .local v0, "baseSize":F
    const/high16 v1, 0x40400000    # 3.0f

    mul-float v2, v0, v1

    .line 96
    .local v2, "baseSpeed":F
    mul-float v3, v0, v1

    iput v3, p0, Lio/appium/android/apis/view/GameView;->mShipSize:F

    .line 97
    const/high16 v3, 0x3e800000    # 0.25f

    mul-float v3, v3, v2

    iput v3, p0, Lio/appium/android/apis/view/GameView;->mMaxShipThrust:F

    .line 98
    const/high16 v3, 0x41400000    # 12.0f

    mul-float v4, v2, v3

    iput v4, p0, Lio/appium/android/apis/view/GameView;->mMaxShipSpeed:F

    .line 100
    iput v0, p0, Lio/appium/android/apis/view/GameView;->mBulletSize:F

    .line 101
    mul-float v4, v2, v3

    iput v4, p0, Lio/appium/android/apis/view/GameView;->mBulletSpeed:F

    .line 103
    const/high16 v4, 0x40000000    # 2.0f

    mul-float v4, v4, v0

    iput v4, p0, Lio/appium/android/apis/view/GameView;->mMinObstacleSize:F

    .line 104
    mul-float v3, v3, v0

    iput v3, p0, Lio/appium/android/apis/view/GameView;->mMaxObstacleSize:F

    .line 105
    iput v2, p0, Lio/appium/android/apis/view/GameView;->mMinObstacleSpeed:F

    .line 106
    mul-float v1, v1, v2

    iput v1, p0, Lio/appium/android/apis/view/GameView;->mMaxObstacleSpeed:F

    .line 107
    return-void
.end method

.method static synthetic access$100(Lio/appium/android/apis/view/GameView;)F
    .locals 1
    .param p0, "x0"    # Lio/appium/android/apis/view/GameView;

    .line 46
    iget v0, p0, Lio/appium/android/apis/view/GameView;->mShipSize:F

    return v0
.end method

.method static synthetic access$200(Lio/appium/android/apis/view/GameView;)V
    .locals 0
    .param p0, "x0"    # Lio/appium/android/apis/view/GameView;

    .line 46
    invoke-direct {p0}, Lio/appium/android/apis/view/GameView;->crash()V

    return-void
.end method

.method static synthetic access$300(Lio/appium/android/apis/view/GameView;)F
    .locals 1
    .param p0, "x0"    # Lio/appium/android/apis/view/GameView;

    .line 46
    iget v0, p0, Lio/appium/android/apis/view/GameView;->mBulletSize:F

    return v0
.end method

.method static blend(FII)I
    .locals 1
    .param p0, "alpha"    # F
    .param p1, "from"    # I
    .param p2, "to"    # I

    .line 490
    sub-int v0, p2, p1

    int-to-float v0, v0

    mul-float v0, v0, p0

    float-to-int v0, v0

    add-int/2addr v0, p1

    return v0
.end method

.method private crash()V
    .locals 3

    .line 327
    invoke-direct {p0}, Lio/appium/android/apis/view/GameView;->getVibrator()Landroid/os/Vibrator;

    move-result-object v0

    const/16 v1, 0x8

    new-array v1, v1, [J

    fill-array-data v1, :array_0

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate([JI)V

    .line 328
    return-void

    :array_0
    .array-data 8
        0x0
        0x14
        0x14
        0x28
        0x28
        0x50
        0x28
        0x12c
    .end array-data
.end method

.method private ensureInitialized()V
    .locals 1

    .line 321
    iget-object v0, p0, Lio/appium/android/apis/view/GameView;->mShip:Lio/appium/android/apis/view/GameView$Ship;

    if-nez v0, :cond_0

    .line 322
    invoke-direct {p0}, Lio/appium/android/apis/view/GameView;->reset()V

    .line 324
    :cond_0
    return-void
.end method

.method private fire()V
    .locals 4

    .line 309
    iget-object v0, p0, Lio/appium/android/apis/view/GameView;->mShip:Lio/appium/android/apis/view/GameView$Ship;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lio/appium/android/apis/view/GameView$Ship;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 310
    new-instance v0, Lio/appium/android/apis/view/GameView$Bullet;

    invoke-direct {v0, p0}, Lio/appium/android/apis/view/GameView$Bullet;-><init>(Lio/appium/android/apis/view/GameView;)V

    .line 311
    .local v0, "bullet":Lio/appium/android/apis/view/GameView$Bullet;
    iget-object v1, p0, Lio/appium/android/apis/view/GameView;->mShip:Lio/appium/android/apis/view/GameView$Ship;

    invoke-virtual {v1}, Lio/appium/android/apis/view/GameView$Ship;->getBulletInitialX()F

    move-result v1

    iget-object v2, p0, Lio/appium/android/apis/view/GameView;->mShip:Lio/appium/android/apis/view/GameView$Ship;

    invoke-virtual {v2}, Lio/appium/android/apis/view/GameView$Ship;->getBulletInitialY()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lio/appium/android/apis/view/GameView$Bullet;->setPosition(FF)V

    .line 312
    iget-object v1, p0, Lio/appium/android/apis/view/GameView;->mShip:Lio/appium/android/apis/view/GameView$Ship;

    iget v2, p0, Lio/appium/android/apis/view/GameView;->mBulletSpeed:F

    invoke-virtual {v1, v2}, Lio/appium/android/apis/view/GameView$Ship;->getBulletVelocityX(F)F

    move-result v1

    iget-object v2, p0, Lio/appium/android/apis/view/GameView;->mShip:Lio/appium/android/apis/view/GameView$Ship;

    iget v3, p0, Lio/appium/android/apis/view/GameView;->mBulletSpeed:F

    .line 313
    invoke-virtual {v2, v3}, Lio/appium/android/apis/view/GameView$Ship;->getBulletVelocityY(F)F

    move-result v2

    .line 312
    invoke-virtual {v0, v1, v2}, Lio/appium/android/apis/view/GameView$Bullet;->setVelocity(FF)V

    .line 314
    iget-object v1, p0, Lio/appium/android/apis/view/GameView;->mBullets:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 316
    invoke-direct {p0}, Lio/appium/android/apis/view/GameView;->getVibrator()Landroid/os/Vibrator;

    move-result-object v1

    const-wide/16 v2, 0x14

    invoke-virtual {v1, v2, v3}, Landroid/os/Vibrator;->vibrate(J)V

    .line 318
    .end local v0    # "bullet":Lio/appium/android/apis/view/GameView$Bullet;
    :cond_0
    return-void
.end method

.method private static getCenteredAxis(Landroid/view/MotionEvent;Landroid/view/InputDevice;II)F
    .locals 4
    .param p0, "event"    # Landroid/view/MotionEvent;
    .param p1, "device"    # Landroid/view/InputDevice;
    .param p2, "axis"    # I
    .param p3, "historyPos"    # I

    .line 272
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getSource()I

    move-result v0

    invoke-virtual {p1, p2, v0}, Landroid/view/InputDevice;->getMotionRange(II)Landroid/view/InputDevice$MotionRange;

    move-result-object v0

    .line 273
    .local v0, "range":Landroid/view/InputDevice$MotionRange;
    if-eqz v0, :cond_1

    .line 274
    invoke-virtual {v0}, Landroid/view/InputDevice$MotionRange;->getFlat()F

    move-result v1

    .line 275
    .local v1, "flat":F
    if-gez p3, :cond_0

    invoke-virtual {p0, p2}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v2

    goto :goto_0

    .line 276
    :cond_0
    invoke-virtual {p0, p2, p3}, Landroid/view/MotionEvent;->getHistoricalAxisValue(II)F

    move-result v2

    :goto_0
    nop

    .line 280
    .local v2, "value":F
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpl-float v3, v3, v1

    if-lez v3, :cond_1

    .line 281
    return v2

    .line 284
    .end local v1    # "flat":F
    .end local v2    # "value":F
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method private getVibrator()Landroid/os/Vibrator;
    .locals 2

    .line 337
    iget-object v0, p0, Lio/appium/android/apis/view/GameView;->mLastInputDevice:Landroid/view/InputDevice;

    if-eqz v0, :cond_0

    .line 338
    invoke-virtual {v0}, Landroid/view/InputDevice;->getVibrator()Landroid/os/Vibrator;

    move-result-object v0

    .line 339
    .local v0, "vibrator":Landroid/os/Vibrator;
    invoke-virtual {v0}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 340
    return-object v0

    .line 343
    .end local v0    # "vibrator":Landroid/os/Vibrator;
    :cond_0
    invoke-virtual {p0}, Lio/appium/android/apis/view/GameView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "vibrator"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    return-object v0
.end method

.method private static isFireKey(I)Z
    .locals 1
    .param p0, "keyCode"    # I

    .line 201
    invoke-static {p0}, Landroid/view/KeyEvent;->isGamepadButton(I)Z

    move-result v0

    if-nez v0, :cond_1

    const/16 v0, 0x17

    if-eq p0, v0, :cond_1

    const/16 v0, 0x3e

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private processJoystickInput(Landroid/view/MotionEvent;I)V
    .locals 5
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "historyPos"    # I

    .line 249
    iget-object v0, p0, Lio/appium/android/apis/view/GameView;->mLastInputDevice:Landroid/view/InputDevice;

    const/4 v1, 0x0

    invoke-static {p1, v0, v1, p2}, Lio/appium/android/apis/view/GameView;->getCenteredAxis(Landroid/view/MotionEvent;Landroid/view/InputDevice;II)F

    move-result v0

    .line 250
    .local v0, "x":F
    const/4 v1, 0x0

    cmpl-float v2, v0, v1

    if-nez v2, :cond_0

    .line 251
    iget-object v2, p0, Lio/appium/android/apis/view/GameView;->mLastInputDevice:Landroid/view/InputDevice;

    const/16 v3, 0xf

    invoke-static {p1, v2, v3, p2}, Lio/appium/android/apis/view/GameView;->getCenteredAxis(Landroid/view/MotionEvent;Landroid/view/InputDevice;II)F

    move-result v0

    .line 253
    :cond_0
    cmpl-float v2, v0, v1

    if-nez v2, :cond_1

    .line 254
    iget-object v2, p0, Lio/appium/android/apis/view/GameView;->mLastInputDevice:Landroid/view/InputDevice;

    const/16 v3, 0xb

    invoke-static {p1, v2, v3, p2}, Lio/appium/android/apis/view/GameView;->getCenteredAxis(Landroid/view/MotionEvent;Landroid/view/InputDevice;II)F

    move-result v0

    .line 257
    :cond_1
    iget-object v2, p0, Lio/appium/android/apis/view/GameView;->mLastInputDevice:Landroid/view/InputDevice;

    const/4 v3, 0x1

    invoke-static {p1, v2, v3, p2}, Lio/appium/android/apis/view/GameView;->getCenteredAxis(Landroid/view/MotionEvent;Landroid/view/InputDevice;II)F

    move-result v2

    .line 258
    .local v2, "y":F
    cmpl-float v3, v2, v1

    if-nez v3, :cond_2

    .line 259
    iget-object v3, p0, Lio/appium/android/apis/view/GameView;->mLastInputDevice:Landroid/view/InputDevice;

    const/16 v4, 0x10

    invoke-static {p1, v3, v4, p2}, Lio/appium/android/apis/view/GameView;->getCenteredAxis(Landroid/view/MotionEvent;Landroid/view/InputDevice;II)F

    move-result v2

    .line 261
    :cond_2
    cmpl-float v1, v2, v1

    if-nez v1, :cond_3

    .line 262
    iget-object v1, p0, Lio/appium/android/apis/view/GameView;->mLastInputDevice:Landroid/view/InputDevice;

    const/16 v3, 0xe

    invoke-static {p1, v1, v3, p2}, Lio/appium/android/apis/view/GameView;->getCenteredAxis(Landroid/view/MotionEvent;Landroid/view/InputDevice;II)F

    move-result v2

    .line 266
    :cond_3
    iget-object v1, p0, Lio/appium/android/apis/view/GameView;->mShip:Lio/appium/android/apis/view/GameView$Ship;

    invoke-virtual {v1, v0, v2}, Lio/appium/android/apis/view/GameView$Ship;->setHeading(FF)V

    .line 267
    if-gez p2, :cond_4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v3

    goto :goto_0

    :cond_4
    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getHistoricalEventTime(I)J

    move-result-wide v3

    :goto_0
    invoke-direct {p0, v3, v4}, Lio/appium/android/apis/view/GameView;->step(J)V

    .line 268
    return-void
.end method

.method static pythag(FF)F
    .locals 2
    .param p0, "x"    # F
    .param p1, "y"    # F

    .line 486
    mul-float v0, p0, p0

    mul-float v1, p1, p1

    add-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method private reset()V
    .locals 1

    .line 331
    new-instance v0, Lio/appium/android/apis/view/GameView$Ship;

    invoke-direct {v0, p0}, Lio/appium/android/apis/view/GameView$Ship;-><init>(Lio/appium/android/apis/view/GameView;)V

    iput-object v0, p0, Lio/appium/android/apis/view/GameView;->mShip:Lio/appium/android/apis/view/GameView$Ship;

    .line 332
    iget-object v0, p0, Lio/appium/android/apis/view/GameView;->mBullets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 333
    iget-object v0, p0, Lio/appium/android/apis/view/GameView;->mObstacles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 334
    return-void
.end method

.method static setPaintARGBBlend(Landroid/graphics/Paint;FIIIIIIII)V
    .locals 4
    .param p0, "paint"    # Landroid/graphics/Paint;
    .param p1, "alpha"    # F
    .param p2, "a1"    # I
    .param p3, "r1"    # I
    .param p4, "g1"    # I
    .param p5, "b1"    # I
    .param p6, "a2"    # I
    .param p7, "r2"    # I
    .param p8, "g2"    # I
    .param p9, "b2"    # I

    .line 496
    invoke-static {p1, p2, p6}, Lio/appium/android/apis/view/GameView;->blend(FII)I

    move-result v0

    invoke-static {p1, p3, p7}, Lio/appium/android/apis/view/GameView;->blend(FII)I

    move-result v1

    .line 497
    invoke-static {p1, p4, p8}, Lio/appium/android/apis/view/GameView;->blend(FII)I

    move-result v2

    invoke-static {p1, p5, p9}, Lio/appium/android/apis/view/GameView;->blend(FII)I

    move-result v3

    .line 496
    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 498
    return-void
.end method

.method private step(J)V
    .locals 16
    .param p1, "currentStepTime"    # J

    .line 358
    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    iget-wide v3, v0, Lio/appium/android/apis/view/GameView;->mLastStepTime:J

    sub-long v3, v1, v3

    long-to-float v3, v3

    const v4, 0x3a83126f    # 0.001f

    mul-float v3, v3, v4

    .line 359
    .local v3, "tau":F
    iput-wide v1, v0, Lio/appium/android/apis/view/GameView;->mLastStepTime:J

    .line 361
    invoke-direct/range {p0 .. p0}, Lio/appium/android/apis/view/GameView;->ensureInitialized()V

    .line 364
    iget-object v4, v0, Lio/appium/android/apis/view/GameView;->mShip:Lio/appium/android/apis/view/GameView$Ship;

    iget v5, v0, Lio/appium/android/apis/view/GameView;->mMaxShipThrust:F

    iget v6, v0, Lio/appium/android/apis/view/GameView;->mMaxShipSpeed:F

    invoke-virtual {v4, v3, v5, v6}, Lio/appium/android/apis/view/GameView$Ship;->accelerate(FFF)V

    .line 365
    iget-object v4, v0, Lio/appium/android/apis/view/GameView;->mShip:Lio/appium/android/apis/view/GameView$Ship;

    invoke-virtual {v4, v3}, Lio/appium/android/apis/view/GameView$Ship;->step(F)Z

    move-result v4

    if-nez v4, :cond_0

    .line 366
    invoke-direct/range {p0 .. p0}, Lio/appium/android/apis/view/GameView;->reset()V

    .line 370
    :cond_0
    iget-object v4, v0, Lio/appium/android/apis/view/GameView;->mBullets:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    .line 371
    .local v4, "numBullets":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v4, :cond_2

    .line 372
    iget-object v6, v0, Lio/appium/android/apis/view/GameView;->mBullets:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lio/appium/android/apis/view/GameView$Bullet;

    .line 373
    .local v6, "bullet":Lio/appium/android/apis/view/GameView$Bullet;
    invoke-virtual {v6, v3}, Lio/appium/android/apis/view/GameView$Bullet;->step(F)Z

    move-result v7

    if-nez v7, :cond_1

    .line 374
    iget-object v7, v0, Lio/appium/android/apis/view/GameView;->mBullets:Ljava/util/List;

    invoke-interface {v7, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 375
    add-int/lit8 v5, v5, -0x1

    .line 376
    add-int/lit8 v4, v4, -0x1

    .line 371
    .end local v6    # "bullet":Lio/appium/android/apis/view/GameView$Bullet;
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 381
    .end local v5    # "i":I
    :cond_2
    iget-object v5, v0, Lio/appium/android/apis/view/GameView;->mObstacles:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    .line 382
    .local v5, "numObstacles":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    if-ge v6, v5, :cond_4

    .line 383
    iget-object v7, v0, Lio/appium/android/apis/view/GameView;->mObstacles:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lio/appium/android/apis/view/GameView$Obstacle;

    .line 384
    .local v7, "obstacle":Lio/appium/android/apis/view/GameView$Obstacle;
    invoke-virtual {v7, v3}, Lio/appium/android/apis/view/GameView$Obstacle;->step(F)Z

    move-result v8

    if-nez v8, :cond_3

    .line 385
    iget-object v8, v0, Lio/appium/android/apis/view/GameView;->mObstacles:Ljava/util/List;

    invoke-interface {v8, v6}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 386
    add-int/lit8 v6, v6, -0x1

    .line 387
    add-int/lit8 v5, v5, -0x1

    .line 382
    .end local v7    # "obstacle":Lio/appium/android/apis/view/GameView$Obstacle;
    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 392
    .end local v6    # "i":I
    :cond_4
    const/4 v6, 0x0

    .restart local v6    # "i":I
    :goto_2
    if-ge v6, v4, :cond_7

    .line 393
    iget-object v7, v0, Lio/appium/android/apis/view/GameView;->mBullets:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lio/appium/android/apis/view/GameView$Bullet;

    .line 394
    .local v7, "bullet":Lio/appium/android/apis/view/GameView$Bullet;
    const/4 v8, 0x0

    .local v8, "j":I
    :goto_3
    if-ge v8, v5, :cond_6

    .line 395
    iget-object v9, v0, Lio/appium/android/apis/view/GameView;->mObstacles:Ljava/util/List;

    invoke-interface {v9, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lio/appium/android/apis/view/GameView$Obstacle;

    .line 396
    .local v9, "obstacle":Lio/appium/android/apis/view/GameView$Obstacle;
    invoke-virtual {v7, v9}, Lio/appium/android/apis/view/GameView$Bullet;->collidesWith(Lio/appium/android/apis/view/GameView$Sprite;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 397
    invoke-virtual {v7}, Lio/appium/android/apis/view/GameView$Bullet;->destroy()V

    .line 398
    invoke-virtual {v9}, Lio/appium/android/apis/view/GameView$Obstacle;->destroy()V

    .line 399
    goto :goto_4

    .line 394
    .end local v9    # "obstacle":Lio/appium/android/apis/view/GameView$Obstacle;
    :cond_5
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 392
    .end local v7    # "bullet":Lio/appium/android/apis/view/GameView$Bullet;
    .end local v8    # "j":I
    :cond_6
    :goto_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 405
    .end local v6    # "i":I
    :cond_7
    const/4 v6, 0x0

    .restart local v6    # "i":I
    :goto_5
    if-ge v6, v5, :cond_9

    .line 406
    iget-object v7, v0, Lio/appium/android/apis/view/GameView;->mObstacles:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lio/appium/android/apis/view/GameView$Obstacle;

    .line 407
    .local v7, "obstacle":Lio/appium/android/apis/view/GameView$Obstacle;
    iget-object v8, v0, Lio/appium/android/apis/view/GameView;->mShip:Lio/appium/android/apis/view/GameView$Ship;

    invoke-virtual {v8, v7}, Lio/appium/android/apis/view/GameView$Ship;->collidesWith(Lio/appium/android/apis/view/GameView$Sprite;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 408
    iget-object v8, v0, Lio/appium/android/apis/view/GameView;->mShip:Lio/appium/android/apis/view/GameView$Ship;

    invoke-virtual {v8}, Lio/appium/android/apis/view/GameView$Ship;->destroy()V

    .line 409
    invoke-virtual {v7}, Lio/appium/android/apis/view/GameView$Obstacle;->destroy()V

    .line 410
    goto :goto_6

    .line 405
    .end local v7    # "obstacle":Lio/appium/android/apis/view/GameView$Obstacle;
    :cond_8
    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    .line 416
    .end local v6    # "i":I
    :cond_9
    :goto_6
    iget-object v6, v0, Lio/appium/android/apis/view/GameView;->mObstacles:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    const/16 v7, 0xc

    if-ge v6, v7, :cond_c

    .line 417
    iget v6, v0, Lio/appium/android/apis/view/GameView;->mShipSize:F

    const/high16 v7, 0x40800000    # 4.0f

    mul-float v6, v6, v7

    .line 418
    .local v6, "minDistance":F
    iget-object v7, v0, Lio/appium/android/apis/view/GameView;->mRandom:Ljava/util/Random;

    invoke-virtual {v7}, Ljava/util/Random;->nextFloat()F

    move-result v7

    iget v8, v0, Lio/appium/android/apis/view/GameView;->mMaxObstacleSize:F

    iget v9, v0, Lio/appium/android/apis/view/GameView;->mMinObstacleSize:F

    sub-float/2addr v8, v9

    mul-float v7, v7, v8

    add-float/2addr v7, v9

    .line 421
    .local v7, "size":F
    const/4 v8, 0x0

    .line 423
    .local v8, "tries":I
    :goto_7
    iget-object v9, v0, Lio/appium/android/apis/view/GameView;->mRandom:Ljava/util/Random;

    const/4 v10, 0x4

    invoke-virtual {v9, v10}, Ljava/util/Random;->nextInt(I)I

    move-result v9

    .line 424
    .local v9, "edge":I
    packed-switch v9, :pswitch_data_0

    .line 438
    iget-object v10, v0, Lio/appium/android/apis/view/GameView;->mRandom:Ljava/util/Random;

    invoke-virtual/range {p0 .. p0}, Lio/appium/android/apis/view/GameView;->getWidth()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/util/Random;->nextInt(I)I

    move-result v10

    int-to-float v10, v10

    .line 439
    .local v10, "positionX":F
    invoke-virtual/range {p0 .. p0}, Lio/appium/android/apis/view/GameView;->getHeight()I

    move-result v11

    int-to-float v11, v11

    add-float/2addr v11, v7

    goto :goto_8

    .line 434
    .end local v10    # "positionX":F
    :pswitch_0
    iget-object v10, v0, Lio/appium/android/apis/view/GameView;->mRandom:Ljava/util/Random;

    invoke-virtual/range {p0 .. p0}, Lio/appium/android/apis/view/GameView;->getWidth()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/util/Random;->nextInt(I)I

    move-result v10

    int-to-float v10, v10

    .line 435
    .restart local v10    # "positionX":F
    neg-float v11, v7

    .line 436
    .local v11, "positionY":F
    goto :goto_8

    .line 430
    .end local v10    # "positionX":F
    .end local v11    # "positionY":F
    :pswitch_1
    invoke-virtual/range {p0 .. p0}, Lio/appium/android/apis/view/GameView;->getWidth()I

    move-result v10

    int-to-float v10, v10

    add-float/2addr v10, v7

    .line 431
    .restart local v10    # "positionX":F
    iget-object v11, v0, Lio/appium/android/apis/view/GameView;->mRandom:Ljava/util/Random;

    invoke-virtual/range {p0 .. p0}, Lio/appium/android/apis/view/GameView;->getHeight()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/util/Random;->nextInt(I)I

    move-result v11

    int-to-float v11, v11

    .line 432
    .restart local v11    # "positionY":F
    goto :goto_8

    .line 426
    .end local v10    # "positionX":F
    .end local v11    # "positionY":F
    :pswitch_2
    neg-float v10, v7

    .line 427
    .restart local v10    # "positionX":F
    iget-object v11, v0, Lio/appium/android/apis/view/GameView;->mRandom:Ljava/util/Random;

    invoke-virtual/range {p0 .. p0}, Lio/appium/android/apis/view/GameView;->getHeight()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/util/Random;->nextInt(I)I

    move-result v11

    int-to-float v11, v11

    .line 428
    .restart local v11    # "positionY":F
    nop

    .line 442
    :goto_8
    add-int/lit8 v8, v8, 0x1

    const/16 v12, 0xa

    if-le v8, v12, :cond_a

    .line 443
    goto :goto_9

    .line 445
    .end local v9    # "edge":I
    :cond_a
    iget-object v9, v0, Lio/appium/android/apis/view/GameView;->mShip:Lio/appium/android/apis/view/GameView$Ship;

    invoke-virtual {v9, v10, v11}, Lio/appium/android/apis/view/GameView$Ship;->distanceTo(FF)F

    move-result v9

    cmpg-float v9, v9, v6

    if-ltz v9, :cond_b

    .line 447
    iget-object v9, v0, Lio/appium/android/apis/view/GameView;->mRandom:Ljava/util/Random;

    invoke-virtual {v9}, Ljava/util/Random;->nextFloat()F

    move-result v9

    const v12, 0x40490fdb    # (float)Math.PI

    mul-float v9, v9, v12

    const/high16 v12, 0x40000000    # 2.0f

    mul-float v9, v9, v12

    .line 448
    .local v9, "direction":F
    iget-object v12, v0, Lio/appium/android/apis/view/GameView;->mRandom:Ljava/util/Random;

    invoke-virtual {v12}, Ljava/util/Random;->nextFloat()F

    move-result v12

    iget v13, v0, Lio/appium/android/apis/view/GameView;->mMaxObstacleSpeed:F

    iget v14, v0, Lio/appium/android/apis/view/GameView;->mMinObstacleSpeed:F

    sub-float/2addr v13, v14

    mul-float v12, v12, v13

    add-float/2addr v12, v14

    .line 450
    .local v12, "speed":F
    float-to-double v13, v9

    invoke-static {v13, v14}, Ljava/lang/Math;->cos(D)D

    move-result-wide v13

    double-to-float v13, v13

    mul-float v13, v13, v12

    .line 451
    .local v13, "velocityX":F
    float-to-double v14, v9

    invoke-static {v14, v15}, Ljava/lang/Math;->sin(D)D

    move-result-wide v14

    double-to-float v14, v14

    mul-float v14, v14, v12

    .line 453
    .local v14, "velocityY":F
    new-instance v15, Lio/appium/android/apis/view/GameView$Obstacle;

    invoke-direct {v15, v0}, Lio/appium/android/apis/view/GameView$Obstacle;-><init>(Lio/appium/android/apis/view/GameView;)V

    .line 454
    .local v15, "obstacle":Lio/appium/android/apis/view/GameView$Obstacle;
    invoke-virtual {v15, v10, v11}, Lio/appium/android/apis/view/GameView$Obstacle;->setPosition(FF)V

    .line 455
    invoke-virtual {v15, v7}, Lio/appium/android/apis/view/GameView$Obstacle;->setSize(F)V

    .line 456
    invoke-virtual {v15, v13, v14}, Lio/appium/android/apis/view/GameView$Obstacle;->setVelocity(FF)V

    .line 457
    iget-object v1, v0, Lio/appium/android/apis/view/GameView;->mObstacles:Ljava/util/List;

    invoke-interface {v1, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 458
    .end local v6    # "minDistance":F
    .end local v7    # "size":F
    .end local v8    # "tries":I
    .end local v9    # "direction":F
    .end local v10    # "positionX":F
    .end local v11    # "positionY":F
    .end local v12    # "speed":F
    .end local v13    # "velocityX":F
    .end local v14    # "velocityY":F
    .end local v15    # "obstacle":Lio/appium/android/apis/view/GameView$Obstacle;
    move-wide/from16 v1, p1

    goto/16 :goto_6

    .line 445
    .restart local v6    # "minDistance":F
    .restart local v7    # "size":F
    .restart local v8    # "tries":I
    .restart local v10    # "positionX":F
    .restart local v11    # "positionY":F
    :cond_b
    move-wide/from16 v1, p1

    goto/16 :goto_7

    .line 459
    .end local v6    # "minDistance":F
    .end local v7    # "size":F
    .end local v8    # "tries":I
    .end local v10    # "positionX":F
    .end local v11    # "positionY":F
    :cond_c
    :goto_9
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method animateFrame()V
    .locals 6

    .line 347
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 348
    .local v0, "currentStepTime":J
    invoke-direct {p0, v0, v1}, Lio/appium/android/apis/view/GameView;->step(J)V

    .line 350
    invoke-virtual {p0}, Lio/appium/android/apis/view/GameView;->getHandler()Landroid/os/Handler;

    move-result-object v2

    .line 351
    .local v2, "handler":Landroid/os/Handler;
    if-eqz v2, :cond_0

    .line 352
    iget-object v3, p0, Lio/appium/android/apis/view/GameView;->mAnimationRunnable:Ljava/lang/Runnable;

    const-wide/16 v4, 0x10

    add-long/2addr v4, v0

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    .line 353
    invoke-virtual {p0}, Lio/appium/android/apis/view/GameView;->invalidate()V

    .line 355
    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 463
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 466
    iget-object v0, p0, Lio/appium/android/apis/view/GameView;->mShip:Lio/appium/android/apis/view/GameView$Ship;

    if-eqz v0, :cond_0

    .line 467
    invoke-virtual {v0, p1}, Lio/appium/android/apis/view/GameView$Ship;->draw(Landroid/graphics/Canvas;)V

    .line 471
    :cond_0
    iget-object v0, p0, Lio/appium/android/apis/view/GameView;->mBullets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 472
    .local v0, "numBullets":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 473
    iget-object v2, p0, Lio/appium/android/apis/view/GameView;->mBullets:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/appium/android/apis/view/GameView$Bullet;

    .line 474
    .local v2, "bullet":Lio/appium/android/apis/view/GameView$Bullet;
    invoke-virtual {v2, p1}, Lio/appium/android/apis/view/GameView$Bullet;->draw(Landroid/graphics/Canvas;)V

    .line 472
    .end local v2    # "bullet":Lio/appium/android/apis/view/GameView$Bullet;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 478
    .end local v1    # "i":I
    :cond_1
    iget-object v1, p0, Lio/appium/android/apis/view/GameView;->mObstacles:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 479
    .local v1, "numObstacles":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v1, :cond_2

    .line 480
    iget-object v3, p0, Lio/appium/android/apis/view/GameView;->mObstacles:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/appium/android/apis/view/GameView$Obstacle;

    .line 481
    .local v3, "obstacle":Lio/appium/android/apis/view/GameView$Obstacle;
    invoke-virtual {v3, p1}, Lio/appium/android/apis/view/GameView$Obstacle;->draw(Landroid/graphics/Canvas;)V

    .line 479
    .end local v3    # "obstacle":Lio/appium/android/apis/view/GameView$Obstacle;
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 483
    .end local v2    # "i":I
    :cond_2
    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 208
    invoke-direct {p0}, Lio/appium/android/apis/view/GameView;->ensureInitialized()V

    .line 212
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v0

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_4

    .line 213
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    .line 217
    iget-object v0, p0, Lio/appium/android/apis/view/GameView;->mLastInputDevice:Landroid/view/InputDevice;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/InputDevice;->getId()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 218
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object v0

    iput-object v0, p0, Lio/appium/android/apis/view/GameView;->mLastInputDevice:Landroid/view/InputDevice;

    .line 221
    iget-object v0, p0, Lio/appium/android/apis/view/GameView;->mLastInputDevice:Landroid/view/InputDevice;

    if-nez v0, :cond_1

    .line 222
    const/4 v0, 0x0

    return v0

    .line 227
    :cond_1
    iget v0, p0, Lio/appium/android/apis/view/GameView;->mDPadState:I

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    .line 228
    return v1

    .line 232
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v0

    .line 233
    .local v0, "historySize":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_3

    .line 234
    invoke-direct {p0, p1, v2}, Lio/appium/android/apis/view/GameView;->processJoystickInput(Landroid/view/MotionEvent;I)V

    .line 233
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 238
    .end local v2    # "i":I
    :cond_3
    const/4 v2, -0x1

    invoke-direct {p0, p1, v2}, Lio/appium/android/apis/view/GameView;->processJoystickInput(Landroid/view/MotionEvent;I)V

    .line 239
    return v1

    .line 241
    .end local v0    # "historySize":I
    :cond_4
    invoke-super {p0, p1}, Landroid/view/View;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 5
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 119
    invoke-direct {p0}, Lio/appium/android/apis/view/GameView;->ensureInitialized()V

    .line 122
    const/4 v0, 0x0

    .line 123
    .local v0, "handled":Z
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    .line 124
    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v3, -0x40800000    # -1.0f

    packed-switch p1, :pswitch_data_0

    .line 146
    invoke-static {p1}, Lio/appium/android/apis/view/GameView;->isFireKey(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 147
    invoke-direct {p0}, Lio/appium/android/apis/view/GameView;->fire()V

    .line 148
    const/4 v0, 0x1

    goto :goto_0

    .line 131
    :pswitch_0
    iget-object v3, p0, Lio/appium/android/apis/view/GameView;->mShip:Lio/appium/android/apis/view/GameView$Ship;

    invoke-virtual {v3, v1}, Lio/appium/android/apis/view/GameView$Ship;->setHeadingX(F)V

    .line 132
    iget v1, p0, Lio/appium/android/apis/view/GameView;->mDPadState:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lio/appium/android/apis/view/GameView;->mDPadState:I

    .line 133
    const/4 v0, 0x1

    .line 134
    goto :goto_0

    .line 126
    :pswitch_1
    iget-object v1, p0, Lio/appium/android/apis/view/GameView;->mShip:Lio/appium/android/apis/view/GameView$Ship;

    invoke-virtual {v1, v3}, Lio/appium/android/apis/view/GameView$Ship;->setHeadingX(F)V

    .line 127
    iget v1, p0, Lio/appium/android/apis/view/GameView;->mDPadState:I

    or-int/2addr v1, v2

    iput v1, p0, Lio/appium/android/apis/view/GameView;->mDPadState:I

    .line 128
    const/4 v0, 0x1

    .line 129
    goto :goto_0

    .line 141
    :pswitch_2
    iget-object v3, p0, Lio/appium/android/apis/view/GameView;->mShip:Lio/appium/android/apis/view/GameView$Ship;

    invoke-virtual {v3, v1}, Lio/appium/android/apis/view/GameView$Ship;->setHeadingY(F)V

    .line 142
    iget v1, p0, Lio/appium/android/apis/view/GameView;->mDPadState:I

    or-int/lit8 v1, v1, 0x8

    iput v1, p0, Lio/appium/android/apis/view/GameView;->mDPadState:I

    .line 143
    const/4 v0, 0x1

    .line 144
    goto :goto_0

    .line 136
    :pswitch_3
    iget-object v1, p0, Lio/appium/android/apis/view/GameView;->mShip:Lio/appium/android/apis/view/GameView$Ship;

    invoke-virtual {v1, v3}, Lio/appium/android/apis/view/GameView$Ship;->setHeadingY(F)V

    .line 137
    iget v1, p0, Lio/appium/android/apis/view/GameView;->mDPadState:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lio/appium/android/apis/view/GameView;->mDPadState:I

    .line 138
    const/4 v0, 0x1

    .line 153
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 154
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v3

    invoke-direct {p0, v3, v4}, Lio/appium/android/apis/view/GameView;->step(J)V

    .line 155
    return v2

    .line 157
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    return v1

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 162
    invoke-direct {p0}, Lio/appium/android/apis/view/GameView;->ensureInitialized()V

    .line 165
    const/4 v0, 0x0

    .line 166
    .local v0, "handled":Z
    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    .line 188
    invoke-static {p1}, Lio/appium/android/apis/view/GameView;->isFireKey(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 189
    const/4 v0, 0x1

    goto :goto_0

    .line 173
    :pswitch_0
    iget-object v2, p0, Lio/appium/android/apis/view/GameView;->mShip:Lio/appium/android/apis/view/GameView$Ship;

    invoke-virtual {v2, v1}, Lio/appium/android/apis/view/GameView$Ship;->setHeadingX(F)V

    .line 174
    iget v1, p0, Lio/appium/android/apis/view/GameView;->mDPadState:I

    and-int/lit8 v1, v1, -0x3

    iput v1, p0, Lio/appium/android/apis/view/GameView;->mDPadState:I

    .line 175
    const/4 v0, 0x1

    .line 176
    goto :goto_0

    .line 168
    :pswitch_1
    iget-object v2, p0, Lio/appium/android/apis/view/GameView;->mShip:Lio/appium/android/apis/view/GameView$Ship;

    invoke-virtual {v2, v1}, Lio/appium/android/apis/view/GameView$Ship;->setHeadingX(F)V

    .line 169
    iget v1, p0, Lio/appium/android/apis/view/GameView;->mDPadState:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lio/appium/android/apis/view/GameView;->mDPadState:I

    .line 170
    const/4 v0, 0x1

    .line 171
    goto :goto_0

    .line 183
    :pswitch_2
    iget-object v2, p0, Lio/appium/android/apis/view/GameView;->mShip:Lio/appium/android/apis/view/GameView$Ship;

    invoke-virtual {v2, v1}, Lio/appium/android/apis/view/GameView$Ship;->setHeadingY(F)V

    .line 184
    iget v1, p0, Lio/appium/android/apis/view/GameView;->mDPadState:I

    and-int/lit8 v1, v1, -0x9

    iput v1, p0, Lio/appium/android/apis/view/GameView;->mDPadState:I

    .line 185
    const/4 v0, 0x1

    .line 186
    goto :goto_0

    .line 178
    :pswitch_3
    iget-object v2, p0, Lio/appium/android/apis/view/GameView;->mShip:Lio/appium/android/apis/view/GameView$Ship;

    invoke-virtual {v2, v1}, Lio/appium/android/apis/view/GameView$Ship;->setHeadingY(F)V

    .line 179
    iget v1, p0, Lio/appium/android/apis/view/GameView;->mDPadState:I

    and-int/lit8 v1, v1, -0x5

    iput v1, p0, Lio/appium/android/apis/view/GameView;->mDPadState:I

    .line 180
    const/4 v0, 0x1

    .line 193
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 194
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v1

    invoke-direct {p0, v1, v2}, Lio/appium/android/apis/view/GameView;->step(J)V

    .line 195
    const/4 v1, 0x1

    return v1

    .line 197
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v1

    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onSizeChanged(IIII)V
    .locals 0
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .line 111
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 114
    invoke-direct {p0}, Lio/appium/android/apis/view/GameView;->reset()V

    .line 115
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 4
    .param p1, "hasWindowFocus"    # Z

    .line 292
    if-eqz p1, :cond_0

    .line 293
    invoke-virtual {p0}, Lio/appium/android/apis/view/GameView;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lio/appium/android/apis/view/GameView;->mAnimationRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x10

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 294
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lio/appium/android/apis/view/GameView;->mLastStepTime:J

    goto :goto_0

    .line 296
    :cond_0
    invoke-virtual {p0}, Lio/appium/android/apis/view/GameView;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lio/appium/android/apis/view/GameView;->mAnimationRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 298
    const/4 v0, 0x0

    iput v0, p0, Lio/appium/android/apis/view/GameView;->mDPadState:I

    .line 299
    iget-object v0, p0, Lio/appium/android/apis/view/GameView;->mShip:Lio/appium/android/apis/view/GameView$Ship;

    if-eqz v0, :cond_1

    .line 300
    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Lio/appium/android/apis/view/GameView$Ship;->setHeading(FF)V

    .line 301
    iget-object v0, p0, Lio/appium/android/apis/view/GameView;->mShip:Lio/appium/android/apis/view/GameView$Ship;

    invoke-virtual {v0, v1, v1}, Lio/appium/android/apis/view/GameView$Ship;->setVelocity(FF)V

    .line 305
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Landroid/view/View;->onWindowFocusChanged(Z)V

    .line 306
    return-void
.end method
