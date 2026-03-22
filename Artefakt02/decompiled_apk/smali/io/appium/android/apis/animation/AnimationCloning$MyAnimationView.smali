.class public Lio/appium/android/apis/animation/AnimationCloning$MyAnimationView;
.super Landroid/view/View;
.source "AnimationCloning.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/appium/android/apis/animation/AnimationCloning;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyAnimationView"
.end annotation


# instance fields
.field animation:Landroid/animation/AnimatorSet;

.field public final balls:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lio/appium/android/apis/animation/ShapeHolder;",
            ">;"
        }
    .end annotation
.end field

.field private mDensity:F

.field final synthetic this$0:Lio/appium/android/apis/animation/AnimationCloning;


# direct methods
.method public constructor <init>(Lio/appium/android/apis/animation/AnimationCloning;Landroid/content/Context;)V
    .locals 5
    .param p1, "this$0"    # Lio/appium/android/apis/animation/AnimationCloning;
    .param p2, "context"    # Landroid/content/Context;

    .line 67
    iput-object p1, p0, Lio/appium/android/apis/animation/AnimationCloning$MyAnimationView;->this$0:Lio/appium/android/apis/animation/AnimationCloning;

    .line 68
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 63
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/appium/android/apis/animation/AnimationCloning$MyAnimationView;->balls:Ljava/util/ArrayList;

    .line 64
    const/4 v0, 0x0

    iput-object v0, p0, Lio/appium/android/apis/animation/AnimationCloning$MyAnimationView;->animation:Landroid/animation/AnimatorSet;

    .line 70
    invoke-virtual {p0}, Lio/appium/android/apis/animation/AnimationCloning$MyAnimationView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lio/appium/android/apis/animation/AnimationCloning$MyAnimationView;->mDensity:F

    .line 72
    const/high16 v0, 0x41c80000    # 25.0f

    const/high16 v1, 0x42480000    # 50.0f

    invoke-direct {p0, v1, v0}, Lio/appium/android/apis/animation/AnimationCloning$MyAnimationView;->addBall(FF)Lio/appium/android/apis/animation/ShapeHolder;

    move-result-object v1

    .line 73
    .local v1, "ball0":Lio/appium/android/apis/animation/ShapeHolder;
    const/high16 v2, 0x43160000    # 150.0f

    invoke-direct {p0, v2, v0}, Lio/appium/android/apis/animation/AnimationCloning$MyAnimationView;->addBall(FF)Lio/appium/android/apis/animation/ShapeHolder;

    move-result-object v2

    .line 74
    .local v2, "ball1":Lio/appium/android/apis/animation/ShapeHolder;
    const/high16 v3, 0x437a0000    # 250.0f

    invoke-direct {p0, v3, v0}, Lio/appium/android/apis/animation/AnimationCloning$MyAnimationView;->addBall(FF)Lio/appium/android/apis/animation/ShapeHolder;

    move-result-object v3

    .line 75
    .local v3, "ball2":Lio/appium/android/apis/animation/ShapeHolder;
    const/high16 v4, 0x43af0000    # 350.0f

    invoke-direct {p0, v4, v0}, Lio/appium/android/apis/animation/AnimationCloning$MyAnimationView;->addBall(FF)Lio/appium/android/apis/animation/ShapeHolder;

    move-result-object v0

    .line 76
    .local v0, "ball3":Lio/appium/android/apis/animation/ShapeHolder;
    return-void
.end method

