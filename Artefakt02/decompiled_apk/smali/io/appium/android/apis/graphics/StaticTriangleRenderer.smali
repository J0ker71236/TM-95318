.class public Lio/appium/android/apis/graphics/StaticTriangleRenderer;
.super Ljava/lang/Object;
.source "StaticTriangleRenderer.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/appium/android/apis/graphics/StaticTriangleRenderer$Triangle;,
        Lio/appium/android/apis/graphics/StaticTriangleRenderer$RobotTextureLoader;,
        Lio/appium/android/apis/graphics/StaticTriangleRenderer$TextureLoader;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mTextureID:I

.field private mTextureLoader:Lio/appium/android/apis/graphics/StaticTriangleRenderer$TextureLoader;

.field private mTriangle:Lio/appium/android/apis/graphics/StaticTriangleRenderer$Triangle;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    new-instance v0, Lio/appium/android/apis/graphics/StaticTriangleRenderer$RobotTextureLoader;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/appium/android/apis/graphics/StaticTriangleRenderer$RobotTextureLoader;-><init>(Lio/appium/android/apis/graphics/StaticTriangleRenderer;Lio/appium/android/apis/graphics/StaticTriangleRenderer$1;)V

    invoke-direct {p0, p1, v0}, Lio/appium/android/apis/graphics/StaticTriangleRenderer;->init(Landroid/content/Context;Lio/appium/android/apis/graphics/StaticTriangleRenderer$TextureLoader;)V

    .line 62
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lio/appium/android/apis/graphics/StaticTriangleRenderer$TextureLoader;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "loader"    # Lio/appium/android/apis/graphics/StaticTriangleRenderer$TextureLoader;

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    invoke-direct {p0, p1, p2}, Lio/appium/android/apis/graphics/StaticTriangleRenderer;->init(Landroid/content/Context;Lio/appium/android/apis/graphics/StaticTriangleRenderer$TextureLoader;)V

    .line 66
    return-void
.end method

