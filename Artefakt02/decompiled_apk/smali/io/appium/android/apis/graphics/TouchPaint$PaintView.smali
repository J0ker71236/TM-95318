.class Lio/appium/android/apis/graphics/TouchPaint$PaintView;
.super Landroid/view/View;
.source "TouchPaint.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/appium/android/apis/graphics/TouchPaint;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PaintView"
.end annotation


# static fields
.field private static final FADE_ALPHA:I = 0x6

.field private static final MAX_FADE_STEPS:I = 0x2e

.field private static final SPLAT_VECTORS:I = 0x28

.field private static final TRACKBALL_SCALE:I = 0xa


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private mCanvas:Landroid/graphics/Canvas;

.field private mCurX:F

.field private mCurY:F

.field private final mFadePaint:Landroid/graphics/Paint;

.field private mFadeSteps:I

.field private mOldButtonState:I

.field private final mPaint:Landroid/graphics/Paint;

.field private final mRandom:Ljava/util/Random;

.field private final mReusableOvalRect:Landroid/graphics/RectF;

.field final synthetic this$0:Lio/appium/android/apis/graphics/TouchPaint;


# direct methods
.method public constructor <init>(Lio/appium/android/apis/graphics/TouchPaint;Landroid/content/Context;)V
    .locals 2
    .param p1, "this$0"    # Lio/appium/android/apis/graphics/TouchPaint;
    .param p2, "c"    # Landroid/content/Context;

    .line 245
    iput-object p1, p0, Lio/appium/android/apis/graphics/TouchPaint$PaintView;->this$0:Lio/appium/android/apis/graphics/TouchPaint;

    .line 246
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 235
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lio/appium/android/apis/graphics/TouchPaint$PaintView;->mRandom:Ljava/util/Random;

    .line 243
    const/16 v0, 0x2e

    iput v0, p0, Lio/appium/android/apis/graphics/TouchPaint$PaintView;->mFadeSteps:I

    .line 457
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lio/appium/android/apis/graphics/TouchPaint$PaintView;->mReusableOvalRect:Landroid/graphics/RectF;

    .line 247
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lio/appium/android/apis/graphics/TouchPaint$PaintView;->setFocusable(Z)V

    .line 249
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lio/appium/android/apis/graphics/TouchPaint$PaintView;->mPaint:Landroid/graphics/Paint;

    .line 250
    iget-object v1, p0, Lio/appium/android/apis/graphics/TouchPaint$PaintView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 252
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lio/appium/android/apis/graphics/TouchPaint$PaintView;->mFadePaint:Landroid/graphics/Paint;

    .line 253
    iget-object v0, p0, Lio/appium/android/apis/graphics/TouchPaint$PaintView;->mFadePaint:Landroid/graphics/Paint;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 254
    iget-object v0, p0, Lio/appium/android/apis/graphics/TouchPaint$PaintView;->mFadePaint:Landroid/graphics/Paint;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 255
    return-void
.end method

