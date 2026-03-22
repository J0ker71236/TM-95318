.class Lio/appium/android/apis/graphics/WindowSurface$DrawingThread;
.super Ljava/lang/Thread;
.source "WindowSurface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/appium/android/apis/graphics/WindowSurface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DrawingThread"
.end annotation


# static fields
.field static final NUM_OLD:I = 0x64


# instance fields
.field mActive:Z

.field final mBackground:Landroid/graphics/Paint;

.field mBrightLine:I

.field final mColor:Lio/appium/android/apis/graphics/WindowSurface$MovingPoint;

.field final mForeground:Landroid/graphics/Paint;

.field mInitialized:Z

.field mLineWidth:I

.field mMaxStep:F

.field mMinStep:F

.field mNumOld:I

.field final mOld:[F

.field final mOldColor:[I

.field final mPoint1:Lio/appium/android/apis/graphics/WindowSurface$MovingPoint;

.field final mPoint2:Lio/appium/android/apis/graphics/WindowSurface$MovingPoint;

.field mQuit:Z

.field mRunning:Z

.field mSurface:Landroid/view/SurfaceHolder;

.field final synthetic this$0:Lio/appium/android/apis/graphics/WindowSurface;


# direct methods
.method constructor <init>(Lio/appium/android/apis/graphics/WindowSurface;)V
    .locals 2
    .param p1, "this$0"    # Lio/appium/android/apis/graphics/WindowSurface;

    .line 138
    iput-object p1, p0, Lio/appium/android/apis/graphics/WindowSurface$DrawingThread;->this$0:Lio/appium/android/apis/graphics/WindowSurface;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 151
    new-instance v0, Lio/appium/android/apis/graphics/WindowSurface$MovingPoint;

    invoke-direct {v0}, Lio/appium/android/apis/graphics/WindowSurface$MovingPoint;-><init>()V

    iput-object v0, p0, Lio/appium/android/apis/graphics/WindowSurface$DrawingThread;->mPoint1:Lio/appium/android/apis/graphics/WindowSurface$MovingPoint;

    .line 152
    new-instance v0, Lio/appium/android/apis/graphics/WindowSurface$MovingPoint;

    invoke-direct {v0}, Lio/appium/android/apis/graphics/WindowSurface$MovingPoint;-><init>()V

    iput-object v0, p0, Lio/appium/android/apis/graphics/WindowSurface$DrawingThread;->mPoint2:Lio/appium/android/apis/graphics/WindowSurface$MovingPoint;

    .line 155
    const/4 v0, 0x0

    iput v0, p0, Lio/appium/android/apis/graphics/WindowSurface$DrawingThread;->mNumOld:I

    .line 156
    const/16 v1, 0x190

    new-array v1, v1, [F

    iput-object v1, p0, Lio/appium/android/apis/graphics/WindowSurface$DrawingThread;->mOld:[F

    .line 157
    const/16 v1, 0x64

    new-array v1, v1, [I

    iput-object v1, p0, Lio/appium/android/apis/graphics/WindowSurface$DrawingThread;->mOldColor:[I

    .line 158
    iput v0, p0, Lio/appium/android/apis/graphics/WindowSurface$DrawingThread;->mBrightLine:I

    .line 161
    new-instance v0, Lio/appium/android/apis/graphics/WindowSurface$MovingPoint;

    invoke-direct {v0}, Lio/appium/android/apis/graphics/WindowSurface$MovingPoint;-><init>()V

    iput-object v0, p0, Lio/appium/android/apis/graphics/WindowSurface$DrawingThread;->mColor:Lio/appium/android/apis/graphics/WindowSurface$MovingPoint;

    .line 163
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lio/appium/android/apis/graphics/WindowSurface$DrawingThread;->mBackground:Landroid/graphics/Paint;

    .line 164
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lio/appium/android/apis/graphics/WindowSurface$DrawingThread;->mForeground:Landroid/graphics/Paint;

    return-void
.end method


# virtual methods
.method makeGreen(I)I
    .locals 2
    .param p1, "index"    # I

    .line 167
    iget v0, p0, Lio/appium/android/apis/graphics/WindowSurface$DrawingThread;->mBrightLine:I

    sub-int/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 168
    .local v0, "dist":I
    const/16 v1, 0xa

    if-le v0, v1, :cond_0

    const/4 v1, 0x0

    return v1

    .line 169
    :cond_0
    mul-int/lit8 v1, v0, 0x19

    rsub-int v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    return v1
.end method

.method public run()V
    .locals 18

    .line 174
    move-object/from16 v1, p0

    iget-object v0, v1, Lio/appium/android/apis/graphics/WindowSurface$DrawingThread;->this$0:Lio/appium/android/apis/graphics/WindowSurface;

    invoke-virtual {v0}, Lio/appium/android/apis/graphics/WindowSurface;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    float-to-double v2, v0

    const-wide/high16 v4, 0x3ff8000000000000L    # 1.5

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v2, v2, v4

    double-to-int v0, v2

    iput v0, v1, Lio/appium/android/apis/graphics/WindowSurface$DrawingThread;->mLineWidth:I

    .line 175
    iget v0, v1, Lio/appium/android/apis/graphics/WindowSurface$DrawingThread;->mLineWidth:I

    const/4 v2, 0x1

    if-ge v0, v2, :cond_0

    iput v2, v1, Lio/appium/android/apis/graphics/WindowSurface$DrawingThread;->mLineWidth:I

    .line 176
    :cond_0
    iget v0, v1, Lio/appium/android/apis/graphics/WindowSurface$DrawingThread;->mLineWidth:I

    const/4 v3, 0x2

    mul-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iput v0, v1, Lio/appium/android/apis/graphics/WindowSurface$DrawingThread;->mMinStep:F

    .line 177
    iget v0, v1, Lio/appium/android/apis/graphics/WindowSurface$DrawingThread;->mMinStep:F

    const/high16 v4, 0x40400000    # 3.0f

    mul-float v0, v0, v4

    iput v0, v1, Lio/appium/android/apis/graphics/WindowSurface$DrawingThread;->mMaxStep:F

    .line 179
    iget-object v0, v1, Lio/appium/android/apis/graphics/WindowSurface$DrawingThread;->mBackground:Landroid/graphics/Paint;

    const/high16 v5, -0x1000000

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 180
    iget-object v0, v1, Lio/appium/android/apis/graphics/WindowSurface$DrawingThread;->mForeground:Landroid/graphics/Paint;

    const v6, -0xff0001

    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 181
    iget-object v0, v1, Lio/appium/android/apis/graphics/WindowSurface$DrawingThread;->mForeground:Landroid/graphics/Paint;

    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 182
    iget-object v0, v1, Lio/appium/android/apis/graphics/WindowSurface$DrawingThread;->mForeground:Landroid/graphics/Paint;

    iget v7, v1, Lio/appium/android/apis/graphics/WindowSurface$DrawingThread;->mLineWidth:I

    int-to-float v7, v7

    invoke-virtual {v0, v7}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 188
    :goto_0
    monitor-enter p0

    .line 189
    :goto_1
    :try_start_0
    iget-object v0, v1, Lio/appium/android/apis/graphics/WindowSurface$DrawingThread;->mSurface:Landroid/view/SurfaceHolder;

    if-eqz v0, :cond_b

    iget-boolean v0, v1, Lio/appium/android/apis/graphics/WindowSurface$DrawingThread;->mRunning:Z

    if-nez v0, :cond_1

    goto/16 :goto_4

    .line 203
    :cond_1
    iget-boolean v0, v1, Lio/appium/android/apis/graphics/WindowSurface$DrawingThread;->mActive:Z

    if-nez v0, :cond_2

    .line 204
    iput-boolean v2, v1, Lio/appium/android/apis/graphics/WindowSurface$DrawingThread;->mActive:Z

    .line 205
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->notify()V

    .line 209
    :cond_2
    iget-object v0, v1, Lio/appium/android/apis/graphics/WindowSurface$DrawingThread;->mSurface:Landroid/view/SurfaceHolder;

    invoke-interface {v0}, Landroid/view/SurfaceHolder;->lockCanvas()Landroid/graphics/Canvas;

    move-result-object v0

    .line 210
    .local v0, "canvas":Landroid/graphics/Canvas;
    if-nez v0, :cond_3

    .line 211
    const-string v7, "WindowSurface"

    const-string v8, "Failure locking canvas"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    monitor-exit p0

    goto :goto_0

    .line 216
    :cond_3
    iget-boolean v7, v1, Lio/appium/android/apis/graphics/WindowSurface$DrawingThread;->mInitialized:Z

    const/high16 v8, 0x3f800000    # 1.0f

    const/16 v9, 0x7f

    if-nez v7, :cond_4

    .line 217
    iput-boolean v2, v1, Lio/appium/android/apis/graphics/WindowSurface$DrawingThread;->mInitialized:Z

    .line 218
    iget-object v7, v1, Lio/appium/android/apis/graphics/WindowSurface$DrawingThread;->mPoint1:Lio/appium/android/apis/graphics/WindowSurface$MovingPoint;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->getWidth()I

    move-result v10

    invoke-virtual {v0}, Landroid/graphics/Canvas;->getHeight()I

    move-result v11

    iget v12, v1, Lio/appium/android/apis/graphics/WindowSurface$DrawingThread;->mMinStep:F

    invoke-virtual {v7, v10, v11, v12}, Lio/appium/android/apis/graphics/WindowSurface$MovingPoint;->init(IIF)V

    .line 219
    iget-object v7, v1, Lio/appium/android/apis/graphics/WindowSurface$DrawingThread;->mPoint2:Lio/appium/android/apis/graphics/WindowSurface$MovingPoint;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->getWidth()I

    move-result v10

    invoke-virtual {v0}, Landroid/graphics/Canvas;->getHeight()I

    move-result v11

    iget v12, v1, Lio/appium/android/apis/graphics/WindowSurface$DrawingThread;->mMinStep:F

    invoke-virtual {v7, v10, v11, v12}, Lio/appium/android/apis/graphics/WindowSurface$MovingPoint;->init(IIF)V

    .line 220
    iget-object v7, v1, Lio/appium/android/apis/graphics/WindowSurface$DrawingThread;->mColor:Lio/appium/android/apis/graphics/WindowSurface$MovingPoint;

    invoke-virtual {v7, v9, v9, v8}, Lio/appium/android/apis/graphics/WindowSurface$MovingPoint;->init(IIF)V

    goto :goto_2

    .line 222
    :cond_4
    iget-object v7, v1, Lio/appium/android/apis/graphics/WindowSurface$DrawingThread;->mPoint1:Lio/appium/android/apis/graphics/WindowSurface$MovingPoint;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->getWidth()I

    move-result v10

    invoke-virtual {v0}, Landroid/graphics/Canvas;->getHeight()I

    move-result v11

    iget v12, v1, Lio/appium/android/apis/graphics/WindowSurface$DrawingThread;->mMinStep:F

    iget v13, v1, Lio/appium/android/apis/graphics/WindowSurface$DrawingThread;->mMaxStep:F

    invoke-virtual {v7, v10, v11, v12, v13}, Lio/appium/android/apis/graphics/WindowSurface$MovingPoint;->step(IIFF)V

    .line 224
    iget-object v7, v1, Lio/appium/android/apis/graphics/WindowSurface$DrawingThread;->mPoint2:Lio/appium/android/apis/graphics/WindowSurface$MovingPoint;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->getWidth()I

    move-result v10

    invoke-virtual {v0}, Landroid/graphics/Canvas;->getHeight()I

    move-result v11

    iget v12, v1, Lio/appium/android/apis/graphics/WindowSurface$DrawingThread;->mMinStep:F

    iget v13, v1, Lio/appium/android/apis/graphics/WindowSurface$DrawingThread;->mMaxStep:F

    invoke-virtual {v7, v10, v11, v12, v13}, Lio/appium/android/apis/graphics/WindowSurface$MovingPoint;->step(IIFF)V

    .line 226
    iget-object v7, v1, Lio/appium/android/apis/graphics/WindowSurface$DrawingThread;->mColor:Lio/appium/android/apis/graphics/WindowSurface$MovingPoint;

    invoke-virtual {v7, v9, v9, v8, v4}, Lio/appium/android/apis/graphics/WindowSurface$MovingPoint;->step(IIFF)V

    .line 228
    :goto_2
    iget v7, v1, Lio/appium/android/apis/graphics/WindowSurface$DrawingThread;->mBrightLine:I

    add-int/2addr v7, v3

    iput v7, v1, Lio/appium/android/apis/graphics/WindowSurface$DrawingThread;->mBrightLine:I

    .line 229
    iget v7, v1, Lio/appium/android/apis/graphics/WindowSurface$DrawingThread;->mBrightLine:I

    const/16 v8, 0xc8

    const/4 v13, -0x2

    if-le v7, v8, :cond_5

    .line 230
    iput v13, v1, Lio/appium/android/apis/graphics/WindowSurface$DrawingThread;->mBrightLine:I

    .line 234
    :cond_5
    iget-object v7, v1, Lio/appium/android/apis/graphics/WindowSurface$DrawingThread;->mBackground:Landroid/graphics/Paint;

    invoke-virtual {v7}, Landroid/graphics/Paint;->getColor()I

    move-result v7

    invoke-virtual {v0, v7}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 237
    iget v7, v1, Lio/appium/android/apis/graphics/WindowSurface$DrawingThread;->mNumOld:I

    sub-int/2addr v7, v2

    move v14, v7

    .local v14, "i":I
    :goto_3
    const/16 v15, 0x64

    const/16 v7, 0xff

    if-ltz v14, :cond_6

    .line 238
    iget-object v8, v1, Lio/appium/android/apis/graphics/WindowSurface$DrawingThread;->mForeground:Landroid/graphics/Paint;

    iget-object v9, v1, Lio/appium/android/apis/graphics/WindowSurface$DrawingThread;->mOldColor:[I

    aget v9, v9, v14

    invoke-virtual {v1, v14}, Lio/appium/android/apis/graphics/WindowSurface$DrawingThread;->makeGreen(I)I

    move-result v10

    or-int/2addr v9, v10

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setColor(I)V

    .line 239
    iget-object v8, v1, Lio/appium/android/apis/graphics/WindowSurface$DrawingThread;->mForeground:Landroid/graphics/Paint;

    rsub-int/lit8 v9, v14, 0x64

    mul-int/lit16 v9, v9, 0xff

    div-int/2addr v9, v15

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 240
    mul-int/lit8 v15, v14, 0x4

    .line 241
    .local v15, "p":I
    iget-object v7, v1, Lio/appium/android/apis/graphics/WindowSurface$DrawingThread;->mOld:[F

    aget v8, v7, v15

    iget-object v7, v1, Lio/appium/android/apis/graphics/WindowSurface$DrawingThread;->mOld:[F

    add-int/lit8 v9, v15, 0x1

    aget v9, v7, v9

    iget-object v7, v1, Lio/appium/android/apis/graphics/WindowSurface$DrawingThread;->mOld:[F

    add-int/lit8 v10, v15, 0x2

    aget v10, v7, v10

    iget-object v7, v1, Lio/appium/android/apis/graphics/WindowSurface$DrawingThread;->mOld:[F

    add-int/lit8 v11, v15, 0x3

    aget v11, v7, v11

    iget-object v12, v1, Lio/appium/android/apis/graphics/WindowSurface$DrawingThread;->mForeground:Landroid/graphics/Paint;

    move-object v7, v0

    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 237
    .end local v15    # "p":I
    add-int/lit8 v14, v14, -0x1

    goto :goto_3

    .line 245
    .end local v14    # "i":I
    :cond_6
    iget-object v8, v1, Lio/appium/android/apis/graphics/WindowSurface$DrawingThread;->mColor:Lio/appium/android/apis/graphics/WindowSurface$MovingPoint;

    iget v8, v8, Lio/appium/android/apis/graphics/WindowSurface$MovingPoint;->x:F

    float-to-int v8, v8

    add-int/lit16 v8, v8, 0x80

    .line 246
    .local v8, "red":I
    if-le v8, v7, :cond_7

    const/16 v8, 0xff

    :cond_7
    move v14, v8

    .line 247
    .end local v8    # "red":I
    .local v14, "red":I
    iget-object v8, v1, Lio/appium/android/apis/graphics/WindowSurface$DrawingThread;->mColor:Lio/appium/android/apis/graphics/WindowSurface$MovingPoint;

    iget v8, v8, Lio/appium/android/apis/graphics/WindowSurface$MovingPoint;->y:F

    float-to-int v8, v8

    add-int/lit16 v8, v8, 0x80

    .line 248
    .local v8, "blue":I
    if-le v8, v7, :cond_8

    const/16 v8, 0xff

    :cond_8
    move/from16 v16, v8

    .line 249
    .end local v8    # "blue":I
    .local v16, "blue":I
    shl-int/lit8 v7, v14, 0x10

    or-int/2addr v7, v5

    or-int v17, v7, v16

    .line 250
    .local v17, "color":I
    iget-object v7, v1, Lio/appium/android/apis/graphics/WindowSurface$DrawingThread;->mForeground:Landroid/graphics/Paint;

    invoke-virtual {v1, v13}, Lio/appium/android/apis/graphics/WindowSurface$DrawingThread;->makeGreen(I)I

    move-result v8

    or-int v8, v17, v8

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 251
    iget-object v7, v1, Lio/appium/android/apis/graphics/WindowSurface$DrawingThread;->mPoint1:Lio/appium/android/apis/graphics/WindowSurface$MovingPoint;

    iget v8, v7, Lio/appium/android/apis/graphics/WindowSurface$MovingPoint;->x:F

    iget-object v7, v1, Lio/appium/android/apis/graphics/WindowSurface$DrawingThread;->mPoint1:Lio/appium/android/apis/graphics/WindowSurface$MovingPoint;

    iget v9, v7, Lio/appium/android/apis/graphics/WindowSurface$MovingPoint;->y:F

    iget-object v7, v1, Lio/appium/android/apis/graphics/WindowSurface$DrawingThread;->mPoint2:Lio/appium/android/apis/graphics/WindowSurface$MovingPoint;

    iget v10, v7, Lio/appium/android/apis/graphics/WindowSurface$MovingPoint;->x:F

    iget-object v7, v1, Lio/appium/android/apis/graphics/WindowSurface$DrawingThread;->mPoint2:Lio/appium/android/apis/graphics/WindowSurface$MovingPoint;

    iget v11, v7, Lio/appium/android/apis/graphics/WindowSurface$MovingPoint;->y:F

    iget-object v12, v1, Lio/appium/android/apis/graphics/WindowSurface$DrawingThread;->mForeground:Landroid/graphics/Paint;

    move-object v7, v0

    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 254
    iget v7, v1, Lio/appium/android/apis/graphics/WindowSurface$DrawingThread;->mNumOld:I

    if-le v7, v2, :cond_9

    .line 255
    iget-object v7, v1, Lio/appium/android/apis/graphics/WindowSurface$DrawingThread;->mOld:[F

    iget-object v8, v1, Lio/appium/android/apis/graphics/WindowSurface$DrawingThread;->mOld:[F

    iget v9, v1, Lio/appium/android/apis/graphics/WindowSurface$DrawingThread;->mNumOld:I

    sub-int/2addr v9, v2

    const/4 v10, 0x4

    mul-int/lit8 v9, v9, 0x4

    invoke-static {v7, v6, v8, v10, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 256
    iget-object v7, v1, Lio/appium/android/apis/graphics/WindowSurface$DrawingThread;->mOldColor:[I

    iget-object v8, v1, Lio/appium/android/apis/graphics/WindowSurface$DrawingThread;->mOldColor:[I

    iget v9, v1, Lio/appium/android/apis/graphics/WindowSurface$DrawingThread;->mNumOld:I

    sub-int/2addr v9, v2

    invoke-static {v7, v6, v8, v2, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 258
    :cond_9
    iget v7, v1, Lio/appium/android/apis/graphics/WindowSurface$DrawingThread;->mNumOld:I

    if-ge v7, v15, :cond_a

    iget v7, v1, Lio/appium/android/apis/graphics/WindowSurface$DrawingThread;->mNumOld:I

    add-int/2addr v7, v2

    iput v7, v1, Lio/appium/android/apis/graphics/WindowSurface$DrawingThread;->mNumOld:I

    .line 259
    :cond_a
    iget-object v7, v1, Lio/appium/android/apis/graphics/WindowSurface$DrawingThread;->mOld:[F

    iget-object v8, v1, Lio/appium/android/apis/graphics/WindowSurface$DrawingThread;->mPoint1:Lio/appium/android/apis/graphics/WindowSurface$MovingPoint;

    iget v8, v8, Lio/appium/android/apis/graphics/WindowSurface$MovingPoint;->x:F

    aput v8, v7, v6

    .line 260
    iget-object v7, v1, Lio/appium/android/apis/graphics/WindowSurface$DrawingThread;->mOld:[F

    iget-object v8, v1, Lio/appium/android/apis/graphics/WindowSurface$DrawingThread;->mPoint1:Lio/appium/android/apis/graphics/WindowSurface$MovingPoint;

    iget v8, v8, Lio/appium/android/apis/graphics/WindowSurface$MovingPoint;->y:F

    aput v8, v7, v2

    .line 261
    iget-object v7, v1, Lio/appium/android/apis/graphics/WindowSurface$DrawingThread;->mOld:[F

    iget-object v8, v1, Lio/appium/android/apis/graphics/WindowSurface$DrawingThread;->mPoint2:Lio/appium/android/apis/graphics/WindowSurface$MovingPoint;

    iget v8, v8, Lio/appium/android/apis/graphics/WindowSurface$MovingPoint;->x:F

    aput v8, v7, v3

    .line 262
    iget-object v7, v1, Lio/appium/android/apis/graphics/WindowSurface$DrawingThread;->mOld:[F

    iget-object v8, v1, Lio/appium/android/apis/graphics/WindowSurface$DrawingThread;->mPoint2:Lio/appium/android/apis/graphics/WindowSurface$MovingPoint;

    iget v8, v8, Lio/appium/android/apis/graphics/WindowSurface$MovingPoint;->y:F

    const/4 v9, 0x3

    aput v8, v7, v9

    .line 263
    iget-object v7, v1, Lio/appium/android/apis/graphics/WindowSurface$DrawingThread;->mOldColor:[I

    aput v17, v7, v6

    .line 266
    iget-object v7, v1, Lio/appium/android/apis/graphics/WindowSurface$DrawingThread;->mSurface:Landroid/view/SurfaceHolder;

    invoke-interface {v7, v0}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    .line 267
    .end local v0    # "canvas":Landroid/graphics/Canvas;
    .end local v14    # "red":I
    .end local v16    # "blue":I
    .end local v17    # "color":I
    monitor-exit p0

    goto/16 :goto_0

    .line 190
    :cond_b
    :goto_4
    iget-boolean v0, v1, Lio/appium/android/apis/graphics/WindowSurface$DrawingThread;->mActive:Z

    if-eqz v0, :cond_c

    .line 191
    iput-boolean v6, v1, Lio/appium/android/apis/graphics/WindowSurface$DrawingThread;->mActive:Z

    .line 192
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->notify()V

    .line 194
    :cond_c
    iget-boolean v0, v1, Lio/appium/android/apis/graphics/WindowSurface$DrawingThread;->mQuit:Z

    if-eqz v0, :cond_d

    .line 195
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    .line 198
    :cond_d
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 200
    :goto_5
    goto/16 :goto_1

    .line 199
    :catch_0
    move-exception v0

    goto :goto_5

    .line 267
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    return-void
.end method
