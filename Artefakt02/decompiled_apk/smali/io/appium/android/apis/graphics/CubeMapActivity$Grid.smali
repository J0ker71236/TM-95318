.class Lio/appium/android/apis/graphics/CubeMapActivity$Grid;
.super Ljava/lang/Object;
.source "CubeMapActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/appium/android/apis/graphics/CubeMapActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Grid"
.end annotation


# static fields
.field static final CHAR_SIZE:I = 0x2

.field static final FLOAT_SIZE:I = 0x4

.field static final VERTEX_NORMAL_BUFFER_INDEX_OFFSET:I = 0x3

.field static final VERTEX_SIZE:I = 0x18


# instance fields
.field private mElementBufferObjectId:I

.field private mH:I

.field private mIndexBuffer:Ljava/nio/CharBuffer;

.field private mIndexCount:I

.field private mVertexBuffer:Ljava/nio/FloatBuffer;

.field private mVertexBufferObjectId:I

.field private mVertexByteBuffer:Ljava/nio/ByteBuffer;

.field private mW:I


# direct methods
.method public constructor <init>(II)V
    .locals 16
    .param p1, "w"    # I
    .param p2, "h"    # I

    .line 257
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 258
    if-ltz v1, :cond_4

    const/high16 v3, 0x10000

    if-ge v1, v3, :cond_4

    .line 261
    if-ltz v2, :cond_3

    if-ge v2, v3, :cond_3

    .line 264
    mul-int v4, v1, v2

    if-ge v4, v3, :cond_2

    .line 268
    iput v1, v0, Lio/appium/android/apis/graphics/CubeMapActivity$Grid;->mW:I

    .line 269
    iput v2, v0, Lio/appium/android/apis/graphics/CubeMapActivity$Grid;->mH:I

    .line 270
    mul-int v3, v1, v2

    .line 272
    .local v3, "size":I
    mul-int/lit8 v4, v3, 0x18

    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 273
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v4

    iput-object v4, v0, Lio/appium/android/apis/graphics/CubeMapActivity$Grid;->mVertexByteBuffer:Ljava/nio/ByteBuffer;

    .line 274
    iget-object v4, v0, Lio/appium/android/apis/graphics/CubeMapActivity$Grid;->mVertexByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v4

    iput-object v4, v0, Lio/appium/android/apis/graphics/CubeMapActivity$Grid;->mVertexBuffer:Ljava/nio/FloatBuffer;

    .line 276
    iget v4, v0, Lio/appium/android/apis/graphics/CubeMapActivity$Grid;->mW:I

    add-int/lit8 v4, v4, -0x1

    .line 277
    .local v4, "quadW":I
    iget v5, v0, Lio/appium/android/apis/graphics/CubeMapActivity$Grid;->mH:I

    add-int/lit8 v5, v5, -0x1

    .line 278
    .local v5, "quadH":I
    mul-int v6, v4, v5

    .line 279
    .local v6, "quadCount":I
    mul-int/lit8 v7, v6, 0x6

    .line 280
    .local v7, "indexCount":I
    iput v7, v0, Lio/appium/android/apis/graphics/CubeMapActivity$Grid;->mIndexCount:I

    .line 281
    mul-int/lit8 v8, v7, 0x2

    invoke-static {v8}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v8

    .line 282
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->asCharBuffer()Ljava/nio/CharBuffer;

    move-result-object v8

    iput-object v8, v0, Lio/appium/android/apis/graphics/CubeMapActivity$Grid;->mIndexBuffer:Ljava/nio/CharBuffer;

    .line 297
    const/4 v8, 0x0

    .line 298
    .local v8, "i":I
    const/4 v9, 0x0

    .local v9, "y":I
    :goto_0
    if-ge v9, v5, :cond_1

    .line 299
    const/4 v10, 0x0

    .local v10, "x":I
    :goto_1
    if-ge v10, v4, :cond_0

    .line 300
    iget v11, v0, Lio/appium/android/apis/graphics/CubeMapActivity$Grid;->mW:I

    mul-int v12, v9, v11

    add-int/2addr v12, v10

    int-to-char v12, v12

    .line 301
    .local v12, "a":C
    mul-int v13, v9, v11

    add-int/2addr v13, v10

    add-int/lit8 v13, v13, 0x1

    int-to-char v13, v13

    .line 302
    .local v13, "b":C
    add-int/lit8 v14, v9, 0x1

    mul-int v14, v14, v11

    add-int/2addr v14, v10

    int-to-char v14, v14

    .line 303
    .local v14, "c":C
    add-int/lit8 v15, v9, 0x1

    mul-int v15, v15, v11

    add-int/2addr v15, v10

    add-int/lit8 v15, v15, 0x1

    int-to-char v11, v15

    .line 305
    .local v11, "d":C
    iget-object v15, v0, Lio/appium/android/apis/graphics/CubeMapActivity$Grid;->mIndexBuffer:Ljava/nio/CharBuffer;

    add-int/lit8 v1, v8, 0x1

    .end local v8    # "i":I
    .local v1, "i":I
    invoke-virtual {v15, v8, v12}, Ljava/nio/CharBuffer;->put(IC)Ljava/nio/CharBuffer;

    .line 306
    iget-object v8, v0, Lio/appium/android/apis/graphics/CubeMapActivity$Grid;->mIndexBuffer:Ljava/nio/CharBuffer;

    add-int/lit8 v15, v1, 0x1

    .end local v1    # "i":I
    .local v15, "i":I
    invoke-virtual {v8, v1, v14}, Ljava/nio/CharBuffer;->put(IC)Ljava/nio/CharBuffer;

    .line 307
    iget-object v1, v0, Lio/appium/android/apis/graphics/CubeMapActivity$Grid;->mIndexBuffer:Ljava/nio/CharBuffer;

    add-int/lit8 v8, v15, 0x1

    .end local v15    # "i":I
    .restart local v8    # "i":I
    invoke-virtual {v1, v15, v13}, Ljava/nio/CharBuffer;->put(IC)Ljava/nio/CharBuffer;

    .line 309
    iget-object v1, v0, Lio/appium/android/apis/graphics/CubeMapActivity$Grid;->mIndexBuffer:Ljava/nio/CharBuffer;

    add-int/lit8 v15, v8, 0x1

    .end local v8    # "i":I
    .restart local v15    # "i":I
    invoke-virtual {v1, v8, v13}, Ljava/nio/CharBuffer;->put(IC)Ljava/nio/CharBuffer;

    .line 310
    iget-object v1, v0, Lio/appium/android/apis/graphics/CubeMapActivity$Grid;->mIndexBuffer:Ljava/nio/CharBuffer;

    add-int/lit8 v8, v15, 0x1

    .end local v15    # "i":I
    .restart local v8    # "i":I
    invoke-virtual {v1, v15, v14}, Ljava/nio/CharBuffer;->put(IC)Ljava/nio/CharBuffer;

    .line 311
    iget-object v1, v0, Lio/appium/android/apis/graphics/CubeMapActivity$Grid;->mIndexBuffer:Ljava/nio/CharBuffer;

    add-int/lit8 v15, v8, 0x1

    .end local v8    # "i":I
    .restart local v15    # "i":I
    invoke-virtual {v1, v8, v11}, Ljava/nio/CharBuffer;->put(IC)Ljava/nio/CharBuffer;

    .line 299
    .end local v11    # "d":C
    .end local v12    # "a":C
    .end local v13    # "b":C
    .end local v14    # "c":C
    add-int/lit8 v10, v10, 0x1

    move v8, v15

    move/from16 v1, p1

    goto :goto_1

    .line 298
    .end local v10    # "x":I
    .end local v15    # "i":I
    .restart local v8    # "i":I
    :cond_0
    add-int/lit8 v9, v9, 0x1

    move/from16 v1, p1

    goto :goto_0

    .line 315
    .end local v8    # "i":I
    .end local v9    # "y":I
    :cond_1
    return-void

    .line 265
    .end local v3    # "size":I
    .end local v4    # "quadW":I
    .end local v5    # "quadH":I
    .end local v6    # "quadCount":I
    .end local v7    # "indexCount":I
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v3, "w * h >= 65536"

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 262
    :cond_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v3, "h"

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 259
    :cond_4
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v3, "w"

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    return-void
.end method


