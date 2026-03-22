.class Lio/appium/android/apis/graphics/Compass$1;
.super Ljava/lang/Object;
.source "Compass.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/appium/android/apis/graphics/Compass;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/appium/android/apis/graphics/Compass;


# direct methods
.method constructor <init>(Lio/appium/android/apis/graphics/Compass;)V
    .locals 0
    .param p1, "this$0"    # Lio/appium/android/apis/graphics/Compass;

    .line 38
    iput-object p1, p0, Lio/appium/android/apis/graphics/Compass$1;->this$0:Lio/appium/android/apis/graphics/Compass;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .line 49
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .line 42
    iget-object v0, p0, Lio/appium/android/apis/graphics/Compass$1;->this$0:Lio/appium/android/apis/graphics/Compass;

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    invoke-static {v0, v1}, Lio/appium/android/apis/graphics/Compass;->access$002(Lio/appium/android/apis/graphics/Compass;[F)[F

    .line 43
    iget-object v0, p0, Lio/appium/android/apis/graphics/Compass$1;->this$0:Lio/appium/android/apis/graphics/Compass;

    invoke-static {v0}, Lio/appium/android/apis/graphics/Compass;->access$100(Lio/appium/android/apis/graphics/Compass;)Lio/appium/android/apis/graphics/Compass$SampleView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 44
    iget-object v0, p0, Lio/appium/android/apis/graphics/Compass$1;->this$0:Lio/appium/android/apis/graphics/Compass;

    invoke-static {v0}, Lio/appium/android/apis/graphics/Compass;->access$100(Lio/appium/android/apis/graphics/Compass;)Lio/appium/android/apis/graphics/Compass$SampleView;

    move-result-object v0

    invoke-virtual {v0}, Lio/appium/android/apis/graphics/Compass$SampleView;->invalidate()V

    .line 46
    :cond_0
    return-void
.end method
