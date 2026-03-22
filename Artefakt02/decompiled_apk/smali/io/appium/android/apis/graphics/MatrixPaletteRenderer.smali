.class public Lio/appium/android/apis/graphics/MatrixPaletteRenderer;
.super Ljava/lang/Object;
.source "MatrixPaletteRenderer.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/appium/android/apis/graphics/MatrixPaletteRenderer$Grid;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mGrid:Lio/appium/android/apis/graphics/MatrixPaletteRenderer$Grid;

.field private mTextureID:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 230
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 231
    iput-object p1, p0, Lio/appium/android/apis/graphics/MatrixPaletteRenderer;->mContext:Landroid/content/Context;

    .line 232
    return-void
.end method

.method private generateWeightedGrid(Ljavax/microedition/khronos/opengles/GL;)Lio/appium/android/apis/graphics/MatrixPaletteRenderer$Grid;
    .locals 29
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL;

    .line 384
    const/16 v0, 0x14

    .line 385
    .local v0, "uSteps":I
    const/16 v1, 0x14

    .line 387
    .local v1, "vSteps":I
    const/high16 v2, 0x3e800000    # 0.25f

    .line 388
    .local v2, "radius":F
    const/high16 v3, 0x40000000    # 2.0f

    .line 389
    .local v3, "height":F
    new-instance v4, Lio/appium/android/apis/graphics/MatrixPaletteRenderer$Grid;

    const/16 v5, 0x15

    invoke-direct {v4, v5, v5}, Lio/appium/android/apis/graphics/MatrixPaletteRenderer$Grid;-><init>(II)V

    .line 391
    .local v4, "grid":Lio/appium/android/apis/graphics/MatrixPaletteRenderer$Grid;
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_0
    const/16 v15, 0x14

    if-gt v5, v15, :cond_1

    .line 392
    const/4 v6, 0x0

    move v14, v6

    .local v14, "i":I
    :goto_1
    if-gt v14, v15, :cond_0

    .line 393
    const-wide v6, 0x401921fb54442d18L    # 6.283185307179586

    int-to-double v8, v14

    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v8, v8, v6

    const-wide/high16 v6, 0x4034000000000000L    # 20.0

    div-double v18, v8, v6

    .line 394
    .local v18, "angle":D
    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    double-to-float v6, v6

    mul-float v20, v2, v6

    .line 395
    .local v20, "x":F
    int-to-float v6, v5

    const/high16 v7, 0x41a00000    # 20.0f

    div-float/2addr v6, v7

    const/high16 v8, 0x3f000000    # 0.5f

    sub-float/2addr v6, v8

    mul-float v21, v3, v6

    .line 396
    .local v21, "y":F
    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    double-to-float v6, v8

    mul-float v22, v2, v6

    .line 397
    .local v22, "z":F
    int-to-float v6, v14

    const/high16 v8, -0x3f800000    # -4.0f

    mul-float v6, v6, v8

    div-float v23, v6, v7

    .line 398
    .local v23, "u":F
    int-to-float v6, v5

    mul-float v6, v6, v8

    div-float v24, v6, v7

    .line 399
    .local v24, "v":F
    int-to-float v6, v5

    div-float v25, v6, v7

    .line 400
    .local v25, "w0":F
    const/high16 v6, 0x3f800000    # 1.0f

    sub-float v26, v6, v25

    .line 401
    .local v26, "w1":F
    const/16 v16, 0x0

    const/16 v17, 0x1

    move-object v6, v4

    move v7, v14

    move v8, v5

    move/from16 v9, v20

    move/from16 v10, v21

    move/from16 v11, v22

    move/from16 v12, v23

    move/from16 v13, v24

    move/from16 v27, v14

    .end local v14    # "i":I
    .local v27, "i":I
    move/from16 v14, v25

    const/16 v28, 0x14

    move/from16 v15, v26

    invoke-virtual/range {v6 .. v17}, Lio/appium/android/apis/graphics/MatrixPaletteRenderer$Grid;->set(IIFFFFFFFII)V

    .line 392
    .end local v18    # "angle":D
    .end local v20    # "x":F
    .end local v21    # "y":F
    .end local v22    # "z":F
    .end local v23    # "u":F
    .end local v24    # "v":F
    .end local v25    # "w0":F
    .end local v26    # "w1":F
    add-int/lit8 v14, v27, 0x1

    const/16 v15, 0x14

    goto :goto_1

    .end local v27    # "i":I
    .restart local v14    # "i":I
    :cond_0
    move/from16 v27, v14

    .line 391
    .end local v14    # "i":I
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 405
    .end local v5    # "j":I
    :cond_1
    move-object/from16 v5, p1

    invoke-virtual {v4, v5}, Lio/appium/android/apis/graphics/MatrixPaletteRenderer$Grid;->createBufferObjects(Ljavax/microedition/khronos/opengles/GL;)V

    .line 406
    return-object v4
