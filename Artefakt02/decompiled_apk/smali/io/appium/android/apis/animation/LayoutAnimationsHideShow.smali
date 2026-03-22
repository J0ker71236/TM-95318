.class public Lio/appium/android/apis/animation/LayoutAnimationsHideShow;
.super Landroid/app/Activity;
.source "LayoutAnimationsHideShow.java"


# instance fields
.field container:Landroid/view/ViewGroup;

.field private mTransitioner:Landroid/animation/LayoutTransition;

.field private numButtons:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 43
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 45
    const/4 v0, 0x1

    iput v0, p0, Lio/appium/android/apis/animation/LayoutAnimationsHideShow;->numButtons:I

    .line 46
    const/4 v0, 0x0

    iput-object v0, p0, Lio/appium/android/apis/animation/LayoutAnimationsHideShow;->container:Landroid/view/ViewGroup;

    return-void
.end method

.method static synthetic access$000(Lio/appium/android/apis/animation/LayoutAnimationsHideShow;)Landroid/animation/LayoutTransition;
    .locals 1
    .param p0, "x0"    # Lio/appium/android/apis/animation/LayoutAnimationsHideShow;

    .line 43
    iget-object v0, p0, Lio/appium/android/apis/animation/LayoutAnimationsHideShow;->mTransitioner:Landroid/animation/LayoutTransition;

    return-object v0
.end method

.method static synthetic access$100(Lio/appium/android/apis/animation/LayoutAnimationsHideShow;)V
    .locals 0
    .param p0, "x0"    # Lio/appium/android/apis/animation/LayoutAnimationsHideShow;

    .line 43
    invoke-direct {p0}, Lio/appium/android/apis/animation/LayoutAnimationsHideShow;->setupCustomAnimations()V

    return-void
.end method

.method static synthetic access$200(Lio/appium/android/apis/animation/LayoutAnimationsHideShow;)V
    .locals 0
    .param p0, "x0"    # Lio/appium/android/apis/animation/LayoutAnimationsHideShow;

    .line 43
    invoke-direct {p0}, Lio/appium/android/apis/animation/LayoutAnimationsHideShow;->resetTransition()V

    return-void
.end method

.method private resetTransition()V
    .locals 2

    .line 108
    new-instance v0, Landroid/animation/LayoutTransition;

    invoke-direct {v0}, Landroid/animation/LayoutTransition;-><init>()V

    iput-object v0, p0, Lio/appium/android/apis/animation/LayoutAnimationsHideShow;->mTransitioner:Landroid/animation/LayoutTransition;

    .line 109
    iget-object v0, p0, Lio/appium/android/apis/animation/LayoutAnimationsHideShow;->container:Landroid/view/ViewGroup;

    iget-object v1, p0, Lio/appium/android/apis/animation/LayoutAnimationsHideShow;->mTransitioner:Landroid/animation/LayoutTransition;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 110
    return-void
.end method

