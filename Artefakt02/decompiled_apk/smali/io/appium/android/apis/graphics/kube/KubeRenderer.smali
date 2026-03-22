.class Lio/appium/android/apis/graphics/kube/KubeRenderer;
.super Ljava/lang/Object;
.source "KubeRenderer.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/appium/android/apis/graphics/kube/KubeRenderer$AnimationCallback;
    }
.end annotation


# instance fields
.field private mAngle:F

.field private mCallback:Lio/appium/android/apis/graphics/kube/KubeRenderer$AnimationCallback;

.field private mWorld:Lio/appium/android/apis/graphics/kube/GLWorld;


# direct methods
.method public constructor <init>(Lio/appium/android/apis/graphics/kube/GLWorld;Lio/appium/android/apis/graphics/kube/KubeRenderer$AnimationCallback;)V
    .locals 0
    .param p1, "world"    # Lio/appium/android/apis/graphics/kube/GLWorld;
    .param p2, "callback"    # Lio/appium/android/apis/graphics/kube/KubeRenderer$AnimationCallback;

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lio/appium/android/apis/graphics/kube/KubeRenderer;->mWorld:Lio/appium/android/apis/graphics/kube/GLWorld;

    .line 36
    iput-object p2, p0, Lio/appium/android/apis/graphics/kube/KubeRenderer;->mCallback:Lio/appium/android/apis/graphics/kube/KubeRenderer$AnimationCallback;

    .line 37
    return-void
.end method


# virtual methods
.method public getAngle()F
    .locals 1

    .line 108
    iget v0, p0, Lio/appium/android/apis/graphics/kube/KubeRenderer;->mAngle:F

    return v0
.end method

.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 4
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;

    .line 40
    iget-object v0, p0, Lio/appium/android/apis/graphics/kube/KubeRenderer;->mCallback:Lio/appium/android/apis/graphics/kube/KubeRenderer$AnimationCallback;

    if-eqz v0, :cond_0

    .line 41
    invoke-interface {v0}, Lio/appium/android/apis/graphics/kube/KubeRenderer$AnimationCallback;->animate()V

    .line 52
    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-interface {p1, v1, v1, v1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glClearColor(FFFF)V

    .line 53
    const/16 v2, 0x4100

    invoke-interface {p1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glClear(I)V

    .line 59
    const/16 v2, 0x1700

    invoke-interface {p1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glMatrixMode(I)V

    .line 60
    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    .line 61
    const/high16 v2, -0x3fc00000    # -3.0f

    const/4 v3, 0x0

    invoke-interface {p1, v3, v3, v2}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    .line 62
    invoke-interface {p1, v1, v1, v1}, Ljavax/microedition/khronos/opengles/GL10;->glScalef(FFF)V

    .line 63
    iget v1, p0, Lio/appium/android/apis/graphics/kube/KubeRenderer;->mAngle:F

    invoke-interface {p1, v1, v3, v0, v3}, Ljavax/microedition/khronos/opengles/GL10;->glRotatef(FFFF)V

    .line 64
    iget v1, p0, Lio/appium/android/apis/graphics/kube/KubeRenderer;->mAngle:F

    const/high16 v2, 0x3e800000    # 0.25f

    mul-float v1, v1, v2

    invoke-interface {p1, v1, v0, v3, v3}, Ljavax/microedition/khronos/opengles/GL10;->glRotatef(FFFF)V

    .line 66
    const v1, 0x3f333333    # 0.7f

    invoke-interface {p1, v1, v1, v1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glColor4f(FFFF)V

    .line 67
    const v0, 0x8074

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glEnableClientState(I)V

    .line 68
    const v0, 0x8076

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glEnableClientState(I)V

    .line 69
    const/16 v0, 0xb44

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    .line 70
    const/16 v0, 0x1d01

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glShadeModel(I)V

    .line 71
    const/16 v0, 0xb71

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    .line 73
    iget-object v0, p0, Lio/appium/android/apis/graphics/kube/KubeRenderer;->mWorld:Lio/appium/android/apis/graphics/kube/GLWorld;

    invoke-virtual {v0, p1}, Lio/appium/android/apis/graphics/kube/GLWorld;->draw(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 74
    return-void
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 9
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .line 77
    const/4 v0, 0x0

    invoke-interface {p1, v0, v0, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glViewport(IIII)V

    .line 85
    int-to-float v0, p2

    int-to-float v1, p3

    div-float/2addr v0, v1

    .line 86
    .local v0, "ratio":F
    const/16 v1, 0x1701

    invoke-interface {p1, v1}, Ljavax/microedition/khronos/opengles/GL10;->glMatrixMode(I)V

    .line 87
    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    .line 88
    neg-float v3, v0

    const/high16 v5, -0x40800000    # -1.0f

    const/high16 v6, 0x3f800000    # 1.0f

    const/high16 v7, 0x40000000    # 2.0f

    const/high16 v8, 0x41400000    # 12.0f

    move-object v2, p1

    move v4, v0

    invoke-interface/range {v2 .. v8}, Ljavax/microedition/khronos/opengles/GL10;->glFrustumf(FFFFFF)V

    .line 95
    const/16 v1, 0xbd0

    invoke-interface {p1, v1}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    .line 96
    const v1, 0x84c0

    invoke-interface {p1, v1}, Ljavax/microedition/khronos/opengles/GL10;->glActiveTexture(I)V

    .line 97
    return-void
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 0
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2, "config"    # Ljavax/microedition/khronos/egl/EGLConfig;

    .line 101
    return-void
.end method

.method public setAngle(F)V
    .locals 0
    .param p1, "angle"    # F

    .line 104
    iput p1, p0, Lio/appium/android/apis/graphics/kube/KubeRenderer;->mAngle:F

    .line 105
    return-void
.end method
