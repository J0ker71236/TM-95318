.class public Lio/appium/android/apis/animation/LayoutAnimations;
.super Landroid/app/Activity;
.source "LayoutAnimations.java"


# instance fields
.field container:Landroid/view/ViewGroup;

.field currentAppearingAnim:Landroid/animation/Animator;

.field currentChangingAppearingAnim:Landroid/animation/Animator;

.field currentChangingDisappearingAnim:Landroid/animation/Animator;

.field currentDisappearingAnim:Landroid/animation/Animator;

.field customAppearingAnim:Landroid/animation/Animator;

.field customChangingAppearingAnim:Landroid/animation/Animator;

.field customChangingDisappearingAnim:Landroid/animation/Animator;

.field customDisappearingAnim:Landroid/animation/Animator;

.field defaultAppearingAnim:Landroid/animation/Animator;

.field defaultChangingAppearingAnim:Landroid/animation/Animator;

.field defaultChangingDisappearingAnim:Landroid/animation/Animator;

.field defaultDisappearingAnim:Landroid/animation/Animator;

.field private numButtons:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 42
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 44
    const/4 v0, 0x1

    iput v0, p0, Lio/appium/android/apis/animation/LayoutAnimations;->numButtons:I

    .line 45
    const/4 v0, 0x0

    iput-object v0, p0, Lio/appium/android/apis/animation/LayoutAnimations;->container:Landroid/view/ViewGroup;

    return-void
.end method

.method static synthetic access$008(Lio/appium/android/apis/animation/LayoutAnimations;)I
    .locals 2
    .param p0, "x0"    # Lio/appium/android/apis/animation/LayoutAnimations;

    .line 42
    iget v0, p0, Lio/appium/android/apis/animation/LayoutAnimations;->numButtons:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lio/appium/android/apis/animation/LayoutAnimations;->numButtons:I

    return v0
.end method

.method static synthetic access$100(Lio/appium/android/apis/animation/LayoutAnimations;Landroid/animation/LayoutTransition;)V
    .locals 0
    .param p0, "x0"    # Lio/appium/android/apis/animation/LayoutAnimations;
    .param p1, "x1"    # Landroid/animation/LayoutTransition;

    .line 42
    invoke-direct {p0, p1}, Lio/appium/android/apis/animation/LayoutAnimations;->setupTransition(Landroid/animation/LayoutTransition;)V

    return-void
.end method

