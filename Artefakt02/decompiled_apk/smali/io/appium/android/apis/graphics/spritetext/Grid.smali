.class Lio/appium/android/apis/graphics/spritetext/Grid;
.super Ljava/lang/Object;
.source "Grid.java"


# instance fields
.field private mH:I

.field private mIndexBuffer:Ljava/nio/CharBuffer;

.field private mIndexCount:I

.field private mTexCoordBuffer:Ljava/nio/FloatBuffer;

.field private mVertexBuffer:Ljava/nio/FloatBuffer;

.field private mW:I


# direct methods
.method public constructor <init>(II)V
    .locals 17
    .param p1, "w"    # I
    .param p2, "h"    # I

    .line 32
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 33
    if-ltz v1, :cond_4

    const/high16 v3, 0x10000

    if-ge v1, v3, :cond_4

    .line 36
    if-ltz v2, :cond_3

    if-ge v2, v3, :cond_3

    .line 39
    mul-int v4, v1, v2

    if-ge v4, v3, :cond_2

    .line 43
    iput v1, v0, Lio/appium/android/apis/graphics/spritetext/Grid;->mW:I

    .line 44
    iput v2, v0, Lio/appium/android/apis/graphics/spritetext/Grid;->mH:I

    .line 45
    mul-int v3, v1, v2

    .line 46
    .local v3, "size":I
    const/4 v4, 0x4

    .line 47
    .local v4, "FLOAT_SIZE":I
    const/4 v5, 0x2

    .line 48
    .local v5, "CHAR_SIZE":I
    mul-int/lit8 v6, v3, 0x4

    mul-int/lit8 v6, v6, 0x3

    invoke-static {v6}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v6

    .line 49
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v6

    iput-object v6, v0, Lio/appium/android/apis/graphics/spritetext/Grid;->mVertexBuffer:Ljava/nio/FloatBuffer;

    .line 50
    mul-int/lit8 v6, v3, 0x4

    mul-int/lit8 v6, v6, 0x2

    invoke-static {v6}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v6

    .line 51
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v6

    iput-object v6, v0, Lio/appium/android/apis/graphics/spritetext/Grid;->mTexCoordBuffer:Ljava/nio/FloatBuffer;

    .line 53
    iget v6, v0, Lio/appium/android/apis/graphics/spritetext/Grid;->mW:I

    add-int/lit8 v6, v6, -0x1

    .line 54
    .local v6, "quadW":I
    iget v7, v0, Lio/appium/android/apis/graphics/spritetext/Grid;->mH:I

    add-int/lit8 v7, v7, -0x1

    .line 55
    .local v7, "quadH":I
    mul-int v8, v6, v7

    .line 56
    .local v8, "quadCount":I
    mul-int/lit8 v9, v8, 0x6

    .line 57
    .local v9, "indexCount":I
    iput v9, v0, Lio/appium/android/apis/graphics/spritetext/Grid;->mIndexCount:I

    .line 58
    mul-int/lit8 v10, v9, 0x2

    invoke-static {v10}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v10

    .line 59
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->asCharBuffer()Ljava/nio/CharBuffer;

    move-result-object v10

    iput-object v10, v0, Lio/appium/android/apis/graphics/spritetext/Grid;->mIndexBuffer:Ljava/nio/CharBuffer;

    .line 74
    const/4 v10, 0x0

    .line 75
    .local v10, "i":I
    const/4 v11, 0x0

    .local v11, "y":I
    :goto_0
    if-ge v11, v7, :cond_1

    .line 76
    const/4 v12, 0x0

    .local v12, "x":I
    :goto_1
    if-ge v12, v6, :cond_0

    .line 77
    iget v13, v0, Lio/appium/android/apis/graphics/spritetext/Grid;->mW:I

    mul-int v14, v11, v13

    add-int/2addr v14, v12

    int-to-char v14, v14

    .line 78
    .local v14, "a":C
    mul-int v15, v11, v13

    add-int/2addr v15, v12

    add-int/lit8 v15, v15, 0x1

    int-to-char v15, v15

    .line 79
    .local v15, "b":C
    add-int/lit8 v16, v11, 0x1

    mul-int v16, v16, v13

    add-int v1, v16, v12

    int-to-char v1, v1

    .line 80
    .local v1, "c":C
    add-int/lit8 v16, v11, 0x1

    mul-int v16, v16, v13

    add-int v16, v16, v12

    add-int/lit8 v13, v16, 0x1

    int-to-char v13, v13

    .line 82
    .local v13, "d":C
    iget-object v2, v0, Lio/appium/android/apis/graphics/spritetext/Grid;->mIndexBuffer:Ljava/nio/CharBuffer;

    move/from16 v16, v3

    .end local v3    # "size":I
    .local v16, "size":I
    add-int/lit8 v3, v10, 0x1

    .end local v10    # "i":I
    .local v3, "i":I
    invoke-virtual {v2, v10, v14}, Ljava/nio/CharBuffer;->put(IC)Ljava/nio/CharBuffer;

    .line 83
    iget-object v2, v0, Lio/appium/android/apis/graphics/spritetext/Grid;->mIndexBuffer:Ljava/nio/CharBuffer;

    add-int/lit8 v10, v3, 0x1

    .end local v3    # "i":I
    .restart local v10    # "i":I
    invoke-virtual {v2, v3, v15}, Ljava/nio/CharBuffer;->put(IC)Ljava/nio/CharBuffer;

    .line 84
    iget-object v2, v0, Lio/appium/android/apis/graphics/spritetext/Grid;->mIndexBuffer:Ljava/nio/CharBuffer;

    add-int/lit8 v3, v10, 0x1

    .end local v10    # "i":I
    .restart local v3    # "i":I
    invoke-virtual {v2, v10, v1}, Ljava/nio/CharBuffer;->put(IC)Ljava/nio/CharBuffer;

    .line 86
    iget-object v2, v0, Lio/appium/android/apis/graphics/spritetext/Grid;->mIndexBuffer:Ljava/nio/CharBuffer;

    add-int/lit8 v10, v3, 0x1

    .end local v3    # "i":I
    .restart local v10    # "i":I
    invoke-virtual {v2, v3, v15}, Ljava/nio/CharBuffer;->put(IC)Ljava/nio/CharBuffer;

    .line 87
    iget-object v2, v0, Lio/appium/android/apis/graphics/spritetext/Grid;->mIndexBuffer:Ljava/nio/CharBuffer;

    add-int/lit8 v3, v10, 0x1

    .end local v10    # "i":I
    .restart local v3    # "i":I
    invoke-virtual {v2, v10, v1}, Ljava/nio/CharBuffer;->put(IC)Ljava/nio/CharBuffer;

    .line 88
    iget-object v2, v0, Lio/appium/android/apis/graphics/spritetext/Grid;->mIndexBuffer:Ljava/nio/CharBuffer;

    add-int/lit8 v10, v3, 0x1

    .end local v3    # "i":I
    .restart local v10    # "i":I
    invoke-virtual {v2, v3, v13}, Ljava/nio/CharBuffer;->put(IC)Ljava/nio/CharBuffer;

    .line 76
    .end local v1    # "c":C
    .end local v13    # "d":C
    .end local v14    # "a":C
    .end local v15    # "b":C
    add-int/lit8 v12, v12, 0x1

    move/from16 v3, v16

    move/from16 v1, p1

    move/from16 v2, p2

    goto :goto_1

    .end local v16    # "size":I
    .local v3, "size":I
    :cond_0
    move/from16 v16, v3

    .line 75
    .end local v3    # "size":I
    .end local v12    # "x":I
    .restart local v16    # "size":I
    add-int/lit8 v11, v11, 0x1

    move/from16 v1, p1

    move/from16 v2, p2

    goto :goto_0

    .end local v16    # "size":I
    .restart local v3    # "size":I
    :cond_1
    move/from16 v16, v3

    .line 93
    .end local v3    # "size":I
    .end local v10    # "i":I
    .end local v11    # "y":I
    .restart local v16    # "size":I
    return-void

    .line 40
    .end local v4    # "FLOAT_SIZE":I
    .end local v5    # "CHAR_SIZE":I
    .end local v6    # "quadW":I
    .end local v7    # "quadH":I
    .end local v8    # "quadCount":I
    .end local v9    # "indexCount":I
    .end local v16    # "size":I
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "w * h >= 65536"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 37
    :cond_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "h"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 34
    :cond_4
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "w"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    return-void
.end method


