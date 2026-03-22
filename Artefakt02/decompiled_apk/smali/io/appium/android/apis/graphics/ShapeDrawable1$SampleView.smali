.class Lio/appium/android/apis/graphics/ShapeDrawable1$SampleView;
.super Landroid/view/View;
.source "ShapeDrawable1.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/appium/android/apis/graphics/ShapeDrawable1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SampleView"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/appium/android/apis/graphics/ShapeDrawable1$SampleView$MyShapeDrawable;
    }
.end annotation


# instance fields
.field private mDrawables:[Landroid/graphics/drawable/ShapeDrawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 16
    .param p1, "context"    # Landroid/content/Context;

    .line 78
    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 79
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lio/appium/android/apis/graphics/ShapeDrawable1$SampleView;->setFocusable(Z)V

    .line 81
    const/16 v2, 0x8

    new-array v3, v2, [F

    fill-array-data v3, :array_0

    .line 82
    .local v3, "outerR":[F
    new-instance v4, Landroid/graphics/RectF;

    const/high16 v5, 0x40c00000    # 6.0f

    invoke-direct {v4, v5, v5, v5, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 83
    .local v4, "inset":Landroid/graphics/RectF;
    new-array v2, v2, [F

    fill-array-data v2, :array_1

    .line 85
    .local v2, "innerR":[F
    new-instance v5, Landroid/graphics/Path;

    invoke-direct {v5}, Landroid/graphics/Path;-><init>()V

    .line 86
    .local v5, "path":Landroid/graphics/Path;
    const/4 v6, 0x0

    const/high16 v7, 0x42480000    # 50.0f

    invoke-virtual {v5, v7, v6}, Landroid/graphics/Path;->moveTo(FF)V

    .line 87
    invoke-virtual {v5, v6, v7}, Landroid/graphics/Path;->lineTo(FF)V

    .line 88
    const/high16 v6, 0x42c80000    # 100.0f

    invoke-virtual {v5, v7, v6}, Landroid/graphics/Path;->lineTo(FF)V

    .line 89
    invoke-virtual {v5, v6, v7}, Landroid/graphics/Path;->lineTo(FF)V

    .line 90
    invoke-virtual {v5}, Landroid/graphics/Path;->close()V

    .line 92
    const/4 v7, 0x7

    new-array v7, v7, [Landroid/graphics/drawable/ShapeDrawable;

    iput-object v7, v0, Lio/appium/android/apis/graphics/ShapeDrawable1$SampleView;->mDrawables:[Landroid/graphics/drawable/ShapeDrawable;

    .line 93
    iget-object v7, v0, Lio/appium/android/apis/graphics/ShapeDrawable1$SampleView;->mDrawables:[Landroid/graphics/drawable/ShapeDrawable;

    new-instance v8, Landroid/graphics/drawable/ShapeDrawable;

    new-instance v9, Landroid/graphics/drawable/shapes/RectShape;

    invoke-direct {v9}, Landroid/graphics/drawable/shapes/RectShape;-><init>()V

    invoke-direct {v8, v9}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    const/4 v9, 0x0

    aput-object v8, v7, v9

    .line 94
    iget-object v7, v0, Lio/appium/android/apis/graphics/ShapeDrawable1$SampleView;->mDrawables:[Landroid/graphics/drawable/ShapeDrawable;

    new-instance v8, Landroid/graphics/drawable/ShapeDrawable;

    new-instance v10, Landroid/graphics/drawable/shapes/OvalShape;

    invoke-direct {v10}, Landroid/graphics/drawable/shapes/OvalShape;-><init>()V

    invoke-direct {v8, v10}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    aput-object v8, v7, v1

    .line 95
    iget-object v7, v0, Lio/appium/android/apis/graphics/ShapeDrawable1$SampleView;->mDrawables:[Landroid/graphics/drawable/ShapeDrawable;

    new-instance v8, Landroid/graphics/drawable/ShapeDrawable;

    new-instance v10, Landroid/graphics/drawable/shapes/RoundRectShape;

    const/4 v11, 0x0

    invoke-direct {v10, v3, v11, v11}, Landroid/graphics/drawable/shapes/RoundRectShape;-><init>([FLandroid/graphics/RectF;[F)V

    invoke-direct {v8, v10}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    const/4 v10, 0x2

    aput-object v8, v7, v10

    .line 97
    iget-object v7, v0, Lio/appium/android/apis/graphics/ShapeDrawable1$SampleView;->mDrawables:[Landroid/graphics/drawable/ShapeDrawable;

    new-instance v8, Landroid/graphics/drawable/ShapeDrawable;

    new-instance v12, Landroid/graphics/drawable/shapes/RoundRectShape;

    invoke-direct {v12, v3, v4, v11}, Landroid/graphics/drawable/shapes/RoundRectShape;-><init>([FLandroid/graphics/RectF;[F)V

    invoke-direct {v8, v12}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    const/4 v11, 0x3

    aput-object v8, v7, v11

    .line 99
    iget-object v7, v0, Lio/appium/android/apis/graphics/ShapeDrawable1$SampleView;->mDrawables:[Landroid/graphics/drawable/ShapeDrawable;

    new-instance v8, Landroid/graphics/drawable/ShapeDrawable;

    new-instance v12, Landroid/graphics/drawable/shapes/RoundRectShape;

    invoke-direct {v12, v3, v4, v2}, Landroid/graphics/drawable/shapes/RoundRectShape;-><init>([FLandroid/graphics/RectF;[F)V

    invoke-direct {v8, v12}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    const/4 v12, 0x4

    aput-object v8, v7, v12

    .line 101
    iget-object v7, v0, Lio/appium/android/apis/graphics/ShapeDrawable1$SampleView;->mDrawables:[Landroid/graphics/drawable/ShapeDrawable;

    new-instance v8, Landroid/graphics/drawable/ShapeDrawable;

    new-instance v13, Landroid/graphics/drawable/shapes/PathShape;

    invoke-direct {v13, v5, v6, v6}, Landroid/graphics/drawable/shapes/PathShape;-><init>(Landroid/graphics/Path;FF)V

    invoke-direct {v8, v13}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    const/4 v6, 0x5

    aput-object v8, v7, v6

    .line 102
    iget-object v7, v0, Lio/appium/android/apis/graphics/ShapeDrawable1$SampleView;->mDrawables:[Landroid/graphics/drawable/ShapeDrawable;

    new-instance v8, Lio/appium/android/apis/graphics/ShapeDrawable1$SampleView$MyShapeDrawable;

    new-instance v13, Landroid/graphics/drawable/shapes/ArcShape;

    const/high16 v14, 0x42340000    # 45.0f

    const/high16 v15, -0x3c790000    # -270.0f

    invoke-direct {v13, v14, v15}, Landroid/graphics/drawable/shapes/ArcShape;-><init>(FF)V

    invoke-direct {v8, v13}, Lio/appium/android/apis/graphics/ShapeDrawable1$SampleView$MyShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    const/4 v13, 0x6

    aput-object v8, v7, v13

    .line 104
    iget-object v7, v0, Lio/appium/android/apis/graphics/ShapeDrawable1$SampleView;->mDrawables:[Landroid/graphics/drawable/ShapeDrawable;

    aget-object v7, v7, v9

    invoke-virtual {v7}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v7

    const/high16 v8, -0x10000

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 105
    iget-object v7, v0, Lio/appium/android/apis/graphics/ShapeDrawable1$SampleView;->mDrawables:[Landroid/graphics/drawable/ShapeDrawable;

    aget-object v1, v7, v1

    invoke-virtual {v1}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v1

    const v7, -0xff0100

    invoke-virtual {v1, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 106
    iget-object v1, v0, Lio/appium/android/apis/graphics/ShapeDrawable1$SampleView;->mDrawables:[Landroid/graphics/drawable/ShapeDrawable;

    aget-object v1, v1, v10

    invoke-virtual {v1}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v1

    const v7, -0xffff01

    invoke-virtual {v1, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 107
    iget-object v1, v0, Lio/appium/android/apis/graphics/ShapeDrawable1$SampleView;->mDrawables:[Landroid/graphics/drawable/ShapeDrawable;

    aget-object v1, v1, v11

    invoke-virtual {v1}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v1

    invoke-static {}, Lio/appium/android/apis/graphics/ShapeDrawable1$SampleView;->makeSweep()Landroid/graphics/Shader;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 108
    iget-object v1, v0, Lio/appium/android/apis/graphics/ShapeDrawable1$SampleView;->mDrawables:[Landroid/graphics/drawable/ShapeDrawable;

    aget-object v1, v1, v12

    invoke-virtual {v1}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v1

    invoke-static {}, Lio/appium/android/apis/graphics/ShapeDrawable1$SampleView;->makeLinear()Landroid/graphics/Shader;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 109
    iget-object v1, v0, Lio/appium/android/apis/graphics/ShapeDrawable1$SampleView;->mDrawables:[Landroid/graphics/drawable/ShapeDrawable;

    aget-object v1, v1, v6

    invoke-virtual {v1}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v1

    invoke-static {}, Lio/appium/android/apis/graphics/ShapeDrawable1$SampleView;->makeTiling()Landroid/graphics/Shader;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 110
    iget-object v1, v0, Lio/appium/android/apis/graphics/ShapeDrawable1$SampleView;->mDrawables:[Landroid/graphics/drawable/ShapeDrawable;

    aget-object v1, v1, v13

    invoke-virtual {v1}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v1

    const v6, -0x770077bc

    invoke-virtual {v1, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 112
    new-instance v1, Landroid/graphics/DiscretePathEffect;

    const/high16 v6, 0x40800000    # 4.0f

    const/high16 v7, 0x41200000    # 10.0f

    invoke-direct {v1, v7, v6}, Landroid/graphics/DiscretePathEffect;-><init>(FF)V

    .line 113
    .local v1, "pe":Landroid/graphics/PathEffect;
    new-instance v7, Landroid/graphics/CornerPathEffect;

    invoke-direct {v7, v6}, Landroid/graphics/CornerPathEffect;-><init>(F)V

    .line 114
    .local v7, "pe2":Landroid/graphics/PathEffect;
    iget-object v8, v0, Lio/appium/android/apis/graphics/ShapeDrawable1$SampleView;->mDrawables:[Landroid/graphics/drawable/ShapeDrawable;

    aget-object v8, v8, v11

    invoke-virtual {v8}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v8

    new-instance v9, Landroid/graphics/ComposePathEffect;

    invoke-direct {v9, v7, v1}, Landroid/graphics/ComposePathEffect;-><init>(Landroid/graphics/PathEffect;Landroid/graphics/PathEffect;)V

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 117
    iget-object v8, v0, Lio/appium/android/apis/graphics/ShapeDrawable1$SampleView;->mDrawables:[Landroid/graphics/drawable/ShapeDrawable;

    aget-object v8, v8, v13

    check-cast v8, Lio/appium/android/apis/graphics/ShapeDrawable1$SampleView$MyShapeDrawable;

    .line 118
    .local v8, "msd":Lio/appium/android/apis/graphics/ShapeDrawable1$SampleView$MyShapeDrawable;
    invoke-virtual {v8}, Lio/appium/android/apis/graphics/ShapeDrawable1$SampleView$MyShapeDrawable;->getStrokePaint()Landroid/graphics/Paint;

    move-result-object v9

    invoke-virtual {v9, v6}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 119
    return-void

    nop

    :array_0
    .array-data 4
        0x41400000    # 12.0f
        0x41400000    # 12.0f
        0x41400000    # 12.0f
        0x41400000    # 12.0f
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x41400000    # 12.0f
        0x41400000    # 12.0f
        0x0
        0x0
        0x41400000    # 12.0f
        0x41400000    # 12.0f
        0x0
        0x0
    .end array-data
.end method

.method private static makeLinear()Landroid/graphics/Shader;
    .locals 9

    .line 45
    new-instance v8, Landroid/graphics/LinearGradient;

    const/4 v0, 0x3

    new-array v5, v0, [I

    fill-array-data v5, :array_0

    sget-object v7, Landroid/graphics/Shader$TileMode;->MIRROR:Landroid/graphics/Shader$TileMode;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/high16 v3, 0x42480000    # 50.0f

    const/high16 v4, 0x42480000    # 50.0f

    const/4 v6, 0x0

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    return-object v8

    :array_0
    .array-data 4
        -0x10000
        -0xff0100
        -0xffff01
    .end array-data
.end method

.method private static makeSweep()Landroid/graphics/Shader;
    .locals 5

    .line 39
    new-instance v0, Landroid/graphics/SweepGradient;

    const/4 v1, 0x4

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    const/high16 v2, 0x43160000    # 150.0f

    const/high16 v3, 0x41c80000    # 25.0f

    const/4 v4, 0x0

    invoke-direct {v0, v2, v3, v1, v4}, Landroid/graphics/SweepGradient;-><init>(FF[I[F)V

    return-object v0

    nop

    :array_0
    .array-data 4
        -0x10000
        -0xff0100
        -0xffff01
        -0x10000
    .end array-data
.end method

.method private static makeTiling()Landroid/graphics/Shader;
    .locals 5

    .line 51
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    .line 52
    .local v0, "pixels":[I
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v2, 0x2

    invoke-static {v0, v2, v2, v1}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 55
    .local v1, "bm":Landroid/graphics/Bitmap;
    new-instance v2, Landroid/graphics/BitmapShader;

    sget-object v3, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    sget-object v4, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    invoke-direct {v2, v1, v3, v4}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    return-object v2

    nop

    :array_0
    .array-data 4
        -0x10000
        -0xff0100
        -0xffff01
        0x0
    .end array-data
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 10
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 123
    const/16 v0, 0xa

    .line 124
    .local v0, "x":I
    const/16 v1, 0xa

    .line 125
    .local v1, "y":I
    const/16 v2, 0x12c

    .line 126
    .local v2, "width":I
    const/16 v3, 0x32

    .line 128
    .local v3, "height":I
    iget-object v4, p0, Lio/appium/android/apis/graphics/ShapeDrawable1$SampleView;->mDrawables:[Landroid/graphics/drawable/ShapeDrawable;

    array-length v5, v4

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v5, :cond_0

    aget-object v7, v4, v6

    .line 129
    .local v7, "dr":Landroid/graphics/drawable/Drawable;
    add-int v8, v0, v2

    add-int v9, v1, v3

    invoke-virtual {v7, v0, v1, v8, v9}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 130
    invoke-virtual {v7, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 131
    add-int/lit8 v8, v3, 0x5

    add-int/2addr v1, v8

    .line 128
    .end local v7    # "dr":Landroid/graphics/drawable/Drawable;
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 133
    :cond_0
    return-void
.end method
