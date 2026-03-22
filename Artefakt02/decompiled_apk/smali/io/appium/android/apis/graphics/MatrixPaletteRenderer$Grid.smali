.class Lio/appium/android/apis/graphics/MatrixPaletteRenderer$Grid;
.super Ljava/lang/Object;
.source "MatrixPaletteRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/appium/android/apis/graphics/MatrixPaletteRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Grid"
.end annotation


# static fields
.field static final CHAR_SIZE:I = 0x2

.field static final FLOAT_SIZE:I = 0x4

.field static final VERTEX_PALETTE_INDEX_OFFSET:I = 0x1c

.field static final VERTEX_SIZE:I = 0x20

.field static final VERTEX_TEXTURE_BUFFER_INDEX_OFFSET:I = 0x3

.field static final VERTEX_WEIGHT_BUFFER_INDEX_OFFSET:I = 0x5


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

    .line 89
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 90
    if-ltz v1, :cond_4

    const/high16 v3, 0x10000

    if-ge v1, v3, :cond_4

    .line 93
    if-ltz v2, :cond_3

    if-ge v2, v3, :cond_3

    .line 96
    mul-int v4, v1, v2

    if-ge v4, v3, :cond_2

    .line 100
    iput v1, v0, Lio/appium/android/apis/graphics/MatrixPaletteRenderer$Grid;->mW:I

    .line 101
    iput v2, v0, Lio/appium/android/apis/graphics/MatrixPaletteRenderer$Grid;->mH:I

    .line 102
    mul-int v3, v1, v2

    .line 104
    .local v3, "size":I
    mul-int/lit8 v4, v3, 0x20

    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 105
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v4

    iput-object v4, v0, Lio/appium/android/apis/graphics/MatrixPaletteRenderer$Grid;->mVertexByteBuffer:Ljava/nio/ByteBuffer;

    .line 106
    iget-object v4, v0, Lio/appium/android/apis/graphics/MatrixPaletteRenderer$Grid;->mVertexByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v4

    iput-object v4, v0, Lio/appium/android/apis/graphics/MatrixPaletteRenderer$Grid;->mVertexBuffer:Ljava/nio/FloatBuffer;

    .line 108
    iget v4, v0, Lio/appium/android/apis/graphics/MatrixPaletteRenderer$Grid;->mW:I

    add-int/lit8 v4, v4, -0x1

    .line 109
    .local v4, "quadW":I
    iget v5, v0, Lio/appium/android/apis/graphics/MatrixPaletteRenderer$Grid;->mH:I

    add-int/lit8 v5, v5, -0x1

    .line 110
    .local v5, "quadH":I
    mul-int v6, v4, v5

    .line 111
    .local v6, "quadCount":I
    mul-int/lit8 v7, v6, 0x6

    .line 112
    .local v7, "indexCount":I
    iput v7, v0, Lio/appium/android/apis/graphics/MatrixPaletteRenderer$Grid;->mIndexCount:I

    .line 113
    mul-int/lit8 v8, v7, 0x2

    invoke-static {v8}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v8

    .line 114
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->asCharBuffer()Ljava/nio/CharBuffer;

    move-result-object v8

    iput-object v8, v0, Lio/appium/android/apis/graphics/MatrixPaletteRenderer$Grid;->mIndexBuffer:Ljava/nio/CharBuffer;

    .line 129
    const/4 v8, 0x0

    .line 130
    .local v8, "i":I
    const/4 v9, 0x0

    .local v9, "y":I
    :goto_0
    if-ge v9, v5, :cond_1

    .line 131
    const/4 v10, 0x0

    .local v10, "x":I
    :goto_1
    if-ge v10, v4, :cond_0

    .line 132
    iget v11, v0, Lio/appium/android/apis/graphics/MatrixPaletteRenderer$Grid;->mW:I

    mul-int v12, v9, v11

    add-int/2addr v12, v10

    int-to-char v12, v12

    .line 133
    .local v12, "a":C
    mul-int v13, v9, v11

    add-int/2addr v13, v10

    add-int/lit8 v13, v13, 0x1

    int-to-char v13, v13

    .line 134
    .local v13, "b":C
    add-int/lit8 v14, v9, 0x1

    mul-int v14, v14, v11

    add-int/2addr v14, v10

    int-to-char v14, v14

    .line 135
    .local v14, "c":C
    add-int/lit8 v15, v9, 0x1

    mul-int v15, v15, v11

    add-int/2addr v15, v10

    add-int/lit8 v15, v15, 0x1

    int-to-char v11, v15

    .line 137
    .local v11, "d":C
    iget-object v15, v0, Lio/appium/android/apis/graphics/MatrixPaletteRenderer$Grid;->mIndexBuffer:Ljava/nio/CharBuffer;

    add-int/lit8 v1, v8, 0x1

    .end local v8    # "i":I
    .local v1, "i":I
    invoke-virtual {v15, v8, v12}, Ljava/nio/CharBuffer;->put(IC)Ljava/nio/CharBuffer;

    .line 138
    iget-object v8, v0, Lio/appium/android/apis/graphics/MatrixPaletteRenderer$Grid;->mIndexBuffer:Ljava/nio/CharBuffer;

    add-int/lit8 v15, v1, 0x1

    .end local v1    # "i":I
    .local v15, "i":I
    invoke-virtual {v8, v1, v14}, Ljava/nio/CharBuffer;->put(IC)Ljava/nio/CharBuffer;

    .line 139
    iget-object v1, v0, Lio/appium/android/apis/graphics/MatrixPaletteRenderer$Grid;->mIndexBuffer:Ljava/nio/CharBuffer;

    add-int/lit8 v8, v15, 0x1

    .end local v15    # "i":I
    .restart local v8    # "i":I
    invoke-virtual {v1, v15, v13}, Ljava/nio/CharBuffer;->put(IC)Ljava/nio/CharBuffer;

    .line 141
    iget-object v1, v0, Lio/appium/android/apis/graphics/MatrixPaletteRenderer$Grid;->mIndexBuffer:Ljava/nio/CharBuffer;

    add-int/lit8 v15, v8, 0x1

    .end local v8    # "i":I
    .restart local v15    # "i":I
    invoke-virtual {v1, v8, v13}, Ljava/nio/CharBuffer;->put(IC)Ljava/nio/CharBuffer;

    .line 142
    iget-object v1, v0, Lio/appium/android/apis/graphics/MatrixPaletteRenderer$Grid;->mIndexBuffer:Ljava/nio/CharBuffer;

    add-int/lit8 v8, v15, 0x1

    .end local v15    # "i":I
    .restart local v8    # "i":I
    invoke-virtual {v1, v15, v14}, Ljava/nio/CharBuffer;->put(IC)Ljava/nio/CharBuffer;

    .line 143
    iget-object v1, v0, Lio/appium/android/apis/graphics/MatrixPaletteRenderer$Grid;->mIndexBuffer:Ljava/nio/CharBuffer;

    add-int/lit8 v15, v8, 0x1

    .end local v8    # "i":I
    .restart local v15    # "i":I
    invoke-virtual {v1, v8, v11}, Ljava/nio/CharBuffer;->put(IC)Ljava/nio/CharBuffer;

    .line 131
    .end local v11    # "d":C
    .end local v12    # "a":C
    .end local v13    # "b":C
    .end local v14    # "c":C
    add-int/lit8 v10, v10, 0x1

    move v8, v15

    move/from16 v1, p1

    goto :goto_1

    .line 130
    .end local v10    # "x":I
    .end local v15    # "i":I
    .restart local v8    # "i":I
    :cond_0
    add-int/lit8 v9, v9, 0x1

    move/from16 v1, p1

    goto :goto_0

    .line 148
    .end local v8    # "i":I
    .end local v9    # "y":I
    :cond_1
    return-void

    .line 97
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

    .line 94
    :cond_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v3, "h"

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 91
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

    .line 183
    const/4 v0, 0x2

    new-array v1, v0, [I

    .line 184
    .local v1, "vboIds":[I
    move-object v2, p1

    check-cast v2, Ljavax/microedition/khronos/opengles/GL11;

    .line 185
    .local v2, "gl11":Ljavax/microedition/khronos/opengles/GL11;
    const/4 v3, 0x0

    invoke-interface {v2, v0, v1, v3}, Ljavax/microedition/khronos/opengles/GL11;->glGenBuffers(I[II)V

    .line 186
    aget v4, v1, v3

    iput v4, p0, Lio/appium/android/apis/graphics/MatrixPaletteRenderer$Grid;->mVertexBufferObjectId:I

    .line 187
    const/4 v4, 0x1

    aget v4, v1, v4

    iput v4, p0, Lio/appium/android/apis/graphics/MatrixPaletteRenderer$Grid;->mElementBufferObjectId:I

    .line 190
    iget v4, p0, Lio/appium/android/apis/graphics/MatrixPaletteRenderer$Grid;->mVertexBufferObjectId:I

    const v5, 0x8892

    invoke-interface {v2, v5, v4}, Ljavax/microedition/khronos/opengles/GL11;->glBindBuffer(II)V

    .line 191
    iget-object v4, p0, Lio/appium/android/apis/graphics/MatrixPaletteRenderer$Grid;->mVertexByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v4, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 192
    iget-object v4, p0, Lio/appium/android/apis/graphics/MatrixPaletteRenderer$Grid;->mVertexByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v4

    iget-object v6, p0, Lio/appium/android/apis/graphics/MatrixPaletteRenderer$Grid;->mVertexByteBuffer:Ljava/nio/ByteBuffer;

    const v7, 0x88e4

    invoke-interface {v2, v5, v4, v6, v7}, Ljavax/microedition/khronos/opengles/GL11;->glBufferData(IILjava/nio/Buffer;I)V

    .line 194
    iget v4, p0, Lio/appium/android/apis/graphics/MatrixPaletteRenderer$Grid;->mElementBufferObjectId:I

    const v5, 0x8893

    invoke-interface {v2, v5, v4}, Ljavax/microedition/khronos/opengles/GL11;->glBindBuffer(II)V

    .line 195
    iget-object v4, p0, Lio/appium/android/apis/graphics/MatrixPaletteRenderer$Grid;->mIndexBuffer:Ljava/nio/CharBuffer;

    invoke-virtual {v4, v3}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    .line 196
    iget-object v3, p0, Lio/appium/android/apis/graphics/MatrixPaletteRenderer$Grid;->mIndexBuffer:Ljava/nio/CharBuffer;

    invoke-virtual {v3}, Ljava/nio/CharBuffer;->capacity()I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    iget-object v0, p0, Lio/appium/android/apis/graphics/MatrixPaletteRenderer$Grid;->mIndexBuffer:Ljava/nio/CharBuffer;

    invoke-interface {v2, v5, v3, v0, v7}, Ljavax/microedition/khronos/opengles/GL11;->glBufferData(IILjava/nio/Buffer;I)V

    .line 199
    const/4 v0, 0x0

    iput-object v0, p0, Lio/appium/android/apis/graphics/MatrixPaletteRenderer$Grid;->mVertexBuffer:Ljava/nio/FloatBuffer;

    .line 200
    iput-object v0, p0, Lio/appium/android/apis/graphics/MatrixPaletteRenderer$Grid;->mVertexByteBuffer:Ljava/nio/ByteBuffer;

    .line 201
    iput-object v0, p0, Lio/appium/android/apis/graphics/MatrixPaletteRenderer$Grid;->mIndexBuffer:Ljava/nio/CharBuffer;

    .line 202
    return-void
.end method

.method public draw(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 11
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;

    .line 205
    move-object v0, p1

    check-cast v0, Ljavax/microedition/khronos/opengles/GL11;

    .line 206
    .local v0, "gl11":Ljavax/microedition/khronos/opengles/GL11;
    move-object v1, p1

    check-cast v1, Ljavax/microedition/khronos/opengles/GL11Ext;

    .line 208
    .local v1, "gl11Ext":Ljavax/microedition/khronos/opengles/GL11Ext;
    const v2, 0x8074

    invoke-interface {p1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glEnableClientState(I)V

    .line 210
    iget v3, p0, Lio/appium/android/apis/graphics/MatrixPaletteRenderer$Grid;->mVertexBufferObjectId:I

    const v4, 0x8892

    invoke-interface {v0, v4, v3}, Ljavax/microedition/khronos/opengles/GL11;->glBindBuffer(II)V

    .line 211
    const/16 v3, 0x1406

    const/4 v5, 0x0

    const/16 v6, 0x20

    const/4 v7, 0x3

    invoke-interface {v0, v7, v3, v6, v5}, Ljavax/microedition/khronos/opengles/GL11;->glVertexPointer(IIII)V

    .line 212
    const/4 v7, 0x2

    const/16 v8, 0xc

    invoke-interface {v0, v7, v3, v6, v8}, Ljavax/microedition/khronos/opengles/GL11;->glTexCoordPointer(IIII)V

    .line 214
    const v8, 0x8844

    invoke-interface {p1, v8}, Ljavax/microedition/khronos/opengles/GL10;->glEnableClientState(I)V

    .line 215
    const v9, 0x86ad

    invoke-interface {p1, v9}, Ljavax/microedition/khronos/opengles/GL10;->glEnableClientState(I)V

    .line 217
    const/16 v10, 0x14

    invoke-interface {v1, v7, v3, v6, v10}, Ljavax/microedition/khronos/opengles/GL11Ext;->glWeightPointerOES(IIII)V

    .line 218
    const/16 v3, 0x1401

    const/16 v10, 0x1c

    invoke-interface {v1, v7, v3, v6, v10}, Ljavax/microedition/khronos/opengles/GL11Ext;->glMatrixIndexPointerOES(IIII)V

    .line 220
    iget v3, p0, Lio/appium/android/apis/graphics/MatrixPaletteRenderer$Grid;->mElementBufferObjectId:I

    const v6, 0x8893

    invoke-interface {v0, v6, v3}, Ljavax/microedition/khronos/opengles/GL11;->glBindBuffer(II)V

    .line 221
    iget v3, p0, Lio/appium/android/apis/graphics/MatrixPaletteRenderer$Grid;->mIndexCount:I

    const/4 v7, 0x4

    const/16 v10, 0x1403

    invoke-interface {v0, v7, v3, v10, v5}, Ljavax/microedition/khronos/opengles/GL11;->glDrawElements(IIII)V

    .line 222
    invoke-interface {p1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glDisableClientState(I)V

    .line 223
    invoke-interface {p1, v8}, Ljavax/microedition/khronos/opengles/GL10;->glDisableClientState(I)V

    .line 224
    invoke-interface {p1, v9}, Ljavax/microedition/khronos/opengles/GL10;->glDisableClientState(I)V

    .line 225
    invoke-interface {v0, v4, v5}, Ljavax/microedition/khronos/opengles/GL11;->glBindBuffer(II)V

    .line 226
    invoke-interface {v0, v6, v5}, Ljavax/microedition/khronos/opengles/GL11;->glBindBuffer(II)V

    .line 227
    return-void
.end method

.method public set(IIFFFFFFFII)V
    .locals 3
    .param p1, "i"    # I
    .param p2, "j"    # I
    .param p3, "x"    # F
    .param p4, "y"    # F
    .param p5, "z"    # F
    .param p6, "u"    # F
    .param p7, "v"    # F
    .param p8, "w0"    # F
    .param p9, "w1"    # F
    .param p10, "p0"    # I
    .param p11, "p1"    # I

    .line 154
    if-ltz p1, :cond_2

    iget v0, p0, Lio/appium/android/apis/graphics/MatrixPaletteRenderer$Grid;->mW:I

    if-ge p1, v0, :cond_2

    .line 157
    if-ltz p2, :cond_1

    iget v1, p0, Lio/appium/android/apis/graphics/MatrixPaletteRenderer$Grid;->mH:I

    if-ge p2, v1, :cond_1

    .line 161
    add-float v1, p8, p9

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    .line 165
    mul-int v0, v0, p2

    add-int/2addr v0, p1

    .line 167
    .local v0, "index":I
    iget-object v1, p0, Lio/appium/android/apis/graphics/MatrixPaletteRenderer$Grid;->mVertexBuffer:Ljava/nio/FloatBuffer;

    mul-int/lit8 v2, v0, 0x20

    div-int/lit8 v2, v2, 0x4

    invoke-virtual {v1, v2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 168
    iget-object v1, p0, Lio/appium/android/apis/graphics/MatrixPaletteRenderer$Grid;->mVertexBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v1, p3}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 169
    iget-object v1, p0, Lio/appium/android/apis/graphics/MatrixPaletteRenderer$Grid;->mVertexBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v1, p4}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 170
    iget-object v1, p0, Lio/appium/android/apis/graphics/MatrixPaletteRenderer$Grid;->mVertexBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v1, p5}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 171
    iget-object v1, p0, Lio/appium/android/apis/graphics/MatrixPaletteRenderer$Grid;->mVertexBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v1, p6}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 172
    iget-object v1, p0, Lio/appium/android/apis/graphics/MatrixPaletteRenderer$Grid;->mVertexBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v1, p7}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 173
    iget-object v1, p0, Lio/appium/android/apis/graphics/MatrixPaletteRenderer$Grid;->mVertexBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v1, p8}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 174
    iget-object v1, p0, Lio/appium/android/apis/graphics/MatrixPaletteRenderer$Grid;->mVertexBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v1, p9}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    .line 176
    iget-object v1, p0, Lio/appium/android/apis/graphics/MatrixPaletteRenderer$Grid;->mVertexByteBuffer:Ljava/nio/ByteBuffer;

    mul-int/lit8 v2, v0, 0x20

    add-int/lit8 v2, v2, 0x1c

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 177
    iget-object v1, p0, Lio/appium/android/apis/graphics/MatrixPaletteRenderer$Grid;->mVertexByteBuffer:Ljava/nio/ByteBuffer;

    int-to-byte v2, p10

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 178
    iget-object v1, p0, Lio/appium/android/apis/graphics/MatrixPaletteRenderer$Grid;->mVertexByteBuffer:Ljava/nio/ByteBuffer;

    int-to-byte v2, p11

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 179
    return-void

    .line 162
    .end local v0    # "index":I
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Weights must add up to 1.0f"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 158
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "j"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 155
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "i"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