.end method


# virtual methods
.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 11
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;

    .line 304
    const/16 v0, 0xbd0

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    .line 306
    const/16 v0, 0x2300

    const/16 v1, 0x2200

    const/16 v2, 0x2100

    invoke-interface {p1, v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glTexEnvx(III)V

    .line 315
    const/16 v0, 0x4100

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glClear(I)V

    .line 317
    const/16 v0, 0xb71

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    .line 319
    const/16 v0, 0xb44

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    .line 325
    const/16 v0, 0x1700

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glMatrixMode(I)V

    .line 326
    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    .line 328
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/high16 v4, -0x3f600000    # -5.0f

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v10, 0x0

    move-object v1, p1

    invoke-static/range {v1 .. v10}, Landroid/opengl/GLU;->gluLookAt(Ljavax/microedition/khronos/opengles/GL10;FFFFFFFFF)V

    .line 330
    const v0, 0x8074

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glEnableClientState(I)V

    .line 331
    const v0, 0x8078

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glEnableClientState(I)V

    .line 333
    const v0, 0x84c0

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glActiveTexture(I)V

    .line 334
    iget v0, p0, Lio/appium/android/apis/graphics/MatrixPaletteRenderer;->mTextureID:I

    const/16 v1, 0xde1

    invoke-interface {p1, v1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glBindTexture(II)V

    .line 335
    const/16 v0, 0x2901

    const/16 v2, 0x2802

    invoke-interface {p1, v1, v2, v0}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterx(III)V

    .line 337
    const/16 v2, 0x2803

    invoke-interface {p1, v1, v2, v0}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterx(III)V

    .line 340
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0xfa0

    rem-long/2addr v0, v2

    .line 343
    .local v0, "time":J
    long-to-double v2, v0

    const-wide v4, 0x40af400000000000L    # 4000.0

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v2, v4

    .line 344
    .local v2, "animationUnit":D
    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    mul-double v4, v4, v2

    const-wide v6, 0x400921fb54442d18L    # Math.PI

    mul-double v4, v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    double-to-float v4, v4

    .line 345
    .local v4, "unitAngle":F
    const/high16 v5, 0x43070000    # 135.0f

    mul-float v5, v5, v4

    .line 347
    .local v5, "angle":F
    const v6, 0x8840

    invoke-interface {p1, v6}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    .line 348
    invoke-interface {p1, v6}, Ljavax/microedition/khronos/opengles/GL10;->glMatrixMode(I)V

    .line 350
    move-object v7, p1

    check-cast v7, Ljavax/microedition/khronos/opengles/GL11Ext;

    .line 353
    .local v7, "gl11Ext":Ljavax/microedition/khronos/opengles/GL11Ext;
    const/4 v8, 0x0

    invoke-interface {v7, v8}, Ljavax/microedition/khronos/opengles/GL11Ext;->glCurrentPaletteMatrixOES(I)V

    .line 354
    invoke-interface {v7}, Ljavax/microedition/khronos/opengles/GL11Ext;->glLoadPaletteFromModelViewMatrixOES()V

    .line 358
    const/4 v8, 0x0

    invoke-interface {p1, v5, v8, v8, v9}, Ljavax/microedition/khronos/opengles/GL10;->glRotatef(FFFF)V

    .line 360
    const/4 v8, 0x1

    invoke-interface {v7, v8}, Ljavax/microedition/khronos/opengles/GL11Ext;->glCurrentPaletteMatrixOES(I)V

    .line 361
    invoke-interface {v7}, Ljavax/microedition/khronos/opengles/GL11Ext;->glLoadPaletteFromModelViewMatrixOES()V

    .line 363
    iget-object v8, p0, Lio/appium/android/apis/graphics/MatrixPaletteRenderer;->mGrid:Lio/appium/android/apis/graphics/MatrixPaletteRenderer$Grid;

    invoke-virtual {v8, p1}, Lio/appium/android/apis/graphics/MatrixPaletteRenderer$Grid;->draw(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 365
    invoke-interface {p1, v6}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    .line 366
    return-void
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 9
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2, "w"    # I
    .param p3, "h"    # I

    .line 369
    const/4 v0, 0x0

    invoke-interface {p1, v0, v0, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glViewport(IIII)V

    .line 377
    int-to-float v0, p2

    int-to-float v1, p3

    div-float/2addr v0, v1

    .line 378
    .local v0, "ratio":F
    const/16 v1, 0x1701

    invoke-interface {p1, v1}, Ljavax/microedition/khronos/opengles/GL10;->glMatrixMode(I)V

    .line 379
    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    .line 380
    neg-float v3, v0

    const/high16 v5, -0x40800000    # -1.0f

    const/high16 v6, 0x3f800000    # 1.0f

    const/high16 v7, 0x40400000    # 3.0f

    const/high16 v8, 0x40e00000    # 7.0f

    move-object v2, p1

    move v4, v0

    invoke-interface/range {v2 .. v8}, Ljavax/microedition/khronos/opengles/GL10;->glFrustumf(FFFFFF)V

    .line 381
    return-void
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 6
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2, "config"    # Ljavax/microedition/khronos/egl/EGLConfig;

    .line 240
    const/16 v0, 0xbd0

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    .line 246
    const/16 v0, 0xc50

    const/16 v1, 0x1101

    invoke-interface {p1, v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glHint(II)V

    .line 249
    const/high16 v0, 0x3f000000    # 0.5f

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-interface {p1, v0, v0, v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glClearColor(FFFF)V

    .line 250
    const/16 v0, 0x1d01

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glShadeModel(I)V

    .line 251
    const/16 v0, 0xb71

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    .line 252
    const/16 v0, 0xde1

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    .line 259
    const/4 v1, 0x1

    new-array v2, v1, [I

    .line 260
    .local v2, "textures":[I
    const/4 v3, 0x0

    invoke-interface {p1, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glGenTextures(I[II)V

    .line 262
    aget v1, v2, v3

    iput v1, p0, Lio/appium/android/apis/graphics/MatrixPaletteRenderer;->mTextureID:I

    .line 263
    iget v1, p0, Lio/appium/android/apis/graphics/MatrixPaletteRenderer;->mTextureID:I

    invoke-interface {p1, v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glBindTexture(II)V

    .line 265
    const/16 v1, 0x2801

    const/high16 v4, 0x46180000    # 9728.0f

    invoke-interface {p1, v0, v1, v4}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterf(IIF)V

    .line 267
    const/16 v1, 0x2800

    const v4, 0x46180400    # 9729.0f

    invoke-interface {p1, v0, v1, v4}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterf(IIF)V

    .line 271
    const v1, 0x47012f00    # 33071.0f

    const/16 v4, 0x2802

    invoke-interface {p1, v0, v4, v1}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterf(IIF)V

    .line 273
    const/16 v4, 0x2803

    invoke-interface {p1, v0, v4, v1}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterf(IIF)V

    .line 276
    const/16 v1, 0x2300

    const/16 v4, 0x2200

    const v5, 0x45f00800    # 7681.0f

    invoke-interface {p1, v1, v4, v5}, Ljavax/microedition/khronos/opengles/GL10;->glTexEnvf(IIF)V

    .line 279
    iget-object v1, p0, Lio/appium/android/apis/graphics/MatrixPaletteRenderer;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 280
    const v4, 0x7f0d0001

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v1

    .line 283
    .local v1, "is":Ljava/io/InputStream;
    :try_start_0
    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 286
    .local v4, "bitmap":Landroid/graphics/Bitmap;
    :try_start_1
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 289
    goto :goto_0

    .line 287
    :catch_0
    move-exception v5

    .line 290
    nop

    .line 292
    :goto_0
    invoke-static {v0, v3, v4, v3}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    .line 293
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    .line 295
    invoke-direct {p0, p1}, Lio/appium/android/apis/graphics/MatrixPaletteRenderer;->generateWeightedGrid(Ljavax/microedition/khronos/opengles/GL;)Lio/appium/android/apis/graphics/MatrixPaletteRenderer$Grid;

    move-result-object v0

    iput-object v0, p0, Lio/appium/android/apis/graphics/MatrixPaletteRenderer;->mGrid:Lio/appium/android/apis/graphics/MatrixPaletteRenderer$Grid;

    .line 296
    return-void

    .line 285
    .end local v4    # "bitmap":Landroid/graphics/Bitmap;
    :catchall_0
    move-exception v0

    .line 286
    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 289
    goto :goto_1

    .line 287
    :catch_1
    move-exception v3

    .line 289
    :goto_1
    throw v0
.end method
