.class public Lio/appium/android/apis/animation/ReversingAnimation$MyAnimationView;
.super Landroid/view/View;
.source "ReversingAnimation.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/appium/android/apis/animation/ReversingAnimation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyAnimationView"
.end annotation


# instance fields
.field ball:Lio/appium/android/apis/animation/ShapeHolder;

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

.field final synthetic this$0:Lio/appium/android/apis/animation/ReversingAnimation;


# direct methods
.method public constructor <init>(Lio/appium/android/apis/animation/ReversingAnimation;Landroid/content/Context;)V
    .locals 1
    .param p1, "this$0"    # Lio/appium/android/apis/animation/ReversingAnimation;
    .param p2, "context"    # Landroid/content/Context;

    .line 73
    iput-object p1, p0, Lio/appium/android/apis/animation/ReversingAnimation$MyAnimationView;->this$0:Lio/appium/android/apis/animation/ReversingAnimation;

    .line 74
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 69
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/appium/android/apis/animation/ReversingAnimation$MyAnimationView;->balls:Ljava/util/ArrayList;

    .line 70
    const/4 v0, 0x0

    iput-object v0, p0, Lio/appium/android/apis/animation/ReversingAnimation$MyAnimationView;->bounceAnim:Landroid/animation/ValueAnimator;

    .line 71
    iput-object v0, p0, Lio/appium/android/apis/animation/ReversingAnimation$MyAnimationView;->ball:Lio/appium/android/apis/animation/ShapeHolder;

    .line 75
    const/high16 v0, 0x41c80000    # 25.0f

    invoke-direct {p0, v0, v0}, Lio/appium/android/apis/animation/ReversingAnimation$MyAnimationView;->createBall(FF)Lio/appium/android/apis/animation/ShapeHolder;

    move-result-object v0

    iput-object v0, p0, Lio/appium/android/apis/animation/ReversingAnimation$MyAnimationView;->ball:Lio/appium/android/apis/animation/ShapeHolder;

    .line 76
    return-void
.end method

