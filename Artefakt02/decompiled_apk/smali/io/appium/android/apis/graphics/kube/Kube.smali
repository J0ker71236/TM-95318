.class public Lio/appium/android/apis/graphics/kube/Kube;
.super Landroid/app/Activity;
.source "Kube.java"

# interfaces
.implements Lio/appium/android/apis/graphics/kube/KubeRenderer$AnimationCallback;


# static fields
.field static final kBack:I = 0x5

.field static final kDown:I = 0x1

.field static final kEquator:I = 0x7

.field static final kFront:I = 0x4

.field static final kLeft:I = 0x2

.field static final kMiddle:I = 0x6

.field static final kRight:I = 0x3

.field static final kSide:I = 0x8

.field static final kUp:I

.field static mLayerPermutations:[[I


# instance fields
.field mAngleIncrement:F

.field mCubes:[Lio/appium/android/apis/graphics/kube/Cube;

.field mCurrentAngle:F

.field mCurrentLayer:Lio/appium/android/apis/graphics/kube/Layer;

.field mCurrentLayerPermutation:[I

.field mEndAngle:F

.field mLayers:[Lio/appium/android/apis/graphics/kube/Layer;

.field mPermutation:[I

.field mRandom:Ljava/util/Random;

.field mRenderer:Lio/appium/android/apis/graphics/kube/KubeRenderer;

.field mView:Landroid/opengl/GLSurfaceView;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 295
    const/16 v0, 0x9

    new-array v0, v0, [[I

    const/16 v1, 0x1b

    new-array v2, v1, [I

    fill-array-data v2, :array_0

    const/4 v3, 0x0

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_1

    const/4 v3, 0x1

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_2

    const/4 v3, 0x2

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_3

    const/4 v3, 0x3

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_4

    const/4 v3, 0x4

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_5

    const/4 v3, 0x5

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_6

    const/4 v3, 0x6

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_7

    const/4 v3, 0x7

    aput-object v2, v0, v3

    new-array v1, v1, [I

    fill-array-data v1, :array_8

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sput-object v0, Lio/appium/android/apis/graphics/kube/Kube;->mLayerPermutations:[[I

    return-void

    :array_0
    .array-data 4
        0x2
        0x5
        0x8
        0x1
        0x4
        0x7
        0x0
        0x3
        0x6
        0x9
        0xa
        0xb
        0xc
        0xd
        0xe
        0xf
        0x10
        0x11
        0x12
        0x13
        0x14
        0x15
        0x16
        0x17
        0x18
        0x19
        0x1a
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
        0x9
        0xa
        0xb
        0xc
        0xd
        0xe
        0xf
        0x10
        0x11
        0x14
        0x17
        0x1a
        0x13
        0x16
        0x19
        0x12
        0x15
        0x18
    .end array-data

    :array_2
    .array-data 4
        0x6
        0x1
        0x2
        0xf
        0x4
        0x5
        0x18
        0x7
        0x8
        0x3
        0xa
        0xb
        0xc
        0xd
        0xe
        0x15
        0x10
        0x11
        0x0
        0x13
        0x14
        0x9
        0x16
        0x17
        0x12
        0x19
        0x1a
    .end array-data

    :array_3
    .array-data 4
        0x0
        0x1
        0x8
        0x3
        0x4
        0x11
        0x6
        0x7
        0x1a
        0x9
        0xa
        0x5
        0xc
        0xd
        0xe
        0xf
        0x10
        0x17
        0x12
        0x13
        0x2
        0x15
        0x16
        0xb
        0x18
        0x19
        0x14
    .end array-data

    :array_4
    .array-data 4
        0x0
        0x1
        0x2
        0x3
        0x4
        0x5
        0x18
        0xf
        0x6
        0x9
        0xa
        0xb
        0xc
        0xd
        0xe
        0x19
        0x10
        0x7
        0x12
        0x13
        0x14
        0x15
        0x16
        0x17
        0x1a
        0x11
        0x8
    .end array-data

    :array_5
    .array-data 4
        0x12
        0x9
        0x0
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
        0x13
        0xa
        0x1
        0xc
        0xd
        0xe
        0xf
        0x10
        0x11
        0x14
        0xb
        0x2
        0x15
        0x16
        0x17
        0x18
        0x19
        0x1a
    .end array-data

    :array_6
    .array-data 4
        0x0
        0x7
        0x2
        0x3
        0x10
        0x5
        0x6
        0x19
        0x8
        0x9
        0x4
        0xb
        0xc
        0xd
        0xe
        0xf
        0x16
        0x11
        0x12
        0x1
        0x14
        0x15
        0xa
        0x17
        0x18
        0x13
        0x1a
    .end array-data

    :array_7
    .array-data 4
        0x0
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
        0xb
        0xe
        0x11
        0xa
        0xd
        0x10
        0x9
        0xc
        0xf
        0x12
        0x13
        0x14
        0x15
        0x16
        0x17
        0x18
        0x19
        0x1a
    .end array-data

    :array_8
    .array-data 4
        0x0
        0x1
        0x2
        0x15
        0xc
        0x3
        0x6
        0x7
        0x8
        0x9
        0xa
        0xb
        0x16
        0xd
        0x4
        0xf
        0x10
        0x11
        0x12
        0x13
        0x14
        0x17
        0xe
        0x5
        0x18
        0x19
        0x1a
    .end array-data
.end method

.method public constructor <init>()V
    .locals 3

    .line 27
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 291
    const/16 v0, 0x1b

    new-array v0, v0, [Lio/appium/android/apis/graphics/kube/Cube;

    iput-object v0, p0, Lio/appium/android/apis/graphics/kube/Kube;->mCubes:[Lio/appium/android/apis/graphics/kube/Cube;

    .line 293
    const/16 v0, 0x9

    new-array v0, v0, [Lio/appium/android/apis/graphics/kube/Layer;

    iput-object v0, p0, Lio/appium/android/apis/graphics/kube/Kube;->mLayers:[Lio/appium/android/apis/graphics/kube/Layer;

    .line 322
    new-instance v0, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Random;-><init>(J)V

    iput-object v0, p0, Lio/appium/android/apis/graphics/kube/Kube;->mRandom:Ljava/util/Random;

    .line 324
    const/4 v0, 0x0

    iput-object v0, p0, Lio/appium/android/apis/graphics/kube/Kube;->mCurrentLayer:Lio/appium/android/apis/graphics/kube/Layer;

    return-void
.end method

.method private createLayers()V
    .locals 6

    .line 138
    iget-object v0, p0, Lio/appium/android/apis/graphics/kube/Kube;->mLayers:[Lio/appium/android/apis/graphics/kube/Layer;

    new-instance v1, Lio/appium/android/apis/graphics/kube/Layer;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lio/appium/android/apis/graphics/kube/Layer;-><init>(I)V

    const/4 v3, 0x0

    aput-object v1, v0, v3

    .line 139
    iget-object v0, p0, Lio/appium/android/apis/graphics/kube/Kube;->mLayers:[Lio/appium/android/apis/graphics/kube/Layer;

    new-instance v1, Lio/appium/android/apis/graphics/kube/Layer;

    invoke-direct {v1, v2}, Lio/appium/android/apis/graphics/kube/Layer;-><init>(I)V

    aput-object v1, v0, v2

    .line 140
    iget-object v0, p0, Lio/appium/android/apis/graphics/kube/Kube;->mLayers:[Lio/appium/android/apis/graphics/kube/Layer;

    new-instance v1, Lio/appium/android/apis/graphics/kube/Layer;

    invoke-direct {v1, v3}, Lio/appium/android/apis/graphics/kube/Layer;-><init>(I)V

    const/4 v4, 0x2

    aput-object v1, v0, v4

    .line 141
    iget-object v0, p0, Lio/appium/android/apis/graphics/kube/Kube;->mLayers:[Lio/appium/android/apis/graphics/kube/Layer;

    new-instance v1, Lio/appium/android/apis/graphics/kube/Layer;

    invoke-direct {v1, v3}, Lio/appium/android/apis/graphics/kube/Layer;-><init>(I)V

    const/4 v5, 0x3

    aput-object v1, v0, v5

    .line 142
    iget-object v0, p0, Lio/appium/android/apis/graphics/kube/Kube;->mLayers:[Lio/appium/android/apis/graphics/kube/Layer;

    new-instance v1, Lio/appium/android/apis/graphics/kube/Layer;

    invoke-direct {v1, v4}, Lio/appium/android/apis/graphics/kube/Layer;-><init>(I)V

    const/4 v5, 0x4

    aput-object v1, v0, v5

    .line 143
    iget-object v0, p0, Lio/appium/android/apis/graphics/kube/Kube;->mLayers:[Lio/appium/android/apis/graphics/kube/Layer;

    new-instance v1, Lio/appium/android/apis/graphics/kube/Layer;

    invoke-direct {v1, v4}, Lio/appium/android/apis/graphics/kube/Layer;-><init>(I)V

    const/4 v5, 0x5

    aput-object v1, v0, v5

    .line 144
    iget-object v0, p0, Lio/appium/android/apis/graphics/kube/Kube;->mLayers:[Lio/appium/android/apis/graphics/kube/Layer;

    new-instance v1, Lio/appium/android/apis/graphics/kube/Layer;

    invoke-direct {v1, v3}, Lio/appium/android/apis/graphics/kube/Layer;-><init>(I)V

    const/4 v3, 0x6

    aput-object v1, v0, v3

    .line 145
    iget-object v0, p0, Lio/appium/android/apis/graphics/kube/Kube;->mLayers:[Lio/appium/android/apis/graphics/kube/Layer;

    new-instance v1, Lio/appium/android/apis/graphics/kube/Layer;

    invoke-direct {v1, v2}, Lio/appium/android/apis/graphics/kube/Layer;-><init>(I)V

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 146
    iget-object v0, p0, Lio/appium/android/apis/graphics/kube/Kube;->mLayers:[Lio/appium/android/apis/graphics/kube/Layer;

    new-instance v1, Lio/appium/android/apis/graphics/kube/Layer;

    invoke-direct {v1, v4}, Lio/appium/android/apis/graphics/kube/Layer;-><init>(I)V

    const/16 v2, 0x8

    aput-object v1, v0, v2

    .line 147
    return-void
.end method

.method private makeGLWorld()Lio/appium/android/apis/graphics/kube/GLWorld;
    .locals 28

    .line 31
    move-object/from16 v0, p0

    new-instance v1, Lio/appium/android/apis/graphics/kube/GLWorld;

    invoke-direct {v1}, Lio/appium/android/apis/graphics/kube/GLWorld;-><init>()V

    .line 33
    .local v1, "world":Lio/appium/android/apis/graphics/kube/GLWorld;
    const/high16 v10, 0x10000

    .line 34
    .local v10, "one":I
    const v11, 0x8000

    .line 35
    .local v11, "half":I
    new-instance v2, Lio/appium/android/apis/graphics/kube/GLColor;

    const/4 v12, 0x0

    invoke-direct {v2, v10, v12, v12}, Lio/appium/android/apis/graphics/kube/GLColor;-><init>(III)V

    move-object v13, v2

    .line 36
    .local v13, "red":Lio/appium/android/apis/graphics/kube/GLColor;
    new-instance v2, Lio/appium/android/apis/graphics/kube/GLColor;

    invoke-direct {v2, v12, v10, v12}, Lio/appium/android/apis/graphics/kube/GLColor;-><init>(III)V

    move-object v14, v2

    .line 37
    .local v14, "green":Lio/appium/android/apis/graphics/kube/GLColor;
    new-instance v2, Lio/appium/android/apis/graphics/kube/GLColor;

    invoke-direct {v2, v12, v12, v10}, Lio/appium/android/apis/graphics/kube/GLColor;-><init>(III)V

    move-object v15, v2

    .line 38
    .local v15, "blue":Lio/appium/android/apis/graphics/kube/GLColor;
    new-instance v2, Lio/appium/android/apis/graphics/kube/GLColor;

    invoke-direct {v2, v10, v10, v12}, Lio/appium/android/apis/graphics/kube/GLColor;-><init>(III)V

    move-object v9, v2

    .line 39
    .local v9, "yellow":Lio/appium/android/apis/graphics/kube/GLColor;
    new-instance v2, Lio/appium/android/apis/graphics/kube/GLColor;

    invoke-direct {v2, v10, v11, v12}, Lio/appium/android/apis/graphics/kube/GLColor;-><init>(III)V

    move-object v8, v2

    .line 40
    .local v8, "orange":Lio/appium/android/apis/graphics/kube/GLColor;
    new-instance v2, Lio/appium/android/apis/graphics/kube/GLColor;

    invoke-direct {v2, v10, v10, v10}, Lio/appium/android/apis/graphics/kube/GLColor;-><init>(III)V

    move-object v7, v2

    .line 41
    .local v7, "white":Lio/appium/android/apis/graphics/kube/GLColor;
    new-instance v2, Lio/appium/android/apis/graphics/kube/GLColor;

    invoke-direct {v2, v12, v12, v12}, Lio/appium/android/apis/graphics/kube/GLColor;-><init>(III)V

    move-object v6, v2

    .line 44
    .local v6, "black":Lio/appium/android/apis/graphics/kube/GLColor;
    const/high16 v16, -0x40800000    # -1.0f

    .line 45
    .local v16, "c0":F
    const v17, -0x413d70a4    # -0.38f

    .line 46
    .local v17, "c1":F
    const v18, -0x415c28f6    # -0.32f

    .line 47
    .local v18, "c2":F
    const v19, 0x3ea3d70a    # 0.32f

    .line 48
    .local v19, "c3":F
    const v20, 0x3ec28f5c    # 0.38f

    .line 49
    .local v20, "c4":F
    const/high16 v21, 0x3f800000    # 1.0f

    .line 52
    .local v21, "c5":F
    iget-object v5, v0, Lio/appium/android/apis/graphics/kube/Kube;->mCubes:[Lio/appium/android/apis/graphics/kube/Cube;

    new-instance v22, Lio/appium/android/apis/graphics/kube/Cube;

    move-object/from16 v2, v22

    move-object v3, v1

    move/from16 v4, v16

    move-object/from16 v23, v5

    move/from16 v5, v20

    move-object/from16 v24, v6

    .end local v6    # "black":Lio/appium/android/apis/graphics/kube/GLColor;
    .local v24, "black":Lio/appium/android/apis/graphics/kube/GLColor;
    move/from16 v6, v16

    move-object/from16 v25, v7

    .end local v7    # "white":Lio/appium/android/apis/graphics/kube/GLColor;
    .local v25, "white":Lio/appium/android/apis/graphics/kube/GLColor;
    move/from16 v7, v17

    move-object/from16 v26, v8

    .end local v8    # "orange":Lio/appium/android/apis/graphics/kube/GLColor;
    .local v26, "orange":Lio/appium/android/apis/graphics/kube/GLColor;
    move/from16 v8, v21

    move-object/from16 v27, v9

    .end local v9    # "yellow":Lio/appium/android/apis/graphics/kube/GLColor;
    .local v27, "yellow":Lio/appium/android/apis/graphics/kube/GLColor;
    move/from16 v9, v17

    invoke-direct/range {v2 .. v9}, Lio/appium/android/apis/graphics/kube/Cube;-><init>(Lio/appium/android/apis/graphics/kube/GLWorld;FFFFFF)V

    aput-object v22, v23, v12

    .line 53
    iget-object v9, v0, Lio/appium/android/apis/graphics/kube/Kube;->mCubes:[Lio/appium/android/apis/graphics/kube/Cube;

    new-instance v22, Lio/appium/android/apis/graphics/kube/Cube;

    move-object/from16 v2, v22

    move/from16 v4, v18

    move/from16 v7, v19

    move-object/from16 v23, v9

    move/from16 v9, v17

    invoke-direct/range {v2 .. v9}, Lio/appium/android/apis/graphics/kube/Cube;-><init>(Lio/appium/android/apis/graphics/kube/GLWorld;FFFFFF)V

    const/4 v9, 0x1

    aput-object v22, v23, v9

    .line 54
    iget-object v8, v0, Lio/appium/android/apis/graphics/kube/Kube;->mCubes:[Lio/appium/android/apis/graphics/kube/Cube;

    new-instance v22, Lio/appium/android/apis/graphics/kube/Cube;

    move-object/from16 v2, v22

    move/from16 v4, v20

    move/from16 v7, v21

    move-object/from16 v23, v8

    move/from16 v8, v21

    move/from16 v9, v17

    invoke-direct/range {v2 .. v9}, Lio/appium/android/apis/graphics/kube/Cube;-><init>(Lio/appium/android/apis/graphics/kube/GLWorld;FFFFFF)V

    const/4 v9, 0x2

    aput-object v22, v23, v9

    .line 56
    iget-object v8, v0, Lio/appium/android/apis/graphics/kube/Kube;->mCubes:[Lio/appium/android/apis/graphics/kube/Cube;

    new-instance v22, Lio/appium/android/apis/graphics/kube/Cube;

    move-object/from16 v2, v22

    move/from16 v4, v16

    move/from16 v6, v18

    move/from16 v7, v17

    move-object/from16 v23, v8

    move/from16 v8, v21

    move/from16 v9, v19

    invoke-direct/range {v2 .. v9}, Lio/appium/android/apis/graphics/kube/Cube;-><init>(Lio/appium/android/apis/graphics/kube/GLWorld;FFFFFF)V

    const/4 v9, 0x3

    aput-object v22, v23, v9

    .line 57
    iget-object v8, v0, Lio/appium/android/apis/graphics/kube/Kube;->mCubes:[Lio/appium/android/apis/graphics/kube/Cube;

    new-instance v22, Lio/appium/android/apis/graphics/kube/Cube;

    move-object/from16 v2, v22

    move/from16 v4, v18

    move/from16 v7, v19

    move-object/from16 v23, v8

    move/from16 v8, v21

    move/from16 v9, v19

    invoke-direct/range {v2 .. v9}, Lio/appium/android/apis/graphics/kube/Cube;-><init>(Lio/appium/android/apis/graphics/kube/GLWorld;FFFFFF)V

    const/4 v9, 0x4

    aput-object v22, v23, v9

    .line 58
    iget-object v8, v0, Lio/appium/android/apis/graphics/kube/Kube;->mCubes:[Lio/appium/android/apis/graphics/kube/Cube;

    new-instance v22, Lio/appium/android/apis/graphics/kube/Cube;

    move-object/from16 v2, v22

    move/from16 v4, v20

    move/from16 v7, v21

    move-object/from16 v23, v8

    move/from16 v8, v21

    move/from16 v9, v19

    invoke-direct/range {v2 .. v9}, Lio/appium/android/apis/graphics/kube/Cube;-><init>(Lio/appium/android/apis/graphics/kube/GLWorld;FFFFFF)V

    const/4 v9, 0x5

    aput-object v22, v23, v9

    .line 60
    iget-object v8, v0, Lio/appium/android/apis/graphics/kube/Kube;->mCubes:[Lio/appium/android/apis/graphics/kube/Cube;

    new-instance v22, Lio/appium/android/apis/graphics/kube/Cube;

    move-object/from16 v2, v22

    move/from16 v4, v16

    move/from16 v6, v20

    move/from16 v7, v17

    move-object/from16 v23, v8

    move/from16 v8, v21

    const/4 v12, 0x5

    move/from16 v9, v21

    invoke-direct/range {v2 .. v9}, Lio/appium/android/apis/graphics/kube/Cube;-><init>(Lio/appium/android/apis/graphics/kube/GLWorld;FFFFFF)V

    const/4 v9, 0x6

    aput-object v22, v23, v9

    .line 61
    iget-object v8, v0, Lio/appium/android/apis/graphics/kube/Kube;->mCubes:[Lio/appium/android/apis/graphics/kube/Cube;

    new-instance v22, Lio/appium/android/apis/graphics/kube/Cube;

    move-object/from16 v2, v22

    move/from16 v4, v18

    move/from16 v7, v19

    move-object/from16 v23, v8

    move/from16 v8, v21

    const/4 v12, 0x6

    move/from16 v9, v21

    invoke-direct/range {v2 .. v9}, Lio/appium/android/apis/graphics/kube/Cube;-><init>(Lio/appium/android/apis/graphics/kube/GLWorld;FFFFFF)V

    const/4 v2, 0x7

    aput-object v22, v23, v2

    .line 62
    iget-object v9, v0, Lio/appium/android/apis/graphics/kube/Kube;->mCubes:[Lio/appium/android/apis/graphics/kube/Cube;

    new-instance v22, Lio/appium/android/apis/graphics/kube/Cube;

    move-object/from16 v2, v22

    move/from16 v4, v20

    move/from16 v7, v21

    move-object/from16 v23, v9

    move/from16 v9, v21

    invoke-direct/range {v2 .. v9}, Lio/appium/android/apis/graphics/kube/Cube;-><init>(Lio/appium/android/apis/graphics/kube/GLWorld;FFFFFF)V

    const/16 v2, 0x8

    aput-object v22, v23, v2

    .line 64
    iget-object v9, v0, Lio/appium/android/apis/graphics/kube/Kube;->mCubes:[Lio/appium/android/apis/graphics/kube/Cube;

    new-instance v22, Lio/appium/android/apis/graphics/kube/Cube;

    move-object/from16 v2, v22

    move/from16 v4, v16

    move/from16 v5, v18

    move/from16 v6, v16

    move/from16 v7, v17

    move/from16 v8, v19

    move-object/from16 v23, v9

    move/from16 v9, v17

    invoke-direct/range {v2 .. v9}, Lio/appium/android/apis/graphics/kube/Cube;-><init>(Lio/appium/android/apis/graphics/kube/GLWorld;FFFFFF)V

    const/16 v9, 0x9

    aput-object v22, v23, v9

    .line 65
    iget-object v8, v0, Lio/appium/android/apis/graphics/kube/Kube;->mCubes:[Lio/appium/android/apis/graphics/kube/Cube;

    new-instance v22, Lio/appium/android/apis/graphics/kube/Cube;

    move-object/from16 v2, v22

    move/from16 v4, v18

    move/from16 v7, v19

    move-object/from16 v23, v8

    move/from16 v8, v19

    move/from16 v9, v17

    invoke-direct/range {v2 .. v9}, Lio/appium/android/apis/graphics/kube/Cube;-><init>(Lio/appium/android/apis/graphics/kube/GLWorld;FFFFFF)V

    const/16 v2, 0xa

    aput-object v22, v23, v2

    .line 66
    iget-object v9, v0, Lio/appium/android/apis/graphics/kube/Kube;->mCubes:[Lio/appium/android/apis/graphics/kube/Cube;

    new-instance v22, Lio/appium/android/apis/graphics/kube/Cube;

    move-object/from16 v2, v22

    move/from16 v4, v20

    move/from16 v7, v21

    move-object/from16 v23, v9

    move/from16 v9, v17

    invoke-direct/range {v2 .. v9}, Lio/appium/android/apis/graphics/kube/Cube;-><init>(Lio/appium/android/apis/graphics/kube/GLWorld;FFFFFF)V

    const/16 v2, 0xb

    aput-object v22, v23, v2

    .line 68
    iget-object v9, v0, Lio/appium/android/apis/graphics/kube/Kube;->mCubes:[Lio/appium/android/apis/graphics/kube/Cube;

    new-instance v22, Lio/appium/android/apis/graphics/kube/Cube;

    move-object/from16 v2, v22

    move/from16 v4, v16

    move/from16 v6, v18

    move/from16 v7, v17

    move-object/from16 v23, v9

    move/from16 v9, v19

    invoke-direct/range {v2 .. v9}, Lio/appium/android/apis/graphics/kube/Cube;-><init>(Lio/appium/android/apis/graphics/kube/GLWorld;FFFFFF)V

    const/16 v2, 0xc

    aput-object v22, v23, v2

    .line 69
    iget-object v9, v0, Lio/appium/android/apis/graphics/kube/Kube;->mCubes:[Lio/appium/android/apis/graphics/kube/Cube;

    const/16 v2, 0xd

    const/4 v3, 0x0

    aput-object v3, v9, v2

    .line 70
    new-instance v22, Lio/appium/android/apis/graphics/kube/Cube;

    move-object/from16 v2, v22

    move-object v3, v1

    move/from16 v4, v20

    move/from16 v7, v21

    move-object/from16 v23, v9

    move/from16 v9, v19

    invoke-direct/range {v2 .. v9}, Lio/appium/android/apis/graphics/kube/Cube;-><init>(Lio/appium/android/apis/graphics/kube/GLWorld;FFFFFF)V

    const/16 v2, 0xe

    aput-object v22, v23, v2

    .line 72
    iget-object v9, v0, Lio/appium/android/apis/graphics/kube/Kube;->mCubes:[Lio/appium/android/apis/graphics/kube/Cube;

    new-instance v22, Lio/appium/android/apis/graphics/kube/Cube;

    move-object/from16 v2, v22

    move/from16 v4, v16

    move/from16 v6, v20

    move/from16 v7, v17

    move-object/from16 v23, v9

    move/from16 v9, v21

    invoke-direct/range {v2 .. v9}, Lio/appium/android/apis/graphics/kube/Cube;-><init>(Lio/appium/android/apis/graphics/kube/GLWorld;FFFFFF)V

    const/16 v2, 0xf

    aput-object v22, v23, v2

    .line 73
    iget-object v9, v0, Lio/appium/android/apis/graphics/kube/Kube;->mCubes:[Lio/appium/android/apis/graphics/kube/Cube;

    new-instance v22, Lio/appium/android/apis/graphics/kube/Cube;

    move-object/from16 v2, v22

    move/from16 v4, v18

    move/from16 v7, v19

    move-object/from16 v23, v9

    move/from16 v9, v21

    invoke-direct/range {v2 .. v9}, Lio/appium/android/apis/graphics/kube/Cube;-><init>(Lio/appium/android/apis/graphics/kube/GLWorld;FFFFFF)V

    const/16 v2, 0x10

    aput-object v22, v23, v2

    .line 74
    iget-object v9, v0, Lio/appium/android/apis/graphics/kube/Kube;->mCubes:[Lio/appium/android/apis/graphics/kube/Cube;

    new-instance v22, Lio/appium/android/apis/graphics/kube/Cube;

    move-object/from16 v2, v22

    move/from16 v4, v20

    move/from16 v7, v21

    move-object/from16 v23, v9

    move/from16 v9, v21

    invoke-direct/range {v2 .. v9}, Lio/appium/android/apis/graphics/kube/Cube;-><init>(Lio/appium/android/apis/graphics/kube/GLWorld;FFFFFF)V

    const/16 v2, 0x11

    aput-object v22, v23, v2

    .line 76
    iget-object v9, v0, Lio/appium/android/apis/graphics/kube/Kube;->mCubes:[Lio/appium/android/apis/graphics/kube/Cube;

    new-instance v22, Lio/appium/android/apis/graphics/kube/Cube;

    move-object/from16 v2, v22

    move/from16 v4, v16

    move/from16 v5, v16

    move/from16 v6, v16

    move/from16 v7, v17

    move/from16 v8, v17

    move-object/from16 v23, v9

    move/from16 v9, v17

    invoke-direct/range {v2 .. v9}, Lio/appium/android/apis/graphics/kube/Cube;-><init>(Lio/appium/android/apis/graphics/kube/GLWorld;FFFFFF)V

    const/16 v2, 0x12

    aput-object v22, v23, v2

    .line 77
    iget-object v9, v0, Lio/appium/android/apis/graphics/kube/Kube;->mCubes:[Lio/appium/android/apis/graphics/kube/Cube;

    new-instance v22, Lio/appium/android/apis/graphics/kube/Cube;

    move-object/from16 v2, v22

    move/from16 v4, v18

    move/from16 v7, v19

    move-object/from16 v23, v9

    move/from16 v9, v17

    invoke-direct/range {v2 .. v9}, Lio/appium/android/apis/graphics/kube/Cube;-><init>(Lio/appium/android/apis/graphics/kube/GLWorld;FFFFFF)V

    const/16 v2, 0x13

    aput-object v22, v23, v2

    .line 78
    iget-object v9, v0, Lio/appium/android/apis/graphics/kube/Kube;->mCubes:[Lio/appium/android/apis/graphics/kube/Cube;

    new-instance v22, Lio/appium/android/apis/graphics/kube/Cube;

    move-object/from16 v2, v22

    move/from16 v4, v20

    move/from16 v7, v21

    move-object/from16 v23, v9

    move/from16 v9, v17

    invoke-direct/range {v2 .. v9}, Lio/appium/android/apis/graphics/kube/Cube;-><init>(Lio/appium/android/apis/graphics/kube/GLWorld;FFFFFF)V

    const/16 v2, 0x14

    aput-object v22, v23, v2

    .line 80
    iget-object v9, v0, Lio/appium/android/apis/graphics/kube/Kube;->mCubes:[Lio/appium/android/apis/graphics/kube/Cube;

    new-instance v22, Lio/appium/android/apis/graphics/kube/Cube;

    move-object/from16 v2, v22

    move/from16 v4, v16

    move/from16 v6, v18

    move/from16 v7, v17

    move-object/from16 v23, v9

    move/from16 v9, v19

    invoke-direct/range {v2 .. v9}, Lio/appium/android/apis/graphics/kube/Cube;-><init>(Lio/appium/android/apis/graphics/kube/GLWorld;FFFFFF)V

    const/16 v2, 0x15

    aput-object v22, v23, v2

    .line 81
    iget-object v9, v0, Lio/appium/android/apis/graphics/kube/Kube;->mCubes:[Lio/appium/android/apis/graphics/kube/Cube;

    new-instance v22, Lio/appium/android/apis/graphics/kube/Cube;

    move-object/from16 v2, v22

    move/from16 v4, v18

    move/from16 v7, v19

    move-object/from16 v23, v9

    move/from16 v9, v19

    invoke-direct/range {v2 .. v9}, Lio/appium/android/apis/graphics/kube/Cube;-><init>(Lio/appium/android/apis/graphics/kube/GLWorld;FFFFFF)V

    const/16 v2, 0x16

    aput-object v22, v23, v2

    .line 82
    iget-object v9, v0, Lio/appium/android/apis/graphics/kube/Kube;->mCubes:[Lio/appium/android/apis/graphics/kube/Cube;

    new-instance v22, Lio/appium/android/apis/graphics/kube/Cube;

    move-object/from16 v2, v22

    move/from16 v4, v20

    move/from16 v7, v21

    move-object/from16 v23, v9

    move/from16 v9, v19

    invoke-direct/range {v2 .. v9}, Lio/appium/android/apis/graphics/kube/Cube;-><init>(Lio/appium/android/apis/graphics/kube/GLWorld;FFFFFF)V

    const/16 v2, 0x17

    aput-object v22, v23, v2

    .line 84
    iget-object v9, v0, Lio/appium/android/apis/graphics/kube/Kube;->mCubes:[Lio/appium/android/apis/graphics/kube/Cube;

    new-instance v22, Lio/appium/android/apis/graphics/kube/Cube;

    move-object/from16 v2, v22

    move/from16 v4, v16

    move/from16 v6, v20

    move/from16 v7, v17

    move-object/from16 v23, v9

    move/from16 v9, v21

    invoke-direct/range {v2 .. v9}, Lio/appium/android/apis/graphics/kube/Cube;-><init>(Lio/appium/android/apis/graphics/kube/GLWorld;FFFFFF)V

    const/16 v2, 0x18

    aput-object v22, v23, v2

    .line 85
    iget-object v9, v0, Lio/appium/android/apis/graphics/kube/Kube;->mCubes:[Lio/appium/android/apis/graphics/kube/Cube;

    new-instance v22, Lio/appium/android/apis/graphics/kube/Cube;

    move-object/from16 v2, v22

    move/from16 v4, v18

    move/from16 v7, v19

    move-object/from16 v23, v9

    move/from16 v9, v21

    invoke-direct/range {v2 .. v9}, Lio/appium/android/apis/graphics/kube/Cube;-><init>(Lio/appium/android/apis/graphics/kube/GLWorld;FFFFFF)V

    const/16 v2, 0x19

    aput-object v22, v23, v2

    .line 86
    iget-object v9, v0, Lio/appium/android/apis/graphics/kube/Kube;->mCubes:[Lio/appium/android/apis/graphics/kube/Cube;

    new-instance v22, Lio/appium/android/apis/graphics/kube/Cube;

    move-object/from16 v2, v22

    move/from16 v4, v20

    move/from16 v7, v21

    move-object/from16 v23, v9

    move/from16 v9, v21

    invoke-direct/range {v2 .. v9}, Lio/appium/android/apis/graphics/kube/Cube;-><init>(Lio/appium/android/apis/graphics/kube/GLWorld;FFFFFF)V

    const/16 v2, 0x1a

    aput-object v22, v23, v2

    .line 91
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    const/16 v3, 0x1b

    if-ge v2, v3, :cond_2

    .line 92
    iget-object v3, v0, Lio/appium/android/apis/graphics/kube/Kube;->mCubes:[Lio/appium/android/apis/graphics/kube/Cube;

    aget-object v3, v3, v2

    .line 93
    .local v3, "cube":Lio/appium/android/apis/graphics/kube/Cube;
    if-eqz v3, :cond_1

    .line 94
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_1
    if-ge v4, v12, :cond_0

    .line 95
    move-object/from16 v5, v24

    .end local v24    # "black":Lio/appium/android/apis/graphics/kube/GLColor;
    .local v5, "black":Lio/appium/android/apis/graphics/kube/GLColor;
    invoke-virtual {v3, v4, v5}, Lio/appium/android/apis/graphics/kube/Cube;->setFaceColor(ILio/appium/android/apis/graphics/kube/GLColor;)V

    .line 94
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .end local v5    # "black":Lio/appium/android/apis/graphics/kube/GLColor;
    .restart local v24    # "black":Lio/appium/android/apis/graphics/kube/GLColor;
    :cond_0
    move-object/from16 v5, v24

    .end local v24    # "black":Lio/appium/android/apis/graphics/kube/GLColor;
    .restart local v5    # "black":Lio/appium/android/apis/graphics/kube/GLColor;
    goto :goto_2

    .line 93
    .end local v4    # "j":I
    .end local v5    # "black":Lio/appium/android/apis/graphics/kube/GLColor;
    .restart local v24    # "black":Lio/appium/android/apis/graphics/kube/GLColor;
    :cond_1
    move-object/from16 v5, v24

    .line 91
    .end local v3    # "cube":Lio/appium/android/apis/graphics/kube/Cube;
    .end local v24    # "black":Lio/appium/android/apis/graphics/kube/GLColor;
    .restart local v5    # "black":Lio/appium/android/apis/graphics/kube/GLColor;
    :goto_2
    add-int/lit8 v2, v2, 0x1

    move-object/from16 v24, v5

    goto :goto_0

    .line 100
    .end local v5    # "black":Lio/appium/android/apis/graphics/kube/GLColor;
    .restart local v24    # "black":Lio/appium/android/apis/graphics/kube/GLColor;
    :cond_2
    move-object/from16 v5, v24

    .end local v24    # "black":Lio/appium/android/apis/graphics/kube/GLColor;
    .restart local v5    # "black":Lio/appium/android/apis/graphics/kube/GLColor;
    const/4 v2, 0x0

    :goto_3
    const/16 v4, 0x9

    if-ge v2, v4, :cond_3

    .line 101
    iget-object v6, v0, Lio/appium/android/apis/graphics/kube/Kube;->mCubes:[Lio/appium/android/apis/graphics/kube/Cube;

    aget-object v6, v6, v2

    move-object/from16 v7, v26

    const/4 v8, 0x5

    .end local v26    # "orange":Lio/appium/android/apis/graphics/kube/GLColor;
    .local v7, "orange":Lio/appium/android/apis/graphics/kube/GLColor;
    invoke-virtual {v6, v8, v7}, Lio/appium/android/apis/graphics/kube/Cube;->setFaceColor(ILio/appium/android/apis/graphics/kube/GLColor;)V

    .line 100
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 103
    .end local v7    # "orange":Lio/appium/android/apis/graphics/kube/GLColor;
    .restart local v26    # "orange":Lio/appium/android/apis/graphics/kube/GLColor;
    :cond_3
    move-object/from16 v7, v26

    .end local v26    # "orange":Lio/appium/android/apis/graphics/kube/GLColor;
    .restart local v7    # "orange":Lio/appium/android/apis/graphics/kube/GLColor;
    const/16 v2, 0x12

    :goto_4
    if-ge v2, v3, :cond_4

    .line 104
    iget-object v4, v0, Lio/appium/android/apis/graphics/kube/Kube;->mCubes:[Lio/appium/android/apis/graphics/kube/Cube;

    aget-object v4, v4, v2

    const/4 v6, 0x0

    invoke-virtual {v4, v6, v13}, Lio/appium/android/apis/graphics/kube/Cube;->setFaceColor(ILio/appium/android/apis/graphics/kube/GLColor;)V

    .line 103
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 106
    :cond_4
    const/4 v2, 0x0

    :goto_5
    if-ge v2, v3, :cond_5

    .line 107
    iget-object v4, v0, Lio/appium/android/apis/graphics/kube/Kube;->mCubes:[Lio/appium/android/apis/graphics/kube/Cube;

    aget-object v4, v4, v2

    move-object/from16 v6, v27

    const/4 v8, 0x2

    .end local v27    # "yellow":Lio/appium/android/apis/graphics/kube/GLColor;
    .local v6, "yellow":Lio/appium/android/apis/graphics/kube/GLColor;
    invoke-virtual {v4, v8, v6}, Lio/appium/android/apis/graphics/kube/Cube;->setFaceColor(ILio/appium/android/apis/graphics/kube/GLColor;)V

    .line 106
    add-int/lit8 v2, v2, 0x3

    goto :goto_5

    .line 109
    .end local v6    # "yellow":Lio/appium/android/apis/graphics/kube/GLColor;
    .restart local v27    # "yellow":Lio/appium/android/apis/graphics/kube/GLColor;
    :cond_5
    move-object/from16 v6, v27

    .end local v27    # "yellow":Lio/appium/android/apis/graphics/kube/GLColor;
    .restart local v6    # "yellow":Lio/appium/android/apis/graphics/kube/GLColor;
    const/4 v2, 0x2

    :goto_6
    if-ge v2, v3, :cond_6

    .line 110
    iget-object v4, v0, Lio/appium/android/apis/graphics/kube/Kube;->mCubes:[Lio/appium/android/apis/graphics/kube/Cube;

    aget-object v4, v4, v2

    move-object/from16 v8, v25

    const/4 v9, 0x3

    .end local v25    # "white":Lio/appium/android/apis/graphics/kube/GLColor;
    .local v8, "white":Lio/appium/android/apis/graphics/kube/GLColor;
    invoke-virtual {v4, v9, v8}, Lio/appium/android/apis/graphics/kube/Cube;->setFaceColor(ILio/appium/android/apis/graphics/kube/GLColor;)V

    .line 109
    add-int/lit8 v2, v2, 0x3

    goto :goto_6

    .line 112
    .end local v8    # "white":Lio/appium/android/apis/graphics/kube/GLColor;
    .restart local v25    # "white":Lio/appium/android/apis/graphics/kube/GLColor;
    :cond_6
    move-object/from16 v8, v25

    const/4 v9, 0x3

    .end local v25    # "white":Lio/appium/android/apis/graphics/kube/GLColor;
    .restart local v8    # "white":Lio/appium/android/apis/graphics/kube/GLColor;
    const/4 v2, 0x0

    :goto_7
    if-ge v2, v3, :cond_8

    .line 113
    const/4 v4, 0x0

    .restart local v4    # "j":I
    :goto_8
    if-ge v4, v9, :cond_7

    .line 114
    iget-object v12, v0, Lio/appium/android/apis/graphics/kube/Kube;->mCubes:[Lio/appium/android/apis/graphics/kube/Cube;

    add-int v22, v2, v4

    aget-object v12, v12, v22

    const/4 v9, 0x4

    invoke-virtual {v12, v9, v15}, Lio/appium/android/apis/graphics/kube/Cube;->setFaceColor(ILio/appium/android/apis/graphics/kube/GLColor;)V

    .line 113
    add-int/lit8 v4, v4, 0x1

    const/4 v9, 0x3

    goto :goto_8

    .line 112
    :cond_7
    const/4 v9, 0x4

    add-int/lit8 v2, v2, 0x9

    const/4 v9, 0x3

    goto :goto_7

    .line 116
    .end local v4    # "j":I
    :cond_8
    const/4 v2, 0x6

    :goto_9
    if-ge v2, v3, :cond_a

    .line 117
    const/4 v4, 0x0

    .restart local v4    # "j":I
    :goto_a
    const/4 v9, 0x3

    if-ge v4, v9, :cond_9

    .line 118
    iget-object v12, v0, Lio/appium/android/apis/graphics/kube/Kube;->mCubes:[Lio/appium/android/apis/graphics/kube/Cube;

    add-int v22, v2, v4

    aget-object v12, v12, v22

    const/4 v9, 0x1

    invoke-virtual {v12, v9, v14}, Lio/appium/android/apis/graphics/kube/Cube;->setFaceColor(ILio/appium/android/apis/graphics/kube/GLColor;)V

    .line 117
    add-int/lit8 v4, v4, 0x1

    goto :goto_a

    .line 116
    :cond_9
    const/4 v9, 0x1

    add-int/lit8 v2, v2, 0x9

    goto :goto_9

    .line 120
    .end local v4    # "j":I
    :cond_a
    const/4 v2, 0x0

    :goto_b
    if-ge v2, v3, :cond_c

    .line 121
    iget-object v4, v0, Lio/appium/android/apis/graphics/kube/Kube;->mCubes:[Lio/appium/android/apis/graphics/kube/Cube;

    aget-object v9, v4, v2

    if-eqz v9, :cond_b

    .line 122
    aget-object v4, v4, v2

    invoke-virtual {v1, v4}, Lio/appium/android/apis/graphics/kube/GLWorld;->addShape(Lio/appium/android/apis/graphics/kube/GLShape;)V

    .line 120
    :cond_b
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 125
    :cond_c
    new-array v3, v3, [I

    iput-object v3, v0, Lio/appium/android/apis/graphics/kube/Kube;->mPermutation:[I

    .line 126
    const/4 v2, 0x0

    :goto_c
    iget-object v3, v0, Lio/appium/android/apis/graphics/kube/Kube;->mPermutation:[I

    array-length v4, v3

    if-ge v2, v4, :cond_d

    .line 127
    aput v2, v3, v2

    .line 126
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 129
    :cond_d
    invoke-direct/range {p0 .. p0}, Lio/appium/android/apis/graphics/kube/Kube;->createLayers()V

    .line 130
    invoke-direct/range {p0 .. p0}, Lio/appium/android/apis/graphics/kube/Kube;->updateLayers()V

    .line 132
    invoke-virtual {v1}, Lio/appium/android/apis/graphics/kube/GLWorld;->generate()V

    .line 134
    return-object v1
.end method

.method private updateLayers()V
    .locals 12

    .line 155
    iget-object v0, p0, Lio/appium/android/apis/graphics/kube/Kube;->mLayers:[Lio/appium/android/apis/graphics/kube/Layer;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    .line 156
    .local v0, "layer":Lio/appium/android/apis/graphics/kube/Layer;
    iget-object v1, v0, Lio/appium/android/apis/graphics/kube/Layer;->mShapes:[Lio/appium/android/apis/graphics/kube/GLShape;

    .line 157
    .local v1, "shapes":[Lio/appium/android/apis/graphics/kube/GLShape;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    const/16 v3, 0x9

    if-ge v2, v3, :cond_0

    .line 158
    iget-object v3, p0, Lio/appium/android/apis/graphics/kube/Kube;->mCubes:[Lio/appium/android/apis/graphics/kube/Cube;

    iget-object v4, p0, Lio/appium/android/apis/graphics/kube/Kube;->mPermutation:[I

    aget v4, v4, v2

    aget-object v3, v3, v4

    aput-object v3, v1, v2

    .line 157
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 161
    :cond_0
    iget-object v4, p0, Lio/appium/android/apis/graphics/kube/Kube;->mLayers:[Lio/appium/android/apis/graphics/kube/Layer;

    const/4 v5, 0x1

    aget-object v0, v4, v5

    .line 162
    iget-object v1, v0, Lio/appium/android/apis/graphics/kube/Layer;->mShapes:[Lio/appium/android/apis/graphics/kube/GLShape;

    .line 163
    const/16 v2, 0x12

    const/4 v4, 0x0

    .local v4, "k":I
    :goto_1
    const/16 v5, 0x1b

    if-ge v2, v5, :cond_1

    .line 164
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "k":I
    .local v5, "k":I
    iget-object v6, p0, Lio/appium/android/apis/graphics/kube/Kube;->mCubes:[Lio/appium/android/apis/graphics/kube/Cube;

    iget-object v7, p0, Lio/appium/android/apis/graphics/kube/Kube;->mPermutation:[I

    aget v7, v7, v2

    aget-object v6, v6, v7

    aput-object v6, v1, v4

    .line 163
    add-int/lit8 v2, v2, 0x1

    move v4, v5

    goto :goto_1

    .line 167
    .end local v5    # "k":I
    .restart local v4    # "k":I
    :cond_1
    iget-object v6, p0, Lio/appium/android/apis/graphics/kube/Kube;->mLayers:[Lio/appium/android/apis/graphics/kube/Layer;

    const/4 v7, 0x2

    aget-object v0, v6, v7

    .line 168
    iget-object v1, v0, Lio/appium/android/apis/graphics/kube/Layer;->mShapes:[Lio/appium/android/apis/graphics/kube/GLShape;

    .line 169
    const/4 v2, 0x0

    const/4 v4, 0x0

    :goto_2
    if-ge v2, v5, :cond_3

    .line 170
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_3
    if-ge v6, v3, :cond_2

    .line 171
    add-int/lit8 v7, v4, 0x1

    .end local v4    # "k":I
    .local v7, "k":I
    iget-object v8, p0, Lio/appium/android/apis/graphics/kube/Kube;->mCubes:[Lio/appium/android/apis/graphics/kube/Cube;

    iget-object v9, p0, Lio/appium/android/apis/graphics/kube/Kube;->mPermutation:[I

    add-int v10, v2, v6

    aget v9, v9, v10

    aget-object v8, v8, v9

    aput-object v8, v1, v4

    .line 170
    add-int/lit8 v6, v6, 0x3

    move v4, v7

    goto :goto_3

    .line 169
    .end local v7    # "k":I
    .restart local v4    # "k":I
    :cond_2
    add-int/lit8 v2, v2, 0x9

    goto :goto_2

    .line 174
    .end local v6    # "j":I
    :cond_3
    iget-object v6, p0, Lio/appium/android/apis/graphics/kube/Kube;->mLayers:[Lio/appium/android/apis/graphics/kube/Layer;

    const/4 v7, 0x3

    aget-object v0, v6, v7

    .line 175
    iget-object v1, v0, Lio/appium/android/apis/graphics/kube/Layer;->mShapes:[Lio/appium/android/apis/graphics/kube/GLShape;

    .line 176
    const/4 v2, 0x2

    const/4 v4, 0x0

    :goto_4
    if-ge v2, v5, :cond_5

    .line 177
    const/4 v6, 0x0

    .restart local v6    # "j":I
    :goto_5
    if-ge v6, v3, :cond_4

    .line 178
    add-int/lit8 v8, v4, 0x1

    .end local v4    # "k":I
    .local v8, "k":I
    iget-object v9, p0, Lio/appium/android/apis/graphics/kube/Kube;->mCubes:[Lio/appium/android/apis/graphics/kube/Cube;

    iget-object v10, p0, Lio/appium/android/apis/graphics/kube/Kube;->mPermutation:[I

    add-int v11, v2, v6

    aget v10, v10, v11

    aget-object v9, v9, v10

    aput-object v9, v1, v4

    .line 177
    add-int/lit8 v6, v6, 0x3

    move v4, v8

    goto :goto_5

    .line 176
    .end local v8    # "k":I
    .restart local v4    # "k":I
    :cond_4
    add-int/lit8 v2, v2, 0x9

    goto :goto_4

    .line 181
    .end local v6    # "j":I
    :cond_5
    iget-object v6, p0, Lio/appium/android/apis/graphics/kube/Kube;->mLayers:[Lio/appium/android/apis/graphics/kube/Layer;

    const/4 v8, 0x4

    aget-object v0, v6, v8

    .line 182
    iget-object v1, v0, Lio/appium/android/apis/graphics/kube/Layer;->mShapes:[Lio/appium/android/apis/graphics/kube/GLShape;

    .line 183
    const/4 v2, 0x6

    const/4 v4, 0x0

    :goto_6
    if-ge v2, v5, :cond_7

    .line 184
    const/4 v6, 0x0

    .restart local v6    # "j":I
    :goto_7
    if-ge v6, v7, :cond_6

    .line 185
    add-int/lit8 v8, v4, 0x1

    .end local v4    # "k":I
    .restart local v8    # "k":I
    iget-object v9, p0, Lio/appium/android/apis/graphics/kube/Kube;->mCubes:[Lio/appium/android/apis/graphics/kube/Cube;

    iget-object v10, p0, Lio/appium/android/apis/graphics/kube/Kube;->mPermutation:[I

    add-int v11, v2, v6

    aget v10, v10, v11

    aget-object v9, v9, v10

    aput-object v9, v1, v4

    .line 184
    add-int/lit8 v6, v6, 0x1

    move v4, v8

    goto :goto_7

    .line 183
    .end local v8    # "k":I
    .restart local v4    # "k":I
    :cond_6
    add-int/lit8 v2, v2, 0x9

    goto :goto_6

    .line 188
    .end local v6    # "j":I
    :cond_7
    iget-object v6, p0, Lio/appium/android/apis/graphics/kube/Kube;->mLayers:[Lio/appium/android/apis/graphics/kube/Layer;

    const/4 v8, 0x5

    aget-object v0, v6, v8

    .line 189
    iget-object v1, v0, Lio/appium/android/apis/graphics/kube/Layer;->mShapes:[Lio/appium/android/apis/graphics/kube/GLShape;

    .line 190
    const/4 v2, 0x0

    const/4 v4, 0x0

    :goto_8
    if-ge v2, v5, :cond_9

    .line 191
    const/4 v6, 0x0

    .restart local v6    # "j":I
    :goto_9
    if-ge v6, v7, :cond_8

    .line 192
    add-int/lit8 v8, v4, 0x1

    .end local v4    # "k":I
    .restart local v8    # "k":I
    iget-object v9, p0, Lio/appium/android/apis/graphics/kube/Kube;->mCubes:[Lio/appium/android/apis/graphics/kube/Cube;

    iget-object v10, p0, Lio/appium/android/apis/graphics/kube/Kube;->mPermutation:[I

    add-int v11, v2, v6

    aget v10, v10, v11

    aget-object v9, v9, v10

    aput-object v9, v1, v4

    .line 191
    add-int/lit8 v6, v6, 0x1

    move v4, v8

    goto :goto_9

    .line 190
    .end local v8    # "k":I
    .restart local v4    # "k":I
    :cond_8
    add-int/lit8 v2, v2, 0x9

    goto :goto_8

    .line 195
    .end local v6    # "j":I
    :cond_9
    iget-object v6, p0, Lio/appium/android/apis/graphics/kube/Kube;->mLayers:[Lio/appium/android/apis/graphics/kube/Layer;

    const/4 v8, 0x6

    aget-object v0, v6, v8

    .line 196
    iget-object v1, v0, Lio/appium/android/apis/graphics/kube/Layer;->mShapes:[Lio/appium/android/apis/graphics/kube/GLShape;

    .line 197
    const/4 v2, 0x1

    const/4 v4, 0x0

    :goto_a
    if-ge v2, v5, :cond_b

    .line 198
    const/4 v6, 0x0

    .restart local v6    # "j":I
    :goto_b
    if-ge v6, v3, :cond_a

    .line 199
    add-int/lit8 v8, v4, 0x1

    .end local v4    # "k":I
    .restart local v8    # "k":I
    iget-object v9, p0, Lio/appium/android/apis/graphics/kube/Kube;->mCubes:[Lio/appium/android/apis/graphics/kube/Cube;

    iget-object v10, p0, Lio/appium/android/apis/graphics/kube/Kube;->mPermutation:[I

    add-int v11, v2, v6

    aget v10, v10, v11

    aget-object v9, v9, v10

    aput-object v9, v1, v4

    .line 198
    add-int/lit8 v6, v6, 0x3

    move v4, v8

    goto :goto_b

    .line 197
    .end local v8    # "k":I
    .restart local v4    # "k":I
    :cond_a
    add-int/lit8 v2, v2, 0x9

    goto :goto_a

    .line 202
    .end local v6    # "j":I
    :cond_b
    iget-object v3, p0, Lio/appium/android/apis/graphics/kube/Kube;->mLayers:[Lio/appium/android/apis/graphics/kube/Layer;

    const/4 v6, 0x7

    aget-object v0, v3, v6

    .line 203
    iget-object v1, v0, Lio/appium/android/apis/graphics/kube/Layer;->mShapes:[Lio/appium/android/apis/graphics/kube/GLShape;

    .line 204
    const/16 v2, 0x9

    const/4 v3, 0x0

    .end local v4    # "k":I
    .local v3, "k":I
    :goto_c
    const/16 v4, 0x12

    if-ge v2, v4, :cond_c

    .line 205
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "k":I
    .restart local v4    # "k":I
    iget-object v6, p0, Lio/appium/android/apis/graphics/kube/Kube;->mCubes:[Lio/appium/android/apis/graphics/kube/Cube;

    iget-object v8, p0, Lio/appium/android/apis/graphics/kube/Kube;->mPermutation:[I

    aget v8, v8, v2

    aget-object v6, v6, v8

    aput-object v6, v1, v3

    .line 204
    add-int/lit8 v2, v2, 0x1

    move v3, v4

    goto :goto_c

    .line 208
    .end local v4    # "k":I
    .restart local v3    # "k":I
    :cond_c
    iget-object v4, p0, Lio/appium/android/apis/graphics/kube/Kube;->mLayers:[Lio/appium/android/apis/graphics/kube/Layer;

    const/16 v6, 0x8

    aget-object v0, v4, v6

    .line 209
    iget-object v1, v0, Lio/appium/android/apis/graphics/kube/Layer;->mShapes:[Lio/appium/android/apis/graphics/kube/GLShape;

    .line 210
    const/4 v2, 0x3

    const/4 v3, 0x0

    :goto_d
    if-ge v2, v5, :cond_e

    .line 211
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_e
    if-ge v4, v7, :cond_d

    .line 212
    add-int/lit8 v6, v3, 0x1

    .end local v3    # "k":I
    .local v6, "k":I
    iget-object v8, p0, Lio/appium/android/apis/graphics/kube/Kube;->mCubes:[Lio/appium/android/apis/graphics/kube/Cube;

    iget-object v9, p0, Lio/appium/android/apis/graphics/kube/Kube;->mPermutation:[I

    add-int v10, v2, v4

    aget v9, v9, v10

    aget-object v8, v8, v9

    aput-object v8, v1, v3

    .line 211
    add-int/lit8 v4, v4, 0x1

    move v3, v6

    goto :goto_e

    .line 210
    .end local v6    # "k":I
    .restart local v3    # "k":I
    :cond_d
    add-int/lit8 v2, v2, 0x9

    goto :goto_d

    .line 213
    .end local v4    # "j":I
    :cond_e
    return-void
.end method


# virtual methods
.method public animate()V
    .locals 8

    .line 245
    iget-object v0, p0, Lio/appium/android/apis/graphics/kube/Kube;->mRenderer:Lio/appium/android/apis/graphics/kube/KubeRenderer;

    invoke-virtual {v0}, Lio/appium/android/apis/graphics/kube/KubeRenderer;->getAngle()F

    move-result v1

    const v2, 0x3f99999a    # 1.2f

    add-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lio/appium/android/apis/graphics/kube/KubeRenderer;->setAngle(F)V

    .line 247
    iget-object v0, p0, Lio/appium/android/apis/graphics/kube/Kube;->mCurrentLayer:Lio/appium/android/apis/graphics/kube/Layer;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 248
    iget-object v0, p0, Lio/appium/android/apis/graphics/kube/Kube;->mRandom:Ljava/util/Random;

    const/16 v2, 0x9

    invoke-virtual {v0, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    .line 249
    .local v0, "layerID":I
    iget-object v2, p0, Lio/appium/android/apis/graphics/kube/Kube;->mLayers:[Lio/appium/android/apis/graphics/kube/Layer;

    aget-object v2, v2, v0

    iput-object v2, p0, Lio/appium/android/apis/graphics/kube/Kube;->mCurrentLayer:Lio/appium/android/apis/graphics/kube/Layer;

    .line 250
    sget-object v2, Lio/appium/android/apis/graphics/kube/Kube;->mLayerPermutations:[[I

    aget-object v2, v2, v0

    iput-object v2, p0, Lio/appium/android/apis/graphics/kube/Kube;->mCurrentLayerPermutation:[I

    .line 251
    iget-object v2, p0, Lio/appium/android/apis/graphics/kube/Kube;->mCurrentLayer:Lio/appium/android/apis/graphics/kube/Layer;

    invoke-virtual {v2}, Lio/appium/android/apis/graphics/kube/Layer;->startAnimation()V

    .line 252
    iget-object v2, p0, Lio/appium/android/apis/graphics/kube/Kube;->mRandom:Ljava/util/Random;

    invoke-virtual {v2}, Ljava/util/Random;->nextBoolean()Z

    move-result v2

    .line 253
    .local v2, "direction":Z
    iget-object v3, p0, Lio/appium/android/apis/graphics/kube/Kube;->mRandom:Ljava/util/Random;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    .line 255
    .local v3, "count":I
    const/4 v3, 0x1

    .line 256
    const/4 v2, 0x0

    .line 257
    iput v1, p0, Lio/appium/android/apis/graphics/kube/Kube;->mCurrentAngle:F

    .line 258
    const/high16 v4, 0x40000000    # 2.0f

    const v5, 0x40490fdb    # (float)Math.PI

    if-eqz v2, :cond_0

    .line 259
    const v6, 0x3d80adfd

    iput v6, p0, Lio/appium/android/apis/graphics/kube/Kube;->mAngleIncrement:F

    .line 260
    iget v6, p0, Lio/appium/android/apis/graphics/kube/Kube;->mCurrentAngle:F

    int-to-float v7, v3

    mul-float v7, v7, v5

    div-float/2addr v7, v4

    add-float/2addr v6, v7

    iput v6, p0, Lio/appium/android/apis/graphics/kube/Kube;->mEndAngle:F

    goto :goto_0

    .line 262
    :cond_0
    const v6, -0x427f5203

    iput v6, p0, Lio/appium/android/apis/graphics/kube/Kube;->mAngleIncrement:F

    .line 263
    iget v6, p0, Lio/appium/android/apis/graphics/kube/Kube;->mCurrentAngle:F

    int-to-float v7, v3

    mul-float v7, v7, v5

    div-float/2addr v7, v4

    sub-float/2addr v6, v7

    iput v6, p0, Lio/appium/android/apis/graphics/kube/Kube;->mEndAngle:F

    .line 267
    .end local v0    # "layerID":I
    .end local v2    # "direction":Z
    .end local v3    # "count":I
    :cond_1
    :goto_0
    iget v0, p0, Lio/appium/android/apis/graphics/kube/Kube;->mCurrentAngle:F

    iget v2, p0, Lio/appium/android/apis/graphics/kube/Kube;->mAngleIncrement:F

    add-float/2addr v0, v2

    iput v0, p0, Lio/appium/android/apis/graphics/kube/Kube;->mCurrentAngle:F

    .line 269
    cmpl-float v0, v2, v1

    if-lez v0, :cond_2

    iget v0, p0, Lio/appium/android/apis/graphics/kube/Kube;->mCurrentAngle:F

    iget v2, p0, Lio/appium/android/apis/graphics/kube/Kube;->mEndAngle:F

    cmpl-float v0, v0, v2

    if-gez v0, :cond_3

    :cond_2
    iget v0, p0, Lio/appium/android/apis/graphics/kube/Kube;->mAngleIncrement:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_5

    iget v0, p0, Lio/appium/android/apis/graphics/kube/Kube;->mCurrentAngle:F

    iget v1, p0, Lio/appium/android/apis/graphics/kube/Kube;->mEndAngle:F

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_5

    .line 271
    :cond_3
    iget-object v0, p0, Lio/appium/android/apis/graphics/kube/Kube;->mCurrentLayer:Lio/appium/android/apis/graphics/kube/Layer;

    iget v1, p0, Lio/appium/android/apis/graphics/kube/Kube;->mEndAngle:F

    invoke-virtual {v0, v1}, Lio/appium/android/apis/graphics/kube/Layer;->setAngle(F)V

    .line 272
    iget-object v0, p0, Lio/appium/android/apis/graphics/kube/Kube;->mCurrentLayer:Lio/appium/android/apis/graphics/kube/Layer;

    invoke-virtual {v0}, Lio/appium/android/apis/graphics/kube/Layer;->endAnimation()V

    .line 273
    const/4 v0, 0x0

    iput-object v0, p0, Lio/appium/android/apis/graphics/kube/Kube;->mCurrentLayer:Lio/appium/android/apis/graphics/kube/Layer;

    .line 276
    const/16 v0, 0x1b

    new-array v1, v0, [I

    .line 277
    .local v1, "newPermutation":[I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v0, :cond_4

    .line 278
    iget-object v3, p0, Lio/appium/android/apis/graphics/kube/Kube;->mPermutation:[I

    iget-object v4, p0, Lio/appium/android/apis/graphics/kube/Kube;->mCurrentLayerPermutation:[I

    aget v4, v4, v2

    aget v3, v3, v4

    aput v3, v1, v2

    .line 277
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 281
    .end local v2    # "i":I
    :cond_4
    iput-object v1, p0, Lio/appium/android/apis/graphics/kube/Kube;->mPermutation:[I

    .line 282
    invoke-direct {p0}, Lio/appium/android/apis/graphics/kube/Kube;->updateLayers()V

    .line 284
    .end local v1    # "newPermutation":[I
    goto :goto_2

    .line 285
    :cond_5
    iget-object v0, p0, Lio/appium/android/apis/graphics/kube/Kube;->mCurrentLayer:Lio/appium/android/apis/graphics/kube/Layer;

    iget v1, p0, Lio/appium/android/apis/graphics/kube/Kube;->mCurrentAngle:F

    invoke-virtual {v0, v1}, Lio/appium/android/apis/graphics/kube/Layer;->setAngle(F)V

    .line 287
    :goto_2
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 218
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 221
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lio/appium/android/apis/graphics/kube/Kube;->requestWindowFeature(I)Z

    .line 223
    new-instance v0, Landroid/opengl/GLSurfaceView;

    invoke-virtual {p0}, Lio/appium/android/apis/graphics/kube/Kube;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lio/appium/android/apis/graphics/kube/Kube;->mView:Landroid/opengl/GLSurfaceView;

    .line 224
    new-instance v0, Lio/appium/android/apis/graphics/kube/KubeRenderer;

    invoke-direct {p0}, Lio/appium/android/apis/graphics/kube/Kube;->makeGLWorld()Lio/appium/android/apis/graphics/kube/GLWorld;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lio/appium/android/apis/graphics/kube/KubeRenderer;-><init>(Lio/appium/android/apis/graphics/kube/GLWorld;Lio/appium/android/apis/graphics/kube/KubeRenderer$AnimationCallback;)V

    iput-object v0, p0, Lio/appium/android/apis/graphics/kube/Kube;->mRenderer:Lio/appium/android/apis/graphics/kube/KubeRenderer;

    .line 225
    iget-object v0, p0, Lio/appium/android/apis/graphics/kube/Kube;->mView:Landroid/opengl/GLSurfaceView;

    iget-object v1, p0, Lio/appium/android/apis/graphics/kube/Kube;->mRenderer:Lio/appium/android/apis/graphics/kube/KubeRenderer;

    invoke-virtual {v0, v1}, Landroid/opengl/GLSurfaceView;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    .line 226
    iget-object v0, p0, Lio/appium/android/apis/graphics/kube/Kube;->mView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {p0, v0}, Lio/appium/android/apis/graphics/kube/Kube;->setContentView(Landroid/view/View;)V

    .line 227
    return-void
.end method

.method protected onPause()V
    .locals 1

    .line 239
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 240
    iget-object v0, p0, Lio/appium/android/apis/graphics/kube/Kube;->mView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView;->onPause()V

    .line 241
    return-void
.end method

.method protected onResume()V
    .locals 1

    .line 232
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 233
    iget-object v0, p0, Lio/appium/android/apis/graphics/kube/Kube;->mView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView;->onResume()V

    .line 234
    return-void
.end method
