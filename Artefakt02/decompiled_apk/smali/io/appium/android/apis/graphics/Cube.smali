.class Lio/appium/android/apis/graphics/Cube;
.super Ljava/lang/Object;
.source "Cube.java"


# instance fields
.field private mColorBuffer:Ljava/nio/IntBuffer;

.field private mIndexBuffer:Ljava/nio/ByteBuffer;

.field private mVertexBuffer:Ljava/nio/IntBuffer;


# direct methods
.method public constructor <init>()V
    .locals 20

    .line 31
    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const/high16 v1, 0x10000

    .line 33
    .local v1, "one":I
    const/16 v2, 0x18

    new-array v3, v2, [I

    neg-int v4, v1

    const/4 v5, 0x0

    aput v4, v3, v5

    neg-int v4, v1

    const/4 v6, 0x1

    aput v4, v3, v6

    neg-int v4, v1

    const/4 v7, 0x2

    aput v4, v3, v7

    const/4 v4, 0x3

    aput v1, v3, v4

    neg-int v8, v1

    const/4 v9, 0x4

    aput v8, v3, v9

    neg-int v8, v1

    const/4 v10, 0x5

    aput v8, v3, v10

    const/4 v8, 0x6

    aput v1, v3, v8

    const/4 v11, 0x7

    aput v1, v3, v11

    neg-int v12, v1

    const/16 v13, 0x8

    aput v12, v3, v13

    neg-int v12, v1

    const/16 v14, 0x9

    aput v12, v3, v14

    const/16 v12, 0xa

    aput v1, v3, v12

    neg-int v15, v1

    const/16 v16, 0xb

    aput v15, v3, v16

    neg-int v15, v1

    const/16 v17, 0xc

    aput v15, v3, v17

    neg-int v15, v1

    const/16 v18, 0xd

    aput v15, v3, v18

    const/16 v15, 0xe

    aput v1, v3, v15

    const/16 v15, 0xf

    aput v1, v3, v15

    neg-int v15, v1

    const/16 v19, 0x10

    aput v15, v3, v19

    const/16 v15, 0x11

    aput v1, v3, v15

    const/16 v15, 0x12

    aput v1, v3, v15

    const/16 v15, 0x13

    aput v1, v3, v15

    const/16 v15, 0x14

    aput v1, v3, v15

    neg-int v15, v1

    const/16 v19, 0x15

    aput v15, v3, v19

    const/16 v15, 0x16

    aput v1, v3, v15

    const/16 v15, 0x17

    aput v1, v3, v15

    .line 44
    .local v3, "vertices":[I
    const/16 v15, 0x20

    new-array v15, v15, [I

    aput v5, v15, v5

    aput v5, v15, v6

    aput v5, v15, v7

    aput v1, v15, v4

    aput v1, v15, v9

    aput v5, v15, v10

    aput v5, v15, v8

    aput v1, v15, v11

    aput v1, v15, v13

    aput v1, v15, v14

    aput v5, v15, v12

    aput v1, v15, v16

    aput v5, v15, v17

    aput v1, v15, v18

    const/16 v4, 0xe

    aput v5, v15, v4

    const/16 v4, 0xf

    aput v1, v15, v4

    const/16 v4, 0x10

    aput v5, v15, v4

    const/16 v4, 0x11

    aput v5, v15, v4

    const/16 v4, 0x12

    aput v1, v15, v4

    const/16 v4, 0x13

    aput v1, v15, v4

    const/16 v4, 0x14

    aput v1, v15, v4

    const/16 v4, 0x15

    aput v5, v15, v4

    const/16 v4, 0x16

    aput v1, v15, v4

    const/16 v4, 0x17

    aput v1, v15, v4

    aput v1, v15, v2

    const/16 v2, 0x19

    aput v1, v15, v2

    const/16 v2, 0x1a

    aput v1, v15, v2

    const/16 v2, 0x1b

    aput v1, v15, v2

    const/16 v2, 0x1c

    aput v5, v15, v2

    const/16 v2, 0x1d

    aput v1, v15, v2

    const/16 v2, 0x1e

    aput v1, v15, v2

    const/16 v2, 0x1f

    aput v1, v15, v2

    move-object v2, v15

    .line 55
    .local v2, "colors":[I
    const/16 v4, 0x24

    new-array v4, v4, [B

    fill-array-data v4, :array_0

    .line 72
    .local v4, "indices":[B
    array-length v6, v3

    mul-int/lit8 v6, v6, 0x4

    invoke-static {v6}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v6

    .line 73
    .local v6, "vbb":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 74
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v7

    iput-object v7, v0, Lio/appium/android/apis/graphics/Cube;->mVertexBuffer:Ljava/nio/IntBuffer;

    .line 75
    iget-object v7, v0, Lio/appium/android/apis/graphics/Cube;->mVertexBuffer:Ljava/nio/IntBuffer;

    invoke-virtual {v7, v3}, Ljava/nio/IntBuffer;->put([I)Ljava/nio/IntBuffer;

    .line 76
    iget-object v7, v0, Lio/appium/android/apis/graphics/Cube;->mVertexBuffer:Ljava/nio/IntBuffer;

    invoke-virtual {v7, v5}, Ljava/nio/IntBuffer;->position(I)Ljava/nio/Buffer;

    .line 78
    array-length v7, v2

    mul-int/lit8 v7, v7, 0x4

    invoke-static {v7}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v7

    .line 79
    .local v7, "cbb":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 80
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v8

    iput-object v8, v0, Lio/appium/android/apis/graphics/Cube;->mColorBuffer:Ljava/nio/IntBuffer;

    .line 81
    iget-object v8, v0, Lio/appium/android/apis/graphics/Cube;->mColorBuffer:Ljava/nio/IntBuffer;

    invoke-virtual {v8, v2}, Ljava/nio/IntBuffer;->put([I)Ljava/nio/IntBuffer;

    .line 82
    iget-object v8, v0, Lio/appium/android/apis/graphics/Cube;->mColorBuffer:Ljava/nio/IntBuffer;

    invoke-virtual {v8, v5}, Ljava/nio/IntBuffer;->position(I)Ljava/nio/Buffer;

    .line 84
    array-length v8, v4

    invoke-static {v8}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v8

    iput-object v8, v0, Lio/appium/android/apis/graphics/Cube;->mIndexBuffer:Ljava/nio/ByteBuffer;

    .line 85
    iget-object v8, v0, Lio/appium/android/apis/graphics/Cube;->mIndexBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v8, v4}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 86
    iget-object v8, v0, Lio/appium/android/apis/graphics/Cube;->mIndexBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v8, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 87
    return-void

    nop

    :array_0
    .array-data 1
        0x0t
        0x4t
        0x5t
        0x0t
        0x5t
        0x1t
        0x1t
        0x5t
        0x6t
        0x1t
        0x6t
        0x2t
        0x2t
        0x6t
        0x7t
        0x2t
        0x7t
        0x3t
        0x3t
        0x7t
        0x4t
        0x3t
        0x4t
        0x0t
        0x4t
        0x7t
        0x6t
        0x4t
        0x6t
        0x5t
        0x3t
        0x0t
        0x1t
        0x3t
        0x1t
        0x2t
    .end array-data
.end method


# virtual methods
.method public draw(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 4
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;

    .line 91
    const/16 v0, 0x900

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glFrontFace(I)V

    .line 92
    iget-object v0, p0, Lio/appium/android/apis/graphics/Cube;->mVertexBuffer:Ljava/nio/IntBuffer;

    const/4 v1, 0x0

    const/16 v2, 0x140c

    const/4 v3, 0x3

    invoke-interface {p1, v3, v2, v1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glVertexPointer(IIILjava/nio/Buffer;)V

    .line 93
    iget-object v0, p0, Lio/appium/android/apis/graphics/Cube;->mColorBuffer:Ljava/nio/IntBuffer;

    const/4 v3, 0x4

    invoke-interface {p1, v3, v2, v1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glColorPointer(IIILjava/nio/Buffer;)V

    .line 94
    iget-object v0, p0, Lio/appium/android/apis/graphics/Cube;->mIndexBuffer:Ljava/nio/ByteBuffer;

    const/16 v1, 0x24

    const/16 v2, 0x1401

    invoke-interface {p1, v3, v1, v2, v0}, Ljavax/microedition/khronos/opengles/GL10;->glDrawElements(IIILjava/nio/Buffer;)V

    .line 95
    return-void
.end method
