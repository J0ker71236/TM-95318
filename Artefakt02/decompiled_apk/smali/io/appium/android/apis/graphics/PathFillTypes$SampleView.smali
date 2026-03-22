.class Lio/appium/android/apis/graphics/PathFillTypes$SampleView;
.super Landroid/view/View;
.source "PathFillTypes.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/appium/android/apis/graphics/PathFillTypes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SampleView"
.end annotation


# instance fields
.field private mPaint:Landroid/graphics/Paint;

.field private mPath:Landroid/graphics/Path;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .line 41
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 37
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lio/appium/android/apis/graphics/PathFillTypes$SampleView;->mPaint:Landroid/graphics/Paint;

    .line 42
    invoke-virtual {p0, v1}, Lio/appium/android/apis/graphics/PathFillTypes$SampleView;->setFocusable(Z)V

    .line 43
    invoke-virtual {p0, v1}, Lio/appium/android/apis/graphics/PathFillTypes$SampleView;->setFocusableInTouchMode(Z)V

    .line 45
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lio/appium/android/apis/graphics/PathFillTypes$SampleView;->mPath:Landroid/graphics/Path;

    .line 46
    iget-object v0, p0, Lio/appium/android/apis/graphics/PathFillTypes$SampleView;->mPath:Landroid/graphics/Path;

    sget-object v1, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    const/high16 v2, 0x42340000    # 45.0f

    const/high16 v3, 0x42200000    # 40.0f

    invoke-virtual {v0, v3, v3, v2, v1}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    .line 47
    iget-object v0, p0, Lio/appium/android/apis/graphics/PathFillTypes$SampleView;->mPath:Landroid/graphics/Path;

    sget-object v1, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    const/high16 v3, 0x42a00000    # 80.0f

    invoke-virtual {v0, v3, v3, v2, v1}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    .line 48
    return-void
.end method

.method private showPath(Landroid/graphics/Canvas;IILandroid/graphics/Path$FillType;Landroid/graphics/Paint;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "ft"    # Landroid/graphics/Path$FillType;
    .param p5, "paint"    # Landroid/graphics/Paint;

    .line 52
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 53
    int-to-float v0, p2

    int-to-float v1, p3

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 54
    const/16 v0, 0x78

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v1, v0, v0}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 55
    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 56
    iget-object v0, p0, Lio/appium/android/apis/graphics/PathFillTypes$SampleView;->mPath:Landroid/graphics/Path;

    invoke-virtual {v0, p4}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    .line 57
    iget-object v0, p0, Lio/appium/android/apis/graphics/PathFillTypes$SampleView;->mPath:Landroid/graphics/Path;

    invoke-virtual {p1, v0, p5}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 58
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 59
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 62
    iget-object v6, p0, Lio/appium/android/apis/graphics/PathFillTypes$SampleView;->mPaint:Landroid/graphics/Paint;

    .line 64
    .local v6, "paint":Landroid/graphics/Paint;
    const v0, -0x333334

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 66
    const/high16 v0, 0x41a00000    # 20.0f

    invoke-virtual {p1, v0, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 68
    const/4 v0, 0x1

    invoke-virtual {v6, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 70
    sget-object v4, Landroid/graphics/Path$FillType;->WINDING:Landroid/graphics/Path$FillType;

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v5, v6

    invoke-direct/range {v0 .. v5}, Lio/appium/android/apis/graphics/PathFillTypes$SampleView;->showPath(Landroid/graphics/Canvas;IILandroid/graphics/Path$FillType;Landroid/graphics/Paint;)V

    .line 71
    sget-object v4, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    const/16 v2, 0xa0

    invoke-direct/range {v0 .. v5}, Lio/appium/android/apis/graphics/PathFillTypes$SampleView;->showPath(Landroid/graphics/Canvas;IILandroid/graphics/Path$FillType;Landroid/graphics/Paint;)V

    .line 72
    sget-object v4, Landroid/graphics/Path$FillType;->INVERSE_WINDING:Landroid/graphics/Path$FillType;

    const/4 v2, 0x0

    const/16 v3, 0xa0

    invoke-direct/range {v0 .. v5}, Lio/appium/android/apis/graphics/PathFillTypes$SampleView;->showPath(Landroid/graphics/Canvas;IILandroid/graphics/Path$FillType;Landroid/graphics/Paint;)V

    .line 73
    sget-object v4, Landroid/graphics/Path$FillType;->INVERSE_EVEN_ODD:Landroid/graphics/Path$FillType;

    const/16 v2, 0xa0

    invoke-direct/range {v0 .. v5}, Lio/appium/android/apis/graphics/PathFillTypes$SampleView;->showPath(Landroid/graphics/Canvas;IILandroid/graphics/Path$FillType;Landroid/graphics/Paint;)V

    .line 74
    return-void
.end method
