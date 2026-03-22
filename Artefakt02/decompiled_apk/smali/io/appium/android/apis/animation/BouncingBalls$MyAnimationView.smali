.class public Lio/appium/android/apis/animation/BouncingBalls$MyAnimationView;
.super Landroid/view/View;
.source "BouncingBalls.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/appium/android/apis/animation/BouncingBalls;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyAnimationView"
.end annotation


# static fields
.field private static final BLUE:I = -0x7f7f01

.field private static final CYAN:I = -0x7f0001

.field private static final GREEN:I = -0x7f0080

.field private static final RED:I = -0x7f80


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

.field final synthetic this$0:Lio/appium/android/apis/animation/BouncingBalls;


# direct methods
.method public constructor <init>(Lio/appium/android/apis/animation/BouncingBalls;Landroid/content/Context;)V
    .locals 4
    .param p1, "this$0"    # Lio/appium/android/apis/animation/BouncingBalls;
    .param p2, "context"    # Landroid/content/Context;

    .line 63
    iput-object p1, p0, Lio/appium/android/apis/animation/BouncingBalls$MyAnimationView;->this$0:Lio/appium/android/apis/animation/BouncingBalls;

    .line 64
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/appium/android/apis/animation/BouncingBalls$MyAnimationView;->balls:Ljava/util/ArrayList;

    .line 61
    const/4 v0, 0x0

    iput-object v0, p0, Lio/appium/android/apis/animation/BouncingBalls$MyAnimationView;->animation:Landroid/animation/AnimatorSet;

    .line 70
    const-string v0, "backgroundColor"

    const/4 v1, 0x2

    new-array v2, v1, [I

    fill-array-data v2, :array_0

    invoke-static {p0, v0, v2}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 71
    .local v0, "colorAnim":Landroid/animation/ValueAnimator;
    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 72
    new-instance v2, Landroid/animation/ArgbEvaluator;

    invoke-direct {v2}, Landroid/animation/ArgbEvaluator;-><init>()V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    .line 73
    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 74
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    .line 75
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 76
    return-void

    nop

    :array_0
    .array-data 4
        -0x7f80
        -0x7f7f01
    .end array-data
.end method

.method private addBall(FF)Lio/appium/android/apis/animation/ShapeHolder;
    .locals 17
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 153
    new-instance v0, Landroid/graphics/drawable/shapes/OvalShape;

    invoke-direct {v0}, Landroid/graphics/drawable/shapes/OvalShape;-><init>()V

    .line 154
    .local v0, "circle":Landroid/graphics/drawable/shapes/OvalShape;
    const/high16 v1, 0x42480000    # 50.0f

    invoke-virtual {v0, v1, v1}, Landroid/graphics/drawable/shapes/OvalShape;->resize(FF)V

    .line 155
    new-instance v1, Landroid/graphics/drawable/ShapeDrawable;

    invoke-direct {v1, v0}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 156
    .local v1, "drawable":Landroid/graphics/drawable/ShapeDrawable;
    new-instance v2, Lio/appium/android/apis/animation/ShapeHolder;

    invoke-direct {v2, v1}, Lio/appium/android/apis/animation/ShapeHolder;-><init>(Landroid/graphics/drawable/ShapeDrawable;)V

    .line 157
    .local v2, "shapeHolder":Lio/appium/android/apis/animation/ShapeHolder;
    const/high16 v3, 0x41c80000    # 25.0f

    sub-float v4, p1, v3

    invoke-virtual {v2, v4}, Lio/appium/android/apis/animation/ShapeHolder;->setX(F)V

    .line 158
    sub-float v3, p2, v3

    invoke-virtual {v2, v3}, Lio/appium/android/apis/animation/ShapeHolder;->setY(F)V

    .line 159
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v3

    const-wide v5, 0x406fe00000000000L    # 255.0

    mul-double v3, v3, v5

    double-to-int v3, v3

    .line 160
    .local v3, "red":I
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v7

    mul-double v7, v7, v5

    double-to-int v4, v7

    .line 161
    .local v4, "green":I
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v7

    mul-double v7, v7, v5

    double-to-int v5, v7

    .line 162
    .local v5, "blue":I
    shl-int/lit8 v6, v3, 0x10

    const/high16 v7, -0x1000000

    or-int/2addr v6, v7

    shl-int/lit8 v8, v4, 0x8

    or-int/2addr v6, v8

    or-int/2addr v6, v5

    .line 163
    .local v6, "color":I
    invoke-virtual {v1}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v15

    .line 164
    .local v15, "paint":Landroid/graphics/Paint;
    div-int/lit8 v8, v3, 0x4

    shl-int/lit8 v8, v8, 0x10

    or-int/2addr v7, v8

    div-int/lit8 v8, v4, 0x4

    shl-int/lit8 v8, v8, 0x8

    or-int/2addr v7, v8

    div-int/lit8 v8, v5, 0x4

    or-int/2addr v7, v8

    .line 165
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

    .line 167
    .local v8, "gradient":Landroid/graphics/RadialGradient;
    invoke-virtual {v15, v8}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 168
    invoke-virtual {v2, v15}, Lio/appium/android/apis/animation/ShapeHolder;->setPaint(Landroid/graphics/Paint;)V

    .line 169
    move-object/from16 v9, p0

    iget-object v10, v9, Lio/appium/android/apis/animation/BouncingBalls$MyAnimationView;->balls:Ljava/util/ArrayList;

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 170
    return-object v2
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 175
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lio/appium/android/apis/animation/BouncingBalls$MyAnimationView;->balls:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 176
    iget-object v1, p0, Lio/appium/android/apis/animation/BouncingBalls$MyAnimationView;->balls:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/appium/android/apis/animation/ShapeHolder;

    .line 177
    .local v1, "shapeHolder":Lio/appium/android/apis/animation/ShapeHolder;
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 178
    invoke-virtual {v1}, Lio/appium/android/apis/animation/ShapeHolder;->getX()F

    move-result v2

    invoke-virtual {v1}, Lio/appium/android/apis/animation/ShapeHolder;->getY()F

    move-result v3

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 179
    invoke-virtual {v1}, Lio/appium/android/apis/animation/ShapeHolder;->getShape()Landroid/graphics/drawable/ShapeDrawable;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/ShapeDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 180
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 175
    .end local v1    # "shapeHolder":Lio/appium/android/apis/animation/ShapeHolder;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 182
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 18
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 80
    move-object/from16 v0, p0

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-eqz v1, :cond_0

    .line 81
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-eq v1, v3, :cond_0

    .line 82
    return v2

    .line 84
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-direct {v0, v1, v4}, Lio/appium/android/apis/animation/BouncingBalls$MyAnimationView;->addBall(FF)Lio/appium/android/apis/animation/ShapeHolder;

    move-result-object v1

    .line 87
    .local v1, "newBall":Lio/appium/android/apis/animation/ShapeHolder;
    invoke-virtual {v1}, Lio/appium/android/apis/animation/ShapeHolder;->getY()F

    move-result v4

    .line 88
    .local v4, "startY":F
    invoke-virtual/range {p0 .. p0}, Lio/appium/android/apis/animation/BouncingBalls$MyAnimationView;->getHeight()I

    move-result v5

    int-to-float v5, v5

    const/high16 v6, 0x42480000    # 50.0f

    sub-float/2addr v5, v6

    .line 89
    .local v5, "endY":F
    invoke-virtual/range {p0 .. p0}, Lio/appium/android/apis/animation/BouncingBalls$MyAnimationView;->getHeight()I

    move-result v7

    int-to-float v7, v7

    .line 90
    .local v7, "h":F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    .line 91
    .local v8, "eventY":F
    const/high16 v9, 0x43fa0000    # 500.0f

    sub-float v10, v7, v8

    div-float/2addr v10, v7

    mul-float v10, v10, v9

    float-to-int v9, v10

    .line 92
    .local v9, "duration":I
    const-string v10, "y"

    new-array v11, v3, [F

    aput v4, v11, v2

    const/4 v12, 0x1

    aput v5, v11, v12

    invoke-static {v1, v10, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v10

    .line 93
    .local v10, "bounceAnim":Landroid/animation/ValueAnimator;
    int-to-long v13, v9

    invoke-virtual {v10, v13, v14}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 94
    new-instance v11, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v11}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v10, v11}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 95
    const-string v11, "x"

    new-array v13, v3, [F

    invoke-virtual {v1}, Lio/appium/android/apis/animation/ShapeHolder;->getX()F

    move-result v14

    aput v14, v13, v2

    .line 96
    invoke-virtual {v1}, Lio/appium/android/apis/animation/ShapeHolder;->getX()F

    move-result v14

    const/high16 v15, 0x41c80000    # 25.0f

    sub-float/2addr v14, v15

    aput v14, v13, v12

    .line 95
    invoke-static {v1, v11, v13}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v11

    .line 97
    .local v11, "squashAnim1":Landroid/animation/ValueAnimator;
    div-int/lit8 v13, v9, 0x4

    int-to-long v13, v13

    invoke-virtual {v11, v13, v14}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 98
    invoke-virtual {v11, v12}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 99
    invoke-virtual {v11, v3}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    .line 100
    new-instance v13, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v13}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v11, v13}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 101
    const-string v13, "width"

    new-array v14, v3, [F

    invoke-virtual {v1}, Lio/appium/android/apis/animation/ShapeHolder;->getWidth()F

    move-result v16

    aput v16, v14, v2

    .line 102
    invoke-virtual {v1}, Lio/appium/android/apis/animation/ShapeHolder;->getWidth()F

    move-result v16

    add-float v16, v16, v6

    aput v16, v14, v12

    .line 101
    invoke-static {v1, v13, v14}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    .line 103
    .local v6, "squashAnim2":Landroid/animation/ValueAnimator;
    div-int/lit8 v13, v9, 0x4

    int-to-long v13, v13

    invoke-virtual {v6, v13, v14}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 104
    invoke-virtual {v6, v12}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 105
    invoke-virtual {v6, v3}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    .line 106
    new-instance v13, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v13}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v6, v13}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 107
    const-string v13, "y"

    new-array v14, v3, [F

    aput v5, v14, v2

    add-float v16, v5, v15

    aput v16, v14, v12

    invoke-static {v1, v13, v14}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v13

    .line 109
    .local v13, "stretchAnim1":Landroid/animation/ValueAnimator;
    div-int/lit8 v14, v9, 0x4

    int-to-long v2, v14

    invoke-virtual {v13, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 110
    invoke-virtual {v13, v12}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 111
    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v13, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 112
    const/4 v2, 0x2

    invoke-virtual {v13, v2}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    .line 113
    const-string v3, "height"

    new-array v14, v2, [F

    .line 114
    invoke-virtual {v1}, Lio/appium/android/apis/animation/ShapeHolder;->getHeight()F

    move-result v2

    const/16 v16, 0x0

    aput v2, v14, v16

    invoke-virtual {v1}, Lio/appium/android/apis/animation/ShapeHolder;->getHeight()F

    move-result v2

    sub-float/2addr v2, v15

    aput v2, v14, v12

    .line 113
    invoke-static {v1, v3, v14}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 115
    .local v2, "stretchAnim2":Landroid/animation/ValueAnimator;
    div-int/lit8 v3, v9, 0x4

    int-to-long v14, v3

    invoke-virtual {v2, v14, v15}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 116
    invoke-virtual {v2, v12}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 117
    new-instance v3, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 118
    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    .line 119
    const-string v14, "y"

    new-array v15, v3, [F

    const/4 v3, 0x0

    aput v5, v15, v3

    aput v4, v15, v12

    invoke-static {v1, v14, v15}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 121
    .local v3, "bounceBackAnim":Landroid/animation/ValueAnimator;
    int-to-long v14, v9

    invoke-virtual {v3, v14, v15}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 122
    new-instance v14, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v14}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v3, v14}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 124
    new-instance v14, Landroid/animation/AnimatorSet;

    invoke-direct {v14}, Landroid/animation/AnimatorSet;-><init>()V

    .line 125
    .local v14, "bouncer":Landroid/animation/AnimatorSet;
    invoke-virtual {v14, v10}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v15

    invoke-virtual {v15, v11}, Landroid/animation/AnimatorSet$Builder;->before(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 126
    invoke-virtual {v14, v11}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v15

    invoke-virtual {v15, v6}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 127
    invoke-virtual {v14, v11}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v15

    invoke-virtual {v15, v13}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 128
    invoke-virtual {v14, v11}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v15

    invoke-virtual {v15, v2}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 129
    invoke-virtual {v14, v3}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v15

    invoke-virtual {v15, v2}, Landroid/animation/AnimatorSet$Builder;->after(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 132
    const-string v15, "alpha"

    const/4 v12, 0x2

    new-array v12, v12, [F

    fill-array-data v12, :array_0

    invoke-static {v1, v15, v12}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v12

    .line 133
    .local v12, "fadeAnim":Landroid/animation/ValueAnimator;
    move-object v15, v1

    move-object/from16 v17, v2

    .end local v1    # "newBall":Lio/appium/android/apis/animation/ShapeHolder;
    .end local v2    # "stretchAnim2":Landroid/animation/ValueAnimator;
    .local v15, "newBall":Lio/appium/android/apis/animation/ShapeHolder;
    .local v17, "stretchAnim2":Landroid/animation/ValueAnimator;
    const-wide/16 v1, 0xfa

    invoke-virtual {v12, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 134
    new-instance v1, Lio/appium/android/apis/animation/BouncingBalls$MyAnimationView$1;

    invoke-direct {v1, v0}, Lio/appium/android/apis/animation/BouncingBalls$MyAnimationView$1;-><init>(Lio/appium/android/apis/animation/BouncingBalls$MyAnimationView;)V

    invoke-virtual {v12, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 143
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 144
    .local v1, "animatorSet":Landroid/animation/AnimatorSet;
    invoke-virtual {v1, v14}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v2

    invoke-virtual {v2, v12}, Landroid/animation/AnimatorSet$Builder;->before(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 147
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    .line 149
    const/4 v2, 0x1

    return v2

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method