.method private addBall(FF)Lio/appium/android/apis/animation/ShapeHolder;
    .locals 19
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 107
    move-object/from16 v0, p0

    new-instance v1, Landroid/graphics/drawable/shapes/OvalShape;

    invoke-direct {v1}, Landroid/graphics/drawable/shapes/OvalShape;-><init>()V

    .line 108
    .local v1, "circle":Landroid/graphics/drawable/shapes/OvalShape;
    iget v2, v0, Lio/appium/android/apis/animation/AnimationCloning$MyAnimationView;->mDensity:F

    const/high16 v3, 0x42480000    # 50.0f

    mul-float v4, v2, v3

    mul-float v2, v2, v3

    invoke-virtual {v1, v4, v2}, Landroid/graphics/drawable/shapes/OvalShape;->resize(FF)V

    .line 109
    new-instance v2, Landroid/graphics/drawable/ShapeDrawable;

    invoke-direct {v2, v1}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 110
    .local v2, "drawable":Landroid/graphics/drawable/ShapeDrawable;
    new-instance v3, Lio/appium/android/apis/animation/ShapeHolder;

    invoke-direct {v3, v2}, Lio/appium/android/apis/animation/ShapeHolder;-><init>(Landroid/graphics/drawable/ShapeDrawable;)V

    .line 111
    .local v3, "shapeHolder":Lio/appium/android/apis/animation/ShapeHolder;
    const/high16 v4, 0x41c80000    # 25.0f

    sub-float v5, p1, v4

    invoke-virtual {v3, v5}, Lio/appium/android/apis/animation/ShapeHolder;->setX(F)V

    .line 112
    sub-float v4, p2, v4

    invoke-virtual {v3, v4}, Lio/appium/android/apis/animation/ShapeHolder;->setY(F)V

    .line 113
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    const-wide v6, 0x4063600000000000L    # 155.0

    mul-double v4, v4, v6

    const-wide/high16 v8, 0x4059000000000000L    # 100.0

    add-double/2addr v4, v8

    double-to-int v4, v4

    .line 114
    .local v4, "red":I
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v10

    mul-double v10, v10, v6

    add-double/2addr v10, v8

    double-to-int v5, v10

    .line 115
    .local v5, "green":I
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v10

    mul-double v10, v10, v6

    add-double/2addr v10, v8

    double-to-int v6, v10

    .line 116
    .local v6, "blue":I
    shl-int/lit8 v7, v4, 0x10

    const/high16 v8, -0x1000000

    or-int/2addr v7, v8

    shl-int/lit8 v9, v5, 0x8

    or-int/2addr v7, v9

    or-int/2addr v7, v6

    .line 117
    .local v7, "color":I
    invoke-virtual {v2}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v15

    .line 118
    .local v15, "paint":Landroid/graphics/Paint;
    div-int/lit8 v9, v4, 0x4

    shl-int/lit8 v9, v9, 0x10

    or-int/2addr v8, v9

    div-int/lit8 v9, v5, 0x4

    shl-int/lit8 v9, v9, 0x8

    or-int/2addr v8, v9

    div-int/lit8 v9, v6, 0x4

    or-int/2addr v8, v9

    .line 119
    .local v8, "darkColor":I
    new-instance v16, Landroid/graphics/RadialGradient;

    sget-object v17, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/high16 v10, 0x42160000    # 37.5f

    const/high16 v11, 0x41480000    # 12.5f

    const/high16 v12, 0x42480000    # 50.0f

    move-object/from16 v9, v16

    move v13, v7

    move v14, v8

    move-object/from16 v18, v1

    move-object v1, v15

    .end local v15    # "paint":Landroid/graphics/Paint;
    .local v1, "paint":Landroid/graphics/Paint;
    .local v18, "circle":Landroid/graphics/drawable/shapes/OvalShape;
    move-object/from16 v15, v17

    invoke-direct/range {v9 .. v15}, Landroid/graphics/RadialGradient;-><init>(FFFIILandroid/graphics/Shader$TileMode;)V

    .line 121
    .local v9, "gradient":Landroid/graphics/RadialGradient;
    invoke-virtual {v1, v9}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 122
    invoke-virtual {v3, v1}, Lio/appium/android/apis/animation/ShapeHolder;->setPaint(Landroid/graphics/Paint;)V

    .line 123
    iget-object v10, v0, Lio/appium/android/apis/animation/AnimationCloning$MyAnimationView;->balls:Ljava/util/ArrayList;

    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 124
    return-object v3
