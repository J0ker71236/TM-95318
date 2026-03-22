.class Lio/appium/android/apis/graphics/Patterns$SampleView;
.super Landroid/view/View;
.source "Patterns.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/appium/android/apis/graphics/Patterns;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SampleView"
.end annotation


# instance fields
.field private mDF:Landroid/graphics/DrawFilter;

.field private final mFastDF:Landroid/graphics/DrawFilter;

.field private final mPaint:Landroid/graphics/Paint;

.field private final mShader1:Landroid/graphics/Shader;

.field private final mShader2:Landroid/graphics/Shader;

.field private mTouchCurrX:F

.field private mTouchCurrY:F

.field private mTouchStartX:F

.field private mTouchStartY:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .line 66
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 67
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lio/appium/android/apis/graphics/Patterns$SampleView;->setFocusable(Z)V

    .line 68
    invoke-virtual {p0, v0}, Lio/appium/android/apis/graphics/Patterns$SampleView;->setFocusableInTouchMode(Z)V

    .line 70
    new-instance v0, Landroid/graphics/PaintFlagsDrawFilter;

    const/4 v1, 0x6

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    iput-object v0, p0, Lio/appium/android/apis/graphics/Patterns$SampleView;->mFastDF:Landroid/graphics/DrawFilter;

    .line 74
    new-instance v0, Landroid/graphics/BitmapShader;

    invoke-static {}, Lio/appium/android/apis/graphics/Patterns;->access$000()Landroid/graphics/Bitmap;

    move-result-object v1

    sget-object v2, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    sget-object v3, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    invoke-direct {v0, v1, v2, v3}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    iput-object v0, p0, Lio/appium/android/apis/graphics/Patterns$SampleView;->mShader1:Landroid/graphics/Shader;

    .line 76
    new-instance v0, Landroid/graphics/BitmapShader;

    invoke-static {}, Lio/appium/android/apis/graphics/Patterns;->access$100()Landroid/graphics/Bitmap;

    move-result-object v1

    sget-object v2, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    sget-object v3, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    invoke-direct {v0, v1, v2, v3}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    iput-object v0, p0, Lio/appium/android/apis/graphics/Patterns$SampleView;->mShader2:Landroid/graphics/Shader;

    .line 79
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 80
    .local v0, "m":Landroid/graphics/Matrix;
    const/high16 v1, 0x41f00000    # 30.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 81
    iget-object v1, p0, Lio/appium/android/apis/graphics/Patterns$SampleView;->mShader2:Landroid/graphics/Shader;

    invoke-virtual {v1, v0}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 83
    new-instance v1, Landroid/graphics/Paint;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lio/appium/android/apis/graphics/Patterns$SampleView;->mPaint:Landroid/graphics/Paint;

    .line 84
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 87
    iget-object v0, p0, Lio/appium/android/apis/graphics/Patterns$SampleView;->mDF:Landroid/graphics/DrawFilter;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    .line 89
    iget-object v0, p0, Lio/appium/android/apis/graphics/Patterns$SampleView;->mPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lio/appium/android/apis/graphics/Patterns$SampleView;->mShader1:Landroid/graphics/Shader;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 90
    iget-object v0, p0, Lio/appium/android/apis/graphics/Patterns$SampleView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawPaint(Landroid/graphics/Paint;)V

    .line 92
    iget v0, p0, Lio/appium/android/apis/graphics/Patterns$SampleView;->mTouchCurrX:F

    iget v1, p0, Lio/appium/android/apis/graphics/Patterns$SampleView;->mTouchStartX:F

    sub-float/2addr v0, v1

    iget v1, p0, Lio/appium/android/apis/graphics/Patterns$SampleView;->mTouchCurrY:F

    iget v2, p0, Lio/appium/android/apis/graphics/Patterns$SampleView;->mTouchStartY:F

    sub-float/2addr v1, v2

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 95
    iget-object v0, p0, Lio/appium/android/apis/graphics/Patterns$SampleView;->mPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lio/appium/android/apis/graphics/Patterns$SampleView;->mShader2:Landroid/graphics/Shader;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 96
    iget-object v0, p0, Lio/appium/android/apis/graphics/Patterns$SampleView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawPaint(Landroid/graphics/Paint;)V

    .line 97
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 101
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 102
    .local v0, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 104
    .local v1, "y":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 112
    :pswitch_0
    iput v0, p0, Lio/appium/android/apis/graphics/Patterns$SampleView;->mTouchCurrX:F

    .line 113
    iput v1, p0, Lio/appium/android/apis/graphics/Patterns$SampleView;->mTouchCurrY:F

    .line 114
    invoke-virtual {p0}, Lio/appium/android/apis/graphics/Patterns$SampleView;->invalidate()V

    .line 115
    goto :goto_0

    .line 117
    :pswitch_1
    const/4 v2, 0x0

    iput-object v2, p0, Lio/appium/android/apis/graphics/Patterns$SampleView;->mDF:Landroid/graphics/DrawFilter;

    .line 118
    invoke-virtual {p0}, Lio/appium/android/apis/graphics/Patterns$SampleView;->invalidate()V

    goto :goto_0

    .line 106
    :pswitch_2
    iput v0, p0, Lio/appium/android/apis/graphics/Patterns$SampleView;->mTouchCurrX:F

    iput v0, p0, Lio/appium/android/apis/graphics/Patterns$SampleView;->mTouchStartX:F

    .line 107
    iput v1, p0, Lio/appium/android/apis/graphics/Patterns$SampleView;->mTouchCurrY:F

    iput v1, p0, Lio/appium/android/apis/graphics/Patterns$SampleView;->mTouchStartY:F

    .line 108
    iget-object v2, p0, Lio/appium/android/apis/graphics/Patterns$SampleView;->mFastDF:Landroid/graphics/DrawFilter;

    iput-object v2, p0, Lio/appium/android/apis/graphics/Patterns$SampleView;->mDF:Landroid/graphics/DrawFilter;

    .line 109
    invoke-virtual {p0}, Lio/appium/android/apis/graphics/Patterns$SampleView;->invalidate()V

    .line 110
    nop

    .line 121
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