.method static synthetic access$100(Lio/appium/android/apis/graphics/StaticTriangleRenderer;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lio/appium/android/apis/graphics/StaticTriangleRenderer;

    .line 51
    iget-object v0, p0, Lio/appium/android/apis/graphics/StaticTriangleRenderer;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private init(Landroid/content/Context;Lio/appium/android/apis/graphics/StaticTriangleRenderer$TextureLoader;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "loader"    # Lio/appium/android/apis/graphics/StaticTriangleRenderer$TextureLoader;

    .line 69
    iput-object p1, p0, Lio/appium/android/apis/graphics/StaticTriangleRenderer;->mContext:Landroid/content/Context;

    .line 70
    new-instance v0, Lio/appium/android/apis/graphics/StaticTriangleRenderer$Triangle;

    invoke-direct {v0}, Lio/appium/android/apis/graphics/StaticTriangleRenderer$Triangle;-><init>()V

    iput-object v0, p0, Lio/appium/android/apis/graphics/StaticTriangleRenderer;->mTriangle:Lio/appium/android/apis/graphics/StaticTriangleRenderer$Triangle;

    .line 71
    iput-object p2, p0, Lio/appium/android/apis/graphics/StaticTriangleRenderer;->mTextureLoader:Lio/appium/android/apis/graphics/StaticTriangleRenderer$TextureLoader;

    .line 72
    return-void
.end method


# virtual methods
.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 11
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;

    .line 127
    const/16 v0, 0xbd0

    invoke-static {v0}, Landroid/opengl/GLES10;->glDisable(I)V

    .line 129
    const/16 v0, 0x2300

    const/16 v1, 0x2200

    const/16 v2, 0x2100

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES10;->glTexEnvx(III)V

    .line 138
    const/16 v0, 0x4100

    invoke-static {v0}, Landroid/opengl/GLES10;->glClear(I)V

    .line 144
    const/16 v0, 0x1700

    invoke-static {v0}, Landroid/opengl/GLES10;->glMatrixMode(I)V

    .line 145
    invoke-static {}, Landroid/opengl/GLES10;->glLoadIdentity()V

    .line 147
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

    .line 149
    const v0, 0x8074

    invoke-static {v0}, Landroid/opengl/GLES10;->glEnableClientState(I)V

    .line 150
    const v0, 0x8078

    invoke-static {v0}, Landroid/opengl/GLES10;->glEnableClientState(I)V

    .line 152
    const v0, 0x84c0

    invoke-static {v0}, Landroid/opengl/GLES10;->glActiveTexture(I)V

    .line 153
    iget v0, p0, Lio/appium/android/apis/graphics/StaticTriangleRenderer;->mTextureID:I

    const/16 v1, 0xde1

    invoke-static {v1, v0}, Landroid/opengl/GLES10;->glBindTexture(II)V

    .line 154
    const/16 v0, 0x2901

    const/16 v2, 0x2802

    invoke-static {v1, v2, v0}, Landroid/opengl/GLES10;->glTexParameterx(III)V

    .line 156
    const/16 v2, 0x2803

    invoke-static {v1, v2, v0}, Landroid/opengl/GLES10;->glTexParameterx(III)V

    .line 159
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0xfa0

    rem-long/2addr v0, v2

    .line 160
    .local v0, "time":J
    long-to-int v2, v0

    int-to-float v2, v2

    const v3, 0x3db851ec    # 0.09f

    mul-float v2, v2, v3

    .line 162
    .local v2, "angle":F
    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v2, v3, v3, v4}, Landroid/opengl/GLES10;->glRotatef(FFFF)V

    .line 164
    iget-object v3, p0, Lio/appium/android/apis/graphics/StaticTriangleRenderer;->mTriangle:Lio/appium/android/apis/graphics/StaticTriangleRenderer$Triangle;

    invoke-virtual {v3, p1}, Lio/appium/android/apis/graphics/StaticTriangleRenderer$Triangle;->draw(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 165
    return-void
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 8
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2, "w"    # I
    .param p3, "h"    # I

    .line 168
    const/4 v0, 0x0

    invoke-static {v0, v0, p2, p3}, Landroid/opengl/GLES10;->glViewport(IIII)V

    .line 176
    int-to-float v0, p2

    int-to-float v1, p3

    div-float/2addr v0, v1

    .line 177
    .local v0, "ratio":F
    const/16 v1, 0x1701

    invoke-static {v1}, Landroid/opengl/GLES10;->glMatrixMode(I)V

    .line 178
    invoke-static {}, Landroid/opengl/GLES10;->glLoadIdentity()V

    .line 179
    neg-float v2, v0

    const/high16 v4, -0x40800000    # -1.0f

    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v6, 0x40400000    # 3.0f

    const/high16 v7, 0x40e00000    # 7.0f

    move v3, v0

    invoke-static/range {v2 .. v7}, Landroid/opengl/GLES10;->glFrustumf(FFFFFF)V

    .line 180
    return-void
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 4
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2, "config"    # Ljavax/microedition/khronos/egl/EGLConfig;

    .line 80
    const/16 v0, 0xbd0

    invoke-static {v0}, Landroid/opengl/GLES10;->glDisable(I)V

    .line 86
    const/16 v0, 0xc50

    const/16 v1, 0x1101

    invoke-static {v0, v1}, Landroid/opengl/GLES10;->glHint(II)V

    .line 89
    const/high16 v0, 0x3f000000    # 0.5f

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v0, v0, v1}, Landroid/opengl/GLES10;->glClearColor(FFFF)V

    .line 90
    const/16 v0, 0x1d01

    invoke-static {v0}, Landroid/opengl/GLES10;->glShadeModel(I)V

    .line 91
    const/16 v0, 0xb71

    invoke-static {v0}, Landroid/opengl/GLES10;->glEnable(I)V

    .line 92
    const/16 v0, 0xde1

    invoke-static {v0}, Landroid/opengl/GLES10;->glEnable(I)V

    .line 99
    const/4 v1, 0x1

    new-array v2, v1, [I

    .line 100
    .local v2, "textures":[I
    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/opengl/GLES10;->glGenTextures(I[II)V

    .line 102
    aget v1, v2, v3

    iput v1, p0, Lio/appium/android/apis/graphics/StaticTriangleRenderer;->mTextureID:I

    .line 103
    iget v1, p0, Lio/appium/android/apis/graphics/StaticTriangleRenderer;->mTextureID:I

    invoke-static {v0, v1}, Landroid/opengl/GLES10;->glBindTexture(II)V

    .line 105
    const/16 v1, 0x2801

    const/high16 v3, 0x46180000    # 9728.0f

    invoke-static {v0, v1, v3}, Landroid/opengl/GLES10;->glTexParameterf(IIF)V

    .line 107
    const/16 v1, 0x2800

    const v3, 0x46180400    # 9729.0f

    invoke-static {v0, v1, v3}, Landroid/opengl/GLES10;->glTexParameterf(IIF)V

    .line 111
    const v1, 0x47012f00    # 33071.0f

    const/16 v3, 0x2802

    invoke-static {v0, v3, v1}, Landroid/opengl/GLES10;->glTexParameterf(IIF)V

    .line 113
    const/16 v3, 0x2803

    invoke-static {v0, v3, v1}, Landroid/opengl/GLES10;->glTexParameterf(IIF)V

    .line 116
    const/16 v0, 0x2300

    const/16 v1, 0x2200

    const v3, 0x45f00800    # 7681.0f

    invoke-static {v0, v1, v3}, Landroid/opengl/GLES10;->glTexEnvf(IIF)V

    .line 118
    iget-object v0, p0, Lio/appium/android/apis/graphics/StaticTriangleRenderer;->mTextureLoader:Lio/appium/android/apis/graphics/StaticTriangleRenderer$TextureLoader;

    invoke-interface {v0, p1}, Lio/appium/android/apis/graphics/StaticTriangleRenderer$TextureLoader;->load(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 119
    return-void
.end method