# virtual methods
.method public createBufferObjects(Ljavax/microedition/khronos/opengles/GL;)V
    .locals 8
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL;

    .line 337
    invoke-static {p1}, Lio/appium/android/apis/graphics/CubeMapActivity;->checkGLError(Ljavax/microedition/khronos/opengles/GL;)V

    .line 339
    const/4 v0, 0x2

    new-array v1, v0, [I

    .line 340
    .local v1, "vboIds":[I
    move-object v2, p1

    check-cast v2, Ljavax/microedition/khronos/opengles/GL11;

    .line 341
    .local v2, "gl11":Ljavax/microedition/khronos/opengles/GL11;
    const/4 v3, 0x0

    invoke-interface {v2, v0, v1, v3}, Ljavax/microedition/khronos/opengles/GL11;->glGenBuffers(I[II)V

    .line 342
    aget v4, v1, v3

    iput v4, p0, Lio/appium/android/apis/graphics/CubeMapActivity$Grid;->mVertexBufferObjectId:I

    .line 343
    const/4 v4, 0x1

    aget v4, v1, v4

    iput v4, p0, Lio/appium/android/apis/graphics/CubeMapActivity$Grid;->mElementBufferObjectId:I

    .line 346
    iget v4, p0, Lio/appium/android/apis/graphics/CubeMapActivity$Grid;->mVertexBufferObjectId:I

    const v5, 0x8892

    invoke-interface {v2, v5, v4}, Ljavax/microedition/khronos/opengles/GL11;->glBindBuffer(II)V

    .line 347
    iget-object v4, p0, Lio/appium/android/apis/graphics/CubeMapActivity$Grid;->mVertexByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v4, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 348
    iget-object v4, p0, Lio/appium/android/apis/graphics/CubeMapActivity$Grid;->mVertexByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v4

    iget-object v6, p0, Lio/appium/android/apis/graphics/CubeMapActivity$Grid;->mVertexByteBuffer:Ljava/nio/ByteBuffer;

    const v7, 0x88e4

    invoke-interface {v2, v5, v4, v6, v7}, Ljavax/microedition/khronos/opengles/GL11;->glBufferData(IILjava/nio/Buffer;I)V

    .line 350
    iget v4, p0, Lio/appium/android/apis/graphics/CubeMapActivity$Grid;->mElementBufferObjectId:I

    const v5, 0x8893

    invoke-interface {v2, v5, v4}, Ljavax/microedition/khronos/opengles/GL11;->glBindBuffer(II)V

    .line 351
    iget-object v4, p0, Lio/appium/android/apis/graphics/CubeMapActivity$Grid;->mIndexBuffer:Ljava/nio/CharBuffer;

    invoke-virtual {v4, v3}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    .line 352
    iget-object v3, p0, Lio/appium/android/apis/graphics/CubeMapActivity$Grid;->mIndexBuffer:Ljava/nio/CharBuffer;

    invoke-virtual {v3}, Ljava/nio/CharBuffer;->capacity()I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    iget-object v0, p0, Lio/appium/android/apis/graphics/CubeMapActivity$Grid;->mIndexBuffer:Ljava/nio/CharBuffer;

    invoke-interface {v2, v5, v3, v0, v7}, Ljavax/microedition/khronos/opengles/GL11;->glBufferData(IILjava/nio/Buffer;I)V

    .line 355
    const/4 v0, 0x0

    iput-object v0, p0, Lio/appium/android/apis/graphics/CubeMapActivity$Grid;->mVertexBuffer:Ljava/nio/FloatBuffer;

    .line 356
    iput-object v0, p0, Lio/appium/android/apis/graphics/CubeMapActivity$Grid;->mVertexByteBuffer:Ljava/nio/ByteBuffer;

    .line 357
    iput-object v0, p0, Lio/appium/android/apis/graphics/CubeMapActivity$Grid;->mIndexBuffer:Ljava/nio/CharBuffer;

    .line 358
    invoke-static {p1}, Lio/appium/android/apis/graphics/CubeMapActivity;->checkGLError(Ljavax/microedition/khronos/opengles/GL;)V

    .line 359
    return-void
.end method

.method public draw(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 9
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;

    .line 362
    invoke-static {p1}, Lio/appium/android/apis/graphics/CubeMapActivity;->checkGLError(Ljavax/microedition/khronos/opengles/GL;)V

    .line 363
    move-object v0, p1

    check-cast v0, Ljavax/microedition/khronos/opengles/GL11;

    .line 365
    .local v0, "gl11":Ljavax/microedition/khronos/opengles/GL11;
    const v1, 0x8074

    invoke-interface {p1, v1}, Ljavax/microedition/khronos/opengles/GL10;->glEnableClientState(I)V

    .line 367
    iget v2, p0, Lio/appium/android/apis/graphics/CubeMapActivity$Grid;->mVertexBufferObjectId:I

    const v3, 0x8892

    invoke-interface {v0, v3, v2}, Ljavax/microedition/khronos/opengles/GL11;->glBindBuffer(II)V

    .line 368
    const/16 v2, 0x18

    const/16 v4, 0x1406

    const/4 v5, 0x0

    const/4 v6, 0x3

    invoke-interface {v0, v6, v4, v2, v5}, Ljavax/microedition/khronos/opengles/GL11;->glVertexPointer(IIII)V

    .line 370
    const v6, 0x8075

    invoke-interface {p1, v6}, Ljavax/microedition/khronos/opengles/GL10;->glEnableClientState(I)V

    .line 371
    const/16 v7, 0xc

    invoke-interface {v0, v4, v2, v7}, Ljavax/microedition/khronos/opengles/GL11;->glNormalPointer(III)V

    .line 373
    iget v2, p0, Lio/appium/android/apis/graphics/CubeMapActivity$Grid;->mElementBufferObjectId:I

    const v4, 0x8893

    invoke-interface {v0, v4, v2}, Ljavax/microedition/khronos/opengles/GL11;->glBindBuffer(II)V

    .line 374
    iget v2, p0, Lio/appium/android/apis/graphics/CubeMapActivity$Grid;->mIndexCount:I

    const/4 v7, 0x4

    const/16 v8, 0x1403

    invoke-interface {v0, v7, v2, v8, v5}, Ljavax/microedition/khronos/opengles/GL11;->glDrawElements(IIII)V

    .line 375
    invoke-interface {p1, v1}, Ljavax/microedition/khronos/opengles/GL10;->glDisableClientState(I)V

    .line 376
    invoke-interface {p1, v6}, Ljavax/microedition/khronos/opengles/GL10;->glDisableClientState(I)V

    .line 377
    invoke-interface {v0, v3, v5}, Ljavax/microedition/khronos/opengles/GL11;->glBindBuffer(II)V

    .line 378
    invoke-interface {v0, v4, v5}, Ljavax/microedition/khronos/opengles/GL11;->glBindBuffer(II)V

    .line 379
    invoke-static {p1}, Lio/appium/android/apis/graphics/CubeMapActivity;->checkGLError(Ljavax/microedition/khronos/opengles/GL;)V

    .line 380
    return-void
.end method

.method public set(IIFFFFFF)V
    .locals 3
    .param p1, "i"    # I
    .param p2, "j"    # I
    .param p3, "x"    # F
    .param p4, "y"    # F
    .param p5, "z"    # F
    .param p6, "nx"    # F
    .param p7, "ny"    # F
    .param p8, "nz"    # F

    .line 318
    if-ltz p1, :cond_1

    iget v0, p0, Lio/appium/android/apis/graphics/CubeMapActivity$Grid;->mW:I

    if-ge p1, v0, :cond_1

    .line 321
    if-ltz p2, :cond_0

    iget v1, p0, Lio/appium/android/apis/graphics/CubeMapActivity$Grid;->mH:I

    if-ge p2, v1, :cond_0

    .line 325
    mul-int v0, v0, p2

    add-int/2addr v0, p1

    .line 327
    .local v0, "index":I
    iget-object v1, p0, Lio/appium/android/apis/graphics/CubeMapActivity$Grid;->mVertexBuffer:Ljava/nio/FloatBuffer;

    mul-int/lit8 v2, v0, 0x18

    div-int/lit8 v2, v2, 0x4

    invoke-virtual {v1, v2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 328
    iget-object v1, p0, Lio/appium/android/apis/graphics/CubeMapActivity$Grid;->mVertexBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v1, p3}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 329
    iget-object v1, p0, Lio/appium/android/apis/graphics/CubeMapActivity$Grid;->mVertexBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v1, p4}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 330
    iget-object v1, p0, Lio/appium/android/apis/graphics/CubeMapActivity$Grid;->mVertexBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v1, p5}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 331
    iget-object v1, p0, Lio/appium/android/apis/graphics/CubeMapActivity$Grid;->mVertexBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v1, p6}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 332
    iget-object v1, p0, Lio/appium/android/apis/graphics/CubeMapActivity$Grid;->mVertexBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v1, p7}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 333
    iget-object v1, p0, Lio/appium/android/apis/graphics/CubeMapActivity$Grid;->mVertexBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v1, p8}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 334
    return-void

    .line 322
    .end local v0    # "index":I
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "j"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 319
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "i"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
