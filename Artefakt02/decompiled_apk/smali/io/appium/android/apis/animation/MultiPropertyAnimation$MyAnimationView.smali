.class public Lio/appium/android/apis/animation/MultiPropertyAnimation$MyAnimationView;
.super Landroid/view/View;
.source "MultiPropertyAnimation.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/appium/android/apis/animation/MultiPropertyAnimation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyAnimationView"
.end annotation


# static fields
.field private static final BALL_SIZE:F = 100.0f


# instance fields
.field animation:Landroid/animation/AnimatorSet;

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

.field bounceAnim:Landroid/animation/Animator;

.field final synthetic this$0:Lio/appium/android/apis/animation/MultiPropertyAnimation;


# direct methods
.method public constructor <init>(Lio/appium/android/apis/animation/MultiPropertyAnimation;Landroid/content/Context;)V
    .locals 2
    .param p1, "this$0"    # Lio/appium/android/apis/animation/MultiPropertyAnimation;
    .param p2, "context"    # Landroid/content/Context;

    .line 77
    iput-object p1, p0, Lio/appium/android/apis/animation/MultiPropertyAnimation$MyAnimationView;->this$0:Lio/appium/android/apis/animation/MultiPropertyAnimation;

    .line 78
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 72
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/appium/android/apis/animation/MultiPropertyAnimation$MyAnimationView;->balls:Ljava/util/ArrayList;

    .line 73
    const/4 v0, 0x0

    iput-object v0, p0, Lio/appium/android/apis/animation/MultiPropertyAnimation$MyAnimationView;->animation:Landroid/animation/AnimatorSet;

    .line 74
    iput-object v0, p0, Lio/appium/android/apis/animation/MultiPropertyAnimation$MyAnimationView;->bounceAnim:Landroid/animation/Animator;

    .line 75
    iput-object v0, p0, Lio/appium/android/apis/animation/MultiPropertyAnimation$MyAnimationView;->ball:Lio/appium/android/apis/animation/ShapeHolder;

    .line 79
    const/4 v0, 0x0

    const/high16 v1, 0x42480000    # 50.0f

    invoke-direct {p0, v1, v0}, Lio/appium/android/apis/animation/MultiPropertyAnimation$MyAnimationView;->addBall(FF)Lio/appium/android/apis/animation/ShapeHolder;

    .line 80
    const/high16 v1, 0x43160000    # 150.0f

    invoke-direct {p0, v1, v0}, Lio/appium/android/apis/animation/MultiPropertyAnimation$MyAnimationView;->addBall(FF)Lio/appium/android/apis/animation/ShapeHolder;

    .line 81
    const/high16 v1, 0x437a0000    # 250.0f

    invoke-direct {p0, v1, v0}, Lio/appium/android/apis/animation/MultiPropertyAnimation$MyAnimationView;->addBall(FF)Lio/appium/android/apis/animation/ShapeHolder;

    .line 82
    const/high16 v1, 0x43af0000    # 350.0f

    invoke-direct {p0, v1, v0}, Lio/appium/android/apis/animation/MultiPropertyAnimation$MyAnimationView;->addBall(FF)Lio/appium/android/apis/animation/ShapeHolder;

    .line 83
    return-void
.end method

