.class public Lio/appium/android/apis/animation/CustomEvaluator$MyAnimationView;
.super Landroid/view/View;
.source "CustomEvaluator.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/appium/android/apis/animation/CustomEvaluator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyAnimationView"
.end annotation


# instance fields
.field ball:Lio/appium/android/apis/animation/ShapeHolder;

.field ballHolder:Lio/appium/android/apis/animation/CustomEvaluator$BallXYHolder;

.field public final balls:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lio/appium/android/apis/animation/ShapeHolder;",
            ">;"
        }
    .end annotation
.end field

.field bounceAnim:Landroid/animation/ValueAnimator;

.field final synthetic this$0:Lio/appium/android/apis/animation/CustomEvaluator;


# direct methods
.method public constructor <init>(Lio/appium/android/apis/animation/CustomEvaluator;Landroid/content/Context;)V
    .locals 2
    .param p1, "this$0"    # Lio/appium/android/apis/animation/CustomEvaluator;
    .param p2, "context"    # Landroid/content/Context;

    .line 119
    iput-object p1, p0, Lio/appium/android/apis/animation/CustomEvaluator$MyAnimationView;->this$0:Lio/appium/android/apis/animation/CustomEvaluator;

    .line 120
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 114
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/appium/android/apis/animation/CustomEvaluator$MyAnimationView;->balls:Ljava/util/ArrayList;

    .line 115
    const/4 v0, 0x0

    iput-object v0, p0, Lio/appium/android/apis/animation/CustomEvaluator$MyAnimationView;->bounceAnim:Landroid/animation/ValueAnimator;

    .line 116
    iput-object v0, p0, Lio/appium/android/apis/animation/CustomEvaluator$MyAnimationView;->ball:Lio/appium/android/apis/animation/ShapeHolder;

    .line 117
    iput-object v0, p0, Lio/appium/android/apis/animation/CustomEvaluator$MyAnimationView;->ballHolder:Lio/appium/android/apis/animation/CustomEvaluator$BallXYHolder;

    .line 121
    const/high16 v0, 0x41c80000    # 25.0f

    invoke-direct {p0, v0, v0}, Lio/appium/android/apis/animation/CustomEvaluator$MyAnimationView;->createBall(FF)Lio/appium/android/apis/animation/ShapeHolder;

    move-result-object v0

    iput-object v0, p0, Lio/appium/android/apis/animation/CustomEvaluator$MyAnimationView;->ball:Lio/appium/android/apis/animation/ShapeHolder;

    .line 122
    new-instance v0, Lio/appium/android/apis/animation/CustomEvaluator$BallXYHolder;

    iget-object v1, p0, Lio/appium/android/apis/animation/CustomEvaluator$MyAnimationView;->ball:Lio/appium/android/apis/animation/ShapeHolder;

    invoke-direct {v0, p1, v1}, Lio/appium/android/apis/animation/CustomEvaluator$BallXYHolder;-><init>(Lio/appium/android/apis/animation/CustomEvaluator;Lio/appium/android/apis/animation/ShapeHolder;)V

    iput-object v0, p0, Lio/appium/android/apis/animation/CustomEvaluator$MyAnimationView;->ballHolder:Lio/appium/android/apis/animation/CustomEvaluator$BallXYHolder;

    .line 123
    return-void
.end method