# virtual methods
.method public draw(Ljavax/microedition/khronos/opengles/GL10;Z)V
    .locals 6
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2, "useTexture"    # Z

    .line 116
    const v0, 0x8074

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glEnableClientState(I)V

    .line 117
    iget-object v1, p0, Lio/appium/android/apis/graphics/spritetext/Grid;->mVertexBuffer:Ljava/nio/FloatBuffer;

    const/4 v2, 0x0

    const/16 v3, 0x1406

    const/4 v4, 0x3

    invoke-interface {p1, v4, v3, v2, v1}, Ljavax/microedition/khronos/opengles/GL10;->glVertexPointer(IIILjava/nio/Buffer;)V

    .line 119
    const/16 v1, 0xde1

    const v4, 0x8078

    if-eqz p2, :cond_0

    .line 120
    invoke-interface {p1, v4}, Ljavax/microedition/khronos/opengles/GL10;->glEnableClientState(I)V

    .line 121
    const/4 v4, 0x2

    iget-object v5, p0, Lio/appium/android/apis/graphics/spritetext/Grid;->mTexCoordBuffer:Ljava/nio/FloatBuffer;

    invoke-interface {p1, v4, v3, v2, v5}, Ljavax/microedition/khronos/opengles/GL10;->glTexCoordPointer(IIILjava/nio/Buffer;)V

    .line 122
    invoke-interface {p1, v1}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    goto :goto_0

    .line 124
    :cond_0
    invoke-interface {p1, v4}, Ljavax/microedition/khronos/opengles/GL10;->glDisableClientState(I)V

    .line 125
    invoke-interface {p1, v1}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    .line 128
    :goto_0
    const/4 v1, 0x4

    iget v2, p0, Lio/appium/android/apis/graphics/spritetext/Grid;->mIndexCount:I

    const/16 v3, 0x1403

    iget-object v4, p0, Lio/appium/android/apis/graphics/spritetext/Grid;->mIndexBuffer:Ljava/nio/CharBuffer;

    invoke-interface {p1, v1, v2, v3, v4}, Ljavax/microedition/khronos/opengles/GL10;->glDrawElements(IIILjava/nio/Buffer;)V

    .line 130
    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glDisableClientState(I)V

    .line 131
    return-void
