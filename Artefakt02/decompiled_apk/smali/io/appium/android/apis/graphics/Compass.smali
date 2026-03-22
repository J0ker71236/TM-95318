.class public Lio/appium/android/apis/graphics/Compass;
.super Lio/appium/android/apis/graphics/GraphicsActivity;
.source "Compass.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/appium/android/apis/graphics/Compass$SampleView;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Compass"


# instance fields
.field private final mListener:Landroid/hardware/SensorEventListener;

.field private mSensor:Landroid/hardware/Sensor;

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private mValues:[F

.field private mView:Lio/appium/android/apis/graphics/Compass$SampleView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 29
    invoke-direct {p0}, Lio/appium/android/apis/graphics/GraphicsActivity;-><init>()V

    .line 38
    new-instance v0, Lio/appium/android/apis/graphics/Compass$1;

    invoke-direct {v0, p0}, Lio/appium/android/apis/graphics/Compass$1;-><init>(Lio/appium/android/apis/graphics/Compass;)V

    iput-object v0, p0, Lio/appium/android/apis/graphics/Compass;->mListener:Landroid/hardware/SensorEventListener;

    return-void
.end method

.method static synthetic access$000(Lio/appium/android/apis/graphics/Compass;)[F
    .locals 1
    .param p0, "x0"    # Lio/appium/android/apis/graphics/Compass;

    .line 29
    iget-object v0, p0, Lio/appium/android/apis/graphics/Compass;->mValues:[F

    return-object v0
.end method

.method static synthetic access$002(Lio/appium/android/apis/graphics/Compass;[F)[F
    .locals 0
    .param p0, "x0"    # Lio/appium/android/apis/graphics/Compass;
    .param p1, "x1"    # [F

    .line 29
    iput-object p1, p0, Lio/appium/android/apis/graphics/Compass;->mValues:[F

    return-object p1
.end method

.method static synthetic access$100(Lio/appium/android/apis/graphics/Compass;)Lio/appium/android/apis/graphics/Compass$SampleView;
    .locals 1
    .param p0, "x0"    # Lio/appium/android/apis/graphics/Compass;

    .line 29
    iget-object v0, p0, Lio/appium/android/apis/graphics/Compass;->mView:Lio/appium/android/apis/graphics/Compass$SampleView;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "icicle"    # Landroid/os/Bundle;

    .line 54
    invoke-super {p0, p1}, Lio/appium/android/apis/graphics/GraphicsActivity;->onCreate(Landroid/os/Bundle;)V

    .line 55
    const-string v0, "sensor"

    invoke-virtual {p0, v0}, Lio/appium/android/apis/graphics/Compass;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lio/appium/android/apis/graphics/Compass;->mSensorManager:Landroid/hardware/SensorManager;

    .line 56
    iget-object v0, p0, Lio/appium/android/apis/graphics/Compass;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lio/appium/android/apis/graphics/Compass;->mSensor:Landroid/hardware/Sensor;

    .line 57
    new-instance v0, Lio/appium/android/apis/graphics/Compass$SampleView;

    invoke-direct {v0, p0, p0}, Lio/appium/android/apis/graphics/Compass$SampleView;-><init>(Lio/appium/android/apis/graphics/Compass;Landroid/content/Context;)V

    iput-object v0, p0, Lio/appium/android/apis/graphics/Compass;->mView:Lio/appium/android/apis/graphics/Compass$SampleView;

    .line 58
    iget-object v0, p0, Lio/appium/android/apis/graphics/Compass;->mView:Lio/appium/android/apis/graphics/Compass$SampleView;

    invoke-virtual {p0, v0}, Lio/appium/android/apis/graphics/Compass;->setContentView(Landroid/view/View;)V

    .line 59
    return-void
.end method

.method protected onResume()V
    .locals 4

    .line 65
    invoke-super {p0}, Lio/appium/android/apis/graphics/GraphicsActivity;->onResume()V

    .line 67
    iget-object v0, p0, Lio/appium/android/apis/graphics/Compass;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lio/appium/android/apis/graphics/Compass;->mListener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lio/appium/android/apis/graphics/Compass;->mSensor:Landroid/hardware/Sensor;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 69
    return-void
.end method

.method protected onStop()V
    .locals 2

    .line 75
    iget-object v0, p0, Lio/appium/android/apis/graphics/Compass;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lio/appium/android/apis/graphics/Compass;->mListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 76
    invoke-super {p0}, Lio/appium/android/apis/graphics/GraphicsActivity;->onStop()V

    .line 77
    return-void
.end method

.method public bridge synthetic setContentView(Landroid/view/View;)V
    .locals 0

    .line 29
    invoke-super {p0, p1}, Lio/appium/android/apis/graphics/GraphicsActivity;->setContentView(Landroid/view/View;)V

    return-void
.end method
