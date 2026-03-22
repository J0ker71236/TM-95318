.class public Lio/appium/android/apis/graphics/SensorTest;
.super Lio/appium/android/apis/graphics/GraphicsActivity;
.source "SensorTest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/appium/android/apis/graphics/SensorTest$SampleView;,
        Lio/appium/android/apis/graphics/SensorTest$RunAve;
    }
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field private final mListener:Landroid/hardware/SensorEventListener;

.field private mSensor:Landroid/hardware/Sensor;

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private mValues:[F

.field private mView:Lio/appium/android/apis/graphics/SensorTest$SampleView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 29
    invoke-direct {p0}, Lio/appium/android/apis/graphics/GraphicsActivity;-><init>()V

    .line 30
    const-string v0, "SensorTest"

    iput-object v0, p0, Lio/appium/android/apis/graphics/SensorTest;->TAG:Ljava/lang/String;

    .line 78
    new-instance v0, Lio/appium/android/apis/graphics/SensorTest$1;

    invoke-direct {v0, p0}, Lio/appium/android/apis/graphics/SensorTest$1;-><init>(Lio/appium/android/apis/graphics/SensorTest;)V

    iput-object v0, p0, Lio/appium/android/apis/graphics/SensorTest;->mListener:Landroid/hardware/SensorEventListener;

    return-void
.end method

.method static synthetic access$000(Lio/appium/android/apis/graphics/SensorTest;)[F
    .locals 1
    .param p0, "x0"    # Lio/appium/android/apis/graphics/SensorTest;

    .line 29
    iget-object v0, p0, Lio/appium/android/apis/graphics/SensorTest;->mValues:[F

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "icicle"    # Landroid/os/Bundle;

    .line 139
    invoke-super {p0, p1}, Lio/appium/android/apis/graphics/GraphicsActivity;->onCreate(Landroid/os/Bundle;)V

    .line 140
    const-string v0, "sensor"

    invoke-virtual {p0, v0}, Lio/appium/android/apis/graphics/SensorTest;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lio/appium/android/apis/graphics/SensorTest;->mSensorManager:Landroid/hardware/SensorManager;

    .line 141
    iget-object v0, p0, Lio/appium/android/apis/graphics/SensorTest;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lio/appium/android/apis/graphics/SensorTest;->mSensor:Landroid/hardware/Sensor;

    .line 142
    new-instance v0, Lio/appium/android/apis/graphics/SensorTest$SampleView;

    invoke-direct {v0, p0, p0}, Lio/appium/android/apis/graphics/SensorTest$SampleView;-><init>(Lio/appium/android/apis/graphics/SensorTest;Landroid/content/Context;)V

    iput-object v0, p0, Lio/appium/android/apis/graphics/SensorTest;->mView:Lio/appium/android/apis/graphics/SensorTest$SampleView;

    .line 143
    iget-object v0, p0, Lio/appium/android/apis/graphics/SensorTest;->mView:Lio/appium/android/apis/graphics/SensorTest$SampleView;

    invoke-virtual {p0, v0}, Lio/appium/android/apis/graphics/SensorTest;->setContentView(Landroid/view/View;)V

    .line 145
    return-void
.end method

.method protected onResume()V
    .locals 4

    .line 149
    invoke-super {p0}, Lio/appium/android/apis/graphics/GraphicsActivity;->onResume()V

    .line 150
    iget-object v0, p0, Lio/appium/android/apis/graphics/SensorTest;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lio/appium/android/apis/graphics/SensorTest;->mListener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lio/appium/android/apis/graphics/SensorTest;->mSensor:Landroid/hardware/Sensor;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 152
    return-void
.end method

.method protected onStop()V
    .locals 2

    .line 156
    iget-object v0, p0, Lio/appium/android/apis/graphics/SensorTest;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lio/appium/android/apis/graphics/SensorTest;->mListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 157
    invoke-super {p0}, Lio/appium/android/apis/graphics/GraphicsActivity;->onStop()V

    .line 159
    return-void
.end method

.method public bridge synthetic setContentView(Landroid/view/View;)V
    .locals 0

    .line 29
    invoke-super {p0, p1}, Lio/appium/android/apis/graphics/GraphicsActivity;->setContentView(Landroid/view/View;)V

    return-void
.end method