.end method

.method set(IIFFFFF)V
    .locals 5
    .param p1, "i"    # I
    .param p2, "j"    # I
    .param p3, "x"    # F
    .param p4, "y"    # F
    .param p5, "z"    # F
    .param p6, "u"    # F
    .param p7, "v"    # F

    .line 96
    if-ltz p1, :cond_1

    iget v0, p0, Lio/appium/android/apis/graphics/spritetext/Grid;->mW:I

    if-ge p1, v0, :cond_1

    .line 99
    if-ltz p2, :cond_0

    iget v1, p0, Lio/appium/android/apis/graphics/spritetext/Grid;->mH:I

    if-ge p2, v1, :cond_0

    .line 103
    mul-int v0, v0, p2

    add-int/2addr v0, p1

    .line 105
    .local v0, "index":I
    mul-int/lit8 v1, v0, 0x3

    .line 106
    .local v1, "posIndex":I
    iget-object v2, p0, Lio/appium/android/apis/graphics/spritetext/Grid;->mVertexBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v2, v1, p3}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 107
    iget-object v2, p0, Lio/appium/android/apis/graphics/spritetext/Grid;->mVertexBuffer:Ljava/nio/FloatBuffer;

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v2, v3, p4}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 108
    iget-object v2, p0, Lio/appium/android/apis/graphics/spritetext/Grid;->mVertexBuffer:Ljava/nio/FloatBuffer;

    add-int/lit8 v3, v1, 0x2

    invoke-virtual {v2, v3, p5}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 110
    mul-int/lit8 v2, v0, 0x2

    .line 111
    .local v2, "texIndex":I
    iget-object v3, p0, Lio/appium/android/apis/graphics/spritetext/Grid;->mTexCoordBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v3, v2, p6}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 112
    iget-object v3, p0, Lio/appium/android/apis/graphics/spritetext/Grid;->mTexCoordBuffer:Ljava/nio/FloatBuffer;

    add-int/lit8 v4, v2, 0x1

    invoke-virtual {v3, v4, p7}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 113
    return-void

    .line 100
    .end local v0    # "index":I
    .end local v1    # "posIndex":I
    .end local v2    # "texIndex":I
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "j"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 97
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "i"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
