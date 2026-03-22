.class public Lio/appium/android/apis/graphics/spritetext/LabelMaker;
.super Ljava/lang/Object;
.source "LabelMaker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/appium/android/apis/graphics/spritetext/LabelMaker$Label;
    }
.end annotation


# static fields
.field private static final STATE_ADDING:I = 0x2

.field private static final STATE_DRAWING:I = 0x3

.field private static final STATE_INITIALIZED:I = 0x1

.field private static final STATE_NEW:I


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private mCanvas:Landroid/graphics/Canvas;

.field private mClearPaint:Landroid/graphics/Paint;

.field private mFullColor:Z

.field private mLabels:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lio/appium/android/apis/graphics/spritetext/LabelMaker$Label;",
            ">;"
        }
    .end annotation
.end field

.field private mLineHeight:I

.field private mState:I

.field private mStrikeHeight:I

.field private mStrikeWidth:I

.field private mTexelHeight:F

.field private mTexelWidth:F

.field private mTextureID:I

.field private mU:I

.field private mV:I


# direct methods
.method public constructor <init>(ZII)V
    .locals 4
    .param p1, "fullColor"    # Z
    .param p2, "strikeWidth"    # I
    .param p3, "strikeHeight"    # I

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 404
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/appium/android/apis/graphics/spritetext/LabelMaker;->mLabels:Ljava/util/ArrayList;

    .line 63
    iput-boolean p1, p0, Lio/appium/android/apis/graphics/spritetext/LabelMaker;->mFullColor:Z

    .line 64
    iput p2, p0, Lio/appium/android/apis/graphics/spritetext/LabelMaker;->mStrikeWidth:I

    .line 65
    iput p3, p0, Lio/appium/android/apis/graphics/spritetext/LabelMaker;->mStrikeHeight:I

    .line 66
    iget v0, p0, Lio/appium/android/apis/graphics/spritetext/LabelMaker;->mStrikeWidth:I

    int-to-double v0, v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    div-double v0, v2, v0

    double-to-float v0, v0

    iput v0, p0, Lio/appium/android/apis/graphics/spritetext/LabelMaker;->mTexelWidth:F

    .line 67
    iget v0, p0, Lio/appium/android/apis/graphics/spritetext/LabelMaker;->mStrikeHeight:I

    int-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v2, v0

    double-to-float v0, v2

    iput v0, p0, Lio/appium/android/apis/graphics/spritetext/LabelMaker;->mTexelHeight:F

    .line 68
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lio/appium/android/apis/graphics/spritetext/LabelMaker;->mClearPaint:Landroid/graphics/Paint;

    .line 69
    iget-object v0, p0, Lio/appium/android/apis/graphics/spritetext/LabelMaker;->mClearPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 70
    iget-object v0, p0, Lio/appium/android/apis/graphics/spritetext/LabelMaker;->mClearPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 71
    iput v1, p0, Lio/appium/android/apis/graphics/spritetext/LabelMaker;->mState:I

    .line 72
    return-void
.end method

.method private checkState(II)V
    .locals 2
    .param p1, "oldState"    # I
    .param p2, "newState"    # I

    .line 364
    iget v0, p0, Lio/appium/android/apis/graphics/spritetext/LabelMaker;->mState:I

    if-ne v0, p1, :cond_0

    .line 367
    iput p2, p0, Lio/appium/android/apis/graphics/spritetext/LabelMaker;->mState:I

    .line 368
    return-void

    .line 365
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t call this method now."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public add(Ljavax/microedition/khronos/opengles/GL10;Landroid/graphics/drawable/Drawable;II)I
    .locals 7
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p3, "minWidth"    # I
    .param p4, "minHeight"    # I

    .line 163
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v5, p3

    move v6, p4

    invoke-virtual/range {v0 .. v6}, Lio/appium/android/apis/graphics/spritetext/LabelMaker;->add(Ljavax/microedition/khronos/opengles/GL10;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Landroid/graphics/Paint;II)I

    move-result v0

    return v0
