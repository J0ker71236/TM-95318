.class public Lio/appium/android/apis/animation/AnimationLoading$MyAnimationView;
.super Landroid/view/View;
.source "AnimationLoading.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/appium/android/apis/animation/AnimationLoading;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyAnimationView"
.end annotation


# static fields
.field private static final BALL_SIZE:F = 100.0f


# instance fields
.field animation:Landroid/animation/Animator;

.field public final balls:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lio/appium/android/apis/animation/ShapeHolder;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lio/appium/android/apis/animation/AnimationLoading;


# direct methods
.method public constructor <init>(Lio/appium/android/apis/animation/AnimationLoading;Landroid/content/Context;)V
    .locals 3
    .param p1, "this$0"    # Lio/appium/android/apis/animation/AnimationLoading;
    .param p2, "context"    # Landroid/content/Context;

    .line 75
    iput-object p1, p0, Lio/appium/android/apis/animation/AnimationLoading$MyAnimationView;->this$0:Lio/appium/android/apis/animation/AnimationLoading;

    .line 76
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 72
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/appium/android/apis/animation/AnimationLoading$MyAnimationView;->balls:Ljava/util/ArrayList;

    .line 73
    const/4 v0, 0x0

    iput-object v0, p0, Lio/appium/android/apis/animation/AnimationLoading$MyAnimationView;->animation:Landroid/animation/Animator;

    .line 77
    const/high16 v0, 0x42480000    # 50.0f

    invoke-direct {p0, v0, v0}, Lio/appium/android/apis/animation/AnimationLoading$MyAnimationView;->addBall(FF)V

    .line 78
    const/high16 v1, 0x43480000    # 200.0f

    invoke-direct {p0, v1, v0}, Lio/appium/android/apis/animation/AnimationLoading$MyAnimationView;->addBall(FF)V

    .line 79
    const/high16 v1, 0x43af0000    # 350.0f

    invoke-direct {p0, v1, v0}, Lio/appium/android/apis/animation/AnimationLoading$MyAnimationView;->addBall(FF)V

    .line 80
    const/high16 v1, 0x43fa0000    # 500.0f

    const v2, -0xff0100

    invoke-direct {p0, v1, v0, v2}, Lio/appium/android/apis/animation/AnimationLoading$MyAnimationView;->addBall(FFI)V

    .line 81
    return-void
.end method

.method private addBall(FF)V
    .locals 15
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 136
    invoke-direct/range {p0 .. p2}, Lio/appium/android/apis/animation/AnimationLoading$MyAnimationView;->createBall(FF)Lio/appium/android/apis/animation/ShapeHolder;

    move-result-object v0

    .line 137
    .local v0, "shapeHolder":Lio/appium/android/apis/animation/ShapeHolder;
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v1

    const-wide v3, 0x4063600000000000L    # 155.0

    mul-double v1, v1, v3

    const-wide/high16 v5, 0x4059000000000000L    # 100.0

    add-double/2addr v1, v5

    double-to-int v1, v1

    .line 138
    .local v1, "red":I
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v7

    mul-double v7, v7, v3

    add-double/2addr v7, v5

    double-to-int v2, v7

    .line 139
    .local v2, "green":I
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v7

    mul-double v7, v7, v3

    add-double/2addr v7, v5

    double-to-int v3, v7

    .line 140
    .local v3, "blue":I
    shl-int/lit8 v4, v1, 0x10

    const/high16 v5, -0x1000000

    or-int/2addr v4, v5

    shl-int/lit8 v6, v2, 0x8

    or-int/2addr v4, v6

    or-int/2addr v4, v3

    .line 141
    .local v4, "color":I
    invoke-virtual {v0}, Lio/appium/android/apis/animation/ShapeHolder;->getShape()Landroid/graphics/drawable/ShapeDrawable;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v13

    .line 142
    .local v13, "paint":Landroid/graphics/Paint;
    div-int/lit8 v6, v1, 0x4

    shl-int/lit8 v6, v6, 0x10

    or-int/2addr v5, v6

    div-int/lit8 v6, v2, 0x4

    shl-int/lit8 v6, v6, 0x8

    or-int/2addr v5, v6

    div-int/lit8 v6, v3, 0x4

    or-int/2addr v5, v6

    .line 143
    .local v5, "darkColor":I
    new-instance v14, Landroid/graphics/RadialGradient;

    sget-object v12, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/high16 v7, 0x42160000    # 37.5f

    const/high16 v8, 0x41480000    # 12.5f

    const/high16 v9, 0x42480000    # 50.0f

    move-object v6, v14

    move v10, v4

    move v11, v5

    invoke-direct/range {v6 .. v12}, Landroid/graphics/RadialGradient;-><init>(FFFIILandroid/graphics/Shader$TileMode;)V

    .line 145
    .local v6, "gradient":Landroid/graphics/RadialGradient;
    invoke-virtual {v13, v6}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 146
    move-object v7, p0

    iget-object v8, v7, Lio/appium/android/apis/animation/AnimationLoading$MyAnimationView;->balls:Ljava/util/ArrayList;

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 147
    return-void
