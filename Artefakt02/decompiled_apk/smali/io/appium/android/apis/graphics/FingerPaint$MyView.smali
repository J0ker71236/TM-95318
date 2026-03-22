.class public Lio/appium/android/apis/graphics/FingerPaint$MyView;
.super Landroid/view/View;
.source "FingerPaint.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/appium/android/apis/graphics/FingerPaint;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyView"
.end annotation


# static fields
.field private static final MAXP:F = 0.75f

.field private static final MINP:F = 0.25f

.field private static final TOUCH_TOLERANCE:F = 4.0f


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private mBitmapPaint:Landroid/graphics/Paint;

.field private mCanvas:Landroid/graphics/Canvas;

.field private mPath:Landroid/graphics/Path;

.field private mX:F

.field private mY:F

.field final synthetic this$0:Lio/appium/android/apis/graphics/FingerPaint;


# direct methods
.method public constructor <init>(Lio/appium/android/apis/graphics/FingerPaint;Landroid/content/Context;)V
    .locals 2
    .param p1, "this$0"    # Lio/appium/android/apis/graphics/FingerPaint;
    .param p2, "c"    # Landroid/content/Context;

    .line 68
    iput-object p1, p0, Lio/appium/android/apis/graphics/FingerPaint$MyView;->this$0:Lio/appium/android/apis/graphics/FingerPaint;

    .line 69
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 71
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lio/appium/android/apis/graphics/FingerPaint$MyView;->mPath:Landroid/graphics/Path;

    .line 72
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lio/appium/android/apis/graphics/FingerPaint$MyView;->mBitmapPaint:Landroid/graphics/Paint;

    .line 73
    return-void
.end method

.method private touch_move(FF)V
    .locals 8
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 101
    iget v0, p0, Lio/appium/android/apis/graphics/FingerPaint$MyView;->mX:F

    sub-float v0, p1, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 102
    .local v0, "dx":F
    iget v1, p0, Lio/appium/android/apis/graphics/FingerPaint$MyView;->mY:F

    sub-float v1, p2, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 103
    .local v1, "dy":F
    const/high16 v2, 0x40800000    # 4.0f

    cmpl-float v3, v0, v2

    if-gez v3, :cond_0

    cmpl-float v2, v1, v2

    if-ltz v2, :cond_1

    .line 104
    :cond_0
    iget-object v2, p0, Lio/appium/android/apis/graphics/FingerPaint$MyView;->mPath:Landroid/graphics/Path;

    iget v3, p0, Lio/appium/android/apis/graphics/FingerPaint$MyView;->mX:F

    iget v4, p0, Lio/appium/android/apis/graphics/FingerPaint$MyView;->mY:F

    add-float v5, p1, v3

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    add-float v7, p2, v4

    div-float/2addr v7, v6

    invoke-virtual {v2, v3, v4, v5, v7}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 105
    iput p1, p0, Lio/appium/android/apis/graphics/FingerPaint$MyView;->mX:F

    .line 106
    iput p2, p0, Lio/appium/android/apis/graphics/FingerPaint$MyView;->mY:F

    .line 108
    :cond_1
    return-void
.end method

.method private touch_start(FF)V
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 95
    iget-object v0, p0, Lio/appium/android/apis/graphics/FingerPaint$MyView;->mPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 96
    iget-object v0, p0, Lio/appium/android/apis/graphics/FingerPaint$MyView;->mPath:Landroid/graphics/Path;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 97
    iput p1, p0, Lio/appium/android/apis/graphics/FingerPaint$MyView;->mX:F

    .line 98
    iput p2, p0, Lio/appium/android/apis/graphics/FingerPaint$MyView;->mY:F

    .line 99
    return-void
.end method

.method private touch_up()V
    .locals 3

    .line 110
    iget-object v0, p0, Lio/appium/android/apis/graphics/FingerPaint$MyView;->mPath:Landroid/graphics/Path;

    iget v1, p0, Lio/appium/android/apis/graphics/FingerPaint$MyView;->mX:F

    iget v2, p0, Lio/appium/android/apis/graphics/FingerPaint$MyView;->mY:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 112
    iget-object v0, p0, Lio/appium/android/apis/graphics/FingerPaint$MyView;->mCanvas:Landroid/graphics/Canvas;

    iget-object v1, p0, Lio/appium/android/apis/graphics/FingerPaint$MyView;->mPath:Landroid/graphics/Path;

    iget-object v2, p0, Lio/appium/android/apis/graphics/FingerPaint$MyView;->this$0:Lio/appium/android/apis/graphics/FingerPaint;

    invoke-static {v2}, Lio/appium/android/apis/graphics/FingerPaint;->access$000(Lio/appium/android/apis/graphics/FingerPaint;)Landroid/graphics/Paint;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 114
    iget-object v0, p0, Lio/appium/android/apis/graphics/FingerPaint$MyView;->mPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 115
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 84
    const v0, -0x555556

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 86
    iget-object v0, p0, Lio/appium/android/apis/graphics/FingerPaint$MyView;->mBitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lio/appium/android/apis/graphics/FingerPaint$MyView;->mBitmapPaint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 88
    iget-object v0, p0, Lio/appium/android/apis/graphics/FingerPaint$MyView;->mPath:Landroid/graphics/Path;

    iget-object v1, p0, Lio/appium/android/apis/graphics/FingerPaint$MyView;->this$0:Lio/appium/android/apis/graphics/FingerPaint;

    invoke-static {v1}, Lio/appium/android/apis/graphics/FingerPaint;->access$000(Lio/appium/android/apis/graphics/FingerPaint;)Landroid/graphics/Paint;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 89
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 2
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .line 77
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 78
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lio/appium/android/apis/graphics/FingerPaint$MyView;->mBitmap:Landroid/graphics/Bitmap;

    .line 79
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lio/appium/android/apis/graphics/FingerPaint$MyView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lio/appium/android/apis/graphics/FingerPaint$MyView;->mCanvas:Landroid/graphics/Canvas;

    .line 80
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 119
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 120
    .local v0, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 122
    .local v1, "y":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 128
    :pswitch_0
    invoke-direct {p0, v0, v1}, Lio/appium/android/apis/graphics/FingerPaint$MyView;->touch_move(FF)V

    .line 129
    invoke-virtual {p0}, Lio/appium/android/apis/graphics/FingerPaint$MyView;->invalidate()V

    .line 130
    goto :goto_0

    .line 132
    :pswitch_1
    invoke-direct {p0}, Lio/appium/android/apis/graphics/FingerPaint$MyView;->touch_up()V

    .line 133
    invoke-virtual {p0}, Lio/appium/android/apis/graphics/FingerPaint$MyView;->invalidate()V

    goto :goto_0

    .line 124
    :pswitch_2
    invoke-direct {p0, v0, v1}, Lio/appium/android/apis/graphics/FingerPaint$MyView;->touch_start(FF)V

    .line 125
    invoke-virtual {p0}, Lio/appium/android/apis/graphics/FingerPaint$MyView;->invalidate()V

    .line 126
    nop

    .line 136
    :goto_0
    const/4 v2, 0x1

    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