.end method

.method public add(Ljavax/microedition/khronos/opengles/GL10;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Landroid/graphics/Paint;)I
    .locals 7
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2, "background"    # Landroid/graphics/drawable/Drawable;
    .param p3, "text"    # Ljava/lang/String;
    .param p4, "textPaint"    # Landroid/graphics/Paint;

    .line 155
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v6}, Lio/appium/android/apis/graphics/spritetext/LabelMaker;->add(Ljavax/microedition/khronos/opengles/GL10;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Landroid/graphics/Paint;II)I

    move-result v0

    return v0
.end method

.method public add(Ljavax/microedition/khronos/opengles/GL10;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Landroid/graphics/Paint;II)I
    .locals 37
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2, "background"    # Landroid/graphics/drawable/Drawable;
    .param p3, "text"    # Ljava/lang/String;
    .param p4, "textPaint"    # Landroid/graphics/Paint;
    .param p5, "minWidth"    # I
    .param p6, "minHeight"    # I

    .line 176
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    const/4 v4, 0x2

    invoke-direct {v0, v4, v4}, Lio/appium/android/apis/graphics/spritetext/LabelMaker;->checkState(II)V

    .line 177
    const/4 v5, 0x0

    if-eqz v1, :cond_0

    const/4 v7, 0x1

    goto :goto_0

    :cond_0
    const/4 v7, 0x0

    .line 178
    .local v7, "drawBackground":Z
    :goto_0
    if-eqz v2, :cond_1

    if-eqz v3, :cond_1

    const/4 v5, 0x1

    .line 180
    .local v5, "drawText":Z
    :cond_1
    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    .line 181
    .local v8, "padding":Landroid/graphics/Rect;
    if-eqz v7, :cond_2

    .line 182
    invoke-virtual {v1, v8}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 183
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v9

    move/from16 v10, p5

    invoke-static {v10, v9}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 184
    .end local p5    # "minWidth":I
    .local v9, "minWidth":I
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v10

    move/from16 v11, p6

    invoke-static {v11, v10}, Ljava/lang/Math;->max(II)I

    move-result v10

    goto :goto_1

    .line 181
    .end local v9    # "minWidth":I
    .restart local p5    # "minWidth":I
    :cond_2
    move/from16 v10, p5

    move/from16 v11, p6

    move v9, v10

    move v10, v11

    .line 187
    .end local p5    # "minWidth":I
    .end local p6    # "minHeight":I
    .restart local v9    # "minWidth":I
    .local v10, "minHeight":I
    :goto_1
    const/4 v11, 0x0

    .line 188
    .local v11, "ascent":I
    const/4 v12, 0x0

    .line 189
    .local v12, "descent":I
    const/4 v13, 0x0

    .line 190
    .local v13, "measuredTextWidth":I
    if-eqz v5, :cond_3

    .line 192
    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Paint;->ascent()F

    move-result v14

    neg-float v14, v14

    float-to-double v14, v14

    invoke-static {v14, v15}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v14

    double-to-int v11, v14

    .line 193
    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Paint;->descent()F

    move-result v14

    float-to-double v14, v14

    invoke-static {v14, v15}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v14

    double-to-int v12, v14

    .line 194
    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v14

    float-to-double v14, v14

    invoke-static {v14, v15}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v14

    double-to-int v13, v14

    .line 196
    :cond_3
    add-int v14, v11, v12

    .line 197
    .local v14, "textHeight":I
    iget v15, v0, Lio/appium/android/apis/graphics/spritetext/LabelMaker;->mStrikeWidth:I

    invoke-static {v15, v13}, Ljava/lang/Math;->min(II)I

    move-result v15

    .line 199
    .local v15, "textWidth":I
    iget v6, v8, Landroid/graphics/Rect;->top:I

    iget v4, v8, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v6, v4

    .line 200
    .local v6, "padHeight":I
    iget v4, v8, Landroid/graphics/Rect;->left:I

    move/from16 p5, v12

    .end local v12    # "descent":I
    .local p5, "descent":I
    iget v12, v8, Landroid/graphics/Rect;->right:I

    add-int/2addr v4, v12

    .line 201
    .local v4, "padWidth":I
    add-int v12, v14, v6

    invoke-static {v10, v12}, Ljava/lang/Math;->max(II)I

    move-result v12

    .line 202
    .local v12, "height":I
    move/from16 p6, v10

    .end local v10    # "minHeight":I
    .restart local p6    # "minHeight":I
    add-int v10, v15, v4

    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v10

    .line 203
    .local v10, "width":I
    sub-int v17, v12, v6

    .line 204
    .local v17, "effectiveTextHeight":I
    sub-int v18, v10, v4

    .line 206
    .local v18, "effectiveTextWidth":I
    sub-int v19, v17, v14

    const/16 v16, 0x2

    div-int/lit8 v19, v19, 0x2

    .line 207
    .local v19, "centerOffsetHeight":I
    sub-int v20, v18, v15

    div-int/lit8 v20, v20, 0x2

    .line 213
    .local v20, "centerOffsetWidth":I
    move/from16 v16, v4

    .end local v4    # "padWidth":I
    .local v16, "padWidth":I
    iget v4, v0, Lio/appium/android/apis/graphics/spritetext/LabelMaker;->mU:I

    .line 214
    .local v4, "u":I
    move/from16 v21, v6

    .end local v6    # "padHeight":I
    .local v21, "padHeight":I
    iget v6, v0, Lio/appium/android/apis/graphics/spritetext/LabelMaker;->mV:I

    .line 215
    .local v6, "v":I
    move/from16 v22, v9

    .end local v9    # "minWidth":I
    .local v22, "minWidth":I
    iget v9, v0, Lio/appium/android/apis/graphics/spritetext/LabelMaker;->mLineHeight:I

    .line 217
    .local v9, "lineHeight":I
    move/from16 v23, v13

    .end local v13    # "measuredTextWidth":I
    .local v23, "measuredTextWidth":I
    iget v13, v0, Lio/appium/android/apis/graphics/spritetext/LabelMaker;->mStrikeWidth:I

    if-le v10, v13, :cond_4

    .line 218
    iget v10, v0, Lio/appium/android/apis/graphics/spritetext/LabelMaker;->mStrikeWidth:I

    .line 222
    :cond_4
    add-int v13, v4, v10

    move/from16 v24, v4

    .end local v4    # "u":I
    .local v24, "u":I
    iget v4, v0, Lio/appium/android/apis/graphics/spritetext/LabelMaker;->mStrikeWidth:I

    if-le v13, v4, :cond_5

    .line 224
    const/4 v4, 0x0

    .line 225
    .end local v24    # "u":I
    .restart local v4    # "u":I
    add-int/2addr v6, v9

    .line 226
    const/4 v9, 0x0

    goto :goto_2

    .line 222
    .end local v4    # "u":I
    .restart local v24    # "u":I
    :cond_5
    move/from16 v4, v24

    .line 228
    .end local v24    # "u":I
    .restart local v4    # "u":I
    :goto_2
    invoke-static {v9, v12}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 229
    add-int v13, v6, v9

    move/from16 v32, v14

    .end local v14    # "textHeight":I
    .local v32, "textHeight":I
    iget v14, v0, Lio/appium/android/apis/graphics/spritetext/LabelMaker;->mStrikeHeight:I

    if-gt v13, v14, :cond_8

    .line 233
    add-int v13, v4, v10

    .line 234
    .local v13, "u2":I
    add-int v14, v6, v11

    .line 235
    .local v14, "vBase":I
    add-int v33, v6, v12

    .line 237
    .local v33, "v2":I
    if-eqz v7, :cond_6

    .line 238
    move/from16 v34, v7

    .end local v7    # "drawBackground":Z
    .local v34, "drawBackground":Z
    add-int v7, v4, v10

    move/from16 v35, v13

    .end local v13    # "u2":I
    .local v35, "u2":I
    add-int v13, v6, v12

    invoke-virtual {v1, v4, v6, v7, v13}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 239
    iget-object v7, v0, Lio/appium/android/apis/graphics/spritetext/LabelMaker;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v1, v7}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_3

    .line 237
    .end local v34    # "drawBackground":Z
    .end local v35    # "u2":I
    .restart local v7    # "drawBackground":Z
    .restart local v13    # "u2":I
    :cond_6
    move/from16 v34, v7

    move/from16 v35, v13

    .line 242
    .end local v7    # "drawBackground":Z
    .end local v13    # "u2":I
    .restart local v34    # "drawBackground":Z
    .restart local v35    # "u2":I
    :goto_3
    if-eqz v5, :cond_7

    .line 243
    iget-object v7, v0, Lio/appium/android/apis/graphics/spritetext/LabelMaker;->mCanvas:Landroid/graphics/Canvas;

    iget v13, v8, Landroid/graphics/Rect;->left:I

    add-int/2addr v13, v4

    add-int v13, v13, v20

    int-to-float v13, v13

    iget v1, v8, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, v14

    add-int v1, v1, v19

    int-to-float v1, v1

    invoke-virtual {v7, v2, v13, v1, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 250
    :cond_7
    add-int v1, v4, v10

    iput v1, v0, Lio/appium/android/apis/graphics/spritetext/LabelMaker;->mU:I

    .line 251
    iput v6, v0, Lio/appium/android/apis/graphics/spritetext/LabelMaker;->mV:I

    .line 252
    iput v9, v0, Lio/appium/android/apis/graphics/spritetext/LabelMaker;->mLineHeight:I

    .line 253
    iget-object v1, v0, Lio/appium/android/apis/graphics/spritetext/LabelMaker;->mLabels:Ljava/util/ArrayList;

    new-instance v7, Lio/appium/android/apis/graphics/spritetext/LabelMaker$Label;

    int-to-float v13, v10

    int-to-float v2, v12

    int-to-float v3, v11

    add-int v29, v6, v12

    move/from16 v36, v5

    .end local v5    # "drawText":Z
    .local v36, "drawText":Z
    neg-int v5, v12

    move-object/from16 v24, v7

    move/from16 v25, v13

    move/from16 v26, v2

    move/from16 v27, v3

    move/from16 v28, v4

    move/from16 v30, v10

    move/from16 v31, v5

    invoke-direct/range {v24 .. v31}, Lio/appium/android/apis/graphics/spritetext/LabelMaker$Label;-><init>(FFFIIII)V

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 255
    iget-object v1, v0, Lio/appium/android/apis/graphics/spritetext/LabelMaker;->mLabels:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    return v1

    .line 230
    .end local v14    # "vBase":I
    .end local v33    # "v2":I
    .end local v34    # "drawBackground":Z
    .end local v35    # "u2":I
    .end local v36    # "drawText":Z
    .restart local v5    # "drawText":Z
    .restart local v7    # "drawBackground":Z
    :cond_8
    move/from16 v36, v5

    move/from16 v34, v7

    .end local v5    # "drawText":Z
    .end local v7    # "drawBackground":Z
    .restart local v34    # "drawBackground":Z
    .restart local v36    # "drawText":Z
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Out of texture space."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public add(Ljavax/microedition/khronos/opengles/GL10;Ljava/lang/String;Landroid/graphics/Paint;)I
    .locals 1
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2, "text"    # Ljava/lang/String;
    .param p3, "textPaint"    # Landroid/graphics/Paint;

    .line 143
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2, p3}, Lio/appium/android/apis/graphics/spritetext/LabelMaker;->add(Ljavax/microedition/khronos/opengles/GL10;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Landroid/graphics/Paint;)I

    move-result v0

    return v0