.end method

.method private addBall(FFI)V
    .locals 2
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "color"    # I

    .line 130
    invoke-direct {p0, p1, p2}, Lio/appium/android/apis/animation/AnimationLoading$MyAnimationView;->createBall(FF)Lio/appium/android/apis/animation/ShapeHolder;

    move-result-object v0

    .line 131
    .local v0, "shapeHolder":Lio/appium/android/apis/animation/ShapeHolder;
    invoke-virtual {v0, p3}, Lio/appium/android/apis/animation/ShapeHolder;->setColor(I)V

    .line 132
    iget-object v1, p0, Lio/appium/android/apis/animation/AnimationLoading$MyAnimationView;->balls:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 133
    return-void
.end method

.method private createAnimation()V
    .locals 10

    .line 84
    iget-object v0, p0, Lio/appium/android/apis/animation/AnimationLoading$MyAnimationView;->this$0:Lio/appium/android/apis/animation/AnimationLoading;

    .line 86
    .local v0, "appContext":Landroid/content/Context;
    iget-object v1, p0, Lio/appium/android/apis/animation/AnimationLoading$MyAnimationView;->animation:Landroid/animation/Animator;

    if-nez v1, :cond_0

    .line 87
    const v1, 0x7f01001c

    .line 88
    invoke-static {v0, v1}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v1

    check-cast v1, Landroid/animation/ObjectAnimator;

    .line 89
    .local v1, "anim":Landroid/animation/ObjectAnimator;
    invoke-virtual {v1, p0}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 90
    iget-object v2, p0, Lio/appium/android/apis/animation/AnimationLoading$MyAnimationView;->balls:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->setTarget(Ljava/lang/Object;)V

    .line 92
    const v2, 0x7f01000c

    .line 93
    invoke-static {v0, v2}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v2

    check-cast v2, Landroid/animation/ValueAnimator;

    .line 94
    .local v2, "fader":Landroid/animation/ValueAnimator;
    new-instance v4, Lio/appium/android/apis/animation/AnimationLoading$MyAnimationView$1;

    invoke-direct {v4, p0}, Lio/appium/android/apis/animation/AnimationLoading$MyAnimationView$1;-><init>(Lio/appium/android/apis/animation/AnimationLoading$MyAnimationView;)V

    invoke-virtual {v2, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 100
    const v4, 0x7f01000d

    .line 101
    invoke-static {v0, v4}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v4

    check-cast v4, Landroid/animation/AnimatorSet;

    .line 103
    .local v4, "seq":Landroid/animation/AnimatorSet;
    iget-object v5, p0, Lio/appium/android/apis/animation/AnimationLoading$MyAnimationView;->balls:Ljava/util/ArrayList;

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet;->setTarget(Ljava/lang/Object;)V

    .line 105
    const v5, 0x7f01000e

    .line 106
    invoke-static {v0, v5}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v5

    check-cast v5, Landroid/animation/ObjectAnimator;

    .line 107
    .local v5, "colorizer":Landroid/animation/ObjectAnimator;
    iget-object v7, p0, Lio/appium/android/apis/animation/AnimationLoading$MyAnimationView;->balls:Ljava/util/ArrayList;

    const/4 v8, 0x3

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/animation/ObjectAnimator;->setTarget(Ljava/lang/Object;)V

    .line 109
    new-instance v7, Landroid/animation/AnimatorSet;

    invoke-direct {v7}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v7, p0, Lio/appium/android/apis/animation/AnimationLoading$MyAnimationView;->animation:Landroid/animation/Animator;

    .line 110
    iget-object v7, p0, Lio/appium/android/apis/animation/AnimationLoading$MyAnimationView;->animation:Landroid/animation/Animator;

    check-cast v7, Landroid/animation/AnimatorSet;

    const/4 v9, 0x4

    new-array v9, v9, [Landroid/animation/Animator;

    aput-object v1, v9, v3

    const/4 v3, 0x1

    aput-object v2, v9, v3

    aput-object v4, v9, v6

    aput-object v5, v9, v8

    invoke-virtual {v7, v9}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 112
    .end local v1    # "anim":Landroid/animation/ObjectAnimator;
    .end local v2    # "fader":Landroid/animation/ValueAnimator;
    .end local v4    # "seq":Landroid/animation/AnimatorSet;
    .end local v5    # "colorizer":Landroid/animation/ObjectAnimator;
    :cond_0
    return-void
.end method

.method private createBall(FF)Lio/appium/android/apis/animation/ShapeHolder;
    .locals 3
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 120
    new-instance v0, Landroid/graphics/drawable/shapes/OvalShape;

    invoke-direct {v0}, Landroid/graphics/drawable/shapes/OvalShape;-><init>()V

    .line 121
    .local v0, "circle":Landroid/graphics/drawable/shapes/OvalShape;
    const/high16 v1, 0x42c80000    # 100.0f

    invoke-virtual {v0, v1, v1}, Landroid/graphics/drawable/shapes/OvalShape;->resize(FF)V

    .line 122
    new-instance v1, Landroid/graphics/drawable/ShapeDrawable;

    invoke-direct {v1, v0}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 123
    .local v1, "drawable":Landroid/graphics/drawable/ShapeDrawable;
    new-instance v2, Lio/appium/android/apis/animation/ShapeHolder;

    invoke-direct {v2, v1}, Lio/appium/android/apis/animation/ShapeHolder;-><init>(Landroid/graphics/drawable/ShapeDrawable;)V

    .line 124
    .local v2, "shapeHolder":Lio/appium/android/apis/animation/ShapeHolder;
    invoke-virtual {v2, p1}, Lio/appium/android/apis/animation/ShapeHolder;->setX(F)V

    .line 125
    invoke-virtual {v2, p2}, Lio/appium/android/apis/animation/ShapeHolder;->setY(F)V

    .line 126
    return-object v2
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .line 160
    invoke-virtual {p0}, Lio/appium/android/apis/animation/AnimationLoading$MyAnimationView;->invalidate()V

    .line 161
    iget-object v0, p0, Lio/appium/android/apis/animation/AnimationLoading$MyAnimationView;->balls:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/appium/android/apis/animation/ShapeHolder;

    .line 162
    .local v0, "ball":Lio/appium/android/apis/animation/ShapeHolder;
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {v0, v1}, Lio/appium/android/apis/animation/ShapeHolder;->setY(F)V

    .line 163
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 151
    iget-object v0, p0, Lio/appium/android/apis/animation/AnimationLoading$MyAnimationView;->balls:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/appium/android/apis/animation/ShapeHolder;

    .line 152
    .local v1, "ball":Lio/appium/android/apis/animation/ShapeHolder;
    invoke-virtual {v1}, Lio/appium/android/apis/animation/ShapeHolder;->getX()F

    move-result v2

    invoke-virtual {v1}, Lio/appium/android/apis/animation/ShapeHolder;->getY()F

    move-result v3

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 153
    invoke-virtual {v1}, Lio/appium/android/apis/animation/ShapeHolder;->getShape()Landroid/graphics/drawable/ShapeDrawable;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/ShapeDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 154
    invoke-virtual {v1}, Lio/appium/android/apis/animation/ShapeHolder;->getX()F

    move-result v2

    neg-float v2, v2

    invoke-virtual {v1}, Lio/appium/android/apis/animation/ShapeHolder;->getY()F

    move-result v3

    neg-float v3, v3

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 155
    .end local v1    # "ball":Lio/appium/android/apis/animation/ShapeHolder;
    goto :goto_0

    .line 156
    :cond_0
    return-void
.end method

.method public startAnimation()V
    .locals 1

    .line 115
    invoke-direct {p0}, Lio/appium/android/apis/animation/AnimationLoading$MyAnimationView;->createAnimation()V

    .line 116
    iget-object v0, p0, Lio/appium/android/apis/animation/AnimationLoading$MyAnimationView;->animation:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 117
    return-void
.end method
