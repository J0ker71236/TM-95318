.class Lio/appium/android/apis/graphics/GLES20TriangleRenderer;
.super Ljava/lang/Object;
.source "GLES20TriangleRenderer.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;


# static fields
.field private static final FLOAT_SIZE_BYTES:I = 0x4

.field private static TAG:Ljava/lang/String; = null

.field private static final TRIANGLE_VERTICES_DATA_POS_OFFSET:I = 0x0

.field private static final TRIANGLE_VERTICES_DATA_STRIDE_BYTES:I = 0x14

.field private static final TRIANGLE_VERTICES_DATA_UV_OFFSET:I = 0x3


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mFragmentShader:Ljava/lang/String;

.field private mMMatrix:[F

.field private mMVPMatrix:[F

.field private mProgram:I

.field private mProjMatrix:[F

.field private mTextureID:I

.field private mTriangleVertices:Ljava/nio/FloatBuffer;

.field private final mTriangleVerticesData:[F

.field private mVMatrix:[F

.field private final mVertexShader:Ljava/lang/String;

.field private maPositionHandle:I

.field private maTextureHandle:I

.field private muMVPMatrixHandle:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 254
    const-string v0, "GLES20TriangleRenderer"

    sput-object v0, Lio/appium/android/apis/graphics/GLES20TriangleRenderer;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 216
    const/16 v0, 0xf

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    iput-object v0, p0, Lio/appium/android/apis/graphics/GLES20TriangleRenderer;->mTriangleVerticesData:[F

    .line 224
    const-string v0, "uniform mat4 uMVPMatrix;\nattribute vec4 aPosition;\nattribute vec2 aTextureCoord;\nvarying vec2 vTextureCoord;\nvoid main() {\n  gl_Position = uMVPMatrix * aPosition;\n  vTextureCoord = aTextureCoord;\n}\n"

    iput-object v0, p0, Lio/appium/android/apis/graphics/GLES20TriangleRenderer;->mVertexShader:Ljava/lang/String;

    .line 234
    const-string v0, "precision mediump float;\nvarying vec2 vTextureCoord;\nuniform sampler2D sTexture;\nvoid main() {\n  gl_FragColor = texture2D(sTexture, vTextureCoord);\n}\n"

    iput-object v0, p0, Lio/appium/android/apis/graphics/GLES20TriangleRenderer;->mFragmentShader:Ljava/lang/String;

    .line 242
    const/16 v0, 0x10

    new-array v1, v0, [F

    iput-object v1, p0, Lio/appium/android/apis/graphics/GLES20TriangleRenderer;->mMVPMatrix:[F

    .line 243
    new-array v1, v0, [F

    iput-object v1, p0, Lio/appium/android/apis/graphics/GLES20TriangleRenderer;->mProjMatrix:[F

    .line 244
    new-array v1, v0, [F

    iput-object v1, p0, Lio/appium/android/apis/graphics/GLES20TriangleRenderer;->mMMatrix:[F

    .line 245
    new-array v0, v0, [F

    iput-object v0, p0, Lio/appium/android/apis/graphics/GLES20TriangleRenderer;->mVMatrix:[F

    .line 43
    iput-object p1, p0, Lio/appium/android/apis/graphics/GLES20TriangleRenderer;->mContext:Landroid/content/Context;

    .line 44
    iget-object v0, p0, Lio/appium/android/apis/graphics/GLES20TriangleRenderer;->mTriangleVerticesData:[F

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 45
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lio/appium/android/apis/graphics/GLES20TriangleRenderer;->mTriangleVertices:Ljava/nio/FloatBuffer;

    .line 46
    iget-object v0, p0, Lio/appium/android/apis/graphics/GLES20TriangleRenderer;->mTriangleVertices:Ljava/nio/FloatBuffer;

    iget-object v1, p0, Lio/appium/android/apis/graphics/GLES20TriangleRenderer;->mTriangleVerticesData:[F

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 47
    return-void

    :array_0
    .array-data 4
        -0x40800000    # -1.0f
        -0x41000000    # -0.5f
        0x0
        -0x41000000    # -0.5f
        0x0
        0x3f800000    # 1.0f
        -0x41000000    # -0.5f
        0x0
        0x3fc00000    # 1.5f
        -0x80000000
        0x0
        0x3f8f1bbd
        0x0
        0x3f000000    # 0.5f
        0x3fcf1bbd
    .end array-data
.end method

.method private checkGlError(Ljava/lang/String;)V
    .locals 4
    .param p1, "op"    # Ljava/lang/String;

    .line 206
    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result v0

    move v1, v0

    .local v1, "error":I
    if-nez v0, :cond_0

    .line 210
    return-void

    .line 207
    :cond_0
    sget-object v0, Lio/appium/android/apis/graphics/GLES20TriangleRenderer;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": glError "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": glError "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private createProgram(Ljava/lang/String;Ljava/lang/String;)I
    .locals 7
    .param p1, "vertexSource"    # Ljava/lang/String;
    .param p2, "fragmentSource"    # Ljava/lang/String;

    .line 175
    const v0, 0x8b31

    invoke-direct {p0, v0, p1}, Lio/appium/android/apis/graphics/GLES20TriangleRenderer;->loadShader(ILjava/lang/String;)I

    move-result v0

    .line 176
    .local v0, "vertexShader":I
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 177
    return v1

    .line 180
    :cond_0
    const v2, 0x8b30

    invoke-direct {p0, v2, p2}, Lio/appium/android/apis/graphics/GLES20TriangleRenderer;->loadShader(ILjava/lang/String;)I

    move-result v2

    .line 181
    .local v2, "pixelShader":I
    if-nez v2, :cond_1

    .line 182
    return v1

    .line 185
    :cond_1
    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    move-result v3

    .line 186
    .local v3, "program":I
    if-eqz v3, :cond_2

    .line 187
    invoke-static {v3, v0}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 188
    const-string v4, "glAttachShader"

    invoke-direct {p0, v4}, Lio/appium/android/apis/graphics/GLES20TriangleRenderer;->checkGlError(Ljava/lang/String;)V

    .line 189
    invoke-static {v3, v2}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 190
    const-string v4, "glAttachShader"

    invoke-direct {p0, v4}, Lio/appium/android/apis/graphics/GLES20TriangleRenderer;->checkGlError(Ljava/lang/String;)V

    .line 191
    invoke-static {v3}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    .line 192
    const/4 v4, 0x1

    new-array v5, v4, [I

    .line 193
    .local v5, "linkStatus":[I
    const v6, 0x8b82

    invoke-static {v3, v6, v5, v1}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    .line 194
    aget v1, v5, v1

    if-eq v1, v4, :cond_2

    .line 195
    sget-object v1, Lio/appium/android/apis/graphics/GLES20TriangleRenderer;->TAG:Ljava/lang/String;

    const-string v4, "Could not link program: "

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    sget-object v1, Lio/appium/android/apis/graphics/GLES20TriangleRenderer;->TAG:Ljava/lang/String;

    invoke-static {v3}, Landroid/opengl/GLES20;->glGetProgramInfoLog(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    invoke-static {v3}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    .line 198
    const/4 v3, 0x0

    .line 201
    .end local v5    # "linkStatus":[I
    :cond_2
    return v3
.end method

.method private loadShader(ILjava/lang/String;)I
    .locals 5
    .param p1, "shaderType"    # I
    .param p2, "source"    # Ljava/lang/String;

    .line 158
    invoke-static {p1}, Landroid/opengl/GLES20;->glCreateShader(I)I

    move-result v0

    .line 159
    .local v0, "shader":I
    if-eqz v0, :cond_0

    .line 160
    invoke-static {v0, p2}, Landroid/opengl/GLES20;->glShaderSource(ILjava/lang/String;)V

    .line 161
    invoke-static {v0}, Landroid/opengl/GLES20;->glCompileShader(I)V

    .line 162
    const/4 v1, 0x1

    new-array v1, v1, [I

    .line 163
    .local v1, "compiled":[I
    const v2, 0x8b81

    const/4 v3, 0x0

    invoke-static {v0, v2, v1, v3}, Landroid/opengl/GLES20;->glGetShaderiv(II[II)V

    .line 164
    aget v2, v1, v3

    if-nez v2, :cond_0

    .line 165
    sget-object v2, Lio/appium/android/apis/graphics/GLES20TriangleRenderer;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not compile shader "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    sget-object v2, Lio/appium/android/apis/graphics/GLES20TriangleRenderer;->TAG:Ljava/lang/String;

    invoke-static {v0}, Landroid/opengl/GLES20;->glGetShaderInfoLog(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 168
    const/4 v0, 0x0

    .line 171
    .end local v1    # "compiled":[I
    :cond_0
    return v0
.end method


# virtual methods
.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 19
    .param p1, "glUnused"    # Ljavax/microedition/khronos/opengles/GL10;

    .line 52
    move-object/from16 v0, p0

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-static {v2, v2, v1, v1}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    .line 53
    const/16 v1, 0x4100

    invoke-static {v1}, Landroid/opengl/GLES20;->glClear(I)V

    .line 54
    iget v1, v0, Lio/appium/android/apis/graphics/GLES20TriangleRenderer;->mProgram:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 55
    const-string v1, "glUseProgram"

    invoke-direct {v0, v1}, Lio/appium/android/apis/graphics/GLES20TriangleRenderer;->checkGlError(Ljava/lang/String;)V

    .line 57
    const v1, 0x84c0

    invoke-static {v1}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 58
    iget v1, v0, Lio/appium/android/apis/graphics/GLES20TriangleRenderer;->mTextureID:I

    const/16 v2, 0xde1

    invoke-static {v2, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 60
    iget-object v1, v0, Lio/appium/android/apis/graphics/GLES20TriangleRenderer;->mTriangleVertices:Ljava/nio/FloatBuffer;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 61
    iget v3, v0, Lio/appium/android/apis/graphics/GLES20TriangleRenderer;->maPositionHandle:I

    iget-object v8, v0, Lio/appium/android/apis/graphics/GLES20TriangleRenderer;->mTriangleVertices:Ljava/nio/FloatBuffer;

    const/4 v4, 0x3

    const/16 v5, 0x1406

    const/4 v6, 0x0

    const/16 v7, 0x14

    invoke-static/range {v3 .. v8}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 63
    const-string v1, "glVertexAttribPointer maPosition"

    invoke-direct {v0, v1}, Lio/appium/android/apis/graphics/GLES20TriangleRenderer;->checkGlError(Ljava/lang/String;)V

    .line 64
    iget-object v1, v0, Lio/appium/android/apis/graphics/GLES20TriangleRenderer;->mTriangleVertices:Ljava/nio/FloatBuffer;

    const/4 v3, 0x3

    invoke-virtual {v1, v3}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 65
    iget v1, v0, Lio/appium/android/apis/graphics/GLES20TriangleRenderer;->maPositionHandle:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 66
    const-string v1, "glEnableVertexAttribArray maPositionHandle"

    invoke-direct {v0, v1}, Lio/appium/android/apis/graphics/GLES20TriangleRenderer;->checkGlError(Ljava/lang/String;)V

    .line 67
    iget v4, v0, Lio/appium/android/apis/graphics/GLES20TriangleRenderer;->maTextureHandle:I

    iget-object v9, v0, Lio/appium/android/apis/graphics/GLES20TriangleRenderer;->mTriangleVertices:Ljava/nio/FloatBuffer;

    const/4 v5, 0x2

    const/16 v6, 0x1406

    const/4 v7, 0x0

    const/16 v8, 0x14

    invoke-static/range {v4 .. v9}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 69
    const-string v1, "glVertexAttribPointer maTextureHandle"

    invoke-direct {v0, v1}, Lio/appium/android/apis/graphics/GLES20TriangleRenderer;->checkGlError(Ljava/lang/String;)V

    .line 70
    iget v1, v0, Lio/appium/android/apis/graphics/GLES20TriangleRenderer;->maTextureHandle:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 71
    const-string v1, "glEnableVertexAttribArray maTextureHandle"

    invoke-direct {v0, v1}, Lio/appium/android/apis/graphics/GLES20TriangleRenderer;->checkGlError(Ljava/lang/String;)V

    .line 73
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0xfa0

    rem-long/2addr v4, v6

    .line 74
    .local v4, "time":J
    long-to-int v1, v4

    int-to-float v1, v1

    const v6, 0x3db851ec    # 0.09f

    mul-float v1, v1, v6

    .line 75
    .local v1, "angle":F
    iget-object v7, v0, Lio/appium/android/apis/graphics/GLES20TriangleRenderer;->mMMatrix:[F

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/high16 v12, 0x3f800000    # 1.0f

    move v9, v1

    invoke-static/range {v7 .. v12}, Landroid/opengl/Matrix;->setRotateM([FIFFFF)V

    .line 76
    iget-object v13, v0, Lio/appium/android/apis/graphics/GLES20TriangleRenderer;->mMVPMatrix:[F

    iget-object v15, v0, Lio/appium/android/apis/graphics/GLES20TriangleRenderer;->mVMatrix:[F

    iget-object v6, v0, Lio/appium/android/apis/graphics/GLES20TriangleRenderer;->mMMatrix:[F

    const/4 v14, 0x0

    const/16 v16, 0x0

    const/16 v18, 0x0

    move-object/from16 v17, v6

    invoke-static/range {v13 .. v18}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 77
    iget-object v11, v0, Lio/appium/android/apis/graphics/GLES20TriangleRenderer;->mMVPMatrix:[F

    iget-object v9, v0, Lio/appium/android/apis/graphics/GLES20TriangleRenderer;->mProjMatrix:[F

    const/4 v10, 0x0

    const/4 v12, 0x0

    move-object v7, v11

    invoke-static/range {v7 .. v12}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 79
    iget v6, v0, Lio/appium/android/apis/graphics/GLES20TriangleRenderer;->muMVPMatrixHandle:I

    iget-object v7, v0, Lio/appium/android/apis/graphics/GLES20TriangleRenderer;->mMVPMatrix:[F

    const/4 v8, 0x1

    invoke-static {v6, v8, v2, v7, v2}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 80
    const/4 v6, 0x4

    invoke-static {v6, v2, v3}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 81
    const-string v2, "glDrawArrays"

    invoke-direct {v0, v2}, Lio/appium/android/apis/graphics/GLES20TriangleRenderer;->checkGlError(Ljava/lang/String;)V

    .line 82
    return-void
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 10
    .param p1, "glUnused"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .line 87
    const/4 v0, 0x0

    invoke-static {v0, v0, p2, p3}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 88
    int-to-float v0, p2

    int-to-float v1, p3

    div-float/2addr v0, v1

    .line 89
    .local v0, "ratio":F
    iget-object v2, p0, Lio/appium/android/apis/graphics/GLES20TriangleRenderer;->mProjMatrix:[F

    neg-float v4, v0

    const/4 v3, 0x0

    const/high16 v6, -0x40800000    # -1.0f

    const/high16 v7, 0x3f800000    # 1.0f

    const/high16 v8, 0x40400000    # 3.0f

    const/high16 v9, 0x40e00000    # 7.0f

    move v5, v0

    invoke-static/range {v2 .. v9}, Landroid/opengl/Matrix;->frustumM([FIFFFFFF)V

    .line 90
    return-void
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 18
    .param p1, "glUnused"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2, "config"    # Ljavax/microedition/khronos/egl/EGLConfig;

    .line 95
    move-object/from16 v1, p0

    const-string v0, "uniform mat4 uMVPMatrix;\nattribute vec4 aPosition;\nattribute vec2 aTextureCoord;\nvarying vec2 vTextureCoord;\nvoid main() {\n  gl_Position = uMVPMatrix * aPosition;\n  vTextureCoord = aTextureCoord;\n}\n"

    const-string v2, "precision mediump float;\nvarying vec2 vTextureCoord;\nuniform sampler2D sTexture;\nvoid main() {\n  gl_FragColor = texture2D(sTexture, vTextureCoord);\n}\n"

    invoke-direct {v1, v0, v2}, Lio/appium/android/apis/graphics/GLES20TriangleRenderer;->createProgram(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, v1, Lio/appium/android/apis/graphics/GLES20TriangleRenderer;->mProgram:I

    .line 96
    iget v0, v1, Lio/appium/android/apis/graphics/GLES20TriangleRenderer;->mProgram:I

    if-nez v0, :cond_0

    .line 97
    return-void

    .line 99
    :cond_0
    const-string v2, "aPosition"

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, v1, Lio/appium/android/apis/graphics/GLES20TriangleRenderer;->maPositionHandle:I

    .line 100
    const-string v0, "glGetAttribLocation aPosition"

    invoke-direct {v1, v0}, Lio/appium/android/apis/graphics/GLES20TriangleRenderer;->checkGlError(Ljava/lang/String;)V

    .line 101
    iget v0, v1, Lio/appium/android/apis/graphics/GLES20TriangleRenderer;->maPositionHandle:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_3

    .line 104
    iget v0, v1, Lio/appium/android/apis/graphics/GLES20TriangleRenderer;->mProgram:I

    const-string v3, "aTextureCoord"

    invoke-static {v0, v3}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, v1, Lio/appium/android/apis/graphics/GLES20TriangleRenderer;->maTextureHandle:I

    .line 105
    const-string v0, "glGetAttribLocation aTextureCoord"

    invoke-direct {v1, v0}, Lio/appium/android/apis/graphics/GLES20TriangleRenderer;->checkGlError(Ljava/lang/String;)V

    .line 106
    iget v0, v1, Lio/appium/android/apis/graphics/GLES20TriangleRenderer;->maTextureHandle:I

    if-eq v0, v2, :cond_2

    .line 110
    iget v0, v1, Lio/appium/android/apis/graphics/GLES20TriangleRenderer;->mProgram:I

    const-string v3, "uMVPMatrix"

    invoke-static {v0, v3}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, v1, Lio/appium/android/apis/graphics/GLES20TriangleRenderer;->muMVPMatrixHandle:I

    .line 111
    const-string v0, "glGetUniformLocation uMVPMatrix"

    invoke-direct {v1, v0}, Lio/appium/android/apis/graphics/GLES20TriangleRenderer;->checkGlError(Ljava/lang/String;)V

    .line 112
    iget v0, v1, Lio/appium/android/apis/graphics/GLES20TriangleRenderer;->muMVPMatrixHandle:I

    if-eq v0, v2, :cond_1

    .line 121
    const/4 v0, 0x1

    new-array v2, v0, [I

    .line 122
    .local v2, "textures":[I
    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 124
    aget v0, v2, v3

    iput v0, v1, Lio/appium/android/apis/graphics/GLES20TriangleRenderer;->mTextureID:I

    .line 125
    iget v0, v1, Lio/appium/android/apis/graphics/GLES20TriangleRenderer;->mTextureID:I

    const/16 v4, 0xde1

    invoke-static {v4, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 127
    const/16 v0, 0x2801

    const/high16 v5, 0x46180000    # 9728.0f

    invoke-static {v4, v0, v5}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 129
    const/16 v0, 0x2800

    const v5, 0x46180400    # 9729.0f

    invoke-static {v4, v0, v5}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 133
    const/16 v0, 0x2802

    const/16 v5, 0x2901

    invoke-static {v4, v0, v5}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 135
    const/16 v0, 0x2803

    invoke-static {v4, v0, v5}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 138
    iget-object v0, v1, Lio/appium/android/apis/graphics/GLES20TriangleRenderer;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v5, 0x7f0d0001

    .line 139
    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v5

    .line 142
    .local v5, "is":Ljava/io/InputStream;
    :try_start_0
    invoke-static {v5}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v6, v0

    .line 145
    .local v6, "bitmap":Landroid/graphics/Bitmap;
    :try_start_1
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 148
    goto :goto_0

    .line 146
    :catch_0
    move-exception v0

    .line 149
    nop

    .line 151
    :goto_0
    invoke-static {v4, v3, v6, v3}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    .line 152
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->recycle()V

    .line 154
    iget-object v7, v1, Lio/appium/android/apis/graphics/GLES20TriangleRenderer;->mVMatrix:[F

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/high16 v11, -0x3f600000    # -5.0f

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/high16 v16, 0x3f800000    # 1.0f

    const/16 v17, 0x0

    invoke-static/range {v7 .. v17}, Landroid/opengl/Matrix;->setLookAtM([FIFFFFFFFFF)V

    .line 155
    return-void

    .line 144
    .end local v6    # "bitmap":Landroid/graphics/Bitmap;
    :catchall_0
    move-exception v0

    move-object v3, v0

    .line 145
    :try_start_2
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 148
    goto :goto_1

    .line 146
    :catch_1
    move-exception v0

    .line 148
    :goto_1
    throw v3

    .line 113
    .end local v2    # "textures":[I
    .end local v5    # "is":Ljava/io/InputStream;
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "Could not get attrib location for uMVPMatrix"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 107
    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "Could not get attrib location for aTextureCoord"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 102
    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "Could not get attrib location for aPosition"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