.end method

.method public beginAdding(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 4
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;

    .line 122
    const/4 v0, 0x1

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lio/appium/android/apis/graphics/spritetext/LabelMaker;->checkState(II)V

    .line 123
    iget-object v0, p0, Lio/appium/android/apis/graphics/spritetext/LabelMaker;->mLabels:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 124
    const/4 v0, 0x0

    iput v0, p0, Lio/appium/android/apis/graphics/spritetext/LabelMaker;->mU:I

    .line 125
    iput v0, p0, Lio/appium/android/apis/graphics/spritetext/LabelMaker;->mV:I

    .line 126
    iput v0, p0, Lio/appium/android/apis/graphics/spritetext/LabelMaker;->mLineHeight:I

    .line 127
    iget-boolean v1, p0, Lio/appium/android/apis/graphics/spritetext/LabelMaker;->mFullColor:Z

    if-eqz v1, :cond_0

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    goto :goto_0

    :cond_0
    sget-object v1, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    .line 129
    .local v1, "config":Landroid/graphics/Bitmap$Config;
    :goto_0
    iget v2, p0, Lio/appium/android/apis/graphics/spritetext/LabelMaker;->mStrikeWidth:I

    iget v3, p0, Lio/appium/android/apis/graphics/spritetext/LabelMaker;->mStrikeHeight:I

    invoke-static {v2, v3, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lio/appium/android/apis/graphics/spritetext/LabelMaker;->mBitmap:Landroid/graphics/Bitmap;

    .line 130
    new-instance v2, Landroid/graphics/Canvas;

    iget-object v3, p0, Lio/appium/android/apis/graphics/spritetext/LabelMaker;->mBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v2, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v2, p0, Lio/appium/android/apis/graphics/spritetext/LabelMaker;->mCanvas:Landroid/graphics/Canvas;

    .line 131
    iget-object v2, p0, Lio/appium/android/apis/graphics/spritetext/LabelMaker;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v0}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 132
    return-void
.end method

.method public beginDrawing(Ljavax/microedition/khronos/opengles/GL10;FF)V
    .locals 8
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2, "viewWidth"    # F
    .param p3, "viewHeight"    # F

    .line 313
    const/4 v0, 0x1

    const/4 v1, 0x3

    invoke-direct {p0, v0, v1}, Lio/appium/android/apis/graphics/spritetext/LabelMaker;->checkState(II)V

    .line 314
    iget v0, p0, Lio/appium/android/apis/graphics/spritetext/LabelMaker;->mTextureID:I

    const/16 v1, 0xde1

    invoke-interface {p1, v1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glBindTexture(II)V

    .line 315
    const/16 v0, 0x1d00

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glShadeModel(I)V

    .line 316
    const/16 v0, 0xbe2

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    .line 317
    const/16 v0, 0x302

    const/16 v1, 0x303

    invoke-interface {p1, v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glBlendFunc(II)V

    .line 318
    const/high16 v0, 0x10000

    invoke-interface {p1, v0, v0, v0, v0}, Ljavax/microedition/khronos/opengles/GL10;->glColor4x(IIII)V

    .line 319
    const/16 v0, 0x1701

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glMatrixMode(I)V

    .line 320
    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glPushMatrix()V

    .line 321
    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    .line 322
    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    move-object v1, p1

    move v3, p2

    move v5, p3

    invoke-interface/range {v1 .. v7}, Ljavax/microedition/khronos/opengles/GL10;->glOrthof(FFFFFF)V

    .line 323
    const/16 v0, 0x1700

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glMatrixMode(I)V

    .line 324
    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glPushMatrix()V

    .line 325
    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    .line 327
    const/high16 v0, 0x3ec00000    # 0.375f

    const/4 v1, 0x0

    invoke-interface {p1, v0, v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    .line 328
    return-void
.end method

.method public draw(Ljavax/microedition/khronos/opengles/GL10;FFI)V
    .locals 15
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "labelID"    # I

    .line 340
    move-object v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x3

    invoke-direct {p0, v2, v2}, Lio/appium/android/apis/graphics/spritetext/LabelMaker;->checkState(II)V

    .line 341
    iget-object v2, v0, Lio/appium/android/apis/graphics/spritetext/LabelMaker;->mLabels:Ljava/util/ArrayList;

    move/from16 v3, p4

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/appium/android/apis/graphics/spritetext/LabelMaker$Label;

    .line 342
    .local v2, "label":Lio/appium/android/apis/graphics/spritetext/LabelMaker$Label;
    const/16 v4, 0xde1

    invoke-interface {v1, v4}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    .line 343
    move-object v5, v1

    check-cast v5, Ljavax/microedition/khronos/opengles/GL11;

    iget-object v6, v2, Lio/appium/android/apis/graphics/spritetext/LabelMaker$Label;->mCrop:[I

    const v7, 0x8b9d

    const/4 v8, 0x0

    invoke-interface {v5, v4, v7, v6, v8}, Ljavax/microedition/khronos/opengles/GL11;->glTexParameteriv(II[II)V

    .line 345
    move-object v9, v1

    check-cast v9, Ljavax/microedition/khronos/opengles/GL11Ext;

    move/from16 v4, p2

    float-to-int v10, v4

    move/from16 v5, p3

    float-to-int v11, v5

    iget v6, v2, Lio/appium/android/apis/graphics/spritetext/LabelMaker$Label;->width:F

    float-to-int v13, v6

    iget v6, v2, Lio/appium/android/apis/graphics/spritetext/LabelMaker$Label;->height:F

    float-to-int v14, v6

    const/4 v12, 0x0

    invoke-interface/range {v9 .. v14}, Ljavax/microedition/khronos/opengles/GL11Ext;->glDrawTexiOES(IIIII)V

    .line 347
    return-void
.end method

.method public endAdding(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 3
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;

    .line 264
    const/4 v0, 0x2

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lio/appium/android/apis/graphics/spritetext/LabelMaker;->checkState(II)V

    .line 265
    iget v0, p0, Lio/appium/android/apis/graphics/spritetext/LabelMaker;->mTextureID:I

    const/16 v1, 0xde1

    invoke-interface {p1, v1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glBindTexture(II)V

    .line 266
    iget-object v0, p0, Lio/appium/android/apis/graphics/spritetext/LabelMaker;->mBitmap:Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    invoke-static {v1, v2, v0, v2}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    .line 268
    iget-object v0, p0, Lio/appium/android/apis/graphics/spritetext/LabelMaker;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 269
    const/4 v0, 0x0

    iput-object v0, p0, Lio/appium/android/apis/graphics/spritetext/LabelMaker;->mBitmap:Landroid/graphics/Bitmap;

    .line 270
    iput-object v0, p0, Lio/appium/android/apis/graphics/spritetext/LabelMaker;->mCanvas:Landroid/graphics/Canvas;

    .line 271
    return-void
.end method

.method public endDrawing(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 2
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;

    .line 355
    const/4 v0, 0x3

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lio/appium/android/apis/graphics/spritetext/LabelMaker;->checkState(II)V

    .line 356
    const/16 v0, 0xbe2

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    .line 357
    const/16 v0, 0x1701

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glMatrixMode(I)V

    .line 358
    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glPopMatrix()V

    .line 359
    const/16 v0, 0x1700

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glMatrixMode(I)V

    .line 360
    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glPopMatrix()V

    .line 361
    return-void
.end method

.method public getBaseline(I)F
    .locals 1
    .param p1, "labelID"    # I

    .line 302
    iget-object v0, p0, Lio/appium/android/apis/graphics/spritetext/LabelMaker;->mLabels:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/appium/android/apis/graphics/spritetext/LabelMaker$Label;

    iget v0, v0, Lio/appium/android/apis/graphics/spritetext/LabelMaker$Label;->baseline:F

    return v0
.end method

.method public getHeight(I)F
    .locals 1
    .param p1, "labelID"    # I

    .line 290
    iget-object v0, p0, Lio/appium/android/apis/graphics/spritetext/LabelMaker;->mLabels:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/appium/android/apis/graphics/spritetext/LabelMaker$Label;

    iget v0, v0, Lio/appium/android/apis/graphics/spritetext/LabelMaker$Label;->height:F

    return v0
.end method

.method public getWidth(I)F
    .locals 1
    .param p1, "labelID"    # I

    .line 280
    iget-object v0, p0, Lio/appium/android/apis/graphics/spritetext/LabelMaker;->mLabels:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/appium/android/apis/graphics/spritetext/LabelMaker$Label;

    iget v0, v0, Lio/appium/android/apis/graphics/spritetext/LabelMaker$Label;->width:F

    return v0
.end method

.method public initialize(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 4
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;

    .line 81
    const/4 v0, 0x1

    iput v0, p0, Lio/appium/android/apis/graphics/spritetext/LabelMaker;->mState:I

    .line 82
    new-array v1, v0, [I

    .line 83
    .local v1, "textures":[I
    const/4 v2, 0x0

    invoke-interface {p1, v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glGenTextures(I[II)V

    .line 84
    aget v0, v1, v2

    iput v0, p0, Lio/appium/android/apis/graphics/spritetext/LabelMaker;->mTextureID:I

    .line 85
    iget v0, p0, Lio/appium/android/apis/graphics/spritetext/LabelMaker;->mTextureID:I

    const/16 v2, 0xde1

    invoke-interface {p1, v2, v0}, Ljavax/microedition/khronos/opengles/GL10;->glBindTexture(II)V

    .line 88
    const/high16 v0, 0x46180000    # 9728.0f

    const/16 v3, 0x2801

    invoke-interface {p1, v2, v3, v0}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterf(IIF)V

    .line 90
    const/16 v3, 0x2800

    invoke-interface {p1, v2, v3, v0}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterf(IIF)V

    .line 93
    const v0, 0x47012f00    # 33071.0f

    const/16 v3, 0x2802

    invoke-interface {p1, v2, v3, v0}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterf(IIF)V

    .line 95
    const/16 v3, 0x2803

    invoke-interface {p1, v2, v3, v0}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterf(IIF)V

    .line 98
    const/16 v0, 0x2300

    const/16 v2, 0x2200

    const v3, 0x45f00800    # 7681.0f

    invoke-interface {p1, v0, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glTexEnvf(IIF)V

    .line 100
    return-void
.end method

.method public shutdown(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 4
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;

    .line 106
    if-eqz p1, :cond_0

    .line 107
    iget v0, p0, Lio/appium/android/apis/graphics/spritetext/LabelMaker;->mState:I

    if-lez v0, :cond_0

    .line 108
    const/4 v0, 0x1

    new-array v1, v0, [I

    .line 109
    .local v1, "textures":[I
    iget v2, p0, Lio/appium/android/apis/graphics/spritetext/LabelMaker;->mTextureID:I

    const/4 v3, 0x0

    aput v2, v1, v3

    .line 110
    invoke-interface {p1, v0, v1, v3}, Ljavax/microedition/khronos/opengles/GL10;->glDeleteTextures(I[II)V

    .line 111
    iput v3, p0, Lio/appium/android/apis/graphics/spritetext/LabelMaker;->mState:I

    .line 114
    .end local v1    # "textures":[I
    :cond_0
    return-void
.end method