.method private createAnimation()V
    .locals 7

    .line 126
    iget-object v0, p0, Lio/appium/android/apis/animation/CustomEvaluator$MyAnimationView;->bounceAnim:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_0

    .line 127
    new-instance v0, Lio/appium/android/apis/animation/CustomEvaluator$XYHolder;

    iget-object v1, p0, Lio/appium/android/apis/animation/CustomEvaluator$MyAnimationView;->this$0:Lio/appium/android/apis/animation/CustomEvaluator;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lio/appium/android/apis/animation/CustomEvaluator$XYHolder;-><init>(Lio/appium/android/apis/animation/CustomEvaluator;FF)V

    .line 128
    .local v0, "startXY":Lio/appium/android/apis/animation/CustomEvaluator$XYHolder;
    new-instance v1, Lio/appium/android/apis/animation/CustomEvaluator$XYHolder;

    iget-object v2, p0, Lio/appium/android/apis/animation/CustomEvaluator$MyAnimationView;->this$0:Lio/appium/android/apis/animation/CustomEvaluator;

    const/high16 v3, 0x43960000    # 300.0f

    const/high16 v4, 0x43fa0000    # 500.0f

    invoke-direct {v1, v2, v3, v4}, Lio/appium/android/apis/animation/CustomEvaluator$XYHolder;-><init>(Lio/appium/android/apis/animation/CustomEvaluator;FF)V

    .line 129
    .local v1, "endXY":Lio/appium/android/apis/animation/CustomEvaluator$XYHolder;
    iget-object v2, p0, Lio/appium/android/apis/animation/CustomEvaluator$MyAnimationView;->ballHolder:Lio/appium/android/apis/animation/CustomEvaluator$BallXYHolder;

    const-string v3, "xY"

    new-instance v4, Lio/appium/android/apis/animation/CustomEvaluator$XYEvaluator;

    iget-object v5, p0, Lio/appium/android/apis/animation/CustomEvaluator$MyAnimationView;->this$0:Lio/appium/android/apis/animation/CustomEvaluator;

    invoke-direct {v4, v5}, Lio/appium/android/apis/animation/CustomEvaluator$XYEvaluator;-><init>(Lio/appium/android/apis/animation/CustomEvaluator;)V

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    invoke-static {v2, v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Ljava/lang/String;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ObjectAnimator;

    move-result-object v2

    iput-object v2, p0, Lio/appium/android/apis/animation/CustomEvaluator$MyAnimationView;->bounceAnim:Landroid/animation/ValueAnimator;

    .line 131
    iget-object v2, p0, Lio/appium/android/apis/animation/CustomEvaluator$MyAnimationView;->bounceAnim:Landroid/animation/ValueAnimator;

    const-wide/16 v3, 0x5dc

    invoke-virtual {v2, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 132
    iget-object v2, p0, Lio/appium/android/apis/animation/CustomEvaluator$MyAnimationView;->bounceAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v2, p0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 134
    .end local v0    # "startXY":Lio/appium/android/apis/animation/CustomEvaluator$XYHolder;
    .end local v1    # "endXY":Lio/appium/android/apis/animation/CustomEvaluator$XYHolder;
    :cond_0
    return-void
.end method

.method private createBall(FF)Lio/appium/android/apis/animation/ShapeHolder;
    .locals 17
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 142
    new-instance v0, Landroid/graphics/drawable/shapes/OvalShape;

    invoke-direct {v0}, Landroid/graphics/drawable/shapes/OvalShape;-><init>()V

    .line 143
    .local v0, "circle":Landroid/graphics/drawable/shapes/OvalShape;
    const/high16 v1, 0x42480000    # 50.0f

    invoke-virtual {v0, v1, v1}, Landroid/graphics/drawable/shapes/OvalShape;->resize(FF)V

    .line 144
    new-instance v1, Landroid/graphics/drawable/ShapeDrawable;

    invoke-direct {v1, v0}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 145
    .local v1, "drawable":Landroid/graphics/drawable/ShapeDrawable;
    new-instance v2, Lio/appium/android/apis/animation/ShapeHolder;

    invoke-direct {v2, v1}, Lio/appium/android/apis/animation/ShapeHolder;-><init>(Landroid/graphics/drawable/ShapeDrawable;)V

    .line 146
    .local v2, "shapeHolder":Lio/appium/android/apis/animation/ShapeHolder;
    const/high16 v3, 0x41c80000    # 25.0f

    sub-float v4, p1, v3

    invoke-virtual {v2, v4}, Lio/appium/android/apis/animation/ShapeHolder;->setX(F)V

    .line 147
    sub-float v3, p2, v3

    invoke-virtual {v2, v3}, Lio/appium/android/apis/animation/ShapeHolder;->setY(F)V

    .line 148
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v3

    const-wide v5, 0x406fe00000000000L    # 255.0

    mul-double v3, v3, v5

    double-to-int v3, v3

    .line 149
    .local v3, "red":I
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v7

    mul-double v7, v7, v5

    double-to-int v4, v7

    .line 150
    .local v4, "green":I
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v7

    mul-double v7, v7, v5

    double-to-int v5, v7

    .line 151
    .local v5, "blue":I
    shl-int/lit8 v6, v3, 0x10

    const/high16 v7, -0x1000000

    or-int/2addr v6, v7

    shl-int/lit8 v8, v4, 0x8

    or-int/2addr v6, v8

    or-int/2addr v6, v5

    .line 152
    .local v6, "color":I
    invoke-virtual {v1}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v15

    .line 153
    .local v15, "paint":Landroid/graphics/Paint;
    div-int/lit8 v8, v3, 0x4

    shl-int/lit8 v8, v8, 0x10

    or-int/2addr v7, v8

    div-int/lit8 v8, v4, 0x4

    shl-int/lit8 v8, v8, 0x8

    or-int/2addr v7, v8

    div-int/lit8 v8, v5, 0x4

    or-int/2addr v7, v8

    .line 154
    .local v7, "darkColor":I
    new-instance v16, Landroid/graphics/RadialGradient;

    sget-object v14, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/high16 v9, 0x42160000    # 37.5f

    const/high16 v10, 0x41480000    # 12.5f

    const/high16 v11, 0x42480000    # 50.0f

    move-object/from16 v8, v16

    move v12, v6

    move v13, v7

    invoke-direct/range {v8 .. v14}, Landroid/graphics/RadialGradient;-><init>(FFFIILandroid/graphics/Shader$TileMode;)V

    .line 156
    .local v8, "gradient":Landroid/graphics/RadialGradient;
    invoke-virtual {v15, v8}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 157
    invoke-virtual {v2, v15}, Lio/appium/android/apis/animation/ShapeHolder;->setPaint(Landroid/graphics/Paint;)V

    .line 158
    return-object v2
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .line 170
    invoke-virtual {p0}, Lio/appium/android/apis/animation/CustomEvaluator$MyAnimationView;->invalidate()V

    .line 171
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 163
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 164
    iget-object v0, p0, Lio/appium/android/apis/animation/CustomEvaluator$MyAnimationView;->ball:Lio/appium/android/apis/animation/ShapeHolder;

    invoke-virtual {v0}, Lio/appium/android/apis/animation/ShapeHolder;->getX()F

    move-result v0

    iget-object v1, p0, Lio/appium/android/apis/animation/CustomEvaluator$MyAnimationView;->ball:Lio/appium/android/apis/animation/ShapeHolder;

    invoke-virtual {v1}, Lio/appium/android/apis/animation/ShapeHolder;->getY()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 165
    iget-object v0, p0, Lio/appium/android/apis/animation/CustomEvaluator$MyAnimationView;->ball:Lio/appium/android/apis/animation/ShapeHolder;

    invoke-virtual {v0}, Lio/appium/android/apis/animation/ShapeHolder;->getShape()Landroid/graphics/drawable/ShapeDrawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/ShapeDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 166
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 167
    return-void
.end method

.method public startAnimation()V
    .locals 1

    .line 137
    invoke-direct {p0}, Lio/appium/android/apis/animation/CustomEvaluator$MyAnimationView;->createAnimation()V

    .line 138
    iget-object v0, p0, Lio/appium/android/apis/animation/CustomEvaluator$MyAnimationView;->bounceAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 139
    return-void
.end method
