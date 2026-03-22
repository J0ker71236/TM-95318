.class Lio/appium/android/apis/graphics/ScaleToFit$SampleView;
.super Landroid/view/View;
.source "ScaleToFit.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/appium/android/apis/graphics/ScaleToFit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SampleView"
.end annotation


# static fields
.field private static final HEIGHT:I = 0x34

.field private static final N:I = 0x4

.field private static final WIDTH:I = 0x34

.field private static final sFitLabels:[Ljava/lang/String;

.field private static final sFits:[Landroid/graphics/Matrix$ScaleToFit;

.field private static final sSrcData:[I


# instance fields
.field private final mDstR:Landroid/graphics/RectF;

.field private final mHairPaint:Landroid/graphics/Paint;

.field private final mLabelPaint:Landroid/graphics/Paint;

.field private final mMatrix:Landroid/graphics/Matrix;

.field private final mPaint:Landroid/graphics/Paint;

.field private final mSrcR:Landroid/graphics/RectF;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 39
    const/4 v0, 0x4

    new-array v1, v0, [Landroid/graphics/Matrix$ScaleToFit;

    sget-object v2, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Landroid/graphics/Matrix$ScaleToFit;->START:Landroid/graphics/Matrix$ScaleToFit;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    sget-object v2, Landroid/graphics/Matrix$ScaleToFit;->CENTER:Landroid/graphics/Matrix$ScaleToFit;

    const/4 v5, 0x2

    aput-object v2, v1, v5

    sget-object v2, Landroid/graphics/Matrix$ScaleToFit;->END:Landroid/graphics/Matrix$ScaleToFit;

    const/4 v6, 0x3

    aput-object v2, v1, v6

    sput-object v1, Lio/appium/android/apis/graphics/ScaleToFit$SampleView;->sFits:[Landroid/graphics/Matrix$ScaleToFit;

    .line 47
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "FILL"

    aput-object v1, v0, v3

    const-string v1, "START"

    aput-object v1, v0, v4

    const-string v1, "CENTER"

    aput-object v1, v0, v5

    const-string v1, "END"

    aput-object v1, v0, v6

    sput-object v0, Lio/appium/android/apis/graphics/ScaleToFit$SampleView;->sFitLabels:[Ljava/lang/String;

    .line 51
    const/16 v0, 0xc

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lio/appium/android/apis/graphics/ScaleToFit$SampleView;->sSrcData:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x50
        0x28
        -0x10000
        0x28
        0x50
        -0xff0100
        0x1e
        0x1e
        -0xffff01
        0x50
        0x50
        -0x1000000
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 64
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 33
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lio/appium/android/apis/graphics/ScaleToFit$SampleView;->mPaint:Landroid/graphics/Paint;

    .line 34
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lio/appium/android/apis/graphics/ScaleToFit$SampleView;->mHairPaint:Landroid/graphics/Paint;

    .line 35
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lio/appium/android/apis/graphics/ScaleToFit$SampleView;->mLabelPaint:Landroid/graphics/Paint;

    .line 36
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lio/appium/android/apis/graphics/ScaleToFit$SampleView;->mMatrix:Landroid/graphics/Matrix;

    .line 37
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lio/appium/android/apis/graphics/ScaleToFit$SampleView;->mSrcR:Landroid/graphics/RectF;

    .line 61
    new-instance v0, Landroid/graphics/RectF;

    const/high16 v1, 0x42500000    # 52.0f

    const/4 v2, 0x0

    invoke-direct {v0, v2, v2, v1, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lio/appium/android/apis/graphics/ScaleToFit$SampleView;->mDstR:Landroid/graphics/RectF;

    .line 66
    iget-object v0, p0, Lio/appium/android/apis/graphics/ScaleToFit$SampleView;->mHairPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 67
    iget-object v0, p0, Lio/appium/android/apis/graphics/ScaleToFit$SampleView;->mLabelPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x41800000    # 16.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 68
    return-void
.end method

.method private drawFit(Landroid/graphics/Canvas;ILandroid/graphics/Matrix$ScaleToFit;)V
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "index"    # I
    .param p3, "stf"    # Landroid/graphics/Matrix$ScaleToFit;

    .line 82
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 84
    invoke-direct {p0, p2}, Lio/appium/android/apis/graphics/ScaleToFit$SampleView;->setSrcR(I)V

    .line 85
    iget-object v0, p0, Lio/appium/android/apis/graphics/ScaleToFit$SampleView;->mMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lio/appium/android/apis/graphics/ScaleToFit$SampleView;->mSrcR:Landroid/graphics/RectF;

    iget-object v2, p0, Lio/appium/android/apis/graphics/ScaleToFit$SampleView;->mDstR:Landroid/graphics/RectF;

    invoke-virtual {v0, v1, v2, p3}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 86
    iget-object v0, p0, Lio/appium/android/apis/graphics/ScaleToFit$SampleView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 87
    invoke-direct {p0, p1, p2}, Lio/appium/android/apis/graphics/ScaleToFit$SampleView;->drawSrcR(Landroid/graphics/Canvas;I)V

    .line 89
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 91
    iget-object v0, p0, Lio/appium/android/apis/graphics/ScaleToFit$SampleView;->mDstR:Landroid/graphics/RectF;

    iget-object v1, p0, Lio/appium/android/apis/graphics/ScaleToFit$SampleView;->mHairPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 92
    return-void
.end method

.method private drawSrcR(Landroid/graphics/Canvas;I)V
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "index"    # I

    .line 77
    iget-object v0, p0, Lio/appium/android/apis/graphics/ScaleToFit$SampleView;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Lio/appium/android/apis/graphics/ScaleToFit$SampleView;->sSrcData:[I

    mul-int/lit8 v2, p2, 0x3

    add-int/lit8 v2, v2, 0x2

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 78
    iget-object v0, p0, Lio/appium/android/apis/graphics/ScaleToFit$SampleView;->mSrcR:Landroid/graphics/RectF;

    iget-object v1, p0, Lio/appium/android/apis/graphics/ScaleToFit$SampleView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 79
    return-void
.end method

.method private setSrcR(I)V
    .locals 6
    .param p1, "index"    # I

    .line 71
    sget-object v0, Lio/appium/android/apis/graphics/ScaleToFit$SampleView;->sSrcData:[I

    mul-int/lit8 v1, p1, 0x3

    add-int/lit8 v1, v1, 0x0

    aget v1, v0, v1

    .line 72
    .local v1, "w":I
    mul-int/lit8 v2, p1, 0x3

    add-int/lit8 v2, v2, 0x1

    aget v0, v0, v2

    .line 73
    .local v0, "h":I
    iget-object v2, p0, Lio/appium/android/apis/graphics/ScaleToFit$SampleView;->mSrcR:Landroid/graphics/RectF;

    int-to-float v3, v1

    int-to-float v4, v0

    const/4 v5, 0x0

    invoke-virtual {v2, v5, v5, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 74
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 96
    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 98
    const/high16 v0, 0x41200000    # 10.0f

    invoke-virtual {p1, v0, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 100
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 101
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x4

    const/4 v2, 0x0

    if-ge v0, v1, :cond_0

    .line 102
    invoke-direct {p0, v0}, Lio/appium/android/apis/graphics/ScaleToFit$SampleView;->setSrcR(I)V

    .line 103
    invoke-direct {p0, p1, v0}, Lio/appium/android/apis/graphics/ScaleToFit$SampleView;->drawSrcR(Landroid/graphics/Canvas;I)V

    .line 104
    iget-object v1, p0, Lio/appium/android/apis/graphics/ScaleToFit$SampleView;->mSrcR:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    const/high16 v3, 0x41700000    # 15.0f

    add-float/2addr v1, v3

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 101
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 106
    .end local v0    # "i":I
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 108
    const/high16 v0, 0x42c80000    # 100.0f

    invoke-virtual {p1, v2, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 109
    const/4 v0, 0x0

    .local v0, "j":I
    :goto_1
    sget-object v3, Lio/appium/android/apis/graphics/ScaleToFit$SampleView;->sFits:[Landroid/graphics/Matrix$ScaleToFit;

    array-length v3, v3

    if-ge v0, v3, :cond_2

    .line 110
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 111
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2
    if-ge v3, v1, :cond_1

    .line 112
    sget-object v4, Lio/appium/android/apis/graphics/ScaleToFit$SampleView;->sFits:[Landroid/graphics/Matrix$ScaleToFit;

    aget-object v4, v4, v0

    invoke-direct {p0, p1, v3, v4}, Lio/appium/android/apis/graphics/ScaleToFit$SampleView;->drawFit(Landroid/graphics/Canvas;ILandroid/graphics/Matrix$ScaleToFit;)V

    .line 113
    iget-object v4, p0, Lio/appium/android/apis/graphics/ScaleToFit$SampleView;->mDstR:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    const/high16 v5, 0x41000000    # 8.0f

    add-float/2addr v4, v5

    invoke-virtual {p1, v4, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 111
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 115
    .end local v3    # "i":I
    :cond_1
    sget-object v3, Lio/appium/android/apis/graphics/ScaleToFit$SampleView;->sFitLabels:[Ljava/lang/String;

    aget-object v3, v3, v0

    const/high16 v4, 0x42080000    # 34.0f

    iget-object v5, p0, Lio/appium/android/apis/graphics/ScaleToFit$SampleView;->mLabelPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v2, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 116
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 117
    const/high16 v3, 0x42a00000    # 80.0f

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 109
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 119
    .end local v0    # "j":I
    :cond_2
    return-void
.end method
