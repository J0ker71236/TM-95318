.class Lio/appium/android/apis/graphics/Regions$SampleView;
.super Landroid/view/View;
.source "Regions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/appium/android/apis/graphics/Regions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SampleView"
.end annotation


# instance fields
.field private final mPaint:Landroid/graphics/Paint;

.field private final mRect1:Landroid/graphics/Rect;

.field private final mRect2:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .line 38
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 33
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lio/appium/android/apis/graphics/Regions$SampleView;->mPaint:Landroid/graphics/Paint;

    .line 34
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lio/appium/android/apis/graphics/Regions$SampleView;->mRect1:Landroid/graphics/Rect;

    .line 35
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lio/appium/android/apis/graphics/Regions$SampleView;->mRect2:Landroid/graphics/Rect;

    .line 39
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lio/appium/android/apis/graphics/Regions$SampleView;->setFocusable(Z)V

    .line 41
    iget-object v1, p0, Lio/appium/android/apis/graphics/Regions$SampleView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 42
    iget-object v0, p0, Lio/appium/android/apis/graphics/Regions$SampleView;->mPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x41800000    # 16.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 43
    iget-object v0, p0, Lio/appium/android/apis/graphics/Regions$SampleView;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 45
    iget-object v0, p0, Lio/appium/android/apis/graphics/Regions$SampleView;->mRect1:Landroid/graphics/Rect;

    const/16 v1, 0xa

    const/16 v2, 0x64

    const/16 v3, 0x50

    invoke-virtual {v0, v1, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 46
    iget-object v0, p0, Lio/appium/android/apis/graphics/Regions$SampleView;->mRect2:Landroid/graphics/Rect;

    const/16 v1, 0x32

    const/16 v2, 0x82

    const/16 v3, 0x6e

    invoke-virtual {v0, v1, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 47
    return-void
.end method

.method private static drawCentered(Landroid/graphics/Canvas;Landroid/graphics/Rect;Landroid/graphics/Paint;)V
    .locals 8
    .param p0, "c"    # Landroid/graphics/Canvas;
    .param p1, "r"    # Landroid/graphics/Rect;
    .param p2, "p"    # Landroid/graphics/Paint;

    .line 85
    invoke-virtual {p2}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v0

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float v0, v0, v1

    .line 86
    .local v0, "inset":F
    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-nez v1, :cond_0

    .line 87
    const/high16 v0, 0x3f000000    # 0.5f

    .line 89
    :cond_0
    iget v1, p1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    add-float v3, v1, v0

    iget v1, p1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    add-float v4, v1, v0

    iget v1, p1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    sub-float v5, v1, v0

    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    sub-float v6, v1, v0

    move-object v2, p0

    move-object v7, p2

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 91
    return-void
.end method

.method private drawOriginalRects(Landroid/graphics/Canvas;I)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "alpha"    # I

    .line 50
    iget-object v0, p0, Lio/appium/android/apis/graphics/Regions$SampleView;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 51
    iget-object v0, p0, Lio/appium/android/apis/graphics/Regions$SampleView;->mPaint:Landroid/graphics/Paint;

    const/high16 v1, -0x10000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 52
    iget-object v0, p0, Lio/appium/android/apis/graphics/Regions$SampleView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 53
    iget-object v0, p0, Lio/appium/android/apis/graphics/Regions$SampleView;->mRect1:Landroid/graphics/Rect;

    iget-object v1, p0, Lio/appium/android/apis/graphics/Regions$SampleView;->mPaint:Landroid/graphics/Paint;

    invoke-static {p1, v0, v1}, Lio/appium/android/apis/graphics/Regions$SampleView;->drawCentered(Landroid/graphics/Canvas;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 54
    iget-object v0, p0, Lio/appium/android/apis/graphics/Regions$SampleView;->mPaint:Landroid/graphics/Paint;

    const v1, -0xffff01

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 55
    iget-object v0, p0, Lio/appium/android/apis/graphics/Regions$SampleView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 56
    iget-object v0, p0, Lio/appium/android/apis/graphics/Regions$SampleView;->mRect2:Landroid/graphics/Rect;

    iget-object v1, p0, Lio/appium/android/apis/graphics/Regions$SampleView;->mPaint:Landroid/graphics/Paint;

    invoke-static {p1, v0, v1}, Lio/appium/android/apis/graphics/Regions$SampleView;->drawCentered(Landroid/graphics/Canvas;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 59
    iget-object v0, p0, Lio/appium/android/apis/graphics/Regions$SampleView;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 60
    return-void
.end method

.method private drawRgn(Landroid/graphics/Canvas;ILjava/lang/String;Landroid/graphics/Region$Op;)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "color"    # I
    .param p3, "str"    # Ljava/lang/String;
    .param p4, "op"    # Landroid/graphics/Region$Op;

    .line 63
    if-eqz p3, :cond_0

    .line 64
    iget-object v0, p0, Lio/appium/android/apis/graphics/Regions$SampleView;->mPaint:Landroid/graphics/Paint;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 65
    const/high16 v0, 0x42a00000    # 80.0f

    const/high16 v1, 0x41c00000    # 24.0f

    iget-object v2, p0, Lio/appium/android/apis/graphics/Regions$SampleView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p3, v0, v1, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 68
    :cond_0
    new-instance v0, Landroid/graphics/Region;

    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    .line 69
    .local v0, "rgn":Landroid/graphics/Region;
    iget-object v1, p0, Lio/appium/android/apis/graphics/Regions$SampleView;->mRect1:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Region;->set(Landroid/graphics/Rect;)Z

    .line 70
    iget-object v1, p0, Lio/appium/android/apis/graphics/Regions$SampleView;->mRect2:Landroid/graphics/Rect;

    invoke-virtual {v0, v1, p4}, Landroid/graphics/Region;->op(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 72
    iget-object v1, p0, Lio/appium/android/apis/graphics/Regions$SampleView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 73
    new-instance v1, Landroid/graphics/RegionIterator;

    invoke-direct {v1, v0}, Landroid/graphics/RegionIterator;-><init>(Landroid/graphics/Region;)V

    .line 74
    .local v1, "iter":Landroid/graphics/RegionIterator;
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 76
    .local v2, "r":Landroid/graphics/Rect;
    const/4 v3, 0x0

    const/high16 v4, 0x41f00000    # 30.0f

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 77
    iget-object v3, p0, Lio/appium/android/apis/graphics/Regions$SampleView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 78
    :goto_0
    invoke-virtual {v1, v2}, Landroid/graphics/RegionIterator;->next(Landroid/graphics/Rect;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 79
    iget-object v3, p0, Lio/appium/android/apis/graphics/Regions$SampleView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_0

    .line 81
    :cond_1
    const/16 v3, 0x80

    invoke-direct {p0, p1, v3}, Lio/appium/android/apis/graphics/Regions$SampleView;->drawOriginalRects(Landroid/graphics/Canvas;I)V

    .line 82
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 95
    const v0, -0x777778

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 97
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 98
    const/high16 v0, 0x42a00000    # 80.0f

    const/high16 v1, 0x40a00000    # 5.0f

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 99
    const/16 v0, 0xff

    invoke-direct {p0, p1, v0}, Lio/appium/android/apis/graphics/Regions$SampleView;->drawOriginalRects(Landroid/graphics/Canvas;I)V

    .line 100
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 102
    iget-object v0, p0, Lio/appium/android/apis/graphics/Regions$SampleView;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 104
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 105
    const/high16 v0, 0x430c0000    # 140.0f

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 106
    const-string v2, "Union"

    sget-object v3, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    const/high16 v4, -0x10000

    invoke-direct {p0, p1, v4, v2, v3}, Lio/appium/android/apis/graphics/Regions$SampleView;->drawRgn(Landroid/graphics/Canvas;ILjava/lang/String;Landroid/graphics/Region$Op;)V

    .line 107
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 109
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 110
    const/high16 v2, 0x438c0000    # 280.0f

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 111
    const-string v1, "Xor"

    sget-object v3, Landroid/graphics/Region$Op;->XOR:Landroid/graphics/Region$Op;

    const v4, -0xffff01

    invoke-direct {p0, p1, v4, v1, v3}, Lio/appium/android/apis/graphics/Regions$SampleView;->drawRgn(Landroid/graphics/Canvas;ILjava/lang/String;Landroid/graphics/Region$Op;)V

    .line 112
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 114
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 115
    const/high16 v1, 0x43200000    # 160.0f

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 116
    const-string v0, "Difference"

    sget-object v3, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    const v4, -0xff0100

    invoke-direct {p0, p1, v4, v0, v3}, Lio/appium/android/apis/graphics/Regions$SampleView;->drawRgn(Landroid/graphics/Canvas;ILjava/lang/String;Landroid/graphics/Region$Op;)V

    .line 117
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 119
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 120
    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 121
    const-string v0, "Intersect"

    sget-object v1, Landroid/graphics/Region$Op;->INTERSECT:Landroid/graphics/Region$Op;

    const/4 v2, -0x1

    invoke-direct {p0, p1, v2, v0, v1}, Lio/appium/android/apis/graphics/Regions$SampleView;->drawRgn(Landroid/graphics/Canvas;ILjava/lang/String;Landroid/graphics/Region$Op;)V

    .line 122
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 123
    return-void
.end method