.method private createAnimation()V
    .locals 6

    .line 79
    iget-object v0, p0, Lio/appium/android/apis/animation/ReversingAnimation$MyAnimationView;->bounceAnim:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_0

    .line 80
    iget-object v0, p0, Lio/appium/android/apis/animation/ReversingAnimation$MyAnimationView;->ball:Lio/appium/android/apis/animation/ShapeHolder;

    const-string v1, "y"

    const/4 v2, 0x2

    new-array v2, v2, [F

    const/4 v3, 0x0

    invoke-virtual {v0}, Lio/appium/android/apis/animation/ShapeHolder;->getY()F

    move-result v4

    aput v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {p0}, Lio/appium/android/apis/animation/ReversingAnimation$MyAnimationView;->getHeight()I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x42480000    # 50.0f

    sub-float/2addr v4, v5

    aput v4, v2, v3

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v1, 0x5dc

    .line 81
    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lio/appium/android/apis/animation/ReversingAnimation$MyAnimationView;->bounceAnim:Landroid/animation/ValueAnimator;

    .line 82
    iget-object v0, p0, Lio/appium/android/apis/animation/ReversingAnimation$MyAnimationView;->bounceAnim:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    const/high16 v2, 0x40000000    # 2.0f

    invoke-direct {v1, v2}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 83
    iget-object v0, p0, Lio/appium/android/apis/animation/ReversingAnimation$MyAnimationView;->bounceAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 85
    :cond_0
    return-void
.end method

.method private createBall(FF)Lio/appium/android/apis/animation/ShapeHolder;
    .locals 17
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 103
    new-instance v0, Landroid/graphics/drawable/shapes/OvalShape;

    invoke-direct {v0}, Landroid/graphics/drawable/shapes/OvalShape;-><init>()V

    .line 104
    .local v0, "circle":Landroid/graphics/drawable/shapes/OvalShape;
    const/high16 v1, 0x42480000    # 50.0f

    invoke-virtual {v0, v1, v1}, Landroid/graphics/drawable/shapes/OvalShape;->resize(FF)V

    .line 105
    new-instance v1, Landroid/graphics/drawable/ShapeDrawable;

    invoke-direct {v1, v0}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 106
    .local v1, "drawable":Landroid/graphics/drawable/ShapeDrawable;
    new-instance v2, Lio/appium/android/apis/animation/ShapeHolder;

    invoke-direct {v2, v1}, Lio/appium/android/apis/animation/ShapeHolder;-><init>(Landroid/graphics/drawable/ShapeDrawable;)V

    .line 107
    .local v2, "shapeHolder":Lio/appium/android/apis/animation/ShapeHolder;
    const/high16 v3, 0x41c80000    # 25.0f

    sub-float v4, p1, v3

    invoke-virtual {v2, v4}, Lio/appium/android/apis/animation/ShapeHolder;->setX(F)V

    .line 108
    sub-float v3, p2, v3

    invoke-virtual {v2, v3}, Lio/appium/android/apis/animation/ShapeHolder;->setY(F)V

    .line 109
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v3

    const-wide v5, 0x406fe00000000000L    # 255.0

    mul-double v3, v3, v5

    double-to-int v3, v3

    .line 110
    .local v3, "red":I
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v7

    mul-double v7, v7, v5

    double-to-int v4, v7

    .line 111
    .local v4, "green":I
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v7

    mul-double v7, v7, v5

    double-to-int v5, v7

    .line 112
    .local v5, "blue":I
    shl-int/lit8 v6, v3, 0x10

    const/high16 v7, -0x1000000

    or-int/2addr v6, v7

    shl-int/lit8 v8, v4, 0x8

    or-int/2addr v6, v8

    or-int/2addr v6, v5

    .line 113
    .local v6, "color":I
    invoke-virtual {v1}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v15

    .line 114
    .local v15, "paint":Landroid/graphics/Paint;
    div-int/lit8 v8, v3, 0x4

    shl-int/lit8 v8, v8, 0x10

    or-int/2addr v7, v8

    div-int/lit8 v8, v4, 0x4

    shl-int/lit8 v8, v8, 0x8

    or-int/2addr v7, v8

    div-int/lit8 v8, v5, 0x4

    or-int/2addr v7, v8

    .line 115
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

    .line 117
    .local v8, "gradient":Landroid/graphics/RadialGradient;
    invoke-virtual {v15, v8}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 118
    invoke-virtual {v2, v15}, Lio/appium/android/apis/animation/ShapeHolder;->setPaint(Landroid/graphics/Paint;)V

    .line 119
    return-object v2
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .line 131
    invoke-virtual {p0}, Lio/appium/android/apis/animation/ReversingAnimation$MyAnimationView;->invalidate()V

    .line 132
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 124
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 125
    iget-object v0, p0, Lio/appium/android/apis/animation/ReversingAnimation$MyAnimationView;->ball:Lio/appium/android/apis/animation/ShapeHolder;

    invoke-virtual {v0}, Lio/appium/android/apis/animation/ShapeHolder;->getX()F

    move-result v0

    iget-object v1, p0, Lio/appium/android/apis/animation/ReversingAnimation$MyAnimationView;->ball:Lio/appium/android/apis/animation/ShapeHolder;

    invoke-virtual {v1}, Lio/appium/android/apis/animation/ShapeHolder;->getY()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 126
    iget-object v0, p0, Lio/appium/android/apis/animation/ReversingAnimation$MyAnimationView;->ball:Lio/appium/android/apis/animation/ShapeHolder;

    invoke-virtual {v0}, Lio/appium/android/apis/animation/ShapeHolder;->getShape()Landroid/graphics/drawable/ShapeDrawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/ShapeDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 127
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 128
    return-void
.end method

.method public reverseAnimation()V
    .locals 1

    .line 93
    invoke-direct {p0}, Lio/appium/android/apis/animation/ReversingAnimation$MyAnimationView;->createAnimation()V

    .line 94
    iget-object v0, p0, Lio/appium/android/apis/animation/ReversingAnimation$MyAnimationView;->bounceAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->reverse()V

    .line 95
    return-void
.end method

.method public seek(J)V
    .locals 1
    .param p1, "seekTime"    # J

    .line 98
    invoke-direct {p0}, Lio/appium/android/apis/animation/ReversingAnimation$MyAnimationView;->createAnimation()V

    .line 99
    iget-object v0, p0, Lio/appium/android/apis/animation/ReversingAnimation$MyAnimationView;->bounceAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p1, p2}, Landroid/animation/ValueAnimator;->setCurrentPlayTime(J)V

    .line 100
    return-void
.end method

.method public startAnimation()V
    .locals 1

    .line 88
    invoke-direct {p0}, Lio/appium/android/apis/animation/ReversingAnimation$MyAnimationView;->createAnimation()V

    .line 89
    iget-object v0, p0, Lio/appium/android/apis/animation/ReversingAnimation$MyAnimationView;->bounceAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 90
    return-void
.end method
