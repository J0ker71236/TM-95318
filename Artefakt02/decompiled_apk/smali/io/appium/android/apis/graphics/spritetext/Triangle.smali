.class Lio/appium/android/apis/graphics/spritetext/Triangle;
.super Ljava/lang/Object;
.source "SpriteTextRenderer.java"


# static fields
.field private static final VERTS:I = 0x3

.field private static final sCoords:[F


# instance fields
.field private mFVertexBuffer:Ljava/nio/FloatBuffer;

.field private mIndexBuffer:Ljava/nio/ShortBuffer;

.field private mTexBuffer:Ljava/nio/FloatBuffer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 348
    const/16 v0, 0x9

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    sput-object v0, Lio/appium/android/apis/graphics/spritetext/Triangle;->sCoords:[F

    return-void

    :array_0
    .array-data 4
        -0x41000000    # -0.5f
        -0x41800000    # -0.25f
        0x0
        0x3f000000    # 0.5f
        -0x41800000    # -0.25f
        0x0
        0x0
        0x3f0f1bbd
        0x0
    .end array-data
.end method

.method public constructor <init>()V
    .locals 9

    .line 282
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 292
    const/16 v0, 0x24

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 293
    .local v0, "vbb":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 294
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v1

    iput-object v1, p0, Lio/appium/android/apis/graphics/spritetext/Triangle;->mFVertexBuffer:Ljava/nio/FloatBuffer;

    .line 296
    const/16 v1, 0x18

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 297
    .local v1, "tbb":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 298
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v2

    iput-object v2, p0, Lio/appium/android/apis/graphics/spritetext/Triangle;->mTexBuffer:Ljava/nio/FloatBuffer;

    .line 300
    const/4 v2, 0x6

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 301
    .local v2, "ibb":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 302
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v3

    iput-object v3, p0, Lio/appium/android/apis/graphics/spritetext/Triangle;->mIndexBuffer:Ljava/nio/ShortBuffer;

    .line 304
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    const/4 v4, 0x3

    if-ge v3, v4, :cond_1

    .line 305
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_1
    if-ge v5, v4, :cond_0

    .line 306
    iget-object v6, p0, Lio/appium/android/apis/graphics/spritetext/Triangle;->mFVertexBuffer:Ljava/nio/FloatBuffer;

    sget-object v7, Lio/appium/android/apis/graphics/spritetext/Triangle;->sCoords:[F

    mul-int/lit8 v8, v3, 0x3

    add-int/2addr v8, v5

    aget v7, v7, v8

    invoke-virtual {v6, v7}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 305
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 304
    .end local v5    # "j":I
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 310
    .end local v3    # "i":I
    :cond_1
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_2
    if-ge v3, v4, :cond_3

    .line 311
    const/4 v5, 0x0

    .restart local v5    # "j":I
    :goto_3
    const/4 v6, 0x2

    if-ge v5, v6, :cond_2

    .line 312
    iget-object v6, p0, Lio/appium/android/apis/graphics/spritetext/Triangle;->mTexBuffer:Ljava/nio/FloatBuffer;

    sget-object v7, Lio/appium/android/apis/graphics/spritetext/Triangle;->sCoords:[F

    mul-int/lit8 v8, v3, 0x3

    add-int/2addr v8, v5

    aget v7, v7, v8

    const/high16 v8, 0x40000000    # 2.0f

    mul-float v7, v7, v8

    const/high16 v8, 0x3f000000    # 0.5f

    add-float/2addr v7, v8

    invoke-virtual {v6, v7}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 311
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 310
    .end local v5    # "j":I
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 316
    .end local v3    # "i":I
    :cond_3
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_4
    if-ge v3, v4, :cond_4

    .line 317
    iget-object v5, p0, Lio/appium/android/apis/graphics/spritetext/Triangle;->mIndexBuffer:Ljava/nio/ShortBuffer;

    int-to-short v6, v3

    invoke-virtual {v5, v6}, Ljava/nio/ShortBuffer;->put(S)Ljava/nio/ShortBuffer;

    .line 316
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 320
    .end local v3    # "i":I
    :cond_4
    iget-object v3, p0, Lio/appium/android/apis/graphics/spritetext/Triangle;->mFVertexBuffer:Ljava/nio/FloatBuffer;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 321
    iget-object v3, p0, Lio/appium/android/apis/graphics/spritetext/Triangle;->mTexBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v3, v4}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 322
    iget-object v3, p0, Lio/appium/android/apis/graphics/spritetext/Triangle;->mIndexBuffer:Ljava/nio/ShortBuffer;

    invoke-virtual {v3, v4}, Ljava/nio/ShortBuffer;->position(I)Ljava/nio/Buffer;

    .line 323
    return-void
.end method


# virtual methods
.method public draw(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 5
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;

    .line 326
    const/16 v0, 0x901

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glFrontFace(I)V

    .line 327
    iget-object v0, p0, Lio/appium/android/apis/graphics/spritetext/Triangle;->mFVertexBuffer:Ljava/nio/FloatBuffer;

    const/4 v1, 0x0

    const/16 v2, 0x1406

    const/4 v3, 0x3

    invoke-interface {p1, v3, v2, v1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glVertexPointer(IIILjava/nio/Buffer;)V

    .line 328
    const/16 v0, 0xde1

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    .line 329
    iget-object v0, p0, Lio/appium/android/apis/graphics/spritetext/Triangle;->mTexBuffer:Ljava/nio/FloatBuffer;

    const/4 v4, 0x2

    invoke-interface {p1, v4, v2, v1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glTexCoordPointer(IIILjava/nio/Buffer;)V

    .line 330
    iget-object v0, p0, Lio/appium/android/apis/graphics/spritetext/Triangle;->mIndexBuffer:Ljava/nio/ShortBuffer;

    const/4 v1, 0x5

    const/16 v2, 0x1403

    invoke-interface {p1, v1, v3, v2, v0}, Ljavax/microedition/khronos/opengles/GL10;->glDrawElements(IIILjava/nio/Buffer;)V

    .line 332
    return-void
.end method

.method public getX(I)F
    .locals 2
    .param p1, "vertex"    # I

    .line 335
    sget-object v0, Lio/appium/android/apis/graphics/spritetext/Triangle;->sCoords:[F

    mul-int/lit8 v1, p1, 0x3

    aget v0, v0, v1

    return v0
.end method

.method public getY(I)F
    .locals 2
    .param p1, "vertex"    # I

    .line 339
    sget-object v0, Lio/appium/android/apis/graphics/spritetext/Triangle;->sCoords:[F

    mul-int/lit8 v1, p1, 0x3

    add-int/lit8 v1, v1, 0x1

    aget v0, v0, v1

    return v0
.end method
