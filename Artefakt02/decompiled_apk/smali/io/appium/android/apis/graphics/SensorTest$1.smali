.class Lio/appium/android/apis/graphics/SensorTest$1;
.super Ljava/lang/Object;
.source "SensorTest.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/appium/android/apis/graphics/SensorTest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mLastGestureTime:J

.field private mPrev:[F

.field private final mScale:[F

.field final synthetic this$0:Lio/appium/android/apis/graphics/SensorTest;


# direct methods
.method constructor <init>(Lio/appium/android/apis/graphics/SensorTest;)V
    .locals 2
    .param p1, "this$0"    # Lio/appium/android/apis/graphics/SensorTest;

    .line 78
    iput-object p1, p0, Lio/appium/android/apis/graphics/SensorTest$1;->this$0:Lio/appium/android/apis/graphics/SensorTest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    const/4 v0, 0x3

    new-array v1, v0, [F

    fill-array-data v1, :array_0

    iput-object v1, p0, Lio/appium/android/apis/graphics/SensorTest$1;->mScale:[F

    .line 81
    new-array v0, v0, [F

    iput-object v0, p0, Lio/appium/android/apis/graphics/SensorTest$1;->mPrev:[F

    return-void

    :array_0
    .array-data 4
        0x40000000    # 2.0f
        0x40200000    # 2.5f
        0x3f000000    # 0.5f
    .end array-data
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .line 134
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 12
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .line 85
    const/4 v0, 0x0

    .line 86
    .local v0, "show":Z
    const/4 v1, 0x3

    new-array v2, v1, [F

    .line 88
    .local v2, "diff":[F
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    const/4 v4, 0x0

    if-ge v3, v1, :cond_1

    .line 89
    iget-object v5, p0, Lio/appium/android/apis/graphics/SensorTest$1;->mScale:[F

    aget v5, v5, v3

    iget-object v6, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v6, v6, v3

    iget-object v7, p0, Lio/appium/android/apis/graphics/SensorTest$1;->mPrev:[F

    aget v7, v7, v3

    sub-float/2addr v6, v7

    mul-float v5, v5, v6

    const v6, 0x3ee66666    # 0.45f

    mul-float v5, v5, v6

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    int-to-float v5, v5

    aput v5, v2, v3

    .line 90
    aget v5, v2, v3

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    cmpl-float v4, v5, v4

    if-lez v4, :cond_0

    .line 91
    const/4 v0, 0x1

    .line 93
    :cond_0
    iget-object v4, p0, Lio/appium/android/apis/graphics/SensorTest$1;->mPrev:[F

    iget-object v5, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v5, v5, v3

    aput v5, v4, v3

    .line 88
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 96
    .end local v3    # "i":I
    :cond_1
    const/4 v1, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_2

    .line 99
    const-string v5, "SensorTest"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "sensorChanged "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v7}, Landroid/hardware/Sensor;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v7, v7, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v7, v7, v3

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v8, 0x2

    aget v7, v7, v8

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v7, ") diff("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v7, v2, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v7, v2, v3

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v7, v2, v8

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    .line 106
    .local v5, "now":J
    iget-wide v7, p0, Lio/appium/android/apis/graphics/SensorTest$1;->mLastGestureTime:J

    sub-long v7, v5, v7

    const-wide/16 v9, 0x3e8

    cmp-long v11, v7, v9

    if-lez v11, :cond_a

    .line 107
    const-wide/16 v7, 0x0

    iput-wide v7, p0, Lio/appium/android/apis/graphics/SensorTest$1;->mLastGestureTime:J

    .line 109
    aget v7, v2, v1

    .line 110
    .local v7, "x":F
    aget v8, v2, v3

    .line 111
    .local v8, "y":F
    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v9

    const/high16 v10, 0x40400000    # 3.0f

    cmpl-float v9, v9, v10

    if-lez v9, :cond_3

    const/4 v9, 0x1

    goto :goto_1

    :cond_3
    const/4 v9, 0x0

    .line 112
    .local v9, "gestX":Z
    :goto_1
    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v11

    cmpl-float v10, v11, v10

    if-lez v10, :cond_4

    const/4 v1, 0x1

    .line 114
    .local v1, "gestY":Z
    :cond_4
    if-nez v9, :cond_5

    if-eqz v1, :cond_a

    :cond_5
    if-eqz v9, :cond_6

    if-nez v1, :cond_a

    .line 115
    :cond_6
    if-eqz v9, :cond_8

    .line 116
    cmpg-float v3, v7, v4

    if-gez v3, :cond_7

    .line 117
    const-string v3, "test"

    const-string v4, "<<<<<<<< LEFT <<<<<<<<<<<<"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 119
    :cond_7
    const-string v3, "test"

    const-string v4, ">>>>>>>>> RITE >>>>>>>>>>>"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 122
    :cond_8
    const/high16 v3, -0x40000000    # -2.0f

    cmpg-float v3, v8, v3

    if-gez v3, :cond_9

    .line 123
    const-string v3, "test"

    const-string v4, "<<<<<<<< UP <<<<<<<<<<<<"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 125
    :cond_9
    const-string v3, "test"

    const-string v4, ">>>>>>>>> DOWN >>>>>>>>>>>"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    :goto_2
    iput-wide v5, p0, Lio/appium/android/apis/graphics/SensorTest$1;->mLastGestureTime:J

    .line 131
    .end local v1    # "gestY":Z
    .end local v7    # "x":F
    .end local v8    # "y":F
    .end local v9    # "gestX":Z
    :cond_a
    return-void
.end method
