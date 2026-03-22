.class Lio/appium/android/apis/graphics/Triangle;
.super Ljava/lang/Object;
.source "TriangleRenderer.java"


# static fields
.field private static final VERTS:I = 0x3


# instance fields
.field private mFVertexBuffer:Ljava/nio/FloatBuffer;

.field private mIndexBuffer:Ljava/nio/ShortBuffer;

.field private mTexBuffer:Ljava/nio/FloatBuffer;


# direct methods
.method public constructor <init>()V
    .locals 11

    .line 176
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 186
    const/16 v0, 0x24

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 187
    .local v0, "vbb":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 188
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v1

    iput-object v1, p0, Lio/appium/android/apis/graphics/Triangle;->mFVertexBuffer:Ljava/nio/FloatBuffer;

    .line 190
    const/16 v1, 0x18

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 191
    .local v1, "tbb":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 192
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v2

    iput-object v2, p0, Lio/appium/android/apis/graphics/Triangle;->mTexBuffer:Ljava/nio/FloatBuffer;

    .line 194
    const/4 v2, 0x6

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 195
    .local v2, "ibb":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 196
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v3

    iput-object v3, p0, Lio/appium/android/apis/graphics/Triangle;->mIndexBuffer:Ljava/nio/ShortBuffer;

    .line 199
    const/16 v3, 0x9

    new-array v3, v3, [F

    fill-array-data v3, :array_0

    .line 206
    .local v3, "coords":[F
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    const/high16 v5, 0x40000000    # 2.0f

    const/4 v6, 0x3

    if-ge v4, v6, :cond_1

    .line 207
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_1
    if-ge v7, v6, :cond_0

    .line 208
    iget-object v8, p0, Lio/appium/android/apis/graphics/Triangle;->mFVertexBuffer:Ljava/nio/FloatBuffer;

    mul-int/lit8 v9, v4, 0x3

    add-int/2addr v9, v7

    aget v9, v3, v9

    mul-float v9, v9, v5

    invoke-virtual {v8, v9}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 207
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 206
    .end local v7    # "j":I
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 212
    .end local v4    # "i":I
    :cond_1
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_2
    if-ge v4, v6, :cond_3

    .line 213
    const/4 v7, 0x0

    .restart local v7    # "j":I
    :goto_3
    const/4 v8, 0x2

    if-ge v7, v8, :cond_2

    .line 214
    iget-object v8, p0, Lio/appium/android/apis/graphics/Triangle;->mTexBuffer:Ljava/nio/FloatBuffer;

    mul-int/lit8 v9, v4, 0x3

    add-int/2addr v9, v7

    aget v9, v3, v9

    mul-float v9, v9, v5

    const/high16 v10, 0x3f000000    # 0.5f

    add-float/2addr v9, v10

    invoke-virtual {v8, v9}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 213
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 212
    .end local v7    # "j":I
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 218
    .end local v4    # "i":I
    :cond_3
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_4
    if-ge v4, v6, :cond_4

    .line 219
    iget-object v5, p0, Lio/appium/android/apis/graphics/Triangle;->mIndexBuffer:Ljava/nio/ShortBuffer;

    int-to-short v7, v4

    invoke-virtual {v5, v7}, Ljava/nio/ShortBuffer;->put(S)Ljava/nio/ShortBuffer;

    .line 218
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 222
    .end local v4    # "i":I
    :cond_4
    iget-object v4, p0, Lio/appium/android/apis/graphics/Triangle;->mFVertexBuffer:Ljava/nio/FloatBuffer;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 223
    iget-object v4, p0, Lio/appium/android/apis/graphics/Triangle;->mTexBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v4, v5}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 224
    iget-object v4, p0, Lio/appium/android/apis/graphics/Triangle;->mIndexBuffer:Ljava/nio/ShortBuffer;

    invoke-virtual {v4, v5}, Ljava/nio/ShortBuffer;->position(I)Ljava/nio/Buffer;

    .line 225
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


# virtual methods
.method public draw(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 5
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;

    .line 228
    const/16 v0, 0x901

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glFrontFace(I)V

    .line 229
    iget-object v0, p0, Lio/appium/android/apis/graphics/Triangle;->mFVertexBuffer:Ljava/nio/FloatBuffer;

    const/4 v1, 0x0

    const/16 v2, 0x1406

    const/4 v3, 0x3

    invoke-interface {p1, v3, v2, v1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glVertexPointer(IIILjava/nio/Buffer;)V

    .line 230
    const/16 v0, 0xde1

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    .line 231
    iget-object v0, p0, Lio/appium/android/apis/graphics/Triangle;->mTexBuffer:Ljava/nio/FloatBuffer;

    const/4 v4, 0x2

    invoke-interface {p1, v4, v2, v1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glTexCoordPointer(IIILjava/nio/Buffer;)V

    .line 232
    iget-object v0, p0, Lio/appium/android/apis/graphics/Triangle;->mIndexBuffer:Ljava/nio/ShortBuffer;

    const/4 v1, 0x5

    const/16 v2, 0x1403

    invoke-interface {p1, v1, v3, v2, v0}, Ljavax/microedition/khronos/opengles/GL10;->glDrawElements(IIILjava/nio/Buffer;)V

    .line 234
    return-void
.end method