.end method

.method private createAnimation()V
    .locals 14

    .line 79
    iget-object v0, p0, Lio/appium/android/apis/animation/AnimationCloning$MyAnimationView;->animation:Landroid/animation/AnimatorSet;

    if-nez v0, :cond_0

    .line 80
    iget-object v0, p0, Lio/appium/android/apis/animation/AnimationCloning$MyAnimationView;->balls:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    const-string v2, "y"

    const/4 v3, 0x2

    new-array v4, v3, [F

    const/4 v5, 0x0

    aput v5, v4, v1

    .line 81
    invoke-virtual {p0}, Lio/appium/android/apis/animation/AnimationCloning$MyAnimationView;->getHeight()I

    move-result v6

    int-to-float v6, v6

    iget-object v7, p0, Lio/appium/android/apis/animation/AnimationCloning$MyAnimationView;->balls:Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lio/appium/android/apis/animation/ShapeHolder;

    invoke-virtual {v7}, Lio/appium/android/apis/animation/ShapeHolder;->getHeight()F

    move-result v7

    sub-float/2addr v6, v7

    const/4 v7, 0x1

    aput v6, v4, v7

    .line 80
    invoke-static {v0, v2, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 81
    const-wide/16 v8, 0x1f4

    invoke-virtual {v0, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 82
    .local v0, "anim1":Landroid/animation/ObjectAnimator;
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->clone()Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 83
    .local v2, "anim2":Landroid/animation/ObjectAnimator;
    iget-object v4, p0, Lio/appium/android/apis/animation/AnimationCloning$MyAnimationView;->balls:Ljava/util/ArrayList;

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/animation/ObjectAnimator;->setTarget(Ljava/lang/Object;)V

    .line 84
    invoke-virtual {v0, p0}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 86
    iget-object v4, p0, Lio/appium/android/apis/animation/AnimationCloning$MyAnimationView;->balls:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/appium/android/apis/animation/ShapeHolder;

    .line 87
    .local v4, "ball2":Lio/appium/android/apis/animation/ShapeHolder;
    const-string v6, "y"

    new-array v10, v3, [F

    aput v5, v10, v1

    .line 88
    invoke-virtual {p0}, Lio/appium/android/apis/animation/AnimationCloning$MyAnimationView;->getHeight()I

    move-result v11

    int-to-float v11, v11

    invoke-virtual {v4}, Lio/appium/android/apis/animation/ShapeHolder;->getHeight()F

    move-result v12

    sub-float/2addr v11, v12

    aput v11, v10, v7

    .line 87
    invoke-static {v4, v6, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    .line 88
    invoke-virtual {v6, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v6

    .line 89
    .local v6, "animDown":Landroid/animation/ObjectAnimator;
    new-instance v10, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v10}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v6, v10}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 90
    const-string v10, "y"

    new-array v11, v3, [F

    .line 91
    invoke-virtual {p0}, Lio/appium/android/apis/animation/AnimationCloning$MyAnimationView;->getHeight()I

    move-result v12

    int-to-float v12, v12

    invoke-virtual {v4}, Lio/appium/android/apis/animation/ShapeHolder;->getHeight()F

    move-result v13

    sub-float/2addr v12, v13

    aput v12, v11, v1

    aput v5, v11, v7

    .line 90
    invoke-static {v4, v10, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    .line 91
    invoke-virtual {v5, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v5

    .line 92
    .local v5, "animUp":Landroid/animation/ObjectAnimator;
    new-instance v8, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v8}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v5, v8}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 93
    new-instance v8, Landroid/animation/AnimatorSet;

    invoke-direct {v8}, Landroid/animation/AnimatorSet;-><init>()V

    .line 94
    .local v8, "s1":Landroid/animation/AnimatorSet;
    new-array v9, v3, [Landroid/animation/Animator;

    aput-object v6, v9, v1

    aput-object v5, v9, v7

    invoke-virtual {v8, v9}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    .line 95
    invoke-virtual {v6, p0}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 96
    invoke-virtual {v5, p0}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 97
    invoke-virtual {v8}, Landroid/animation/AnimatorSet;->clone()Landroid/animation/AnimatorSet;

    move-result-object v9

    .line 98
    .local v9, "s2":Landroid/animation/AnimatorSet;
    iget-object v10, p0, Lio/appium/android/apis/animation/AnimationCloning$MyAnimationView;->balls:Ljava/util/ArrayList;

    const/4 v11, 0x3

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/animation/AnimatorSet;->setTarget(Ljava/lang/Object;)V

    .line 100
    new-instance v10, Landroid/animation/AnimatorSet;

    invoke-direct {v10}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v10, p0, Lio/appium/android/apis/animation/AnimationCloning$MyAnimationView;->animation:Landroid/animation/AnimatorSet;

    .line 101
    iget-object v10, p0, Lio/appium/android/apis/animation/AnimationCloning$MyAnimationView;->animation:Landroid/animation/AnimatorSet;

    new-array v11, v11, [Landroid/animation/Animator;

    aput-object v0, v11, v1

    aput-object v2, v11, v7

    aput-object v8, v11, v3

    invoke-virtual {v10, v11}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 102
    iget-object v10, p0, Lio/appium/android/apis/animation/AnimationCloning$MyAnimationView;->animation:Landroid/animation/AnimatorSet;

    new-array v3, v3, [Landroid/animation/Animator;

    aput-object v8, v3, v1

    aput-object v9, v3, v7

    invoke-virtual {v10, v3}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    .line 104
    .end local v0    # "anim1":Landroid/animation/ObjectAnimator;
    .end local v2    # "anim2":Landroid/animation/ObjectAnimator;
    .end local v4    # "ball2":Lio/appium/android/apis/animation/ShapeHolder;
    .end local v5    # "animUp":Landroid/animation/ObjectAnimator;
    .end local v6    # "animDown":Landroid/animation/ObjectAnimator;
    .end local v8    # "s1":Landroid/animation/AnimatorSet;
    .end local v9    # "s2":Landroid/animation/AnimatorSet;
    :cond_0
    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .line 144
    invoke-virtual {p0}, Lio/appium/android/apis/animation/AnimationCloning$MyAnimationView;->invalidate()V

    .line 145
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 129
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lio/appium/android/apis/animation/AnimationCloning$MyAnimationView;->balls:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 130
    iget-object v1, p0, Lio/appium/android/apis/animation/AnimationCloning$MyAnimationView;->balls:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/appium/android/apis/animation/ShapeHolder;

    .line 131
    .local v1, "shapeHolder":Lio/appium/android/apis/animation/ShapeHolder;
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 132
    invoke-virtual {v1}, Lio/appium/android/apis/animation/ShapeHolder;->getX()F

    move-result v2

    invoke-virtual {v1}, Lio/appium/android/apis/animation/ShapeHolder;->getY()F

    move-result v3

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 133
    invoke-virtual {v1}, Lio/appium/android/apis/animation/ShapeHolder;->getShape()Landroid/graphics/drawable/ShapeDrawable;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/ShapeDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 134
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 129
    .end local v1    # "shapeHolder":Lio/appium/android/apis/animation/ShapeHolder;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 136
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public startAnimation()V
    .locals 1

    .line 139
    invoke-direct {p0}, Lio/appium/android/apis/animation/AnimationCloning$MyAnimationView;->createAnimation()V

    .line 140
    iget-object v0, p0, Lio/appium/android/apis/animation/AnimationCloning$MyAnimationView;->animation:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 141
    return-void
.end method
