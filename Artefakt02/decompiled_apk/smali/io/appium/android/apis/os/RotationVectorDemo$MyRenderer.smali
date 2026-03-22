.class Lio/appium/android/apis/os/RotationVectorDemo$MyRenderer;
.super Ljava/lang/Object;
.source "RotationVectorDemo.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/appium/android/apis/os/RotationVectorDemo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyRenderer"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/appium/android/apis/os/RotationVectorDemo$MyRenderer$Cube;
    }
.end annotation


# instance fields
.field private mCube:Lio/appium/android/apis/os/RotationVectorDemo$MyRenderer$Cube;

.field private final mRotationMatrix:[F

.field private mRotationVectorSensor:Landroid/hardware/Sensor;

.field final synthetic this$0:Lio/appium/android/apis/os/RotationVectorDemo;


# direct methods
.method public constructor <init>(Lio/appium/android/apis/os/RotationVectorDemo;)V
    .locals 3
    .param p1, "this$0"    # Lio/appium/android/apis/os/RotationVectorDemo;

    .line 86
    iput-object p1, p0, Lio/appium/android/apis/os/RotationVectorDemo$MyRenderer;->this$0:Lio/appium/android/apis/os/RotationVectorDemo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    const/16 v0, 0x10

    new-array v0, v0, [F

    iput-object v0, p0, Lio/appium/android/apis/os/RotationVectorDemo$MyRenderer;->mRotationMatrix:[F

    .line 88
    invoke-static {p1}, Lio/appium/android/apis/os/RotationVectorDemo;->access$000(Lio/appium/android/apis/os/RotationVectorDemo;)Landroid/hardware/SensorManager;

    move-result-object v0

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lio/appium/android/apis/os/RotationVectorDemo$MyRenderer;->mRotationVectorSensor:Landroid/hardware/Sensor;

    .line 91
    new-instance v0, Lio/appium/android/apis/os/RotationVectorDemo$MyRenderer$Cube;

    invoke-direct {v0, p0}, Lio/appium/android/apis/os/RotationVectorDemo$MyRenderer$Cube;-><init>(Lio/appium/android/apis/os/RotationVectorDemo$MyRenderer;)V

    iput-object v0, p0, Lio/appium/android/apis/os/RotationVectorDemo$MyRenderer;->mCube:Lio/appium/android/apis/os/RotationVectorDemo$MyRenderer$Cube;

    .line 99
    iget-object v0, p0, Lio/appium/android/apis/os/RotationVectorDemo$MyRenderer;->mRotationMatrix:[F

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 100
    const/4 v2, 0x5

    aput v1, v0, v2

    .line 101
    const/16 v2, 0xa

    aput v1, v0, v2

    .line 102
    const/16 v2, 0xf

    aput v1, v0, v2

    .line 103
    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .line 220
    return-void
.end method

.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 2
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;

    .line 130
    const/16 v0, 0x4000

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glClear(I)V

    .line 133
    const/16 v0, 0x1700

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glMatrixMode(I)V

    .line 134
    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    .line 135
    const/4 v0, 0x0

    const/high16 v1, -0x3fc00000    # -3.0f

    invoke-interface {p1, v0, v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    .line 136
    iget-object v0, p0, Lio/appium/android/apis/os/RotationVectorDemo$MyRenderer;->mRotationMatrix:[F

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glMultMatrixf([FI)V

    .line 139
    const v0, 0x8074

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glEnableClientState(I)V

    .line 140
    const v0, 0x8076

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glEnableClientState(I)V

    .line 142
    iget-object v0, p0, Lio/appium/android/apis/os/RotationVectorDemo$MyRenderer;->mCube:Lio/appium/android/apis/os/RotationVectorDemo$MyRenderer$Cube;

    invoke-virtual {v0, p1}, Lio/appium/android/apis/os/RotationVectorDemo$MyRenderer$Cube;->draw(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 143
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .line 119
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    const/16 v1, 0xb

    if-ne v0, v1, :cond_0

    .line 123
    iget-object v0, p0, Lio/appium/android/apis/os/RotationVectorDemo$MyRenderer;->mRotationMatrix:[F

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    invoke-static {v0, v1}, Landroid/hardware/SensorManager;->getRotationMatrixFromVector([F[F)V

    .line 126
    :cond_0
    return-void
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 9
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .line 147
    const/4 v0, 0x0

    invoke-interface {p1, v0, v0, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glViewport(IIII)V

    .line 149
    int-to-float v0, p2

    int-to-float v1, p3

    div-float/2addr v0, v1

    .line 150
    .local v0, "ratio":F
    const/16 v1, 0x1701

    invoke-interface {p1, v1}, Ljavax/microedition/khronos/opengles/GL10;->glMatrixMode(I)V

    .line 151
    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    .line 152
    neg-float v3, v0

    const/high16 v5, -0x40800000    # -1.0f

    const/high16 v6, 0x3f800000    # 1.0f

    const/high16 v7, 0x3f800000    # 1.0f

    const/high16 v8, 0x41200000    # 10.0f

    move-object v2, p1

    move v4, v0

    invoke-interface/range {v2 .. v8}, Ljavax/microedition/khronos/opengles/GL10;->glFrustumf(FFFFFF)V

    .line 153
    return-void
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 1
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2, "config"    # Ljavax/microedition/khronos/egl/EGLConfig;

    .line 157
    const/16 v0, 0xbd0

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    .line 159
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-interface {p1, v0, v0, v0, v0}, Ljavax/microedition/khronos/opengles/GL10;->glClearColor(FFFF)V

    .line 160
    return-void
.end method

.method public start()V
    .locals 3

    .line 108
    iget-object v0, p0, Lio/appium/android/apis/os/RotationVectorDemo$MyRenderer;->this$0:Lio/appium/android/apis/os/RotationVectorDemo;

    invoke-static {v0}, Lio/appium/android/apis/os/RotationVectorDemo;->access$000(Lio/appium/android/apis/os/RotationVectorDemo;)Landroid/hardware/SensorManager;

    move-result-object v0

    iget-object v1, p0, Lio/appium/android/apis/os/RotationVectorDemo$MyRenderer;->mRotationVectorSensor:Landroid/hardware/Sensor;

    const/16 v2, 0x2710

    invoke-virtual {v0, p0, v1, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 109
    return-void
.end method

.method public stop()V
    .locals 1

    .line 113
    iget-object v0, p0, Lio/appium/android/apis/os/RotationVectorDemo$MyRenderer;->this$0:Lio/appium/android/apis/os/RotationVectorDemo;

    invoke-static {v0}, Lio/appium/android/apis/os/RotationVectorDemo;->access$000(Lio/appium/android/apis/os/RotationVectorDemo;)Landroid/hardware/SensorManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 114
    return-void
.end method