.method private advanceColor()V
    .locals 3

    .line 411
    iget-object v0, p0, Lio/appium/android/apis/graphics/TouchPaint$PaintView;->this$0:Lio/appium/android/apis/graphics/TouchPaint;

    iget v1, v0, Lio/appium/android/apis/graphics/TouchPaint;->mColorIndex:I

    add-int/lit8 v1, v1, 0x1

    sget-object v2, Lio/appium/android/apis/graphics/TouchPaint;->COLORS:[I

    array-length v2, v2

    rem-int/2addr v1, v2

    iput v1, v0, Lio/appium/android/apis/graphics/TouchPaint;->mColorIndex:I

    .line 412
    return-void
.end method

.method private drawOval(Landroid/graphics/Canvas;FFFFFLandroid/graphics/Paint;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "major"    # F
    .param p5, "minor"    # F
    .param p6, "orientation"    # F
    .param p7, "paint"    # Landroid/graphics/Paint;

    .line 460
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 461
    const/high16 v0, 0x43340000    # 180.0f

    mul-float v0, v0, p6

    float-to-double v0, v0

    const-wide v2, 0x400921fb54442d18L    # Math.PI

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v0, v2

    double-to-float v0, v0

    invoke-virtual {p1, v0, p2, p3}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 462
    iget-object v0, p0, Lio/appium/android/apis/graphics/TouchPaint$PaintView;->mReusableOvalRect:Landroid/graphics/RectF;

    const/high16 v1, 0x40000000    # 2.0f

    div-float v2, p5, v1

    sub-float v2, p2, v2

    iput v2, v0, Landroid/graphics/RectF;->left:F

    .line 463
    div-float v2, p5, v1

    add-float/2addr v2, p2

    iput v2, v0, Landroid/graphics/RectF;->right:F

    .line 464
    div-float v2, p4, v1

    sub-float v2, p3, v2

    iput v2, v0, Landroid/graphics/RectF;->top:F

    .line 465
    div-float v1, p4, v1

    add-float/2addr v1, p3

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 466
    invoke-virtual {p1, v0, p7}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 467
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 468
    return-void
.end method

.method private drawSplat(Landroid/graphics/Canvas;FFFFFLandroid/graphics/Paint;)V
    .locals 28
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "orientation"    # F
    .param p5, "distance"    # F
    .param p6, "tilt"    # F
    .param p7, "paint"    # Landroid/graphics/Paint;

    .line 482
    move-object/from16 v0, p0

    move/from16 v1, p4

    move/from16 v2, p6

    const/high16 v3, 0x40000000    # 2.0f

    mul-float v3, v3, p5

    const/high16 v4, 0x41200000    # 10.0f

    add-float/2addr v3, v4

    .line 485
    .local v3, "z":F
    float-to-double v4, v1

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    float-to-double v6, v2

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    mul-double v4, v4, v6

    double-to-float v4, v4

    .line 486
    .local v4, "nx":F
    float-to-double v5, v1

    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v5

    neg-double v5, v5

    float-to-double v7, v2

    invoke-static {v7, v8}, Ljava/lang/Math;->sin(D)D

    move-result-wide v7

    mul-double v5, v5, v7

    double-to-float v5, v5

    .line 487
    .local v5, "ny":F
    float-to-double v6, v2

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    double-to-float v6, v6

    .line 488
    .local v6, "nz":F
    float-to-double v7, v6

    const-wide v9, 0x3fa999999999999aL    # 0.05

    cmpg-double v11, v7, v9

    if-gez v11, :cond_0

    .line 489
    return-void

    .line 491
    :cond_0
    div-float v7, v3, v6

    .line 492
    .local v7, "cd":F
    mul-float v8, v4, v7

    .line 493
    .local v8, "cx":F
    mul-float v11, v5, v7

    .line 495
    .local v11, "cy":F
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_0
    const/16 v13, 0x28

    if-ge v12, v13, :cond_2

    .line 499
    iget-object v13, v0, Lio/appium/android/apis/graphics/TouchPaint$PaintView;->mRandom:Ljava/util/Random;

    invoke-virtual {v13}, Ljava/util/Random;->nextDouble()D

    move-result-wide v13

    const-wide v15, 0x400921fb54442d18L    # Math.PI

    mul-double v13, v13, v15

    const-wide/high16 v15, 0x4000000000000000L    # 2.0

    mul-double v13, v13, v15

    .line 500
    .local v13, "direction":D
    iget-object v15, v0, Lio/appium/android/apis/graphics/TouchPaint$PaintView;->mRandom:Ljava/util/Random;

    invoke-virtual {v15}, Ljava/util/Random;->nextGaussian()D

    move-result-wide v15

    const-wide v17, 0x3fc999999999999aL    # 0.2

    mul-double v15, v15, v17

    .line 501
    .local v15, "dispersion":D
    invoke-static {v13, v14}, Ljava/lang/Math;->cos(D)D

    move-result-wide v17

    mul-double v17, v17, v15

    .line 502
    .local v17, "vx":D
    invoke-static {v13, v14}, Ljava/lang/Math;->sin(D)D

    move-result-wide v19

    mul-double v19, v19, v15

    .line 503
    .local v19, "vy":D
    const-wide/high16 v21, 0x3ff0000000000000L    # 1.0

    .line 506
    .local v21, "vz":D
    move-wide/from16 v23, v19

    .line 507
    .local v23, "temp":D
    float-to-double v9, v2

    invoke-static {v9, v10}, Ljava/lang/Math;->cos(D)D

    move-result-wide v9

    mul-double v9, v9, v23

    move/from16 v25, v4

    move/from16 v26, v5

    .end local v4    # "nx":F
    .end local v5    # "ny":F
    .local v25, "nx":F
    .local v26, "ny":F
    float-to-double v4, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    mul-double v4, v4, v21

    sub-double/2addr v9, v4

    .line 508
    .end local v19    # "vy":D
    .local v9, "vy":D
    float-to-double v4, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    mul-double v4, v4, v23

    move/from16 v19, v6

    move/from16 v20, v7

    .end local v6    # "nz":F
    .end local v7    # "cd":F
    .local v19, "nz":F
    .local v20, "cd":F
    float-to-double v6, v2

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    mul-double v6, v6, v21

    add-double/2addr v4, v6

    .line 511
    .end local v21    # "vz":D
    .local v4, "vz":D
    move-wide/from16 v6, v17

    .line 512
    .end local v23    # "temp":D
    .local v6, "temp":D
    move-wide/from16 v21, v13

    .end local v13    # "direction":D
    .local v21, "direction":D
    float-to-double v13, v1

    invoke-static {v13, v14}, Ljava/lang/Math;->cos(D)D

    move-result-wide v13

    mul-double v13, v13, v6

    move/from16 v23, v11

    move/from16 v24, v12

    .end local v11    # "cy":F
    .end local v12    # "i":I
    .local v23, "cy":F
    .local v24, "i":I
    float-to-double v11, v1

    invoke-static {v11, v12}, Ljava/lang/Math;->sin(D)D

    move-result-wide v11

    mul-double v11, v11, v9

    sub-double/2addr v13, v11

    .line 513
    .end local v17    # "vx":D
    .local v13, "vx":D
    float-to-double v11, v1

    invoke-static {v11, v12}, Ljava/lang/Math;->sin(D)D

    move-result-wide v11

    mul-double v11, v11, v6

    .end local v6    # "temp":D
    .local v17, "temp":D
    float-to-double v6, v1

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    mul-double v6, v6, v9

    add-double/2addr v11, v6

    .line 516
    .end local v9    # "vy":D
    .local v11, "vy":D
    const-wide v6, 0x3fa999999999999aL    # 0.05

    cmpg-double v9, v4, v6

    if-gez v9, :cond_1

    .line 517
    move-object/from16 v1, p7

    goto :goto_1

    .line 519
    :cond_1
    float-to-double v9, v3

    invoke-static {v9, v10}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v9, v4

    double-to-float v9, v9

    .line 520
    .local v9, "pd":F
    float-to-double v6, v9

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v6, v6, v13

    double-to-float v6, v6

    .line 521
    .local v6, "px":F
    float-to-double v1, v9

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v1, v1, v11

    double-to-float v1, v1

    .line 524
    .local v1, "py":F
    iget-object v2, v0, Lio/appium/android/apis/graphics/TouchPaint$PaintView;->mCanvas:Landroid/graphics/Canvas;

    add-float v7, p2, v6

    sub-float/2addr v7, v8

    add-float v10, p3, v1

    sub-float v10, v10, v23

    const/high16 v0, 0x3f800000    # 1.0f

    move/from16 v27, v1

    move-object/from16 v1, p7

    .end local v1    # "py":F
    .local v27, "py":F
    invoke-virtual {v2, v7, v10, v0, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 495
    .end local v4    # "vz":D
    .end local v6    # "px":F
    .end local v9    # "pd":F
    .end local v11    # "vy":D
    .end local v13    # "vx":D
    .end local v15    # "dispersion":D
    .end local v17    # "temp":D
    .end local v21    # "direction":D
    .end local v27    # "py":F
    :goto_1
    add-int/lit8 v12, v24, 0x1

    move/from16 v6, v19

    move/from16 v7, v20

    move/from16 v11, v23

    move/from16 v4, v25

    move/from16 v5, v26

    move-object/from16 v0, p0

    move/from16 v1, p4

    move/from16 v2, p6

    const-wide v9, 0x3fa999999999999aL    # 0.05

    goto/16 :goto_0

    .end local v19    # "nz":F
    .end local v20    # "cd":F
    .end local v23    # "cy":F
    .end local v24    # "i":I
    .end local v25    # "nx":F
    .end local v26    # "ny":F
    .local v4, "nx":F
    .restart local v5    # "ny":F
    .local v6, "nz":F
    .restart local v7    # "cd":F
    .local v11, "cy":F
    .restart local v12    # "i":I
    :cond_2
    move-object/from16 v1, p7

    move/from16 v25, v4

    move/from16 v26, v5

    move/from16 v19, v6

    move/from16 v20, v7

    move/from16 v23, v11

    move/from16 v24, v12

    .line 526
    .end local v4    # "nx":F
    .end local v5    # "ny":F
    .end local v6    # "nz":F
    .end local v7    # "cd":F
    .end local v11    # "cy":F
    .end local v12    # "i":I
    .restart local v19    # "nz":F
    .restart local v20    # "cd":F
    .restart local v23    # "cy":F
    .restart local v25    # "nx":F
    .restart local v26    # "ny":F
    return-void
.end method

.method private getPaintModeForTool(ILio/appium/android/apis/graphics/TouchPaint$PaintMode;)Lio/appium/android/apis/graphics/TouchPaint$PaintMode;
    .locals 1
    .param p1, "toolType"    # I
    .param p2, "defaultMode"    # Lio/appium/android/apis/graphics/TouchPaint$PaintMode;

    .line 404
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 405
    sget-object v0, Lio/appium/android/apis/graphics/TouchPaint$PaintMode;->Erase:Lio/appium/android/apis/graphics/TouchPaint$PaintMode;

    return-object v0

    .line 407
    :cond_0
    return-object p2
.end method

.method private moveTrackball(FF)V
    .locals 5
    .param p1, "deltaX"    # F
    .param p2, "deltaY"    # F

    .line 327
    iget-object v0, p0, Lio/appium/android/apis/graphics/TouchPaint$PaintView;->mBitmap:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 328
    .local v0, "curW":I
    :goto_0
    iget-object v2, p0, Lio/appium/android/apis/graphics/TouchPaint$PaintView;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 330
    .local v1, "curH":I
    :cond_1
    iget v2, p0, Lio/appium/android/apis/graphics/TouchPaint$PaintView;->mCurX:F

    add-float/2addr v2, p1

    add-int/lit8 v3, v0, -0x1

    int-to-float v3, v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iput v2, p0, Lio/appium/android/apis/graphics/TouchPaint$PaintView;->mCurX:F

    .line 331
    iget v2, p0, Lio/appium/android/apis/graphics/TouchPaint$PaintView;->mCurY:F

    add-float/2addr v2, p2

    add-int/lit8 v4, v1, -0x1

    int-to-float v4, v4

    invoke-static {v2, v4}, Ljava/lang/Math;->min(FF)F

    move-result v2

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iput v2, p0, Lio/appium/android/apis/graphics/TouchPaint$PaintView;->mCurY:F

    .line 332
    sget-object v2, Lio/appium/android/apis/graphics/TouchPaint$PaintMode;->Draw:Lio/appium/android/apis/graphics/TouchPaint$PaintMode;

    iget v3, p0, Lio/appium/android/apis/graphics/TouchPaint$PaintView;->mCurX:F

    iget v4, p0, Lio/appium/android/apis/graphics/TouchPaint$PaintView;->mCurY:F

    invoke-direct {p0, v2, v3, v4}, Lio/appium/android/apis/graphics/TouchPaint$PaintView;->paint(Lio/appium/android/apis/graphics/TouchPaint$PaintMode;FF)V

    .line 333
    return-void
.end method

.method private onTouchOrHoverEvent(Landroid/view/MotionEvent;Z)Z
    .locals 23
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "isTouch"    # Z

    .line 346
    move-object/from16 v10, p0

    move-object/from16 v11, p1

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v12

    .line 347
    .local v12, "buttonState":I
    iget v0, v10, Lio/appium/android/apis/graphics/TouchPaint$PaintView;->mOldButtonState:I

    xor-int/lit8 v0, v0, -0x1

    and-int v13, v12, v0

    .line 348
    .local v13, "pressedButtons":I
    iput v12, v10, Lio/appium/android/apis/graphics/TouchPaint$PaintView;->mOldButtonState:I

    .line 350
    and-int/lit8 v0, v13, 0x2

    if-eqz v0, :cond_0

    .line 353
    invoke-direct/range {p0 .. p0}, Lio/appium/android/apis/graphics/TouchPaint$PaintView;->advanceColor()V

    .line 357
    :cond_0
    and-int/lit8 v0, v12, 0x4

    if-eqz v0, :cond_1

    .line 359
    sget-object v0, Lio/appium/android/apis/graphics/TouchPaint$PaintMode;->Splat:Lio/appium/android/apis/graphics/TouchPaint$PaintMode;

    move-object v14, v0

    goto :goto_1

    .line 360
    :cond_1
    if-nez p2, :cond_3

    and-int/lit8 v0, v12, 0x1

    if-eqz v0, :cond_2

    goto :goto_0

    .line 365
    :cond_2
    const/4 v0, 0x0

    return v0

    .line 362
    :cond_3
    :goto_0
    sget-object v0, Lio/appium/android/apis/graphics/TouchPaint$PaintMode;->Draw:Lio/appium/android/apis/graphics/TouchPaint$PaintMode;

    move-object v14, v0

    .line 368
    .local v14, "mode":Lio/appium/android/apis/graphics/TouchPaint$PaintMode;
    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v15

    .line 369
    .local v15, "action":I
    if-eqz v15, :cond_5

    const/4 v0, 0x2

    if-eq v15, v0, :cond_5

    const/4 v0, 0x7

    if-ne v15, v0, :cond_4

    goto :goto_2

    :cond_4
    move/from16 v16, v12

    goto/16 :goto_6

    .line 371
    :cond_5
    :goto_2
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v9

    .line 372
    .local v9, "N":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v8

    .line 373
    .local v8, "P":I
    const/4 v0, 0x0

    move v7, v0

    .local v7, "i":I
    :goto_3
    const/16 v6, 0x19

    const/16 v5, 0x18

    if-ge v7, v9, :cond_7

    .line 374
    const/4 v0, 0x0

    move v4, v0

    .local v4, "j":I
    :goto_4
    if-ge v4, v8, :cond_6

    .line 375
    invoke-virtual {v11, v4}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v0

    invoke-direct {v10, v0, v14}, Lio/appium/android/apis/graphics/TouchPaint$PaintView;->getPaintModeForTool(ILio/appium/android/apis/graphics/TouchPaint$PaintMode;)Lio/appium/android/apis/graphics/TouchPaint$PaintMode;

    move-result-object v1

    .line 376
    invoke-virtual {v11, v4, v7}, Landroid/view/MotionEvent;->getHistoricalX(II)F

    move-result v2

    .line 377
    invoke-virtual {v11, v4, v7}, Landroid/view/MotionEvent;->getHistoricalY(II)F

    move-result v3

    .line 378
    invoke-virtual {v11, v4, v7}, Landroid/view/MotionEvent;->getHistoricalPressure(II)F

    move-result v16

    .line 379
    invoke-virtual {v11, v4, v7}, Landroid/view/MotionEvent;->getHistoricalTouchMajor(II)F

    move-result v17

    .line 380
    invoke-virtual {v11, v4, v7}, Landroid/view/MotionEvent;->getHistoricalTouchMinor(II)F

    move-result v18

    .line 381
    invoke-virtual {v11, v4, v7}, Landroid/view/MotionEvent;->getHistoricalOrientation(II)F

    move-result v19

    .line 382
    invoke-virtual {v11, v5, v4, v7}, Landroid/view/MotionEvent;->getHistoricalAxisValue(III)F

    move-result v20

    .line 383
    invoke-virtual {v11, v6, v4, v7}, Landroid/view/MotionEvent;->getHistoricalAxisValue(III)F

    move-result v21

    .line 375
    move-object/from16 v0, p0

    move/from16 v22, v4

    .end local v4    # "j":I
    .local v22, "j":I
    move/from16 v4, v16

    move/from16 v16, v12

    const/16 v12, 0x18

    .end local v12    # "buttonState":I
    .local v16, "buttonState":I
    move/from16 v5, v17

    move/from16 v6, v18

    move/from16 v17, v7

    .end local v7    # "i":I
    .local v17, "i":I
    move/from16 v7, v19

    move v12, v8

    .end local v8    # "P":I
    .local v12, "P":I
    move/from16 v8, v20

    move/from16 v19, v9

    .end local v9    # "N":I
    .local v19, "N":I
    move/from16 v9, v21

    invoke-direct/range {v0 .. v9}, Lio/appium/android/apis/graphics/TouchPaint$PaintView;->paint(Lio/appium/android/apis/graphics/TouchPaint$PaintMode;FFFFFFFF)V

    .line 374
    add-int/lit8 v4, v22, 0x1

    move v8, v12

    move/from16 v12, v16

    move/from16 v7, v17

    move/from16 v9, v19

    const/16 v5, 0x18

    const/16 v6, 0x19

    goto :goto_4

    .end local v16    # "buttonState":I
    .end local v17    # "i":I
    .end local v19    # "N":I
    .end local v22    # "j":I
    .restart local v4    # "j":I
    .restart local v7    # "i":I
    .restart local v8    # "P":I
    .restart local v9    # "N":I
    .local v12, "buttonState":I
    :cond_6
    move/from16 v22, v4

    move/from16 v17, v7

    move/from16 v19, v9

    move/from16 v16, v12

    move v12, v8

    .line 373
    .end local v4    # "j":I
    .end local v7    # "i":I
    .end local v8    # "P":I
    .end local v9    # "N":I
    .local v12, "P":I
    .restart local v16    # "buttonState":I
    .restart local v17    # "i":I
    .restart local v19    # "N":I
    add-int/lit8 v7, v17, 0x1

    move/from16 v12, v16

    goto :goto_3

    .end local v16    # "buttonState":I
    .end local v17    # "i":I
    .end local v19    # "N":I
    .restart local v7    # "i":I
    .restart local v8    # "P":I
    .restart local v9    # "N":I
    .local v12, "buttonState":I
    :cond_7
    move/from16 v17, v7

    move/from16 v19, v9

    move/from16 v16, v12

    move v12, v8

    .line 386
    .end local v7    # "i":I
    .end local v8    # "P":I
    .end local v9    # "N":I
    .local v12, "P":I
    .restart local v16    # "buttonState":I
    .restart local v19    # "N":I
    const/4 v0, 0x0

    move v9, v0

    .local v9, "j":I
    :goto_5
    if-ge v9, v12, :cond_8

    .line 387
    invoke-virtual {v11, v9}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v0

    invoke-direct {v10, v0, v14}, Lio/appium/android/apis/graphics/TouchPaint$PaintView;->getPaintModeForTool(ILio/appium/android/apis/graphics/TouchPaint$PaintMode;)Lio/appium/android/apis/graphics/TouchPaint$PaintMode;

    move-result-object v1

    .line 388
    invoke-virtual {v11, v9}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    .line 389
    invoke-virtual {v11, v9}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    .line 390
    invoke-virtual {v11, v9}, Landroid/view/MotionEvent;->getPressure(I)F

    move-result v4

    .line 391
    invoke-virtual {v11, v9}, Landroid/view/MotionEvent;->getTouchMajor(I)F

    move-result v5

    .line 392
    invoke-virtual {v11, v9}, Landroid/view/MotionEvent;->getTouchMinor(I)F

    move-result v6

    .line 393
    invoke-virtual {v11, v9}, Landroid/view/MotionEvent;->getOrientation(I)F

    move-result v7

    .line 394
    const/16 v8, 0x18

    invoke-virtual {v11, v8, v9}, Landroid/view/MotionEvent;->getAxisValue(II)F

    move-result v17

    .line 395
    const/16 v0, 0x19

    invoke-virtual {v11, v0, v9}, Landroid/view/MotionEvent;->getAxisValue(II)F

    move-result v18

    .line 387
    const/16 v20, 0x19

    move-object/from16 v0, p0

    const/16 v21, 0x18

    move/from16 v8, v17

    move/from16 v17, v9

    .end local v9    # "j":I
    .local v17, "j":I
    move/from16 v9, v18

    invoke-direct/range {v0 .. v9}, Lio/appium/android/apis/graphics/TouchPaint$PaintView;->paint(Lio/appium/android/apis/graphics/TouchPaint$PaintMode;FFFFFFFF)V

    .line 386
    add-int/lit8 v9, v17, 0x1

    goto :goto_5

    .end local v17    # "j":I
    .restart local v9    # "j":I
    :cond_8
    move/from16 v17, v9

    .line 397
    .end local v9    # "j":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, v10, Lio/appium/android/apis/graphics/TouchPaint$PaintView;->mCurX:F

    .line 398
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, v10, Lio/appium/android/apis/graphics/TouchPaint$PaintView;->mCurY:F

    .line 400
    .end local v12    # "P":I
    .end local v19    # "N":I
    :goto_6
    const/4 v0, 0x1

    return v0
.end method

.method private paint(Lio/appium/android/apis/graphics/TouchPaint$PaintMode;FF)V
    .locals 10
    .param p1, "mode"    # Lio/appium/android/apis/graphics/TouchPaint$PaintMode;
    .param p2, "x"    # F
    .param p3, "y"    # F

    .line 415
    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v9}, Lio/appium/android/apis/graphics/TouchPaint$PaintView;->paint(Lio/appium/android/apis/graphics/TouchPaint$PaintMode;FFFFFFFF)V

    .line 416
    return-void
.end method

.method private paint(Lio/appium/android/apis/graphics/TouchPaint$PaintMode;FFFFFFFF)V
    .locals 11
    .param p1, "mode"    # Lio/appium/android/apis/graphics/TouchPaint$PaintMode;
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "pressure"    # F
    .param p5, "major"    # F
    .param p6, "minor"    # F
    .param p7, "orientation"    # F
    .param p8, "distance"    # F
    .param p9, "tilt"    # F

    .line 421
    move-object v8, p0

    iget-object v0, v8, Lio/appium/android/apis/graphics/TouchPaint$PaintView;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    .line 422
    const/4 v0, 0x0

    cmpg-float v1, p5, v0

    if-lez v1, :cond_1

    cmpg-float v0, p6, v0

    if-gtz v0, :cond_0

    goto :goto_0

    :cond_0
    move/from16 v9, p5

    move/from16 v10, p6

    goto :goto_1

    .line 424
    :cond_1
    :goto_0
    const/high16 v0, 0x41800000    # 16.0f

    move v1, v0

    .end local p6    # "minor":F
    .local v1, "minor":F
    move v9, v0

    move v10, v1

    .line 427
    .end local v1    # "minor":F
    .end local p5    # "major":F
    .local v9, "major":F
    .local v10, "minor":F
    :goto_1
    sget-object v0, Lio/appium/android/apis/graphics/TouchPaint$2;->$SwitchMap$io$appium$android$apis$graphics$TouchPaint$PaintMode:[I

    invoke-virtual {p1}, Lio/appium/android/apis/graphics/TouchPaint$PaintMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/16 v1, 0xff

    const/high16 v2, 0x43000000    # 128.0f

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_2

    .line 441
    :pswitch_0
    iget-object v0, v8, Lio/appium/android/apis/graphics/TouchPaint$PaintView;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Lio/appium/android/apis/graphics/TouchPaint;->COLORS:[I

    iget-object v2, v8, Lio/appium/android/apis/graphics/TouchPaint$PaintView;->this$0:Lio/appium/android/apis/graphics/TouchPaint;

    iget v2, v2, Lio/appium/android/apis/graphics/TouchPaint;->mColorIndex:I

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 442
    iget-object v0, v8, Lio/appium/android/apis/graphics/TouchPaint$PaintView;->mPaint:Landroid/graphics/Paint;

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 443
    iget-object v1, v8, Lio/appium/android/apis/graphics/TouchPaint$PaintView;->mCanvas:Landroid/graphics/Canvas;

    iget-object v7, v8, Lio/appium/android/apis/graphics/TouchPaint$PaintView;->mPaint:Landroid/graphics/Paint;

    move-object v0, p0

    move v2, p2

    move v3, p3

    move/from16 v4, p7

    move/from16 v5, p8

    move/from16 v6, p9

    invoke-direct/range {v0 .. v7}, Lio/appium/android/apis/graphics/TouchPaint$PaintView;->drawSplat(Landroid/graphics/Canvas;FFFFFLandroid/graphics/Paint;)V

    goto :goto_2

    .line 435
    :pswitch_1
    iget-object v0, v8, Lio/appium/android/apis/graphics/TouchPaint$PaintView;->mPaint:Landroid/graphics/Paint;

    const/high16 v3, -0x1000000

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 436
    iget-object v0, v8, Lio/appium/android/apis/graphics/TouchPaint$PaintView;->mPaint:Landroid/graphics/Paint;

    mul-float v2, v2, p4

    float-to-int v2, v2

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 437
    iget-object v1, v8, Lio/appium/android/apis/graphics/TouchPaint$PaintView;->mCanvas:Landroid/graphics/Canvas;

    iget-object v7, v8, Lio/appium/android/apis/graphics/TouchPaint$PaintView;->mPaint:Landroid/graphics/Paint;

    move-object v0, p0

    move v2, p2

    move v3, p3

    move v4, v9

    move v5, v10

    move/from16 v6, p7

    invoke-direct/range {v0 .. v7}, Lio/appium/android/apis/graphics/TouchPaint$PaintView;->drawOval(Landroid/graphics/Canvas;FFFFFLandroid/graphics/Paint;)V

    .line 438
    goto :goto_2

    .line 429
    :pswitch_2
    iget-object v0, v8, Lio/appium/android/apis/graphics/TouchPaint$PaintView;->mPaint:Landroid/graphics/Paint;

    sget-object v3, Lio/appium/android/apis/graphics/TouchPaint;->COLORS:[I

    iget-object v4, v8, Lio/appium/android/apis/graphics/TouchPaint$PaintView;->this$0:Lio/appium/android/apis/graphics/TouchPaint;

    iget v4, v4, Lio/appium/android/apis/graphics/TouchPaint;->mColorIndex:I

    aget v3, v3, v4

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 430
    iget-object v0, v8, Lio/appium/android/apis/graphics/TouchPaint$PaintView;->mPaint:Landroid/graphics/Paint;

    mul-float v2, v2, p4

    float-to-int v2, v2

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 431
    iget-object v1, v8, Lio/appium/android/apis/graphics/TouchPaint$PaintView;->mCanvas:Landroid/graphics/Canvas;

    iget-object v7, v8, Lio/appium/android/apis/graphics/TouchPaint$PaintView;->mPaint:Landroid/graphics/Paint;

    move-object v0, p0

    move v2, p2

    move v3, p3

    move v4, v9

    move v5, v10

    move/from16 v6, p7

    invoke-direct/range {v0 .. v7}, Lio/appium/android/apis/graphics/TouchPaint$PaintView;->drawOval(Landroid/graphics/Canvas;FFFFFLandroid/graphics/Paint;)V

    .line 432
    goto :goto_2

    .line 421
    .end local v9    # "major":F
    .end local v10    # "minor":F
    .restart local p5    # "major":F
    .restart local p6    # "minor":F
    :cond_2
    move/from16 v9, p5

    move/from16 v10, p6

    .line 447
    .end local p5    # "major":F
    .end local p6    # "minor":F
    .restart local v9    # "major":F
    .restart local v10    # "minor":F
    :goto_2
    const/4 v0, 0x0

    iput v0, v8, Lio/appium/android/apis/graphics/TouchPaint$PaintView;->mFadeSteps:I

    .line 448
    invoke-virtual {p0}, Lio/appium/android/apis/graphics/TouchPaint$PaintView;->invalidate()V

    .line 449
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public clear()V
    .locals 2

    .line 258
    iget-object v0, p0, Lio/appium/android/apis/graphics/TouchPaint$PaintView;->mCanvas:Landroid/graphics/Canvas;

    if-eqz v0, :cond_0

    .line 259
    iget-object v0, p0, Lio/appium/android/apis/graphics/TouchPaint$PaintView;->mPaint:Landroid/graphics/Paint;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 260
    iget-object v0, p0, Lio/appium/android/apis/graphics/TouchPaint$PaintView;->mCanvas:Landroid/graphics/Canvas;

    iget-object v1, p0, Lio/appium/android/apis/graphics/TouchPaint$PaintView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->drawPaint(Landroid/graphics/Paint;)V

    .line 261
    invoke-virtual {p0}, Lio/appium/android/apis/graphics/TouchPaint$PaintView;->invalidate()V

    .line 263
    const/16 v0, 0x2e

    iput v0, p0, Lio/appium/android/apis/graphics/TouchPaint$PaintView;->mFadeSteps:I

    .line 265
    :cond_0
    return-void
.end method

.method public fade()V
    .locals 3

    .line 268
    iget-object v0, p0, Lio/appium/android/apis/graphics/TouchPaint$PaintView;->mCanvas:Landroid/graphics/Canvas;

    if-eqz v0, :cond_0

    iget v1, p0, Lio/appium/android/apis/graphics/TouchPaint$PaintView;->mFadeSteps:I

    const/16 v2, 0x2e

    if-ge v1, v2, :cond_0

    .line 269
    iget-object v1, p0, Lio/appium/android/apis/graphics/TouchPaint$PaintView;->mFadePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->drawPaint(Landroid/graphics/Paint;)V

    .line 270
    invoke-virtual {p0}, Lio/appium/android/apis/graphics/TouchPaint$PaintView;->invalidate()V

    .line 272
    iget v0, p0, Lio/appium/android/apis/graphics/TouchPaint$PaintView;->mFadeSteps:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lio/appium/android/apis/graphics/TouchPaint$PaintView;->mFadeSteps:I

    .line 274
    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 300
    iget-object v0, p0, Lio/appium/android/apis/graphics/TouchPaint$PaintView;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 301
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 303
    :cond_0
    return-void
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 342
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lio/appium/android/apis/graphics/TouchPaint$PaintView;->onTouchOrHoverEvent(Landroid/view/MotionEvent;Z)Z

    move-result v0

    return v0
.end method

.method protected onSizeChanged(IIII)V
    .locals 7
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .line 278
    iget-object v0, p0, Lio/appium/android/apis/graphics/TouchPaint$PaintView;->mBitmap:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 279
    .local v0, "curW":I
    :goto_0
    iget-object v2, p0, Lio/appium/android/apis/graphics/TouchPaint$PaintView;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 280
    .local v1, "curH":I
    :cond_1
    if-lt v0, p1, :cond_2

    if-lt v1, p2, :cond_2

    .line 281
    return-void

    .line 284
    :cond_2
    if-ge v0, p1, :cond_3

    move v0, p1

    .line 285
    :cond_3
    if-ge v1, p2, :cond_4

    move v1, p2

    .line 287
    :cond_4
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 288
    .local v2, "newBitmap":Landroid/graphics/Bitmap;
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3}, Landroid/graphics/Canvas;-><init>()V

    .line 289
    .local v3, "newCanvas":Landroid/graphics/Canvas;
    invoke-virtual {v3, v2}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 290
    iget-object v4, p0, Lio/appium/android/apis/graphics/TouchPaint$PaintView;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_5

    .line 291
    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v6, v6, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 293
    :cond_5
    iput-object v2, p0, Lio/appium/android/apis/graphics/TouchPaint$PaintView;->mBitmap:Landroid/graphics/Bitmap;

    .line 294
    iput-object v3, p0, Lio/appium/android/apis/graphics/TouchPaint$PaintView;->mCanvas:Landroid/graphics/Canvas;

    .line 295
    const/16 v4, 0x2e

    iput v4, p0, Lio/appium/android/apis/graphics/TouchPaint$PaintView;->mFadeSteps:I

    .line 296
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 337
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lio/appium/android/apis/graphics/TouchPaint$PaintView;->onTouchOrHoverEvent(Landroid/view/MotionEvent;Z)Z

    move-result v0

    return v0
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 307
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 308
    .local v0, "action":I
    if-nez v0, :cond_0

    .line 310
    invoke-direct {p0}, Lio/appium/android/apis/graphics/TouchPaint$PaintView;->advanceColor()V

    .line 313
    :cond_0
    if-eqz v0, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 314
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v1

    .line 315
    .local v1, "N":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getXPrecision()F

    move-result v2

    const/high16 v3, 0x41200000    # 10.0f

    mul-float v2, v2, v3

    .line 316
    .local v2, "scaleX":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getYPrecision()F

    move-result v4

    mul-float v4, v4, v3

    .line 317
    .local v4, "scaleY":F
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_2

    .line 318
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getHistoricalX(I)F

    move-result v5

    mul-float v5, v5, v2

    .line 319
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getHistoricalY(I)F

    move-result v6

    mul-float v6, v6, v4

    .line 318
    invoke-direct {p0, v5, v6}, Lio/appium/android/apis/graphics/TouchPaint$PaintView;->moveTrackball(FF)V

    .line 317
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 321
    .end local v3    # "i":I
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    mul-float v3, v3, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    mul-float v5, v5, v4

    invoke-direct {p0, v3, v5}, Lio/appium/android/apis/graphics/TouchPaint$PaintView;->moveTrackball(FF)V

    .line 323
    .end local v1    # "N":I
    .end local v2    # "scaleX":F
    .end local v4    # "scaleY":F
    :cond_3
    const/4 v1, 0x1

    return v1
.end method
