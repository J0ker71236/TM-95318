.class public Lio/appium/android/apis/graphics/PictureLayout;
.super Landroid/view/ViewGroup;
.source "PictureLayout.java"


# instance fields
.field private final mPicture:Landroid/graphics/Picture;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 33
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 30
    new-instance v0, Landroid/graphics/Picture;

    invoke-direct {v0}, Landroid/graphics/Picture;-><init>()V

    iput-object v0, p0, Lio/appium/android/apis/graphics/PictureLayout;->mPicture:Landroid/graphics/Picture;

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 37
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    new-instance v0, Landroid/graphics/Picture;

    invoke-direct {v0}, Landroid/graphics/Picture;-><init>()V

    iput-object v0, p0, Lio/appium/android/apis/graphics/PictureLayout;->mPicture:Landroid/graphics/Picture;

    .line 38
    return-void
.end method

.method private drawPict(Landroid/graphics/Canvas;IIIIFF)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "w"    # I
    .param p5, "h"    # I
    .param p6, "sx"    # F
    .param p7, "sy"    # F

    .line 110
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 111
    int-to-float v0, p2

    int-to-float v1, p3

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 112
    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0, p4, p5}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 113
    const/high16 v0, 0x3f000000    # 0.5f

    invoke-virtual {p1, v0, v0}, Landroid/graphics/Canvas;->scale(FF)V

    .line 114
    int-to-float v0, p4

    int-to-float v1, p5

    invoke-virtual {p1, p6, p7, v0, v1}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 115
    iget-object v0, p0, Lio/appium/android/apis/graphics/PictureLayout;->mPicture:Landroid/graphics/Picture;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawPicture(Landroid/graphics/Picture;)V

    .line 116
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 117
    return-void
.end method


