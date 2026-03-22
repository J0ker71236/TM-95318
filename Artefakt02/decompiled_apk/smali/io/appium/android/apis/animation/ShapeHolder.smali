.class public Lio/appium/android/apis/animation/ShapeHolder;
.super Ljava/lang/Object;
.source "ShapeHolder.java"


# instance fields
.field private alpha:F

.field private color:I

.field private gradient:Landroid/graphics/RadialGradient;

.field private paint:Landroid/graphics/Paint;

.field private shape:Landroid/graphics/drawable/ShapeDrawable;

.field private x:F

.field private y:F


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/ShapeDrawable;)V
    .locals 1
    .param p1, "s"    # Landroid/graphics/drawable/ShapeDrawable;

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const/4 v0, 0x0

    iput v0, p0, Lio/appium/android/apis/animation/ShapeHolder;->x:F

    iput v0, p0, Lio/appium/android/apis/animation/ShapeHolder;->y:F

    .line 34
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lio/appium/android/apis/animation/ShapeHolder;->alpha:F

    .line 98
    iput-object p1, p0, Lio/appium/android/apis/animation/ShapeHolder;->shape:Landroid/graphics/drawable/ShapeDrawable;

    .line 99
    return-void
.end method


# virtual methods
.method public getColor()I
    .locals 1

    .line 63
    iget v0, p0, Lio/appium/android/apis/animation/ShapeHolder;->color:I

    return v0
.end method

.method public getGradient()Landroid/graphics/RadialGradient;
    .locals 1

    .line 73
    iget-object v0, p0, Lio/appium/android/apis/animation/ShapeHolder;->gradient:Landroid/graphics/RadialGradient;

    return-object v0
.end method

.method public getHeight()F
    .locals 1

    .line 90
    iget-object v0, p0, Lio/appium/android/apis/animation/ShapeHolder;->shape:Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/ShapeDrawable;->getShape()Landroid/graphics/drawable/shapes/Shape;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/shapes/Shape;->getHeight()F

    move-result v0

    return v0
.end method

.method public getPaint()Landroid/graphics/Paint;
    .locals 1

    .line 41
    iget-object v0, p0, Lio/appium/android/apis/animation/ShapeHolder;->paint:Landroid/graphics/Paint;

    return-object v0
.end method

.method public getShape()Landroid/graphics/drawable/ShapeDrawable;
    .locals 1

    .line 60
    iget-object v0, p0, Lio/appium/android/apis/animation/ShapeHolder;->shape:Landroid/graphics/drawable/ShapeDrawable;

    return-object v0
.end method

.method public getWidth()F
    .locals 1

    .line 82
    iget-object v0, p0, Lio/appium/android/apis/animation/ShapeHolder;->shape:Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/ShapeDrawable;->getShape()Landroid/graphics/drawable/shapes/Shape;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/shapes/Shape;->getWidth()F

    move-result v0

    return v0
.end method

.method public getX()F
    .locals 1

    .line 48
    iget v0, p0, Lio/appium/android/apis/animation/ShapeHolder;->x:F

    return v0
.end method

.method public getY()F
    .locals 1

    .line 54
    iget v0, p0, Lio/appium/android/apis/animation/ShapeHolder;->y:F

    return v0
.end method

.method public setAlpha(F)V
    .locals 3
    .param p1, "alpha"    # F

    .line 77
    iput p1, p0, Lio/appium/android/apis/animation/ShapeHolder;->alpha:F

    .line 78
    iget-object v0, p0, Lio/appium/android/apis/animation/ShapeHolder;->shape:Landroid/graphics/drawable/ShapeDrawable;

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float v1, v1, p1

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/ShapeDrawable;->setAlpha(I)V

    .line 79
    return-void
.end method

.method public setColor(I)V
    .locals 1
    .param p1, "value"    # I

    .line 66
    iget-object v0, p0, Lio/appium/android/apis/animation/ShapeHolder;->shape:Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 67
    iput p1, p0, Lio/appium/android/apis/animation/ShapeHolder;->color:I

    .line 68
    return-void
.end method

.method public setGradient(Landroid/graphics/RadialGradient;)V
    .locals 0
    .param p1, "value"    # Landroid/graphics/RadialGradient;

    .line 70
    iput-object p1, p0, Lio/appium/android/apis/animation/ShapeHolder;->gradient:Landroid/graphics/RadialGradient;

    .line 71
    return-void
.end method

.method public setHeight(F)V
    .locals 2
    .param p1, "height"    # F

    .line 93
    iget-object v0, p0, Lio/appium/android/apis/animation/ShapeHolder;->shape:Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/ShapeDrawable;->getShape()Landroid/graphics/drawable/shapes/Shape;

    move-result-object v0

    .line 94
    .local v0, "s":Landroid/graphics/drawable/shapes/Shape;
    invoke-virtual {v0}, Landroid/graphics/drawable/shapes/Shape;->getWidth()F

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroid/graphics/drawable/shapes/Shape;->resize(FF)V

    .line 95
    return-void
.end method

.method public setPaint(Landroid/graphics/Paint;)V
    .locals 0
    .param p1, "value"    # Landroid/graphics/Paint;

    .line 38
    iput-object p1, p0, Lio/appium/android/apis/animation/ShapeHolder;->paint:Landroid/graphics/Paint;

    .line 39
    return-void
.end method

.method public setShape(Landroid/graphics/drawable/ShapeDrawable;)V
    .locals 0
    .param p1, "value"    # Landroid/graphics/drawable/ShapeDrawable;

    .line 57
    iput-object p1, p0, Lio/appium/android/apis/animation/ShapeHolder;->shape:Landroid/graphics/drawable/ShapeDrawable;

    .line 58
    return-void
.end method

.method public setWidth(F)V
    .locals 2
    .param p1, "width"    # F

    .line 85
    iget-object v0, p0, Lio/appium/android/apis/animation/ShapeHolder;->shape:Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/ShapeDrawable;->getShape()Landroid/graphics/drawable/shapes/Shape;

    move-result-object v0

    .line 86
    .local v0, "s":Landroid/graphics/drawable/shapes/Shape;
    invoke-virtual {v0}, Landroid/graphics/drawable/shapes/Shape;->getHeight()F

    move-result v1

    invoke-virtual {v0, p1, v1}, Landroid/graphics/drawable/shapes/Shape;->resize(FF)V

    .line 87
    return-void
.end method

.method public setX(F)V
    .locals 0
    .param p1, "value"    # F

    .line 45
    iput p1, p0, Lio/appium/android/apis/animation/ShapeHolder;->x:F

    .line 46
    return-void
.end method

.method public setY(F)V
    .locals 0
    .param p1, "value"    # F

    .line 51
    iput p1, p0, Lio/appium/android/apis/animation/ShapeHolder;->y:F

    .line 52
    return-void
.end method