.method private createCustomAnimations(Landroid/animation/LayoutTransition;)V
    .locals 18
    .param p1, "transition"    # Landroid/animation/LayoutTransition;

    .line 150
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "left"

    const/4 v3, 0x2

    new-array v4, v3, [I

    fill-array-data v4, :array_0

    .line 151
    invoke-static {v2, v4}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    .line 152
    .local v2, "pvhLeft":Landroid/animation/PropertyValuesHolder;
    const-string v4, "top"

    new-array v5, v3, [I

    fill-array-data v5, :array_1

    .line 153
    invoke-static {v4, v5}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v4

    .line 154
    .local v4, "pvhTop":Landroid/animation/PropertyValuesHolder;
    const-string v5, "right"

    new-array v6, v3, [I

    fill-array-data v6, :array_2

    .line 155
    invoke-static {v5, v6}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v5

    .line 156
    .local v5, "pvhRight":Landroid/animation/PropertyValuesHolder;
    const-string v6, "bottom"

    new-array v7, v3, [I

    fill-array-data v7, :array_3

    .line 157
    invoke-static {v6, v7}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v6

    .line 158
    .local v6, "pvhBottom":Landroid/animation/PropertyValuesHolder;
    const-string v7, "scaleX"

    const/4 v8, 0x3

    new-array v9, v8, [F

    fill-array-data v9, :array_4

    .line 159
    invoke-static {v7, v9}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v7

    .line 160
    .local v7, "pvhScaleX":Landroid/animation/PropertyValuesHolder;
    const-string v9, "scaleY"

    new-array v10, v8, [F

    fill-array-data v10, :array_5

    .line 161
    invoke-static {v9, v10}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v9

    .line 162
    .local v9, "pvhScaleY":Landroid/animation/PropertyValuesHolder;
    const/4 v10, 0x6

    new-array v10, v10, [Landroid/animation/PropertyValuesHolder;

    const/4 v11, 0x0

    aput-object v2, v10, v11

    const/4 v12, 0x1

    aput-object v4, v10, v12

    aput-object v5, v10, v3

    aput-object v6, v10, v8

    const/4 v13, 0x4

    aput-object v7, v10, v13

    const/4 v14, 0x5

    aput-object v9, v10, v14

    invoke-static {v0, v10}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v10

    .line 164
    invoke-virtual {v1, v11}, Landroid/animation/LayoutTransition;->getDuration(I)J

    move-result-wide v13

    invoke-virtual {v10, v13, v14}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v10

    iput-object v10, v0, Lio/appium/android/apis/animation/LayoutAnimations;->customChangingAppearingAnim:Landroid/animation/Animator;

    .line 165
    iget-object v10, v0, Lio/appium/android/apis/animation/LayoutAnimations;->customChangingAppearingAnim:Landroid/animation/Animator;

    new-instance v13, Lio/appium/android/apis/animation/LayoutAnimations$7;

    invoke-direct {v13, v0}, Lio/appium/android/apis/animation/LayoutAnimations$7;-><init>(Lio/appium/android/apis/animation/LayoutAnimations;)V

    invoke-virtual {v10, v13}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 174
    const/4 v10, 0x0

    invoke-static {v10, v10}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v13

    .line 175
    .local v13, "kf0":Landroid/animation/Keyframe;
    const v14, 0x3f7ff972    # 0.9999f

    const/high16 v15, 0x43b40000    # 360.0f

    invoke-static {v14, v15}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v14

    .line 176
    .local v14, "kf1":Landroid/animation/Keyframe;
    const/high16 v15, 0x3f800000    # 1.0f

    invoke-static {v15, v10}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v10

    .line 177
    .local v10, "kf2":Landroid/animation/Keyframe;
    const-string v15, "rotation"

    new-array v3, v8, [Landroid/animation/Keyframe;

    aput-object v13, v3, v11

    aput-object v14, v3, v12

    const/16 v17, 0x2

    aput-object v10, v3, v17

    .line 178
    invoke-static {v15, v3}, Landroid/animation/PropertyValuesHolder;->ofKeyframe(Ljava/lang/String;[Landroid/animation/Keyframe;)Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    .line 179
    .local v3, "pvhRotation":Landroid/animation/PropertyValuesHolder;
    const/4 v15, 0x5

    new-array v15, v15, [Landroid/animation/PropertyValuesHolder;

    aput-object v2, v15, v11

    aput-object v4, v15, v12

    aput-object v5, v15, v17

    aput-object v6, v15, v8

    const/4 v11, 0x4

    aput-object v3, v15, v11

    invoke-static {v0, v15}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v11

    .line 181
    move-object/from16 v16, v9

    .end local v9    # "pvhScaleY":Landroid/animation/PropertyValuesHolder;
    .local v16, "pvhScaleY":Landroid/animation/PropertyValuesHolder;
    invoke-virtual {v1, v12}, Landroid/animation/LayoutTransition;->getDuration(I)J

    move-result-wide v8

    invoke-virtual {v11, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v8

    iput-object v8, v0, Lio/appium/android/apis/animation/LayoutAnimations;->customChangingDisappearingAnim:Landroid/animation/Animator;

    .line 182
    iget-object v8, v0, Lio/appium/android/apis/animation/LayoutAnimations;->customChangingDisappearingAnim:Landroid/animation/Animator;

    new-instance v9, Lio/appium/android/apis/animation/LayoutAnimations$8;

    invoke-direct {v9, v0}, Lio/appium/android/apis/animation/LayoutAnimations$8;-><init>(Lio/appium/android/apis/animation/LayoutAnimations;)V

    invoke-virtual {v8, v9}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 190
    const-string v8, "rotationY"

    const/4 v9, 0x2

    new-array v11, v9, [F

    fill-array-data v11, :array_6

    const/4 v12, 0x0

    invoke-static {v12, v8, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    .line 191
    move-object v11, v13

    .end local v13    # "kf0":Landroid/animation/Keyframe;
    .local v11, "kf0":Landroid/animation/Keyframe;
    invoke-virtual {v1, v9}, Landroid/animation/LayoutTransition;->getDuration(I)J

    move-result-wide v12

    invoke-virtual {v8, v12, v13}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v8

    iput-object v8, v0, Lio/appium/android/apis/animation/LayoutAnimations;->customAppearingAnim:Landroid/animation/Animator;

    .line 192
    iget-object v8, v0, Lio/appium/android/apis/animation/LayoutAnimations;->customAppearingAnim:Landroid/animation/Animator;

    new-instance v12, Lio/appium/android/apis/animation/LayoutAnimations$9;

    invoke-direct {v12, v0}, Lio/appium/android/apis/animation/LayoutAnimations$9;-><init>(Lio/appium/android/apis/animation/LayoutAnimations;)V

    invoke-virtual {v8, v12}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 200
    const-string v8, "rotationX"

    new-array v9, v9, [F

    fill-array-data v9, :array_7

    const/4 v12, 0x0

    invoke-static {v12, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    .line 201
    const/4 v9, 0x3

    invoke-virtual {v1, v9}, Landroid/animation/LayoutTransition;->getDuration(I)J

    move-result-wide v12

    invoke-virtual {v8, v12, v13}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v8

    iput-object v8, v0, Lio/appium/android/apis/animation/LayoutAnimations;->customDisappearingAnim:Landroid/animation/Animator;

    .line 202
    iget-object v8, v0, Lio/appium/android/apis/animation/LayoutAnimations;->customDisappearingAnim:Landroid/animation/Animator;

    new-instance v9, Lio/appium/android/apis/animation/LayoutAnimations$10;

    invoke-direct {v9, v0}, Lio/appium/android/apis/animation/LayoutAnimations$10;-><init>(Lio/appium/android/apis/animation/LayoutAnimations;)V

    invoke-virtual {v8, v9}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 209
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x1
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x1
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x1
    .end array-data

    :array_3
    .array-data 4
        0x0
        0x1
    .end array-data

    :array_4
    .array-data 4
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_5
    .array-data 4
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_6
    .array-data 4
        0x42b40000    # 90.0f
        0x0
    .end array-data

    :array_7
    .array-data 4
        0x0
        0x42b40000    # 90.0f
    .end array-data
.end method

.method private setupTransition(Landroid/animation/LayoutTransition;)V
    .locals 8
    .param p1, "transition"    # Landroid/animation/LayoutTransition;

    .line 130
    const v0, 0x7f090081

    invoke-virtual {p0, v0}, Lio/appium/android/apis/animation/LayoutAnimations;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 131
    .local v0, "customAnimCB":Landroid/widget/CheckBox;
    const v1, 0x7f090029

    invoke-virtual {p0, v1}, Lio/appium/android/apis/animation/LayoutAnimations;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    .line 132
    .local v1, "appearingCB":Landroid/widget/CheckBox;
    const v2, 0x7f090097

    invoke-virtual {p0, v2}, Lio/appium/android/apis/animation/LayoutAnimations;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    .line 133
    .local v2, "disappearingCB":Landroid/widget/CheckBox;
    const v3, 0x7f09005d

    invoke-virtual {p0, v3}, Lio/appium/android/apis/animation/LayoutAnimations;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    .line 134
    .local v3, "changingAppearingCB":Landroid/widget/CheckBox;
    const v4, 0x7f09005e

    invoke-virtual {p0, v4}, Lio/appium/android/apis/animation/LayoutAnimations;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/CheckBox;

    .line 135
    .local v4, "changingDisappearingCB":Landroid/widget/CheckBox;
    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_1

    .line 136
    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lio/appium/android/apis/animation/LayoutAnimations;->customAppearingAnim:Landroid/animation/Animator;

    goto :goto_0

    :cond_0
    iget-object v5, p0, Lio/appium/android/apis/animation/LayoutAnimations;->defaultAppearingAnim:Landroid/animation/Animator;

    goto :goto_0

    :cond_1
    move-object v5, v6

    .line 135
    :goto_0
    const/4 v7, 0x2

    invoke-virtual {p1, v7, v5}, Landroid/animation/LayoutTransition;->setAnimator(ILandroid/animation/Animator;)V

    .line 137
    const/4 v5, 0x3

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 138
    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v7

    if-eqz v7, :cond_2

    iget-object v7, p0, Lio/appium/android/apis/animation/LayoutAnimations;->customDisappearingAnim:Landroid/animation/Animator;

    goto :goto_1

    :cond_2
    iget-object v7, p0, Lio/appium/android/apis/animation/LayoutAnimations;->defaultDisappearingAnim:Landroid/animation/Animator;

    goto :goto_1

    :cond_3
    move-object v7, v6

    .line 137
    :goto_1
    invoke-virtual {p1, v5, v7}, Landroid/animation/LayoutTransition;->setAnimator(ILandroid/animation/Animator;)V

    .line 139
    const/4 v5, 0x0

    invoke-virtual {v3}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 140
    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v7

    if-eqz v7, :cond_4

    iget-object v7, p0, Lio/appium/android/apis/animation/LayoutAnimations;->customChangingAppearingAnim:Landroid/animation/Animator;

    goto :goto_2

    :cond_4
    iget-object v7, p0, Lio/appium/android/apis/animation/LayoutAnimations;->defaultChangingAppearingAnim:Landroid/animation/Animator;

    goto :goto_2

    :cond_5
    move-object v7, v6

    .line 139
    :goto_2
    invoke-virtual {p1, v5, v7}, Landroid/animation/LayoutTransition;->setAnimator(ILandroid/animation/Animator;)V

    .line 142
    const/4 v5, 0x1

    .line 143
    invoke-virtual {v4}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v7

    if-eqz v7, :cond_7

    .line 144
    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v6

    if-eqz v6, :cond_6

    iget-object v6, p0, Lio/appium/android/apis/animation/LayoutAnimations;->customChangingDisappearingAnim:Landroid/animation/Animator;

    goto :goto_3

    :cond_6
    iget-object v6, p0, Lio/appium/android/apis/animation/LayoutAnimations;->defaultChangingDisappearingAnim:Landroid/animation/Animator;

    goto :goto_3

    :cond_7
    nop

    .line 142
    :goto_3
    invoke-virtual {p1, v5, v6}, Landroid/animation/LayoutTransition;->setAnimator(ILandroid/animation/Animator;)V

    .line 146
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 56
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 57
    const v0, 0x7f0b0091

    invoke-virtual {p0, v0}, Lio/appium/android/apis/animation/LayoutAnimations;->setContentView(I)V

    .line 59
    new-instance v0, Lio/appium/android/apis/animation/FixedGridLayout;

    invoke-direct {v0, p0}, Lio/appium/android/apis/animation/FixedGridLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lio/appium/android/apis/animation/LayoutAnimations;->container:Landroid/view/ViewGroup;

    .line 60
    iget-object v0, p0, Lio/appium/android/apis/animation/LayoutAnimations;->container:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 61
    iget-object v0, p0, Lio/appium/android/apis/animation/LayoutAnimations;->container:Landroid/view/ViewGroup;

    check-cast v0, Lio/appium/android/apis/animation/FixedGridLayout;

    const/16 v2, 0x5a

    invoke-virtual {v0, v2}, Lio/appium/android/apis/animation/FixedGridLayout;->setCellHeight(I)V

    .line 62
    iget-object v0, p0, Lio/appium/android/apis/animation/LayoutAnimations;->container:Landroid/view/ViewGroup;

    check-cast v0, Lio/appium/android/apis/animation/FixedGridLayout;

    const/16 v2, 0x64

    invoke-virtual {v0, v2}, Lio/appium/android/apis/animation/FixedGridLayout;->setCellWidth(I)V

    .line 63
    new-instance v0, Landroid/animation/LayoutTransition;

    invoke-direct {v0}, Landroid/animation/LayoutTransition;-><init>()V

    .line 64
    .local v0, "transitioner":Landroid/animation/LayoutTransition;
    iget-object v2, p0, Lio/appium/android/apis/animation/LayoutAnimations;->container:Landroid/view/ViewGroup;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 65
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/animation/LayoutTransition;->getAnimator(I)Landroid/animation/Animator;

    move-result-object v2

    iput-object v2, p0, Lio/appium/android/apis/animation/LayoutAnimations;->defaultAppearingAnim:Landroid/animation/Animator;

    .line 66
    nop

    .line 67
    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Landroid/animation/LayoutTransition;->getAnimator(I)Landroid/animation/Animator;

    move-result-object v2

    iput-object v2, p0, Lio/appium/android/apis/animation/LayoutAnimations;->defaultDisappearingAnim:Landroid/animation/Animator;

    .line 68
    nop

    .line 69
    invoke-virtual {v0, v1}, Landroid/animation/LayoutTransition;->getAnimator(I)Landroid/animation/Animator;

    move-result-object v2

    iput-object v2, p0, Lio/appium/android/apis/animation/LayoutAnimations;->defaultChangingAppearingAnim:Landroid/animation/Animator;

    .line 70
    nop

    .line 71
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/animation/LayoutTransition;->getAnimator(I)Landroid/animation/Animator;

    move-result-object v2

    iput-object v2, p0, Lio/appium/android/apis/animation/LayoutAnimations;->defaultChangingDisappearingAnim:Landroid/animation/Animator;

    .line 72
    invoke-direct {p0, v0}, Lio/appium/android/apis/animation/LayoutAnimations;->createCustomAnimations(Landroid/animation/LayoutTransition;)V

    .line 73
    iget-object v2, p0, Lio/appium/android/apis/animation/LayoutAnimations;->defaultAppearingAnim:Landroid/animation/Animator;

    iput-object v2, p0, Lio/appium/android/apis/animation/LayoutAnimations;->currentAppearingAnim:Landroid/animation/Animator;

    .line 74
    iget-object v2, p0, Lio/appium/android/apis/animation/LayoutAnimations;->defaultDisappearingAnim:Landroid/animation/Animator;

    iput-object v2, p0, Lio/appium/android/apis/animation/LayoutAnimations;->currentDisappearingAnim:Landroid/animation/Animator;

    .line 75
    iget-object v2, p0, Lio/appium/android/apis/animation/LayoutAnimations;->defaultChangingAppearingAnim:Landroid/animation/Animator;

    iput-object v2, p0, Lio/appium/android/apis/animation/LayoutAnimations;->currentChangingAppearingAnim:Landroid/animation/Animator;

    .line 76
    iget-object v2, p0, Lio/appium/android/apis/animation/LayoutAnimations;->defaultChangingDisappearingAnim:Landroid/animation/Animator;

    iput-object v2, p0, Lio/appium/android/apis/animation/LayoutAnimations;->currentChangingDisappearingAnim:Landroid/animation/Animator;

    .line 78
    const v2, 0x7f090158

    invoke-virtual {p0, v2}, Lio/appium/android/apis/animation/LayoutAnimations;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 79
    .local v2, "parent":Landroid/view/ViewGroup;
    iget-object v3, p0, Lio/appium/android/apis/animation/LayoutAnimations;->container:Landroid/view/ViewGroup;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 80
    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 81
    const v1, 0x7f090023

    invoke-virtual {p0, v1}, Lio/appium/android/apis/animation/LayoutAnimations;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 82
    .local v1, "addButton":Landroid/widget/Button;
    new-instance v3, Lio/appium/android/apis/animation/LayoutAnimations$1;

    invoke-direct {v3, p0}, Lio/appium/android/apis/animation/LayoutAnimations$1;-><init>(Lio/appium/android/apis/animation/LayoutAnimations;)V

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 95
    const v3, 0x7f090081

    invoke-virtual {p0, v3}, Lio/appium/android/apis/animation/LayoutAnimations;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    .line 96
    .local v3, "customAnimCB":Landroid/widget/CheckBox;
    new-instance v4, Lio/appium/android/apis/animation/LayoutAnimations$2;

    invoke-direct {v4, p0, v0}, Lio/appium/android/apis/animation/LayoutAnimations$2;-><init>(Lio/appium/android/apis/animation/LayoutAnimations;Landroid/animation/LayoutTransition;)V

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 103
    const v4, 0x7f090029

    invoke-virtual {p0, v4}, Lio/appium/android/apis/animation/LayoutAnimations;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/CheckBox;

    .line 104
    .local v4, "appearingCB":Landroid/widget/CheckBox;
    new-instance v5, Lio/appium/android/apis/animation/LayoutAnimations$3;

    invoke-direct {v5, p0, v0}, Lio/appium/android/apis/animation/LayoutAnimations$3;-><init>(Lio/appium/android/apis/animation/LayoutAnimations;Landroid/animation/LayoutTransition;)V

    invoke-virtual {v4, v5}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 109
    const v5, 0x7f090097

    invoke-virtual {p0, v5}, Lio/appium/android/apis/animation/LayoutAnimations;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/CheckBox;

    .line 110
    .local v5, "disappearingCB":Landroid/widget/CheckBox;
    new-instance v6, Lio/appium/android/apis/animation/LayoutAnimations$4;

    invoke-direct {v6, p0, v0}, Lio/appium/android/apis/animation/LayoutAnimations$4;-><init>(Lio/appium/android/apis/animation/LayoutAnimations;Landroid/animation/LayoutTransition;)V

    invoke-virtual {v5, v6}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 115
    const v6, 0x7f09005d

    invoke-virtual {p0, v6}, Lio/appium/android/apis/animation/LayoutAnimations;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/CheckBox;

    .line 116
    .local v6, "changingAppearingCB":Landroid/widget/CheckBox;
    new-instance v7, Lio/appium/android/apis/animation/LayoutAnimations$5;

    invoke-direct {v7, p0, v0}, Lio/appium/android/apis/animation/LayoutAnimations$5;-><init>(Lio/appium/android/apis/animation/LayoutAnimations;Landroid/animation/LayoutTransition;)V

    invoke-virtual {v6, v7}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 121
    const v7, 0x7f09005e

    invoke-virtual {p0, v7}, Lio/appium/android/apis/animation/LayoutAnimations;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/CheckBox;

    .line 122
    .local v7, "changingDisappearingCB":Landroid/widget/CheckBox;
    new-instance v8, Lio/appium/android/apis/animation/LayoutAnimations$6;

    invoke-direct {v8, p0, v0}, Lio/appium/android/apis/animation/LayoutAnimations$6;-><init>(Lio/appium/android/apis/animation/LayoutAnimations;Landroid/animation/LayoutTransition;)V

    invoke-virtual {v7, v8}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 127
    return-void
.end method