.method private addBall(FF)Lio/appium/android/apis/animation/ShapeHolder;
    .locals 19
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 144
    new-instance v0, Landroid/graphics/drawable/shapes/OvalShape;

    invoke-direct {v0}, Landroid/graphics/drawable/shapes/OvalShape;-><init>()V

    .line 145
    .local v0, "circle":Landroid/graphics/drawable/shapes/OvalShape;
    const/high16 v1, 0x42c80000    # 100.0f

    invoke-virtual {v0, v1, v1}, Landroid/graphics/drawable/shapes/OvalShape;->resize(FF)V

    .line 146
    new-instance v1, Landroid/graphics/drawable/ShapeDrawable;

    invoke-direct {v1, v0}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 147
    .local v1, "drawable":Landroid/graphics/drawable/ShapeDrawable;
    new-instance v2, Lio/appium/android/apis/animation/ShapeHolder;

    invoke-direct {v2, v1}, Lio/appium/android/apis/animation/ShapeHolder;-><init>(Landroid/graphics/drawable/ShapeDrawable;)V

    .line 148
    .local v2, "shapeHolder":Lio/appium/android/apis/animation/ShapeHolder;
    move/from16 v3, p1

    invoke-virtual {v2, v3}, Lio/appium/android/apis/animation/ShapeHolder;->setX(F)V

    .line 149
    move/from16 v4, p2

    invoke-virtual {v2, v4}, Lio/appium/android/apis/animation/ShapeHolder;->setY(F)V

    .line 150
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v5

    const-wide v7, 0x4063600000000000L    # 155.0

    mul-double v5, v5, v7

    const-wide/high16 v9, 0x4059000000000000L    # 100.0

    add-double/2addr v5, v9

    double-to-int v5, v5

    .line 151
    .local v5, "red":I
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v11

    mul-double v11, v11, v7

    add-double/2addr v11, v9

    double-to-int v6, v11

    .line 152
    .local v6, "green":I
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v11

    mul-double v11, v11, v7

    add-double/2addr v11, v9

    double-to-int v7, v11

    .line 153
    .local v7, "blue":I
    shl-int/lit8 v8, v5, 0x10

    const/high16 v9, -0x1000000

    or-int/2addr v8, v9

    shl-int/lit8 v10, v6, 0x8

    or-int/2addr v8, v10

    or-int/2addr v8, v7

    .line 154
    .local v8, "color":I
    invoke-virtual {v1}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v15

    .line 155
    .local v15, "paint":Landroid/graphics/Paint;
    div-int/lit8 v10, v5, 0x4

    shl-int/lit8 v10, v10, 0x10

    or-int/2addr v9, v10

    div-int/lit8 v10, v6, 0x4

    shl-int/lit8 v10, v10, 0x8

    or-int/2addr v9, v10

    div-int/lit8 v10, v7, 0x4

    or-int/2addr v9, v10

    .line 156
    .local v9, "darkColor":I
    new-instance v17, Landroid/graphics/RadialGradient;

    sget-object v16, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/high16 v11, 0x42160000    # 37.5f

    const/high16 v12, 0x41480000    # 12.5f

    const/high16 v13, 0x42480000    # 50.0f

    move-object/from16 v10, v17

    move v14, v8

    move-object/from16 v18, v15

    .end local v15    # "paint":Landroid/graphics/Paint;
    .local v18, "paint":Landroid/graphics/Paint;
    move v15, v9

    invoke-direct/range {v10 .. v16}, Landroid/graphics/RadialGradient;-><init>(FFFIILandroid/graphics/Shader$TileMode;)V

    .line 158
    .local v10, "gradient":Landroid/graphics/RadialGradient;
    move-object/from16 v11, v18

    .end local v18    # "paint":Landroid/graphics/Paint;
    .local v11, "paint":Landroid/graphics/Paint;
    invoke-virtual {v11, v10}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 159
    invoke-virtual {v2, v11}, Lio/appium/android/apis/animation/ShapeHolder;->setPaint(Landroid/graphics/Paint;)V

    .line 160
    move-object/from16 v12, p0

    iget-object v13, v12, Lio/appium/android/apis/animation/MultiPropertyAnimation$MyAnimationView;->balls:Ljava/util/ArrayList;

    invoke-virtual {v13, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 161
    return-object v2
.end method

.method private createAnimation()V
    .locals 23

    .line 86
    move-object/from16 v0, p0

    iget-object v1, v0, Lio/appium/android/apis/animation/MultiPropertyAnimation$MyAnimationView;->bounceAnim:Landroid/animation/Animator;

    if-nez v1, :cond_0

    .line 88
    iget-object v1, v0, Lio/appium/android/apis/animation/MultiPropertyAnimation$MyAnimationView;->balls:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/appium/android/apis/animation/ShapeHolder;

    .line 89
    .local v1, "ball":Lio/appium/android/apis/animation/ShapeHolder;
    const-string v3, "y"

    const/4 v4, 0x2

    new-array v5, v4, [F

    .line 90
    invoke-virtual {v1}, Lio/appium/android/apis/animation/ShapeHolder;->getY()F

    move-result v6

    aput v6, v5, v2

    invoke-virtual/range {p0 .. p0}, Lio/appium/android/apis/animation/MultiPropertyAnimation$MyAnimationView;->getHeight()I

    move-result v6

    int-to-float v6, v6

    const/high16 v7, 0x42c80000    # 100.0f

    sub-float/2addr v6, v7

    const/4 v8, 0x1

    aput v6, v5, v8

    .line 89
    invoke-static {v1, v3, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    const-wide/16 v5, 0x5dc

    .line 90
    invoke-virtual {v3, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 91
    .local v3, "yBouncer":Landroid/animation/ObjectAnimator;
    new-instance v5, Landroid/view/animation/BounceInterpolator;

    invoke-direct {v5}, Landroid/view/animation/BounceInterpolator;-><init>()V

    invoke-virtual {v3, v5}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 92
    invoke-virtual {v3, v0}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 94
    iget-object v5, v0, Lio/appium/android/apis/animation/MultiPropertyAnimation$MyAnimationView;->balls:Ljava/util/ArrayList;

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object v1, v5

    check-cast v1, Lio/appium/android/apis/animation/ShapeHolder;

    .line 95
    const-string v5, "y"

    new-array v6, v4, [F

    invoke-virtual {v1}, Lio/appium/android/apis/animation/ShapeHolder;->getY()F

    move-result v9

    aput v9, v6, v2

    .line 96
    invoke-virtual/range {p0 .. p0}, Lio/appium/android/apis/animation/MultiPropertyAnimation$MyAnimationView;->getHeight()I

    move-result v9

    int-to-float v9, v9

    sub-float/2addr v9, v7

    aput v9, v6, v8

    .line 95
    invoke-static {v5, v6}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v5

    .line 97
    .local v5, "pvhY":Landroid/animation/PropertyValuesHolder;
    const-string v6, "alpha"

    new-array v9, v4, [F

    fill-array-data v9, :array_0

    invoke-static {v6, v9}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v6

    .line 98
    .local v6, "pvhAlpha":Landroid/animation/PropertyValuesHolder;
    new-array v9, v4, [Landroid/animation/PropertyValuesHolder;

    aput-object v5, v9, v2

    aput-object v6, v9, v8

    invoke-static {v1, v9}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v9

    .line 99
    const-wide/16 v10, 0x2ee

    invoke-virtual {v9, v10, v11}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v9

    .line 100
    .local v9, "yAlphaBouncer":Landroid/animation/ObjectAnimator;
    new-instance v12, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v12}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v9, v12}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 101
    invoke-virtual {v9, v8}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    .line 102
    invoke-virtual {v9, v4}, Landroid/animation/ObjectAnimator;->setRepeatMode(I)V

    .line 105
    iget-object v12, v0, Lio/appium/android/apis/animation/MultiPropertyAnimation$MyAnimationView;->balls:Ljava/util/ArrayList;

    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    move-object v1, v12

    check-cast v1, Lio/appium/android/apis/animation/ShapeHolder;

    .line 106
    const-string v12, "width"

    new-array v13, v4, [F

    invoke-virtual {v1}, Lio/appium/android/apis/animation/ShapeHolder;->getWidth()F

    move-result v14

    aput v14, v13, v2

    .line 107
    invoke-virtual {v1}, Lio/appium/android/apis/animation/ShapeHolder;->getWidth()F

    move-result v14

    const/high16 v15, 0x40000000    # 2.0f

    mul-float v14, v14, v15

    aput v14, v13, v8

    .line 106
    invoke-static {v12, v13}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v12

    .line 108
    .local v12, "pvhW":Landroid/animation/PropertyValuesHolder;
    const-string v13, "height"

    new-array v14, v4, [F

    invoke-virtual {v1}, Lio/appium/android/apis/animation/ShapeHolder;->getHeight()F

    move-result v16

    aput v16, v14, v2

    .line 109
    invoke-virtual {v1}, Lio/appium/android/apis/animation/ShapeHolder;->getHeight()F

    move-result v16

    mul-float v16, v16, v15

    aput v16, v14, v8

    .line 108
    invoke-static {v13, v14}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v13

    .line 110
    .local v13, "pvhH":Landroid/animation/PropertyValuesHolder;
    const-string v14, "x"

    new-array v15, v4, [F

    invoke-virtual {v1}, Lio/appium/android/apis/animation/ShapeHolder;->getX()F

    move-result v16

    aput v16, v15, v2

    .line 111
    invoke-virtual {v1}, Lio/appium/android/apis/animation/ShapeHolder;->getX()F

    move-result v16

    const/high16 v17, 0x42480000    # 50.0f

    sub-float v16, v16, v17

    aput v16, v15, v8

    .line 110
    invoke-static {v14, v15}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v14

    .line 112
    .local v14, "pvTX":Landroid/animation/PropertyValuesHolder;
    const-string v15, "y"

    new-array v7, v4, [F

    invoke-virtual {v1}, Lio/appium/android/apis/animation/ShapeHolder;->getY()F

    move-result v18

    aput v18, v7, v2

    .line 113
    invoke-virtual {v1}, Lio/appium/android/apis/animation/ShapeHolder;->getY()F

    move-result v18

    sub-float v18, v18, v17

    aput v18, v7, v8

    .line 112
    invoke-static {v15, v7}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v7

    .line 114
    .local v7, "pvTY":Landroid/animation/PropertyValuesHolder;
    const/4 v15, 0x4

    new-array v10, v15, [Landroid/animation/PropertyValuesHolder;

    aput-object v12, v10, v2

    aput-object v13, v10, v8

    aput-object v14, v10, v4

    const/4 v11, 0x3

    aput-object v7, v10, v11

    invoke-static {v1, v10}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v10

    .line 115
    move-object/from16 v20, v3

    const-wide/16 v2, 0x2ee

    .end local v3    # "yBouncer":Landroid/animation/ObjectAnimator;
    .local v20, "yBouncer":Landroid/animation/ObjectAnimator;
    invoke-virtual {v10, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v10

    .line 116
    .local v10, "whxyBouncer":Landroid/animation/ObjectAnimator;
    invoke-virtual {v10, v8}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    .line 117
    invoke-virtual {v10, v4}, Landroid/animation/ObjectAnimator;->setRepeatMode(I)V

    .line 119
    iget-object v2, v0, Lio/appium/android/apis/animation/MultiPropertyAnimation$MyAnimationView;->balls:Ljava/util/ArrayList;

    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v1, v2

    check-cast v1, Lio/appium/android/apis/animation/ShapeHolder;

    .line 120
    const-string v2, "y"

    new-array v3, v4, [F

    invoke-virtual {v1}, Lio/appium/android/apis/animation/ShapeHolder;->getY()F

    move-result v21

    const/16 v19, 0x0

    aput v21, v3, v19

    invoke-virtual/range {p0 .. p0}, Lio/appium/android/apis/animation/MultiPropertyAnimation$MyAnimationView;->getHeight()I

    move-result v15

    int-to-float v15, v15

    const/high16 v16, 0x42c80000    # 100.0f

    sub-float v15, v15, v16

    aput v15, v3, v8

    invoke-static {v2, v3}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    .line 121
    .end local v5    # "pvhY":Landroid/animation/PropertyValuesHolder;
    .local v2, "pvhY":Landroid/animation/PropertyValuesHolder;
    invoke-virtual {v1}, Lio/appium/android/apis/animation/ShapeHolder;->getX()F

    move-result v3

    .line 122
    .local v3, "ballX":F
    const/4 v5, 0x0

    invoke-static {v5, v3}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v5

    .line 123
    .local v5, "kf0":Landroid/animation/Keyframe;
    const/high16 v15, 0x3f000000    # 0.5f

    add-float v4, v3, v16

    invoke-static {v15, v4}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v4

    .line 124
    .local v4, "kf1":Landroid/animation/Keyframe;
    const/high16 v15, 0x3f800000    # 1.0f

    add-float v8, v3, v17

    invoke-static {v15, v8}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v8

    .line 125
    .local v8, "kf2":Landroid/animation/Keyframe;
    const-string v15, "x"

    move/from16 v17, v3

    .end local v3    # "ballX":F
    .local v17, "ballX":F
    new-array v3, v11, [Landroid/animation/Keyframe;

    const/16 v19, 0x0

    aput-object v5, v3, v19

    const/4 v11, 0x1

    aput-object v4, v3, v11

    const/4 v11, 0x2

    aput-object v8, v3, v11

    invoke-static {v15, v3}, Landroid/animation/PropertyValuesHolder;->ofKeyframe(Ljava/lang/String;[Landroid/animation/Keyframe;)Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    .line 126
    .local v3, "pvhX":Landroid/animation/PropertyValuesHolder;
    new-array v15, v11, [Landroid/animation/PropertyValuesHolder;

    aput-object v2, v15, v19

    const/4 v11, 0x1

    aput-object v3, v15, v11

    invoke-static {v1, v15}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v15

    .line 127
    move-object/from16 v22, v12

    const-wide/16 v11, 0x2ee

    .end local v12    # "pvhW":Landroid/animation/PropertyValuesHolder;
    .local v22, "pvhW":Landroid/animation/PropertyValuesHolder;
    invoke-virtual {v15, v11, v12}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v11

    .line 128
    .local v11, "yxBouncer":Landroid/animation/ObjectAnimator;
    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    .line 129
    const/4 v12, 0x2

    invoke-virtual {v11, v12}, Landroid/animation/ObjectAnimator;->setRepeatMode(I)V

    .line 132
    new-instance v15, Landroid/animation/AnimatorSet;

    invoke-direct {v15}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v15, v0, Lio/appium/android/apis/animation/MultiPropertyAnimation$MyAnimationView;->bounceAnim:Landroid/animation/Animator;

    .line 133
    iget-object v15, v0, Lio/appium/android/apis/animation/MultiPropertyAnimation$MyAnimationView;->bounceAnim:Landroid/animation/Animator;

    check-cast v15, Landroid/animation/AnimatorSet;

    const/4 v12, 0x4

    new-array v12, v12, [Landroid/animation/Animator;

    const/16 v18, 0x0

    aput-object v20, v12, v18

    const/16 v16, 0x1

    aput-object v9, v12, v16

    const/16 v16, 0x2

    aput-object v10, v12, v16

    const/16 v16, 0x3

    aput-object v11, v12, v16

    invoke-virtual {v15, v12}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 136
    .end local v1    # "ball":Lio/appium/android/apis/animation/ShapeHolder;
    .end local v2    # "pvhY":Landroid/animation/PropertyValuesHolder;
    .end local v3    # "pvhX":Landroid/animation/PropertyValuesHolder;
    .end local v4    # "kf1":Landroid/animation/Keyframe;
    .end local v5    # "kf0":Landroid/animation/Keyframe;
    .end local v6    # "pvhAlpha":Landroid/animation/PropertyValuesHolder;
    .end local v7    # "pvTY":Landroid/animation/PropertyValuesHolder;
    .end local v8    # "kf2":Landroid/animation/Keyframe;
    .end local v9    # "yAlphaBouncer":Landroid/animation/ObjectAnimator;
    .end local v10    # "whxyBouncer":Landroid/animation/ObjectAnimator;
    .end local v11    # "yxBouncer":Landroid/animation/ObjectAnimator;
    .end local v13    # "pvhH":Landroid/animation/PropertyValuesHolder;
    .end local v14    # "pvTX":Landroid/animation/PropertyValuesHolder;
    .end local v17    # "ballX":F
    .end local v20    # "yBouncer":Landroid/animation/ObjectAnimator;
    .end local v22    # "pvhW":Landroid/animation/PropertyValuesHolder;
    :cond_0
    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .line 174
    invoke-virtual {p0}, Lio/appium/android/apis/animation/MultiPropertyAnimation$MyAnimationView;->invalidate()V

    .line 175
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 166
    iget-object v0, p0, Lio/appium/android/apis/animation/MultiPropertyAnimation$MyAnimationView;->balls:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/appium/android/apis/animation/ShapeHolder;

    .line 167
    .local v1, "ball":Lio/appium/android/apis/animation/ShapeHolder;
    invoke-virtual {v1}, Lio/appium/android/apis/animation/ShapeHolder;->getX()F

    move-result v2

    invoke-virtual {v1}, Lio/appium/android/apis/animation/ShapeHolder;->getY()F

    move-result v3

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 168
    invoke-virtual {v1}, Lio/appium/android/apis/animation/ShapeHolder;->getShape()Landroid/graphics/drawable/ShapeDrawable;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/ShapeDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 169
    invoke-virtual {v1}, Lio/appium/android/apis/animation/ShapeHolder;->getX()F

    move-result v2

    neg-float v2, v2

    invoke-virtual {v1}, Lio/appium/android/apis/animation/ShapeHolder;->getY()F

    move-result v3

    neg-float v3, v3

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 170
    .end local v1    # "ball":Lio/appium/android/apis/animation/ShapeHolder;
    goto :goto_0

    .line 171
    :cond_0
    return-void
.end method

.method public startAnimation()V
    .locals 1

    .line 139
    invoke-direct {p0}, Lio/appium/android/apis/animation/MultiPropertyAnimation$MyAnimationView;->createAnimation()V

    .line 140
    iget-object v0, p0, Lio/appium/android/apis/animation/MultiPropertyAnimation$MyAnimationView;->bounceAnim:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 141
    return-void
.end method