# virtual methods
.method public addView(Landroid/view/View;)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;

    .line 42
    invoke-virtual {p0}, Lio/appium/android/apis/graphics/PictureLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    .line 46
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 47
    return-void

    .line 43
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "PictureLayout can host only one direct child"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addView(Landroid/view/View;I)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I

    .line 51
    invoke-virtual {p0}, Lio/appium/android/apis/graphics/PictureLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    .line 55
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 56
    return-void

    .line 52
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "PictureLayout can host only one direct child"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I
    .param p3, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .line 69
    invoke-virtual {p0}, Lio/appium/android/apis/graphics/PictureLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    .line 73
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 74
    return-void

    .line 70
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "PictureLayout can host only one direct child"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .line 60
    invoke-virtual {p0}, Lio/appium/android/apis/graphics/PictureLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    .line 64
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 65
    return-void

    .line 61
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "PictureLayout can host only one direct child"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 10
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 121
    iget-object v0, p0, Lio/appium/android/apis/graphics/PictureLayout;->mPicture:Landroid/graphics/Picture;

    invoke-virtual {p0}, Lio/appium/android/apis/graphics/PictureLayout;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lio/appium/android/apis/graphics/PictureLayout;->getHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Picture;->beginRecording(II)Landroid/graphics/Canvas;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 122
    iget-object v0, p0, Lio/appium/android/apis/graphics/PictureLayout;->mPicture:Landroid/graphics/Picture;

    invoke-virtual {v0}, Landroid/graphics/Picture;->endRecording()V

    .line 124
    invoke-virtual {p0}, Lio/appium/android/apis/graphics/PictureLayout;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    .line 125
    .local v0, "x":I
    invoke-virtual {p0}, Lio/appium/android/apis/graphics/PictureLayout;->getHeight()I

    move-result v1

    div-int/lit8 v9, v1, 0x2

    .line 130
    .local v9, "y":I
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    const/high16 v8, 0x3f800000    # 1.0f

    move-object v1, p0

    move-object v2, p1

    move v5, v0

    move v6, v9

    invoke-direct/range {v1 .. v8}, Lio/appium/android/apis/graphics/PictureLayout;->drawPict(Landroid/graphics/Canvas;IIIIFF)V

    .line 131
    const/high16 v7, -0x40800000    # -1.0f

    move v3, v0

    invoke-direct/range {v1 .. v8}, Lio/appium/android/apis/graphics/PictureLayout;->drawPict(Landroid/graphics/Canvas;IIIIFF)V

    .line 132
    const/4 v3, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    const/high16 v8, -0x40800000    # -1.0f

    move v4, v9

    invoke-direct/range {v1 .. v8}, Lio/appium/android/apis/graphics/PictureLayout;->drawPict(Landroid/graphics/Canvas;IIIIFF)V

    .line 133
    const/high16 v7, -0x40800000    # -1.0f

    move v3, v0

    invoke-direct/range {v1 .. v8}, Lio/appium/android/apis/graphics/PictureLayout;->drawPict(Landroid/graphics/Canvas;IIIIFF)V

    .line 135
    return-void
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .line 78
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public invalidateChildInParent([ILandroid/graphics/Rect;)Landroid/view/ViewParent;
    .locals 3
    .param p1, "location"    # [I
    .param p2, "dirty"    # Landroid/graphics/Rect;

    .line 139
    invoke-virtual {p0}, Lio/appium/android/apis/graphics/PictureLayout;->getLeft()I

    move-result v0

    const/4 v1, 0x0

    aput v0, p1, v1

    .line 140
    invoke-virtual {p0}, Lio/appium/android/apis/graphics/PictureLayout;->getTop()I

    move-result v0

    const/4 v2, 0x1

    aput v0, p1, v2

    .line 141
    invoke-virtual {p0}, Lio/appium/android/apis/graphics/PictureLayout;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lio/appium/android/apis/graphics/PictureLayout;->getHeight()I

    move-result v2

    invoke-virtual {p2, v1, v1, v0, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 142
    invoke-virtual {p0}, Lio/appium/android/apis/graphics/PictureLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    return-object v0
.end method

.method protected onLayout(ZIIII)V
    .locals 7
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .line 147
    invoke-super {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 149
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 150
    invoke-virtual {p0, v1}, Lio/appium/android/apis/graphics/PictureLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 151
    .local v2, "child":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-eq v3, v4, :cond_0

    .line 152
    invoke-virtual {p0}, Lio/appium/android/apis/graphics/PictureLayout;->getPaddingLeft()I

    move-result v3

    .line 153
    .local v3, "childLeft":I
    invoke-virtual {p0}, Lio/appium/android/apis/graphics/PictureLayout;->getPaddingTop()I

    move-result v4

    .line 154
    .local v4, "childTop":I
    nop

    .line 155
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    add-int/2addr v5, v3

    .line 156
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    add-int/2addr v6, v4

    .line 154
    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/view/View;->layout(IIII)V

    .line 149
    .end local v2    # "child":Landroid/view/View;
    .end local v3    # "childLeft":I
    .end local v4    # "childTop":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 160
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 7
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 83
    invoke-virtual {p0}, Lio/appium/android/apis/graphics/PictureLayout;->getChildCount()I

    move-result v0

    .line 85
    .local v0, "count":I
    const/4 v1, 0x0

    .line 86
    .local v1, "maxHeight":I
    const/4 v2, 0x0

    .line 88
    .local v2, "maxWidth":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_1

    .line 89
    invoke-virtual {p0, v3}, Lio/appium/android/apis/graphics/PictureLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 90
    .local v4, "child":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v5

    const/16 v6, 0x8

    if-eq v5, v6, :cond_0

    .line 91
    invoke-virtual {p0, v4, p1, p2}, Lio/appium/android/apis/graphics/PictureLayout;->measureChild(Landroid/view/View;II)V

    .line 88
    .end local v4    # "child":Landroid/view/View;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 95
    .end local v3    # "i":I
    :cond_1
    invoke-virtual {p0}, Lio/appium/android/apis/graphics/PictureLayout;->getPaddingLeft()I

    move-result v3

    invoke-virtual {p0}, Lio/appium/android/apis/graphics/PictureLayout;->getPaddingRight()I

    move-result v4

    add-int/2addr v3, v4

    add-int/2addr v2, v3

    .line 96
    invoke-virtual {p0}, Lio/appium/android/apis/graphics/PictureLayout;->getPaddingTop()I

    move-result v3

    invoke-virtual {p0}, Lio/appium/android/apis/graphics/PictureLayout;->getPaddingBottom()I

    move-result v4

    add-int/2addr v3, v4

    add-int/2addr v1, v3

    .line 98
    invoke-virtual {p0}, Lio/appium/android/apis/graphics/PictureLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 99
    .local v3, "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz v3, :cond_2

    .line 100
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v4

    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 101
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v4

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 104
    :cond_2
    invoke-static {v2, p1}, Lio/appium/android/apis/graphics/PictureLayout;->resolveSize(II)I

    move-result v4

    .line 105
    invoke-static {v1, p2}, Lio/appium/android/apis/graphics/PictureLayout;->resolveSize(II)I

    move-result v5

    .line 104
    invoke-virtual {p0, v4, v5}, Lio/appium/android/apis/graphics/PictureLayout;->setMeasuredDimension(II)V

    .line 106
    return-void
.end method
