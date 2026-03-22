.class Lio/appium/android/apis/os/Sensors$GraphView;
.super Landroid/view/View;
.source "Sensors.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/appium/android/apis/os/Sensors;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GraphView"
.end annotation


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private mCanvas:Landroid/graphics/Canvas;

.field private mColors:[I

.field private mHeight:F

.field private mLastValues:[F

.field private mLastX:F

.field private mMaxX:F

.field private mOrientationValues:[F

.field private mPaint:Landroid/graphics/Paint;

.field private mPath:Landroid/graphics/Path;

.field private mRect:Landroid/graphics/RectF;

.field private mScale:[F

.field private mSpeed:F

.field private mWidth:F

.field private mYOffset:F

.field final synthetic this$0:Lio/appium/android/apis/os/Sensors;


# direct methods
.method public constructor <init>(Lio/appium/android/apis/os/Sensors;Landroid/content/Context;)V
    .locals 8
    .param p2, "context"    # Landroid/content/Context;

    .line 72
    iput-object p1, p0, Lio/appium/android/apis/os/Sensors$GraphView;->this$0:Lio/appium/android/apis/os/Sensors;

    .line 73
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 57
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lio/appium/android/apis/os/Sensors$GraphView;->mPaint:Landroid/graphics/Paint;

    .line 58
    new-instance p1, Landroid/graphics/Canvas;

    invoke-direct {p1}, Landroid/graphics/Canvas;-><init>()V

    iput-object p1, p0, Lio/appium/android/apis/os/Sensors$GraphView;->mCanvas:Landroid/graphics/Canvas;

    .line 59
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lio/appium/android/apis/os/Sensors$GraphView;->mPath:Landroid/graphics/Path;

    .line 60
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lio/appium/android/apis/os/Sensors$GraphView;->mRect:Landroid/graphics/RectF;

    .line 61
    const/4 p1, 0x6

    new-array v0, p1, [F

    iput-object v0, p0, Lio/appium/android/apis/os/Sensors$GraphView;->mLastValues:[F

    .line 62
    const/4 v0, 0x3

    new-array v1, v0, [F

    iput-object v1, p0, Lio/appium/android/apis/os/Sensors$GraphView;->mOrientationValues:[F

    .line 63
    new-array p1, p1, [I

    iput-object p1, p0, Lio/appium/android/apis/os/Sensors$GraphView;->mColors:[I

    .line 65
    const/4 p1, 0x2

    new-array v1, p1, [F

    iput-object v1, p0, Lio/appium/android/apis/os/Sensors$GraphView;->mScale:[F

    .line 68
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lio/appium/android/apis/os/Sensors$GraphView;->mSpeed:F

    .line 74
    iget-object v1, p0, Lio/appium/android/apis/os/Sensors$GraphView;->mColors:[I

    const/16 v2, 0xff

    const/16 v3, 0xc0

    const/16 v4, 0x40

    invoke-static {v3, v2, v4, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v5

    const/4 v6, 0x0

    aput v5, v1, v6

    .line 75
    iget-object v1, p0, Lio/appium/android/apis/os/Sensors$GraphView;->mColors:[I

    const/16 v5, 0x80

    invoke-static {v3, v4, v5, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v6

    const/4 v7, 0x1

    aput v6, v1, v7

    .line 76
    iget-object v1, p0, Lio/appium/android/apis/os/Sensors$GraphView;->mColors:[I

    invoke-static {v3, v4, v4, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v6

    aput v6, v1, p1

    .line 77
    iget-object p1, p0, Lio/appium/android/apis/os/Sensors$GraphView;->mColors:[I

    invoke-static {v3, v4, v2, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    aput v1, p1, v0

    .line 78
    iget-object p1, p0, Lio/appium/android/apis/os/Sensors$GraphView;->mColors:[I

    invoke-static {v3, v5, v4, v5}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    const/4 v1, 0x4

    aput v0, p1, v1

    .line 79
    iget-object p1, p0, Lio/appium/android/apis/os/Sensors$GraphView;->mColors:[I

    invoke-static {v3, v2, v2, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    const/4 v1, 0x5

    aput v0, p1, v1

    .line 81
    iget-object p1, p0, Lio/appium/android/apis/os/Sensors$GraphView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v7}, Landroid/graphics/Paint;->setFlags(I)V

    .line 82
    iget-object p1, p0, Lio/appium/android/apis/os/Sensors$GraphView;->mRect:Landroid/graphics/RectF;

    const/high16 v0, 0x3f000000    # 0.5f

    const/high16 v1, -0x41000000    # -0.5f

    invoke-virtual {p1, v1, v1, v0, v0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 83
    iget-object p1, p0, Lio/appium/android/apis/os/Sensors$GraphView;->mPath:Landroid/graphics/Path;

    iget-object v0, p0, Lio/appium/android/apis/os/Sensors$GraphView;->mRect:Landroid/graphics/RectF;

    const/4 v1, 0x0

    const/high16 v2, 0x43340000    # 180.0f

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 84
    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .line 204
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 19
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 107
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    monitor-enter p0

    .line 108
    :try_start_0
    iget-object v0, v1, Lio/appium/android/apis/os/Sensors$GraphView;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_3

    .line 109
    iget-object v0, v1, Lio/appium/android/apis/os/Sensors$GraphView;->mPaint:Landroid/graphics/Paint;

    .line 110
    .local v0, "paint":Landroid/graphics/Paint;
    iget-object v3, v1, Lio/appium/android/apis/os/Sensors$GraphView;->mPath:Landroid/graphics/Path;

    move-object v13, v3

    .line 111
    .local v13, "path":Landroid/graphics/Path;
    const v14, -0x3f3f40

    .line 112
    .local v14, "outer":I
    const v15, -0x8ff0

    .line 114
    .local v15, "inner":I
    iget v3, v1, Lio/appium/android/apis/os/Sensors$GraphView;->mLastX:F

    iget v4, v1, Lio/appium/android/apis/os/Sensors$GraphView;->mMaxX:F

    const/4 v12, 0x0

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_0

    .line 115
    iput v12, v1, Lio/appium/android/apis/os/Sensors$GraphView;->mLastX:F

    .line 116
    iget-object v3, v1, Lio/appium/android/apis/os/Sensors$GraphView;->mCanvas:Landroid/graphics/Canvas;

    move-object v11, v3

    .line 117
    .local v11, "cavas":Landroid/graphics/Canvas;
    iget v3, v1, Lio/appium/android/apis/os/Sensors$GraphView;->mYOffset:F

    move/from16 v16, v3

    .line 118
    .local v16, "yoffset":F
    iget v6, v1, Lio/appium/android/apis/os/Sensors$GraphView;->mMaxX:F

    .line 119
    .local v6, "maxx":F
    const v3, 0x411ce80a

    iget-object v4, v1, Lio/appium/android/apis/os/Sensors$GraphView;->mScale:[F

    const/4 v5, 0x0

    aget v4, v4, v5

    mul-float v17, v4, v3

    .line 120
    .local v17, "oneG":F
    const v3, -0x555556

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 121
    const/4 v3, -0x1

    invoke-virtual {v11, v3}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 122
    const/4 v4, 0x0

    move-object v3, v11

    move/from16 v5, v16

    move/from16 v7, v16

    move-object v8, v0

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 123
    const/4 v8, 0x0

    add-float v9, v16, v17

    add-float v3, v16, v17

    move-object v7, v11

    move v10, v6

    move-object v4, v11

    .end local v11    # "cavas":Landroid/graphics/Canvas;
    .local v4, "cavas":Landroid/graphics/Canvas;
    move v11, v3

    const/4 v3, 0x0

    move-object v12, v0

    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 124
    const/4 v8, 0x0

    sub-float v9, v16, v17

    sub-float v11, v16, v17

    move-object v7, v4

    move v10, v6

    move-object v12, v0

    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 114
    .end local v4    # "cavas":Landroid/graphics/Canvas;
    .end local v6    # "maxx":F
    .end local v16    # "yoffset":F
    .end local v17    # "oneG":F
    :cond_0
    const/4 v3, 0x0

    .line 126
    :goto_0
    iget-object v4, v1, Lio/appium/android/apis/os/Sensors$GraphView;->mBitmap:Landroid/graphics/Bitmap;

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v3, v3, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 128
    iget-object v3, v1, Lio/appium/android/apis/os/Sensors$GraphView;->mOrientationValues:[F

    .line 129
    .local v3, "values":[F
    iget v4, v1, Lio/appium/android/apis/os/Sensors$GraphView;->mWidth:F

    iget v5, v1, Lio/appium/android/apis/os/Sensors$GraphView;->mHeight:F

    const v6, -0x8ff0

    const v7, -0x3f3f40

    const/high16 v8, 0x40800000    # 4.0f

    const/4 v9, 0x3

    const/high16 v10, 0x42000000    # 32.0f

    const v11, 0x3eaaaa9f

    const/high16 v12, 0x40a00000    # 5.0f

    const/high16 v16, 0x3f000000    # 0.5f

    cmpg-float v4, v4, v5

    if-gez v4, :cond_2

    .line 130
    iget v4, v1, Lio/appium/android/apis/os/Sensors$GraphView;->mWidth:F

    mul-float v4, v4, v11

    .line 131
    .local v4, "w0":F
    sub-float v5, v4, v10

    .line 132
    .local v5, "w":F
    mul-float v10, v4, v16

    .line 133
    .local v10, "x":F
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_1
    if-ge v11, v9, :cond_1

    .line 134
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 135
    mul-float v17, v5, v16

    add-float v9, v17, v8

    invoke-virtual {v2, v10, v9}, Landroid/graphics/Canvas;->translate(FF)V

    .line 136
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 137
    invoke-virtual {v0, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 138
    invoke-virtual {v2, v5, v5}, Landroid/graphics/Canvas;->scale(FF)V

    .line 139
    iget-object v9, v1, Lio/appium/android/apis/os/Sensors$GraphView;->mRect:Landroid/graphics/RectF;

    invoke-virtual {v2, v9, v0}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 140
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 141
    sub-float v9, v5, v12

    sub-float v7, v5, v12

    invoke-virtual {v2, v9, v7}, Landroid/graphics/Canvas;->scale(FF)V

    .line 142
    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 143
    aget v7, v3, v11

    neg-float v7, v7

    invoke-virtual {v2, v7}, Landroid/graphics/Canvas;->rotate(F)V

    .line 144
    invoke-virtual {v2, v13, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 145
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 146
    add-float/2addr v10, v4

    .line 133
    add-int/lit8 v11, v11, 0x1

    const v7, -0x3f3f40

    const/4 v9, 0x3

    goto :goto_1

    .line 148
    .end local v4    # "w0":F
    .end local v5    # "w":F
    .end local v10    # "x":F
    .end local v11    # "i":I
    :cond_1
    goto :goto_3

    .line 149
    :cond_2
    iget v4, v1, Lio/appium/android/apis/os/Sensors$GraphView;->mHeight:F

    mul-float v4, v4, v11

    .line 150
    .local v4, "h0":F
    sub-float v5, v4, v10

    .line 151
    .local v5, "h":F
    mul-float v7, v4, v16

    .line 152
    .local v7, "y":F
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_2
    const/4 v10, 0x3

    if-ge v9, v10, :cond_3

    .line 153
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 154
    iget v11, v1, Lio/appium/android/apis/os/Sensors$GraphView;->mWidth:F

    mul-float v18, v5, v16

    add-float v18, v18, v8

    sub-float v11, v11, v18

    invoke-virtual {v2, v11, v7}, Landroid/graphics/Canvas;->translate(FF)V

    .line 155
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 156
    const v11, -0x3f3f40

    invoke-virtual {v0, v11}, Landroid/graphics/Paint;->setColor(I)V

    .line 157
    invoke-virtual {v2, v5, v5}, Landroid/graphics/Canvas;->scale(FF)V

    .line 158
    iget-object v8, v1, Lio/appium/android/apis/os/Sensors$GraphView;->mRect:Landroid/graphics/RectF;

    invoke-virtual {v2, v8, v0}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 159
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 160
    sub-float v8, v5, v12

    sub-float v10, v5, v12

    invoke-virtual {v2, v8, v10}, Landroid/graphics/Canvas;->scale(FF)V

    .line 161
    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 162
    aget v8, v3, v9

    neg-float v8, v8

    invoke-virtual {v2, v8}, Landroid/graphics/Canvas;->rotate(F)V

    .line 163
    invoke-virtual {v2, v13, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 164
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 165
    add-float/2addr v7, v4

    .line 152
    add-int/lit8 v9, v9, 0x1

    const/high16 v8, 0x40800000    # 4.0f

    goto :goto_2

    .line 170
    .end local v0    # "paint":Landroid/graphics/Paint;
    .end local v3    # "values":[F
    .end local v4    # "h0":F
    .end local v5    # "h":F
    .end local v7    # "y":F
    .end local v9    # "i":I
    .end local v13    # "path":Landroid/graphics/Path;
    .end local v14    # "outer":I
    .end local v15    # "inner":I
    :cond_3
    :goto_3
    monitor-exit p0

    .line 171
    return-void

    .line 170
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 17
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .line 175
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    monitor-enter p0

    .line 176
    :try_start_0
    iget-object v0, v1, Lio/appium/android/apis/os/Sensors$GraphView;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_4

    .line 177
    iget-object v3, v1, Lio/appium/android/apis/os/Sensors$GraphView;->mCanvas:Landroid/graphics/Canvas;

    .line 178
    .local v3, "canvas":Landroid/graphics/Canvas;
    iget-object v0, v1, Lio/appium/android/apis/os/Sensors$GraphView;->mPaint:Landroid/graphics/Paint;

    .line 179
    .local v0, "paint":Landroid/graphics/Paint;
    iget-object v4, v2, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v4}, Landroid/hardware/Sensor;->getType()I

    move-result v4

    const/4 v9, 0x3

    if-ne v4, v9, :cond_0

    .line 180
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v9, :cond_3

    .line 181
    iget-object v5, v1, Lio/appium/android/apis/os/Sensors$GraphView;->mOrientationValues:[F

    iget-object v6, v2, Landroid/hardware/SensorEvent;->values:[F

    aget v6, v6, v4

    aput v6, v5, v4

    .line 180
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 184
    .end local v4    # "i":I
    :cond_0
    iget v4, v1, Lio/appium/android/apis/os/Sensors$GraphView;->mSpeed:F

    move v10, v4

    .line 185
    .local v10, "deltaX":F
    iget v4, v1, Lio/appium/android/apis/os/Sensors$GraphView;->mLastX:F

    add-float v11, v4, v10

    .line 187
    .local v11, "newX":F
    iget-object v4, v2, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v4}, Landroid/hardware/Sensor;->getType()I

    move-result v4

    const/4 v12, 0x2

    if-ne v4, v12, :cond_1

    const/4 v4, 0x1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    :goto_1
    move v13, v4

    .line 188
    .local v13, "j":I
    const/4 v4, 0x0

    move v14, v4

    .local v14, "i":I
    :goto_2
    if-ge v14, v9, :cond_2

    .line 189
    mul-int/lit8 v4, v13, 0x3

    add-int v15, v14, v4

    .line 190
    .local v15, "k":I
    iget v4, v1, Lio/appium/android/apis/os/Sensors$GraphView;->mYOffset:F

    iget-object v5, v2, Landroid/hardware/SensorEvent;->values:[F

    aget v5, v5, v14

    iget-object v6, v1, Lio/appium/android/apis/os/Sensors$GraphView;->mScale:[F

    aget v6, v6, v13

    mul-float v5, v5, v6

    add-float v16, v4, v5

    .line 191
    .local v16, "v":F
    iget-object v4, v1, Lio/appium/android/apis/os/Sensors$GraphView;->mColors:[I

    aget v4, v4, v15

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 192
    iget v4, v1, Lio/appium/android/apis/os/Sensors$GraphView;->mLastX:F

    iget-object v5, v1, Lio/appium/android/apis/os/Sensors$GraphView;->mLastValues:[F

    aget v5, v5, v15

    move v6, v11

    move/from16 v7, v16

    move-object v8, v0

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 193
    iget-object v4, v1, Lio/appium/android/apis/os/Sensors$GraphView;->mLastValues:[F

    aput v16, v4, v15

    .line 188
    .end local v15    # "k":I
    .end local v16    # "v":F
    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    .line 195
    .end local v14    # "i":I
    :cond_2
    iget-object v4, v2, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v4}, Landroid/hardware/Sensor;->getType()I

    move-result v4

    if-ne v4, v12, :cond_3

    .line 196
    iget v4, v1, Lio/appium/android/apis/os/Sensors$GraphView;->mLastX:F

    iget v5, v1, Lio/appium/android/apis/os/Sensors$GraphView;->mSpeed:F

    add-float/2addr v4, v5

    iput v4, v1, Lio/appium/android/apis/os/Sensors$GraphView;->mLastX:F

    .line 198
    .end local v10    # "deltaX":F
    .end local v11    # "newX":F
    .end local v13    # "j":I
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lio/appium/android/apis/os/Sensors$GraphView;->invalidate()V

    .line 200
    .end local v0    # "paint":Landroid/graphics/Paint;
    .end local v3    # "canvas":Landroid/graphics/Canvas;
    :cond_4
    monitor-exit p0

    .line 201
    return-void

    .line 200
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 4
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .line 88
    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lio/appium/android/apis/os/Sensors$GraphView;->mBitmap:Landroid/graphics/Bitmap;

    .line 89
    iget-object v0, p0, Lio/appium/android/apis/os/Sensors$GraphView;->mCanvas:Landroid/graphics/Canvas;

    iget-object v1, p0, Lio/appium/android/apis/os/Sensors$GraphView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 90
    iget-object v0, p0, Lio/appium/android/apis/os/Sensors$GraphView;->mCanvas:Landroid/graphics/Canvas;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 91
    int-to-float v0, p2

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float v0, v0, v1

    iput v0, p0, Lio/appium/android/apis/os/Sensors$GraphView;->mYOffset:F

    .line 92
    iget-object v0, p0, Lio/appium/android/apis/os/Sensors$GraphView;->mScale:[F

    int-to-float v2, p2

    mul-float v2, v2, v1

    const v3, 0x3d50d67f

    mul-float v2, v2, v3

    neg-float v2, v2

    const/4 v3, 0x0

    aput v2, v0, v3

    .line 93
    int-to-float v2, p2

    mul-float v2, v2, v1

    const v1, 0x3c888889

    mul-float v2, v2, v1

    neg-float v1, v2

    const/4 v2, 0x1

    aput v1, v0, v2

    .line 94
    int-to-float v0, p1

    iput v0, p0, Lio/appium/android/apis/os/Sensors$GraphView;->mWidth:F

    .line 95
    int-to-float v0, p2

    iput v0, p0, Lio/appium/android/apis/os/Sensors$GraphView;->mHeight:F

    .line 96
    iget v0, p0, Lio/appium/android/apis/os/Sensors$GraphView;->mWidth:F

    iget v1, p0, Lio/appium/android/apis/os/Sensors$GraphView;->mHeight:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 97
    int-to-float v0, p1

    iput v0, p0, Lio/appium/android/apis/os/Sensors$GraphView;->mMaxX:F

    goto :goto_0

    .line 99
    :cond_0
    add-int/lit8 v0, p1, -0x32

    int-to-float v0, v0

    iput v0, p0, Lio/appium/android/apis/os/Sensors$GraphView;->mMaxX:F

    .line 101
    :goto_0
    iget v0, p0, Lio/appium/android/apis/os/Sensors$GraphView;->mMaxX:F

    iput v0, p0, Lio/appium/android/apis/os/Sensors$GraphView;->mLastX:F

    .line 102
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 103
    return-void
.end method