.method private setupCustomAnimations()V
    .locals 19

    .line 114
    move-object/from16 v0, p0

    const-string v1, "left"

    const/4 v2, 0x2

    new-array v3, v2, [I

    fill-array-data v3, :array_0

    .line 115
    invoke-static {v1, v3}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    .line 116
    .local v1, "pvhLeft":Landroid/animation/PropertyValuesHolder;
    const-string v3, "top"

    new-array v4, v2, [I

    fill-array-data v4, :array_1

    .line 117
    invoke-static {v3, v4}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    .line 118
    .local v3, "pvhTop":Landroid/animation/PropertyValuesHolder;
    const-string v4, "right"

    new-array v5, v2, [I

    fill-array-data v5, :array_2

    .line 119
    invoke-static {v4, v5}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v4

    .line 120
    .local v4, "pvhRight":Landroid/animation/PropertyValuesHolder;
    const-string v5, "bottom"

    new-array v6, v2, [I

    fill-array-data v6, :array_3

    .line 121
    invoke-static {v5, v6}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v5

    .line 122
    .local v5, "pvhBottom":Landroid/animation/PropertyValuesHolder;
    const-string v6, "scaleX"

    const/4 v7, 0x3

    new-array v8, v7, [F

    fill-array-data v8, :array_4

    .line 123
    invoke-static {v6, v8}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v6

    .line 124
    .local v6, "pvhScaleX":Landroid/animation/PropertyValuesHolder;
    const-string v8, "scaleY"

    new-array v9, v7, [F

    fill-array-data v9, :array_5

    .line 125
    invoke-static {v8, v9}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v8

    .line 126
    .local v8, "pvhScaleY":Landroid/animation/PropertyValuesHolder;
    const/4 v9, 0x6

    new-array v9, v9, [Landroid/animation/PropertyValuesHolder;

    const/4 v10, 0x0

    aput-object v1, v9, v10

    const/4 v11, 0x1

    aput-object v3, v9, v11

    aput-object v4, v9, v2

    aput-object v5, v9, v7

    const/4 v12, 0x4

    aput-object v6, v9, v12

    const/4 v13, 0x5

    aput-object v8, v9, v13

    invoke-static {v0, v9}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v9

    iget-object v14, v0, Lio/appium/android/apis/animation/LayoutAnimationsHideShow;->mTransitioner:Landroid/animation/LayoutTransition;

    .line 128
    invoke-virtual {v14, v10}, Landroid/animation/LayoutTransition;->getDuration(I)J

    move-result-wide v14

    invoke-virtual {v9, v14, v15}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v9

    .line 129
    .local v9, "changeIn":Landroid/animation/ObjectAnimator;
    iget-object v14, v0, Lio/appium/android/apis/animation/LayoutAnimationsHideShow;->mTransitioner:Landroid/animation/LayoutTransition;

    invoke-virtual {v14, v10, v9}, Landroid/animation/LayoutTransition;->setAnimator(ILandroid/animation/Animator;)V

    .line 130
    new-instance v14, Lio/appium/android/apis/animation/LayoutAnimationsHideShow$4;

    invoke-direct {v14, v0}, Lio/appium/android/apis/animation/LayoutAnimationsHideShow$4;-><init>(Lio/appium/android/apis/animation/LayoutAnimationsHideShow;)V

    invoke-virtual {v9, v14}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 139
    const/4 v14, 0x0

    invoke-static {v14, v14}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v15

    .line 140
    .local v15, "kf0":Landroid/animation/Keyframe;
    const v12, 0x3f7ff972    # 0.9999f

    const/high16 v13, 0x43b40000    # 360.0f

    invoke-static {v12, v13}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v12

    .line 141
    .local v12, "kf1":Landroid/animation/Keyframe;
    const/high16 v13, 0x3f800000    # 1.0f

    invoke-static {v13, v14}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v13

    .line 142
    .local v13, "kf2":Landroid/animation/Keyframe;
    const-string v14, "rotation"

    new-array v2, v7, [Landroid/animation/Keyframe;

    aput-object v15, v2, v10

    aput-object v12, v2, v11

    const/16 v18, 0x2

    aput-object v13, v2, v18

    .line 143
    invoke-static {v14, v2}, Landroid/animation/PropertyValuesHolder;->ofKeyframe(Ljava/lang/String;[Landroid/animation/Keyframe;)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    .line 144
    .local v2, "pvhRotation":Landroid/animation/PropertyValuesHolder;
    const/4 v14, 0x5

    new-array v14, v14, [Landroid/animation/PropertyValuesHolder;

    aput-object v1, v14, v10

    aput-object v3, v14, v11

    aput-object v4, v14, v18

    aput-object v5, v14, v7

    const/4 v10, 0x4

    aput-object v2, v14, v10

    invoke-static {v0, v14}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v10

    iget-object v14, v0, Lio/appium/android/apis/animation/LayoutAnimationsHideShow;->mTransitioner:Landroid/animation/LayoutTransition;

    .line 146
    move-object/from16 v17, v8

    .end local v8    # "pvhScaleY":Landroid/animation/PropertyValuesHolder;
    .local v17, "pvhScaleY":Landroid/animation/PropertyValuesHolder;
    invoke-virtual {v14, v11}, Landroid/animation/LayoutTransition;->getDuration(I)J

    move-result-wide v7

    invoke-virtual {v10, v7, v8}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v7

    .line 147
    .local v7, "changeOut":Landroid/animation/ObjectAnimator;
    iget-object v8, v0, Lio/appium/android/apis/animation/LayoutAnimationsHideShow;->mTransitioner:Landroid/animation/LayoutTransition;

    invoke-virtual {v8, v11, v7}, Landroid/animation/LayoutTransition;->setAnimator(ILandroid/animation/Animator;)V

    .line 148
    new-instance v8, Lio/appium/android/apis/animation/LayoutAnimationsHideShow$5;

    invoke-direct {v8, v0}, Lio/appium/android/apis/animation/LayoutAnimationsHideShow$5;-><init>(Lio/appium/android/apis/animation/LayoutAnimationsHideShow;)V

    invoke-virtual {v7, v8}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 156
    const-string v8, "rotationY"

    const/4 v10, 0x2

    new-array v11, v10, [F

    fill-array-data v11, :array_6

    const/4 v14, 0x0

    invoke-static {v14, v8, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    iget-object v11, v0, Lio/appium/android/apis/animation/LayoutAnimationsHideShow;->mTransitioner:Landroid/animation/LayoutTransition;

    .line 157
    move-object/from16 v18, v15

    .end local v15    # "kf0":Landroid/animation/Keyframe;
    .local v18, "kf0":Landroid/animation/Keyframe;
    invoke-virtual {v11, v10}, Landroid/animation/LayoutTransition;->getDuration(I)J

    move-result-wide v14

    invoke-virtual {v8, v14, v15}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v8

    .line 158
    .local v8, "animIn":Landroid/animation/ObjectAnimator;
    iget-object v11, v0, Lio/appium/android/apis/animation/LayoutAnimationsHideShow;->mTransitioner:Landroid/animation/LayoutTransition;

    invoke-virtual {v11, v10, v8}, Landroid/animation/LayoutTransition;->setAnimator(ILandroid/animation/Animator;)V

    .line 159
    new-instance v11, Lio/appium/android/apis/animation/LayoutAnimationsHideShow$6;

    invoke-direct {v11, v0}, Lio/appium/android/apis/animation/LayoutAnimationsHideShow$6;-><init>(Lio/appium/android/apis/animation/LayoutAnimationsHideShow;)V

    invoke-virtual {v8, v11}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 167
    const-string v11, "rotationX"

    new-array v10, v10, [F

    fill-array-data v10, :array_7

    const/4 v14, 0x0

    invoke-static {v14, v11, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v10

    iget-object v11, v0, Lio/appium/android/apis/animation/LayoutAnimationsHideShow;->mTransitioner:Landroid/animation/LayoutTransition;

    .line 168
    move-object v15, v1

    move-object/from16 v16, v2

    const/4 v14, 0x3

    .end local v1    # "pvhLeft":Landroid/animation/PropertyValuesHolder;
    .end local v2    # "pvhRotation":Landroid/animation/PropertyValuesHolder;
    .local v15, "pvhLeft":Landroid/animation/PropertyValuesHolder;
    .local v16, "pvhRotation":Landroid/animation/PropertyValuesHolder;
    invoke-virtual {v11, v14}, Landroid/animation/LayoutTransition;->getDuration(I)J

    move-result-wide v1

    invoke-virtual {v10, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 169
    .local v1, "animOut":Landroid/animation/ObjectAnimator;
    iget-object v2, v0, Lio/appium/android/apis/animation/LayoutAnimationsHideShow;->mTransitioner:Landroid/animation/LayoutTransition;

    invoke-virtual {v2, v14, v1}, Landroid/animation/LayoutTransition;->setAnimator(ILandroid/animation/Animator;)V

    .line 170
    new-instance v2, Lio/appium/android/apis/animation/LayoutAnimationsHideShow$7;

    invoke-direct {v2, v0}, Lio/appium/android/apis/animation/LayoutAnimationsHideShow$7;-><init>(Lio/appium/android/apis/animation/LayoutAnimationsHideShow;)V

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 177
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


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 52
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 53
    const v0, 0x7f0b0093

    invoke-virtual {p0, v0}, Lio/appium/android/apis/animation/LayoutAnimationsHideShow;->setContentView(I)V

    .line 55
    const v0, 0x7f0900e7

    invoke-virtual {p0, v0}, Lio/appium/android/apis/animation/LayoutAnimationsHideShow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 57
    .local v0, "hideGoneCB":Landroid/widget/CheckBox;
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lio/appium/android/apis/animation/LayoutAnimationsHideShow;->container:Landroid/view/ViewGroup;

    .line 58
    iget-object v1, p0, Lio/appium/android/apis/animation/LayoutAnimationsHideShow;->container:Landroid/view/ViewGroup;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 63
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/4 v2, 0x4

    if-ge v1, v2, :cond_0

    .line 64
    new-instance v2, Landroid/widget/Button;

    invoke-direct {v2, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 65
    .local v2, "newButton":Landroid/widget/Button;
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 66
    iget-object v3, p0, Lio/appium/android/apis/animation/LayoutAnimationsHideShow;->container:Landroid/view/ViewGroup;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 67
    new-instance v3, Lio/appium/android/apis/animation/LayoutAnimationsHideShow$1;

    invoke-direct {v3, p0, v0}, Lio/appium/android/apis/animation/LayoutAnimationsHideShow$1;-><init>(Lio/appium/android/apis/animation/LayoutAnimationsHideShow;Landroid/widget/CheckBox;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 63
    .end local v2    # "newButton":Landroid/widget/Button;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 74
    .end local v1    # "i":I
    :cond_0
    invoke-direct {p0}, Lio/appium/android/apis/animation/LayoutAnimationsHideShow;->resetTransition()V

    .line 76
    const v1, 0x7f090158

    invoke-virtual {p0, v1}, Lio/appium/android/apis/animation/LayoutAnimationsHideShow;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 77
    .local v1, "parent":Landroid/view/ViewGroup;
    iget-object v2, p0, Lio/appium/android/apis/animation/LayoutAnimationsHideShow;->container:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 79
    const v2, 0x7f090023

    invoke-virtual {p0, v2}, Lio/appium/android/apis/animation/LayoutAnimationsHideShow;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 80
    .local v2, "addButton":Landroid/widget/Button;
    new-instance v3, Lio/appium/android/apis/animation/LayoutAnimationsHideShow$2;

    invoke-direct {v3, p0}, Lio/appium/android/apis/animation/LayoutAnimationsHideShow$2;-><init>(Lio/appium/android/apis/animation/LayoutAnimationsHideShow;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 89
    const v3, 0x7f090081

    invoke-virtual {p0, v3}, Lio/appium/android/apis/animation/LayoutAnimationsHideShow;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    .line 90
    .local v3, "customAnimCB":Landroid/widget/CheckBox;
    new-instance v4, Lio/appium/android/apis/animation/LayoutAnimationsHideShow$3;

    invoke-direct {v4, p0}, Lio/appium/android/apis/animation/LayoutAnimationsHideShow$3;-><init>(Lio/appium/android/apis/animation/LayoutAnimationsHideShow;)V

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 105
    return-void
.end method
