.class Lio/appium/android/apis/graphics/TouchSurfaceView$CubeRenderer;
.super Ljava/lang/Object;
.source "TouchRotateActivity.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/appium/android/apis/graphics/TouchSurfaceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CubeRenderer"
.end annotation


# instance fields
.field public mAngleX:F

.field public mAngleY:F

.field private mCube:Lio/appium/android/apis/graphics/Cube;

.field final synthetic this$0:Lio/appium/android/apis/graphics/TouchSurfaceView;


# direct methods
.method public constructor <init>(Lio/appium/android/apis/graphics/TouchSurfaceView;)V
    .locals 0

    .line 107
    iput-object p1, p0, Lio/appium/android/apis/graphics/TouchSurfaceView$CubeRenderer;->this$0:Lio/appium/android/apis/graphics/TouchSurfaceView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    new-instance p1, Lio/appium/android/apis/graphics/Cube;

    invoke-direct {p1}, Lio/appium/android/apis/graphics/Cube;-><init>()V

    iput-object p1, p0, Lio/appium/android/apis/graphics/TouchSurfaceView$CubeRenderer;->mCube:Lio/appium/android/apis/graphics/Cube;

    .line 109
    return-void
.end method


# virtual methods
.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 3
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;

    .line 118
    const/16 v0, 0x4100

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glClear(I)V

    .line 124
    const/16 v0, 0x1700

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glMatrixMode(I)V

    .line 125
    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    .line 126
    const/4 v0, 0x0

    const/high16 v1, -0x3fc00000    # -3.0f

    invoke-interface {p1, v0, v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    .line 127
    iget v1, p0, Lio/appium/android/apis/graphics/TouchSurfaceView$CubeRenderer;->mAngleX:F

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-interface {p1, v1, v0, v2, v0}, Ljavax/microedition/khronos/opengles/GL10;->glRotatef(FFFF)V

    .line 128
    iget v1, p0, Lio/appium/android/apis/graphics/TouchSurfaceView$CubeRenderer;->mAngleY:F

    invoke-interface {p1, v1, v2, v0, v0}, Ljavax/microedition/khronos/opengles/GL10;->glRotatef(FFFF)V

    .line 130
    const v0, 0x8074

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glEnableClientState(I)V

    .line 131
    const v0, 0x8076

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glEnableClientState(I)V

    .line 133
    iget-object v0, p0, Lio/appium/android/apis/graphics/TouchSurfaceView$CubeRenderer;->mCube:Lio/appium/android/apis/graphics/Cube;

    invoke-virtual {v0, p1}, Lio/appium/android/apis/graphics/Cube;->draw(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 134
    return-void
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 9
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .line 137
    const/4 v0, 0x0

    invoke-interface {p1, v0, v0, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glViewport(IIII)V

    .line 145
    int-to-float v0, p2

    int-to-float v1, p3

    div-float/2addr v0, v1

    .line 146
    .local v0, "ratio":F
    const/16 v1, 0x1701

    invoke-interface {p1, v1}, Ljavax/microedition/khronos/opengles/GL10;->glMatrixMode(I)V

    .line 147
    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    .line 148
    neg-float v3, v0

    const/high16 v5, -0x40800000    # -1.0f

    const/high16 v6, 0x3f800000    # 1.0f

    const/high16 v7, 0x3f800000    # 1.0f

    const/high16 v8, 0x41200000    # 10.0f

    move-object v2, p1

    move v4, v0

    invoke-interface/range {v2 .. v8}, Ljavax/microedition/khronos/opengles/GL10;->glFrustumf(FFFFFF)V

    .line 149
    return-void
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 2
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2, "config"    # Ljavax/microedition/khronos/egl/EGLConfig;

    .line 157
    const/16 v0, 0xbd0

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    .line 163
    const/16 v0, 0xc50

    const/16 v1, 0x1101

    invoke-interface {p1, v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glHint(II)V

    .line 167
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-interface {p1, v0, v0, v0, v0}, Ljavax/microedition/khronos/opengles/GL10;->glClearColor(FFFF)V

    .line 168
    const/16 v0, 0xb44

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    .line 169
    const/16 v0, 0x1d01

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glShadeModel(I)V

    .line 170
    const/16 v0, 0xb71

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    .line 171
    return-void
.end method
