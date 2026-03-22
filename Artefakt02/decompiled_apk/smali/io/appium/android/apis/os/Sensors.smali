.class public Lio/appium/android/apis/os/Sensors;
.super Landroid/app/Activity;
.source "Sensors.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/appium/android/apis/os/Sensors$GraphView;
    }
.end annotation


# instance fields
.field private mGraphView:Lio/appium/android/apis/os/Sensors$GraphView;

.field private mSensorManager:Landroid/hardware/SensorManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 50
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 215
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 217
    const-string v0, "sensor"

    invoke-virtual {p0, v0}, Lio/appium/android/apis/os/Sensors;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lio/appium/android/apis/os/Sensors;->mSensorManager:Landroid/hardware/SensorManager;

    .line 218
    new-instance v0, Lio/appium/android/apis/os/Sensors$GraphView;

    invoke-direct {v0, p0, p0}, Lio/appium/android/apis/os/Sensors$GraphView;-><init>(Lio/appium/android/apis/os/Sensors;Landroid/content/Context;)V

    iput-object v0, p0, Lio/appium/android/apis/os/Sensors;->mGraphView:Lio/appium/android/apis/os/Sensors$GraphView;

    .line 219
    iget-object v0, p0, Lio/appium/android/apis/os/Sensors;->mGraphView:Lio/appium/android/apis/os/Sensors$GraphView;

    invoke-virtual {p0, v0}, Lio/appium/android/apis/os/Sensors;->setContentView(Landroid/view/View;)V

    .line 220
    return-void
.end method

.method protected onResume()V
    .locals 4

    .line 224
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 225
    iget-object v0, p0, Lio/appium/android/apis/os/Sensors;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lio/appium/android/apis/os/Sensors;->mGraphView:Lio/appium/android/apis/os/Sensors$GraphView;

    .line 226
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v2

    .line 225
    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 228
    iget-object v0, p0, Lio/appium/android/apis/os/Sensors;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lio/appium/android/apis/os/Sensors;->mGraphView:Lio/appium/android/apis/os/Sensors$GraphView;

    .line 229
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v2

    .line 228
    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 231
    iget-object v0, p0, Lio/appium/android/apis/os/Sensors;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lio/appium/android/apis/os/Sensors;->mGraphView:Lio/appium/android/apis/os/Sensors$GraphView;

    .line 232
    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v2

    .line 231
    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 234
    return-void
.end method

.method protected onStop()V
    .locals 2

    .line 238
    iget-object v0, p0, Lio/appium/android/apis/os/Sensors;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lio/appium/android/apis/os/Sensors;->mGraphView:Lio/appium/android/apis/os/Sensors$GraphView;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 239
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 240
    return-void
.end method
