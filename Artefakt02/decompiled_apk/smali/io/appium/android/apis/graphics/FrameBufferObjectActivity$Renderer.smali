.class Lio/appium/android/apis/graphics/FrameBufferObjectActivity$Renderer;
.super Ljava/lang/Object;
.source "FrameBufferObjectActivity.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/appium/android/apis/graphics/FrameBufferObjectActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Renderer"
.end annotation


# static fields
.field private static final DEBUG_RENDER_OFFSCREEN_ONSCREEN:Z = false


# instance fields
.field private mAngle:F

.field private mContextSupportsFrameBufferObject:Z

.field private mCube:Lio/appium/android/apis/graphics/Cube;

.field private mFramebuffer:I

.field private mFramebufferHeight:I

.field private mFramebufferWidth:I

.field private mSurfaceHeight:I

.field private mSurfaceWidth:I

.field private mTargetTexture:I

.field private mTriangle:Lio/appium/android/apis/graphics/Triangle;

.field final synthetic this$0:Lio/appium/android/apis/graphics/FrameBufferObjectActivity;


# direct methods
.method private constructor <init>(Lio/appium/android/apis/graphics/FrameBufferObjectActivity;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lio/appium/android/apis/graphics/FrameBufferObjectActivity$Renderer;->this$0:Lio/appium/android/apis/graphics/FrameBufferObjectActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const/16 p1, 0x100

    iput p1, p0, Lio/appium/android/apis/graphics/FrameBufferObjectActivity$Renderer;->mFramebufferWidth:I

    .line 44
    iput p1, p0, Lio/appium/android/apis/graphics/FrameBufferObjectActivity$Renderer;->mFramebufferHeight:I

    return-void
.end method

.method synthetic constructor <init>(Lio/appium/android/apis/graphics/FrameBufferObjectActivity;Lio/appium/android/apis/graphics/FrameBufferObjectActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lio/appium/android/apis/graphics/FrameBufferObjectActivity;
    .param p2, "x1"    # Lio/appium/android/apis/graphics/FrameBufferObjectActivity$1;

    .line 39
    invoke-direct {p0, p1}, Lio/appium/android/apis/graphics/FrameBufferObjectActivity$Renderer;-><init>(Lio/appium/android/apis/graphics/FrameBufferObjectActivity;)V

    return-void
.end method

.method private checkIfContextSupportsExtension(Ljavax/microedition/khronos/opengles/GL10;Ljava/lang/String;)Z
    .locals 3
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2, "extension"    # Ljava/lang/String;

    .line 238
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x1f03

    invoke-interface {p1, v1}, Ljavax/microedition/khronos/opengles/GL10;->glGetString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 245
    .local v0, "extensions":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private checkIfContextSupportsFrameBufferObject(Ljavax/microedition/khronos/opengles/GL10;)Z
    .locals 1
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;

    .line 227
    const-string v0, "GL_OES_framebuffer_object"

    invoke-direct {p0, p1, v0}, Lio/appium/android/apis/graphics/FrameBufferObjectActivity$Renderer;->checkIfContextSupportsExtension(Ljavax/microedition/khronos/opengles/GL10;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private createFrameBuffer(Ljavax/microedition/khronos/opengles/GL10;III)I
    .locals 15
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "targetTextureId"    # I

    .line 195
    move-object/from16 v6, p1

    check-cast v6, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;

    .line 197
    .local v6, "gl11ep":Ljavax/microedition/khronos/opengles/GL11ExtensionPack;
    const/4 v0, 0x1

    new-array v7, v0, [I

    .line 198
    .local v7, "framebuffers":[I
    const/4 v8, 0x0

    invoke-interface {v6, v0, v7, v8}, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;->glGenFramebuffersOES(I[II)V

    .line 199
    aget v9, v7, v8

    .line 200
    .local v9, "framebuffer":I
    const v10, 0x8d40

    invoke-interface {v6, v10, v9}, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;->glBindFramebufferOES(II)V

    .line 203
    new-array v11, v0, [I

    .line 204
    .local v11, "renderbuffers":[I
    invoke-interface {v6, v0, v11, v8}, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;->glGenRenderbuffersOES(I[II)V

    .line 205
    aget v12, v11, v8

    .line 207
    .local v12, "depthbuffer":I
    const v0, 0x8d41

    invoke-interface {v6, v0, v12}, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;->glBindRenderbufferOES(II)V

    .line 208
    const v1, 0x81a5

    move/from16 v13, p2

    move/from16 v14, p3

    invoke-interface {v6, v0, v1, v13, v14}, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;->glRenderbufferStorageOES(IIII)V

    .line 210
    const v1, 0x8d00

    invoke-interface {v6, v10, v1, v0, v12}, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;->glFramebufferRenderbufferOES(IIII)V

    .line 214
    const v1, 0x8d40

    const v2, 0x8ce0

    const/16 v3, 0xde1

    const/4 v5, 0x0

    move-object v0, v6

    move/from16 v4, p4

    invoke-interface/range {v0 .. v5}, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;->glFramebufferTexture2DOES(IIIII)V

    .line 217
    invoke-interface {v6, v10}, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;->glCheckFramebufferStatusOES(I)I

    move-result v0

    .line 218
    .local v0, "status":I
    const v1, 0x8cd5

    if-ne v0, v1, :cond_0

    .line 222
    invoke-interface {v6, v10, v8}, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;->glBindFramebufferOES(II)V

    .line 223
    return v9

    .line 219
    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Framebuffer is not complete: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private createTargetTexture(Ljavax/microedition/khronos/opengles/GL10;II)I
    .locals 14
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .line 176
    move-object v10, p1

    const/4 v0, 0x1

    new-array v11, v0, [I

    .line 177
    .local v11, "textures":[I
    const/4 v1, 0x0

    invoke-interface {p1, v0, v11, v1}, Ljavax/microedition/khronos/opengles/GL10;->glGenTextures(I[II)V

    .line 178
    aget v12, v11, v1

    .line 179
    .local v12, "texture":I
    const/16 v13, 0xde1

    invoke-interface {p1, v13, v12}, Ljavax/microedition/khronos/opengles/GL10;->glBindTexture(II)V

    .line 180
    const/16 v1, 0xde1

    const/4 v2, 0x0

    const/16 v3, 0x1908

    const/4 v6, 0x0

    const/16 v7, 0x1908

    const/16 v8, 0x1401

    const/4 v9, 0x0

    move-object v0, p1

    move/from16 v4, p2

    move/from16 v5, p3

    invoke-interface/range {v0 .. v9}, Ljavax/microedition/khronos/opengles/GL10;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    .line 182
    const/16 v0, 0x2801

    const/high16 v1, 0x46180000    # 9728.0f

    invoke-interface {p1, v13, v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterf(IIF)V

    .line 184
    const/16 v0, 0x2800

    const v1, 0x46180400    # 9729.0f

    invoke-interface {p1, v13, v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterf(IIF)V

    .line 187
    const/16 v0, 0x2901

    const/16 v1, 0x2802

    invoke-interface {p1, v13, v1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterx(III)V

    .line 189
    const/16 v1, 0x2803

    invoke-interface {p1, v13, v1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterx(III)V

    .line 191
    return v12
.end method

.method private drawOffscreenImage(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 10
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .line 137
    const/4 v0, 0x0

    invoke-interface {p1, v0, v0, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glViewport(IIII)V

    .line 138
    int-to-float v0, p2

    int-to-float v1, p3

    div-float/2addr v0, v1

    .line 139
    .local v0, "ratio":F
    const/16 v1, 0x1701

    invoke-interface {p1, v1}, Ljavax/microedition/khronos/opengles/GL10;->glMatrixMode(I)V

    .line 140
    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    .line 141
    neg-float v3, v0

    const/high16 v5, -0x40800000    # -1.0f

    const/high16 v6, 0x3f800000    # 1.0f

    const/high16 v7, 0x3f800000    # 1.0f

    const/high16 v8, 0x41200000    # 10.0f

    move-object v2, p1

    move v4, v0

    invoke-interface/range {v2 .. v8}, Ljavax/microedition/khronos/opengles/GL10;->glFrustumf(FFFFFF)V

    .line 143
    const/16 v1, 0xb44

    invoke-interface {p1, v1}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    .line 144
    const/16 v2, 0xb71

    invoke-interface {p1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    .line 146
    const/high16 v3, 0x3f000000    # 0.5f

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    invoke-interface {p1, v5, v3, v4, v5}, Ljavax/microedition/khronos/opengles/GL10;->glClearColor(FFFF)V

    .line 147
    const/16 v6, 0x4100

    invoke-interface {p1, v6}, Ljavax/microedition/khronos/opengles/GL10;->glClear(I)V

    .line 148
    const/16 v6, 0x1700

    invoke-interface {p1, v6}, Ljavax/microedition/khronos/opengles/GL10;->glMatrixMode(I)V

    .line 149
    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    .line 150
    const/high16 v6, -0x3fc00000    # -3.0f

    invoke-interface {p1, v5, v5, v6}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    .line 151
    iget v6, p0, Lio/appium/android/apis/graphics/FrameBufferObjectActivity$Renderer;->mAngle:F

    invoke-interface {p1, v6, v5, v4, v5}, Ljavax/microedition/khronos/opengles/GL10;->glRotatef(FFFF)V

    .line 152
    iget v6, p0, Lio/appium/android/apis/graphics/FrameBufferObjectActivity$Renderer;->mAngle:F

    const/high16 v7, 0x3e800000    # 0.25f

    mul-float v6, v6, v7

    invoke-interface {p1, v6, v4, v5, v5}, Ljavax/microedition/khronos/opengles/GL10;->glRotatef(FFFF)V

    .line 154
    const v6, 0x8074

    invoke-interface {p1, v6}, Ljavax/microedition/khronos/opengles/GL10;->glEnableClientState(I)V

    .line 155
    const v7, 0x8076

    invoke-interface {p1, v7}, Ljavax/microedition/khronos/opengles/GL10;->glEnableClientState(I)V

    .line 157
    iget-object v8, p0, Lio/appium/android/apis/graphics/FrameBufferObjectActivity$Renderer;->mCube:Lio/appium/android/apis/graphics/Cube;

    invoke-virtual {v8, p1}, Lio/appium/android/apis/graphics/Cube;->draw(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 159
    iget v8, p0, Lio/appium/android/apis/graphics/FrameBufferObjectActivity$Renderer;->mAngle:F

    const/high16 v9, 0x40000000    # 2.0f

    mul-float v8, v8, v9

    invoke-interface {p1, v8, v5, v4, v4}, Ljavax/microedition/khronos/opengles/GL10;->glRotatef(FFFF)V

    .line 160
    invoke-interface {p1, v3, v3, v3}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    .line 162
    iget-object v3, p0, Lio/appium/android/apis/graphics/FrameBufferObjectActivity$Renderer;->mCube:Lio/appium/android/apis/graphics/Cube;

    invoke-virtual {v3, p1}, Lio/appium/android/apis/graphics/Cube;->draw(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 164
    iget v3, p0, Lio/appium/android/apis/graphics/FrameBufferObjectActivity$Renderer;->mAngle:F

    const v4, 0x3f99999a    # 1.2f

    add-float/2addr v3, v4

    iput v3, p0, Lio/appium/android/apis/graphics/FrameBufferObjectActivity$Renderer;->mAngle:F

    .line 168
    invoke-interface {p1, v1}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    .line 169
    invoke-interface {p1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    .line 170
    invoke-interface {p1, v6}, Ljavax/microedition/khronos/opengles/GL10;->glDisableClientState(I)V

    .line 171
    invoke-interface {p1, v7}, Ljavax/microedition/khronos/opengles/GL10;->glDisableClientState(I)V

    .line 172
    return-void
.end method

.method private drawOnscreen(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 19
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .line 99
    move-object/from16 v0, p0

    move-object/from16 v11, p1

    move/from16 v12, p2

    move/from16 v13, p3

    const/4 v14, 0x0

    invoke-interface {v11, v14, v14, v12, v13}, Ljavax/microedition/khronos/opengles/GL10;->glViewport(IIII)V

    .line 100
    int-to-float v1, v12

    int-to-float v2, v13

    div-float v15, v1, v2

    .line 101
    .local v15, "ratio":F
    const/16 v1, 0x1701

    invoke-interface {v11, v1}, Ljavax/microedition/khronos/opengles/GL10;->glMatrixMode(I)V

    .line 102
    invoke-interface/range {p1 .. p1}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    .line 103
    neg-float v2, v15

    const/high16 v4, -0x40800000    # -1.0f

    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v6, 0x40400000    # 3.0f

    const/high16 v7, 0x40e00000    # 7.0f

    move-object/from16 v1, p1

    move v3, v15

    invoke-interface/range {v1 .. v7}, Ljavax/microedition/khronos/opengles/GL10;->glFrustumf(FFFFFF)V

    .line 105
    const/high16 v10, 0x3f800000    # 1.0f

    const/4 v9, 0x0

    invoke-interface {v11, v9, v9, v10, v9}, Ljavax/microedition/khronos/opengles/GL10;->glClearColor(FFFF)V

    .line 106
    const/16 v1, 0x4100

    invoke-interface {v11, v1}, Ljavax/microedition/khronos/opengles/GL10;->glClear(I)V

    .line 107
    iget v1, v0, Lio/appium/android/apis/graphics/FrameBufferObjectActivity$Renderer;->mTargetTexture:I

    const/16 v8, 0xde1

    invoke-interface {v11, v8, v1}, Ljavax/microedition/khronos/opengles/GL10;->glBindTexture(II)V

    .line 109
    const/16 v1, 0x2300

    const/16 v2, 0x2200

    const v3, 0x45f00800    # 7681.0f

    invoke-interface {v11, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glTexEnvf(IIF)V

    .line 112
    const/16 v1, 0x1700

    invoke-interface {v11, v1}, Ljavax/microedition/khronos/opengles/GL10;->glMatrixMode(I)V

    .line 113
    invoke-interface/range {p1 .. p1}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    .line 115
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/high16 v4, -0x3f600000    # -5.0f

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v16, 0x0

    const/high16 v17, 0x3f800000    # 1.0f

    const/16 v18, 0x0

    move-object/from16 v1, p1

    const/16 v14, 0xde1

    move/from16 v8, v16

    const/4 v14, 0x0

    move/from16 v9, v17

    const/high16 v14, 0x3f800000    # 1.0f

    move/from16 v10, v18

    invoke-static/range {v1 .. v10}, Landroid/opengl/GLU;->gluLookAt(Ljavax/microedition/khronos/opengles/GL10;FFFFFFFFF)V

    .line 117
    const v1, 0x8074

    invoke-interface {v11, v1}, Ljavax/microedition/khronos/opengles/GL10;->glEnableClientState(I)V

    .line 118
    const v2, 0x8078

    invoke-interface {v11, v2}, Ljavax/microedition/khronos/opengles/GL10;->glEnableClientState(I)V

    .line 120
    const v3, 0x84c0

    invoke-interface {v11, v3}, Ljavax/microedition/khronos/opengles/GL10;->glActiveTexture(I)V

    .line 122
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    const-wide/16 v5, 0xfa0

    rem-long/2addr v3, v5

    .line 123
    .local v3, "time":J
    long-to-int v5, v3

    int-to-float v5, v5

    const v6, 0x3db851ec    # 0.09f

    mul-float v5, v5, v6

    .line 125
    .local v5, "angle":F
    const/4 v6, 0x0

    invoke-interface {v11, v5, v6, v6, v14}, Ljavax/microedition/khronos/opengles/GL10;->glRotatef(FFFF)V

    .line 127
    iget-object v6, v0, Lio/appium/android/apis/graphics/FrameBufferObjectActivity$Renderer;->mTriangle:Lio/appium/android/apis/graphics/Triangle;

    invoke-virtual {v6, v11}, Lio/appium/android/apis/graphics/Triangle;->draw(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 131
    const/4 v6, 0x0

    const/16 v7, 0xde1

    invoke-interface {v11, v7, v6}, Ljavax/microedition/khronos/opengles/GL10;->glBindTexture(II)V

    .line 132
    invoke-interface {v11, v1}, Ljavax/microedition/khronos/opengles/GL10;->glDisableClientState(I)V

    .line 133
    invoke-interface {v11, v2}, Ljavax/microedition/khronos/opengles/GL10;->glDisableClientState(I)V

    .line 134
    return-void
.end method


# virtual methods
.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 4
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;

    .line 61
    invoke-static {p1}, Lio/appium/android/apis/graphics/FrameBufferObjectActivity;->checkGLError(Ljavax/microedition/khronos/opengles/GL;)V

    .line 62
    iget-boolean v0, p0, Lio/appium/android/apis/graphics/FrameBufferObjectActivity$Renderer;->mContextSupportsFrameBufferObject:Z

    if-eqz v0, :cond_0

    .line 63
    move-object v0, p1

    check-cast v0, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;

    .line 67
    .local v0, "gl11ep":Ljavax/microedition/khronos/opengles/GL11ExtensionPack;
    iget v1, p0, Lio/appium/android/apis/graphics/FrameBufferObjectActivity$Renderer;->mFramebuffer:I

    const v2, 0x8d40

    invoke-interface {v0, v2, v1}, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;->glBindFramebufferOES(II)V

    .line 68
    iget v1, p0, Lio/appium/android/apis/graphics/FrameBufferObjectActivity$Renderer;->mFramebufferWidth:I

    iget v3, p0, Lio/appium/android/apis/graphics/FrameBufferObjectActivity$Renderer;->mFramebufferHeight:I

    invoke-direct {p0, p1, v1, v3}, Lio/appium/android/apis/graphics/FrameBufferObjectActivity$Renderer;->drawOffscreenImage(Ljavax/microedition/khronos/opengles/GL10;II)V

    .line 69
    const/4 v1, 0x0

    invoke-interface {v0, v2, v1}, Ljavax/microedition/khronos/opengles/GL11ExtensionPack;->glBindFramebufferOES(II)V

    .line 70
    iget v1, p0, Lio/appium/android/apis/graphics/FrameBufferObjectActivity$Renderer;->mSurfaceWidth:I

    iget v2, p0, Lio/appium/android/apis/graphics/FrameBufferObjectActivity$Renderer;->mSurfaceHeight:I

    invoke-direct {p0, p1, v1, v2}, Lio/appium/android/apis/graphics/FrameBufferObjectActivity$Renderer;->drawOnscreen(Ljavax/microedition/khronos/opengles/GL10;II)V

    .line 72
    .end local v0    # "gl11ep":Ljavax/microedition/khronos/opengles/GL11ExtensionPack;
    goto :goto_0

    .line 75
    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1, v1, v1}, Ljavax/microedition/khronos/opengles/GL10;->glClearColor(FFFF)V

    .line 76
    const/16 v0, 0x4100

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glClear(I)V

    .line 78
    :goto_0
    return-void
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 1
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .line 81
    invoke-static {p1}, Lio/appium/android/apis/graphics/FrameBufferObjectActivity;->checkGLError(Ljavax/microedition/khronos/opengles/GL;)V

    .line 82
    iput p2, p0, Lio/appium/android/apis/graphics/FrameBufferObjectActivity$Renderer;->mSurfaceWidth:I

    .line 83
    iput p3, p0, Lio/appium/android/apis/graphics/FrameBufferObjectActivity$Renderer;->mSurfaceHeight:I

    .line 84
    const/4 v0, 0x0

    invoke-interface {p1, v0, v0, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glViewport(IIII)V

    .line 85
    return-void
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 3
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2, "config"    # Ljavax/microedition/khronos/egl/EGLConfig;

    .line 88
    invoke-direct {p0, p1}, Lio/appium/android/apis/graphics/FrameBufferObjectActivity$Renderer;->checkIfContextSupportsFrameBufferObject(Ljavax/microedition/khronos/opengles/GL10;)Z

    move-result v0

    iput-boolean v0, p0, Lio/appium/android/apis/graphics/FrameBufferObjectActivity$Renderer;->mContextSupportsFrameBufferObject:Z

    .line 89
    iget-boolean v0, p0, Lio/appium/android/apis/graphics/FrameBufferObjectActivity$Renderer;->mContextSupportsFrameBufferObject:Z

    if-eqz v0, :cond_0

    .line 90
    iget v0, p0, Lio/appium/android/apis/graphics/FrameBufferObjectActivity$Renderer;->mFramebufferWidth:I

    iget v1, p0, Lio/appium/android/apis/graphics/FrameBufferObjectActivity$Renderer;->mFramebufferHeight:I

    invoke-direct {p0, p1, v0, v1}, Lio/appium/android/apis/graphics/FrameBufferObjectActivity$Renderer;->createTargetTexture(Ljavax/microedition/khronos/opengles/GL10;II)I

    move-result v0

    iput v0, p0, Lio/appium/android/apis/graphics/FrameBufferObjectActivity$Renderer;->mTargetTexture:I

    .line 91
    iget v0, p0, Lio/appium/android/apis/graphics/FrameBufferObjectActivity$Renderer;->mFramebufferWidth:I

    iget v1, p0, Lio/appium/android/apis/graphics/FrameBufferObjectActivity$Renderer;->mFramebufferHeight:I

    iget v2, p0, Lio/appium/android/apis/graphics/FrameBufferObjectActivity$Renderer;->mTargetTexture:I

    invoke-direct {p0, p1, v0, v1, v2}, Lio/appium/android/apis/graphics/FrameBufferObjectActivity$Renderer;->createFrameBuffer(Ljavax/microedition/khronos/opengles/GL10;III)I

    move-result v0

    iput v0, p0, Lio/appium/android/apis/graphics/FrameBufferObjectActivity$Renderer;->mFramebuffer:I

    .line 93
    new-instance v0, Lio/appium/android/apis/graphics/Cube;

    invoke-direct {v0}, Lio/appium/android/apis/graphics/Cube;-><init>()V

    iput-object v0, p0, Lio/appium/android/apis/graphics/FrameBufferObjectActivity$Renderer;->mCube:Lio/appium/android/apis/graphics/Cube;

    .line 94
    new-instance v0, Lio/appium/android/apis/graphics/Triangle;

    invoke-direct {v0}, Lio/appium/android/apis/graphics/Triangle;-><init>()V

    iput-object v0, p0, Lio/appium/android/apis/graphics/FrameBufferObjectActivity$Renderer;->mTriangle:Lio/appium/android/apis/graphics/Triangle;

    .line 96
    :cond_0
    return-void
.end method
