.class Lio/appium/android/apis/graphics/Compass$SampleView;
.super Landroid/view/View;
.source "Compass.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/appium/android/apis/graphics/Compass;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SampleView"
.end annotation


# instance fields
.field private mAnimate:Z

.field private mPaint:Landroid/graphics/Paint;

.field private mPath:Landroid/graphics/Path;

.field final synthetic this$0:Lio/appium/android/apis/graphics/Compass;


# direct methods
.method public constructor <init>(Lio/appium/android/apis/graphics/Compass;Landroid/content/Context;)V
    .locals 3
    .param p2, "context"    # Landroid/content/Context;

    .line 84
    iput-object p1, p0, Lio/appium/android/apis/graphics/Compass$SampleView;->this$0:Lio/appium/android/apis/graphics/Compass;

    .line 85
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 80
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lio/appium/android/apis/graphics/Compass$SampleView;->mPaint:Landroid/graphics/Paint;

    .line 81
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lio/appium/android/apis/graphics/Compass$SampleView;->mPath:Landroid/graphics/Path;

    .line 88
    iget-object p1, p0, Lio/appium/android/apis/graphics/Compass$SampleView;->mPath:Landroid/graphics/Path;

    const/4 v0, 0x0

    const/high16 v1, -0x3db80000    # -50.0f

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 89
    iget-object p1, p0, Lio/appium/android/apis/graphics/Compass$SampleView;->mPath:Landroid/graphics/Path;

    const/high16 v1, 0x42700000    # 60.0f

    const/high16 v2, -0x3e600000    # -20.0f

    invoke-virtual {p1, v2, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 90
    iget-object p1, p0, Lio/appium/android/apis/graphics/Compass$SampleView;->mPath:Landroid/graphics/Path;

    const/high16 v2, 0x42480000    # 50.0f

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 91
    iget-object p1, p0, Lio/appium/android/apis/graphics/Compass$SampleView;->mPath:Landroid/graphics/Path;

    const/high16 v0, 0x41a00000    # 20.0f

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 92
    iget-object p1, p0, Lio/appium/android/apis/graphics/Compass$SampleView;->mPath:Landroid/graphics/Path;

    invoke-virtual {p1}, Landroid/graphics/Path;->close()V

    .line 93
    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 1

    .line 118
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/appium/android/apis/graphics/Compass$SampleView;->mAnimate:Z

    .line 120
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 121
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 125
    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/appium/android/apis/graphics/Compass$SampleView;->mAnimate:Z

    .line 127
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 128
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 96
    iget-object v0, p0, Lio/appium/android/apis/graphics/Compass$SampleView;->mPaint:Landroid/graphics/Paint;

    .line 98
    .local v0, "paint":Landroid/graphics/Paint;
    const/4 v1, -0x1

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 100
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 101
    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 102
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 104
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v1

    .line 105
    .local v1, "w":I
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v2

    .line 106
    .local v2, "h":I
    div-int/lit8 v3, v1, 0x2

    .line 107
    .local v3, "cx":I
    div-int/lit8 v4, v2, 0x2

    .line 109
    .local v4, "cy":I
    int-to-float v5, v3

    int-to-float v6, v4

    invoke-virtual {p1, v5, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 110
    iget-object v5, p0, Lio/appium/android/apis/graphics/Compass$SampleView;->this$0:Lio/appium/android/apis/graphics/Compass;

    invoke-static {v5}, Lio/appium/android/apis/graphics/Compass;->access$000(Lio/appium/android/apis/graphics/Compass;)[F

    move-result-object v5

    if-eqz v5, :cond_0

    .line 111
    iget-object v5, p0, Lio/appium/android/apis/graphics/Compass$SampleView;->this$0:Lio/appium/android/apis/graphics/Compass;

    invoke-static {v5}, Lio/appium/android/apis/graphics/Compass;->access$000(Lio/appium/android/apis/graphics/Compass;)[F

    move-result-object v5

    const/4 v6, 0x0

    aget v5, v5, v6

    neg-float v5, v5

    invoke-virtual {p1, v5}, Landroid/graphics/Canvas;->rotate(F)V

    .line 113
    :cond_0
    iget-object v5, p0, Lio/appium/android/apis/graphics/Compass$SampleView;->mPath:Landroid/graphics/Path;

    iget-object v6, p0, Lio/appium/android/apis/graphics/Compass$SampleView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v5, v6}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 114
    return-void
.end method
