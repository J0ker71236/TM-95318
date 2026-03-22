.class Lio/appium/android/apis/os/RotationVectorDemo$MyRenderer$Cube;
.super Ljava/lang/Object;
.source "RotationVectorDemo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/appium/android/apis/os/RotationVectorDemo$MyRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Cube"
.end annotation


# instance fields
.field private mColorBuffer:Ljava/nio/FloatBuffer;

.field private mIndexBuffer:Ljava/nio/ByteBuffer;

.field private mVertexBuffer:Ljava/nio/FloatBuffer;

.field final synthetic this$1:Lio/appium/android/apis/os/RotationVectorDemo$MyRenderer;


# direct methods
.method public constructor <init>(Lio/appium/android/apis/os/RotationVectorDemo$MyRenderer;)V
    .locals 7
    .param p1, "this$1"    # Lio/appium/android/apis/os/RotationVectorDemo$MyRenderer;

    .line 168
    iput-object p1, p0, Lio/appium/android/apis/os/RotationVectorDemo$MyRenderer$Cube;->this$1:Lio/appium/android/apis/os/RotationVectorDemo$MyRenderer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 169
    const/16 v0, 0x18

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    .line 176
    .local v0, "vertices":[F
    const/16 v1, 0x20

    new-array v1, v1, [F

    fill-array-data v1, :array_1

    .line 183
    .local v1, "colors":[F
    const/16 v2, 0x24

    new-array v2, v2, [B

    fill-array-data v2, :array_2

    .line 192
    .local v2, "indices":[B
    array-length v3, v0

    mul-int/lit8 v3, v3, 0x4

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 193
    .local v3, "vbb":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 194
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v4

    iput-object v4, p0, Lio/appium/android/apis/os/RotationVectorDemo$MyRenderer$Cube;->mVertexBuffer:Ljava/nio/FloatBuffer;

    .line 195
    iget-object v4, p0, Lio/appium/android/apis/os/RotationVectorDemo$MyRenderer$Cube;->mVertexBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v4, v0}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 196
    iget-object v4, p0, Lio/appium/android/apis/os/RotationVectorDemo$MyRenderer$Cube;->mVertexBuffer:Ljava/nio/FloatBuffer;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 198
    array-length v4, v1

    mul-int/lit8 v4, v4, 0x4

    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 199
    .local v4, "cbb":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 200
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v6

    iput-object v6, p0, Lio/appium/android/apis/os/RotationVectorDemo$MyRenderer$Cube;->mColorBuffer:Ljava/nio/FloatBuffer;

    .line 201
    iget-object v6, p0, Lio/appium/android/apis/os/RotationVectorDemo$MyRenderer$Cube;->mColorBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v6, v1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 202
    iget-object v6, p0, Lio/appium/android/apis/os/RotationVectorDemo$MyRenderer$Cube;->mColorBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v6, v5}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 204
    array-length v6, v2

    invoke-static {v6}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v6

    iput-object v6, p0, Lio/appium/android/apis/os/RotationVectorDemo$MyRenderer$Cube;->mIndexBuffer:Ljava/nio/ByteBuffer;

    .line 205
    iget-object v6, p0, Lio/appium/android/apis/os/RotationVectorDemo$MyRenderer$Cube;->mIndexBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v6, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 206
    iget-object v6, p0, Lio/appium/android/apis/os/RotationVectorDemo$MyRenderer$Cube;->mIndexBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v6, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 207
    return-void

    nop

    :array_0
    .array-data 4
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    :array_2
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

    .line 210
    const/16 v0, 0xb44

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    .line 211
    const/16 v0, 0x900

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glFrontFace(I)V

    .line 212
    const/16 v0, 0x1d01

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glShadeModel(I)V

    .line 213
    iget-object v0, p0, Lio/appium/android/apis/os/RotationVectorDemo$MyRenderer$Cube;->mVertexBuffer:Ljava/nio/FloatBuffer;

    const/4 v1, 0x0

    const/16 v2, 0x1406

    const/4 v3, 0x3

    invoke-interface {p1, v3, v2, v1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glVertexPointer(IIILjava/nio/Buffer;)V

    .line 214
    iget-object v0, p0, Lio/appium/android/apis/os/RotationVectorDemo$MyRenderer$Cube;->mColorBuffer:Ljava/nio/FloatBuffer;

    const/4 v3, 0x4

    invoke-interface {p1, v3, v2, v1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glColorPointer(IIILjava/nio/Buffer;)V

    .line 215
    iget-object v0, p0, Lio/appium/android/apis/os/RotationVectorDemo$MyRenderer$Cube;->mIndexBuffer:Ljava/nio/ByteBuffer;

    const/16 v1, 0x24

    const/16 v2, 0x1401

    invoke-interface {p1, v3, v1, v2, v0}, Ljavax/microedition/khronos/opengles/GL10;->glDrawElements(IIILjava/nio/Buffer;)V

    .line 216
    return-void
.end method
