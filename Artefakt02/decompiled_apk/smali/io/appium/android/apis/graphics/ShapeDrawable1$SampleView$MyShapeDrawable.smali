.class Lio/appium/android/apis/graphics/ShapeDrawable1$SampleView$MyShapeDrawable;
.super Landroid/graphics/drawable/ShapeDrawable;
.source "ShapeDrawable1.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/appium/android/apis/graphics/ShapeDrawable1$SampleView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MyShapeDrawable"
.end annotation


# instance fields
.field private mStrokePaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/shapes/Shape;)V
    .locals 2
    .param p1, "s"    # Landroid/graphics/drawable/shapes/Shape;

    .line 63
    invoke-direct {p0, p1}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 60
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lio/appium/android/apis/graphics/ShapeDrawable1$SampleView$MyShapeDrawable;->mStrokePaint:Landroid/graphics/Paint;

    .line 64
    iget-object v0, p0, Lio/appium/android/apis/graphics/ShapeDrawable1$SampleView$MyShapeDrawable;->mStrokePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 65
    return-void
.end method


# virtual methods
.method public getStrokePaint()Landroid/graphics/Paint;
    .locals 1

    .line 68
    iget-object v0, p0, Lio/appium/android/apis/graphics/ShapeDrawable1$SampleView$MyShapeDrawable;->mStrokePaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method protected onDraw(Landroid/graphics/drawable/shapes/Shape;Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 1
    .param p1, "s"    # Landroid/graphics/drawable/shapes/Shape;
    .param p2, "c"    # Landroid/graphics/Canvas;
    .param p3, "p"    # Landroid/graphics/Paint;

    .line 72
    invoke-virtual {p1, p2, p3}, Landroid/graphics/drawable/shapes/Shape;->draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    .line 73
    iget-object v0, p0, Lio/appium/android/apis/graphics/ShapeDrawable1$SampleView$MyShapeDrawable;->mStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, v0}, Landroid/graphics/drawable/shapes/Shape;->draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    .line 74
    return-void
.end method
