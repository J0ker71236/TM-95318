.class Lio/appium/android/apis/graphics/RoundRects$SampleView;
.super Landroid/view/View;
.source "RoundRects.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/appium/android/apis/graphics/RoundRects;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SampleView"
.end annotation


# instance fields
.field private mDrawable:Landroid/graphics/drawable/GradientDrawable;

.field private mPaint:Landroid/graphics/Paint;

.field private mPath:Landroid/graphics/Path;

.field private mRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .line 40
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 41
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lio/appium/android/apis/graphics/RoundRects$SampleView;->setFocusable(Z)V

    .line 43
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, p0, Lio/appium/android/apis/graphics/RoundRects$SampleView;->mPath:Landroid/graphics/Path;

    .line 44
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lio/appium/android/apis/graphics/RoundRects$SampleView;->mPaint:Landroid/graphics/Paint;

    .line 45
    new-instance v0, Landroid/graphics/Rect;

    const/16 v1, 0x78

    const/4 v2, 0x0

    invoke-direct {v0, v2, v2, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lio/appium/android/apis/graphics/RoundRects$SampleView;->mRect:Landroid/graphics/Rect;

    .line 47
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    sget-object v1, Landroid/graphics/drawable/GradientDrawable$Orientation;->TL_BR:Landroid/graphics/drawable/GradientDrawable$Orientation;

    const/4 v3, 0x3

    new-array v3, v3, [I

    fill-array-data v3, :array_0

    invoke-direct {v0, v1, v3}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    iput-object v0, p0, Lio/appium/android/apis/graphics/RoundRects$SampleView;->mDrawable:Landroid/graphics/drawable/GradientDrawable;

    .line 50
    iget-object v0, p0, Lio/appium/android/apis/graphics/RoundRects$SampleView;->mDrawable:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 51
    iget-object v0, p0, Lio/appium/android/apis/graphics/RoundRects$SampleView;->mDrawable:Landroid/graphics/drawable/GradientDrawable;

    const-wide/high16 v1, 0x4000000000000000L    # 2.0

    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    const-wide/high16 v3, 0x404e000000000000L    # 60.0

    mul-double v1, v1, v3

    double-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setGradientRadius(F)V

    .line 52
    return-void

    :array_0
    .array-data 4
        -0x10000
        -0xff0100
        -0xffff01
    .end array-data
.end method

.method static setCornerRadii(Landroid/graphics/drawable/GradientDrawable;FFFF)V
    .locals 2
    .param p0, "drawable"    # Landroid/graphics/drawable/GradientDrawable;
    .param p1, "r0"    # F
    .param p2, "r1"    # F
    .param p3, "r2"    # F
    .param p4, "r3"    # F

    .line 56
    const/16 v0, 0x8

    new-array v0, v0, [F

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 v1, 0x1

    aput p1, v0, v1

    const/4 v1, 0x2

    aput p2, v0, v1

    const/4 v1, 0x3

    aput p2, v0, v1

    const/4 v1, 0x4

    aput p3, v0, v1

    const/4 v1, 0x5

    aput p3, v0, v1

    const/4 v1, 0x6

    aput p4, v0, v1

    const/4 v1, 0x7

    aput p4, v0, v1

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadii([F)V

    .line 58
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 62
    iget-object v0, p0, Lio/appium/android/apis/graphics/RoundRects$SampleView;->mDrawable:Landroid/graphics/drawable/GradientDrawable;

    iget-object v1, p0, Lio/appium/android/apis/graphics/RoundRects$SampleView;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setBounds(Landroid/graphics/Rect;)V

    .line 64
    const/high16 v0, 0x41800000    # 16.0f

    .line 66
    .local v0, "r":F
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 67
    const/high16 v1, 0x41200000    # 10.0f

    invoke-virtual {p1, v1, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 68
    iget-object v2, p0, Lio/appium/android/apis/graphics/RoundRects$SampleView;->mDrawable:Landroid/graphics/drawable/GradientDrawable;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/GradientDrawable;->setGradientType(I)V

    .line 69
    iget-object v2, p0, Lio/appium/android/apis/graphics/RoundRects$SampleView;->mDrawable:Landroid/graphics/drawable/GradientDrawable;

    const/4 v4, 0x0

    invoke-static {v2, v0, v0, v4, v4}, Lio/appium/android/apis/graphics/RoundRects$SampleView;->setCornerRadii(Landroid/graphics/drawable/GradientDrawable;FFFF)V

    .line 70
    iget-object v2, p0, Lio/appium/android/apis/graphics/RoundRects$SampleView;->mDrawable:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/GradientDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 71
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 73
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 74
    iget-object v2, p0, Lio/appium/android/apis/graphics/RoundRects$SampleView;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    add-int/lit8 v2, v2, 0xa

    add-int/lit8 v2, v2, 0xa

    int-to-float v2, v2

    invoke-virtual {p1, v2, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 75
    iget-object v2, p0, Lio/appium/android/apis/graphics/RoundRects$SampleView;->mDrawable:Landroid/graphics/drawable/GradientDrawable;

    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Landroid/graphics/drawable/GradientDrawable;->setGradientType(I)V

    .line 76
    iget-object v2, p0, Lio/appium/android/apis/graphics/RoundRects$SampleView;->mDrawable:Landroid/graphics/drawable/GradientDrawable;

    invoke-static {v2, v4, v4, v0, v0}, Lio/appium/android/apis/graphics/RoundRects$SampleView;->setCornerRadii(Landroid/graphics/drawable/GradientDrawable;FFFF)V

    .line 77
    iget-object v2, p0, Lio/appium/android/apis/graphics/RoundRects$SampleView;->mDrawable:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/GradientDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 78
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 80
    iget-object v2, p0, Lio/appium/android/apis/graphics/RoundRects$SampleView;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    add-int/lit8 v2, v2, 0xa

    int-to-float v2, v2

    invoke-virtual {p1, v4, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 82
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 83
    invoke-virtual {p1, v1, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 84
    iget-object v2, p0, Lio/appium/android/apis/graphics/RoundRects$SampleView;->mDrawable:Landroid/graphics/drawable/GradientDrawable;

    const/4 v6, 0x2

    invoke-virtual {v2, v6}, Landroid/graphics/drawable/GradientDrawable;->setGradientType(I)V

    .line 85
    iget-object v2, p0, Lio/appium/android/apis/graphics/RoundRects$SampleView;->mDrawable:Landroid/graphics/drawable/GradientDrawable;

    invoke-static {v2, v4, v0, v0, v4}, Lio/appium/android/apis/graphics/RoundRects$SampleView;->setCornerRadii(Landroid/graphics/drawable/GradientDrawable;FFFF)V

    .line 86
    iget-object v2, p0, Lio/appium/android/apis/graphics/RoundRects$SampleView;->mDrawable:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/GradientDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 87
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 89
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 90
    iget-object v2, p0, Lio/appium/android/apis/graphics/RoundRects$SampleView;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    add-int/lit8 v2, v2, 0xa

    add-int/lit8 v2, v2, 0xa

    int-to-float v2, v2

    invoke-virtual {p1, v2, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 91
    iget-object v2, p0, Lio/appium/android/apis/graphics/RoundRects$SampleView;->mDrawable:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/GradientDrawable;->setGradientType(I)V

    .line 92
    iget-object v2, p0, Lio/appium/android/apis/graphics/RoundRects$SampleView;->mDrawable:Landroid/graphics/drawable/GradientDrawable;

    invoke-static {v2, v0, v4, v4, v0}, Lio/appium/android/apis/graphics/RoundRects$SampleView;->setCornerRadii(Landroid/graphics/drawable/GradientDrawable;FFFF)V

    .line 93
    iget-object v2, p0, Lio/appium/android/apis/graphics/RoundRects$SampleView;->mDrawable:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/GradientDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 94
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 96
    iget-object v2, p0, Lio/appium/android/apis/graphics/RoundRects$SampleView;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    add-int/lit8 v2, v2, 0xa

    int-to-float v2, v2

    invoke-virtual {p1, v4, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 98
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 99
    invoke-virtual {p1, v1, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 100
    iget-object v2, p0, Lio/appium/android/apis/graphics/RoundRects$SampleView;->mDrawable:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v2, v5}, Landroid/graphics/drawable/GradientDrawable;->setGradientType(I)V

    .line 101
    iget-object v2, p0, Lio/appium/android/apis/graphics/RoundRects$SampleView;->mDrawable:Landroid/graphics/drawable/GradientDrawable;

    invoke-static {v2, v0, v4, v0, v4}, Lio/appium/android/apis/graphics/RoundRects$SampleView;->setCornerRadii(Landroid/graphics/drawable/GradientDrawable;FFFF)V

    .line 102
    iget-object v2, p0, Lio/appium/android/apis/graphics/RoundRects$SampleView;->mDrawable:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/GradientDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 103
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 105
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 106
    iget-object v2, p0, Lio/appium/android/apis/graphics/RoundRects$SampleView;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    add-int/lit8 v2, v2, 0xa

    add-int/lit8 v2, v2, 0xa

    int-to-float v2, v2

    invoke-virtual {p1, v2, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 107
    iget-object v1, p0, Lio/appium/android/apis/graphics/RoundRects$SampleView;->mDrawable:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v1, v6}, Landroid/graphics/drawable/GradientDrawable;->setGradientType(I)V

    .line 108
    iget-object v1, p0, Lio/appium/android/apis/graphics/RoundRects$SampleView;->mDrawable:Landroid/graphics/drawable/GradientDrawable;

    invoke-static {v1, v4, v0, v4, v0}, Lio/appium/android/apis/graphics/RoundRects$SampleView;->setCornerRadii(Landroid/graphics/drawable/GradientDrawable;FFFF)V

    .line 109
    iget-object v1, p0, Lio/appium/android/apis/graphics/RoundRects$SampleView;->mDrawable:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/GradientDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 110
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 111
    return-void
.end method
