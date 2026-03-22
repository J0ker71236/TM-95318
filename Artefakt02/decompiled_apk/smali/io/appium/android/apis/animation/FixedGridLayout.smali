.class public Lio/appium/android/apis/animation/FixedGridLayout;
.super Landroid/view/ViewGroup;
.source "FixedGridLayout.java"


# instance fields
.field mCellHeight:I

.field mCellWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 42
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 43
    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 16
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .line 76
    move-object/from16 v0, p0

    iget v1, v0, Lio/appium/android/apis/animation/FixedGridLayout;->mCellWidth:I

    .line 77
    .local v1, "cellWidth":I
    iget v2, v0, Lio/appium/android/apis/animation/FixedGridLayout;->mCellHeight:I

    .line 78
    .local v2, "cellHeight":I
    sub-int v3, p4, p2

    div-int/2addr v3, v1

    .line 79
    .local v3, "columns":I
    if-gez v3, :cond_0

    .line 80
    const/4 v3, 0x1

    .line 82
    :cond_0
    const/4 v4, 0x0

    .line 83
    .local v4, "x":I
    const/4 v5, 0x0

    .line 84
    .local v5, "y":I
    const/4 v6, 0x0

    .line 85
    .local v6, "i":I
    invoke-virtual/range {p0 .. p0}, Lio/appium/android/apis/animation/FixedGridLayout;->getChildCount()I

    move-result v7

    .line 86
    .local v7, "count":I
    const/4 v8, 0x0

    .local v8, "index":I
    :goto_0
    if-ge v8, v7, :cond_2

    .line 87
    invoke-virtual {v0, v8}, Lio/appium/android/apis/animation/FixedGridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 89
    .local v9, "child":Landroid/view/View;
    invoke-virtual {v9}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    .line 90
    .local v10, "w":I
    invoke-virtual {v9}, Landroid/view/View;->getMeasuredHeight()I

    move-result v11

    .line 92
    .local v11, "h":I
    sub-int v12, v1, v10

    div-int/lit8 v12, v12, 0x2

    add-int/2addr v12, v4

    .line 93
    .local v12, "left":I
    sub-int v13, v2, v11

    div-int/lit8 v13, v13, 0x2

    add-int/2addr v13, v5

    .line 95
    .local v13, "top":I
    add-int v14, v12, v10

    add-int v15, v13, v11

    invoke-virtual {v9, v12, v13, v14, v15}, Landroid/view/View;->layout(IIII)V

    .line 96
    add-int/lit8 v14, v3, -0x1

    if-lt v6, v14, :cond_1

    .line 98
    const/4 v6, 0x0

    .line 99
    const/4 v4, 0x0

    .line 100
    add-int/2addr v5, v2

    goto :goto_1

    .line 102
    :cond_1
    add-int/lit8 v6, v6, 0x1

    .line 103
    add-int/2addr v4, v1

    .line 86
    .end local v9    # "child":Landroid/view/View;
    .end local v10    # "w":I
    .end local v11    # "h":I
    .end local v12    # "left":I
    .end local v13    # "top":I
    :goto_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 106
    .end local v8    # "index":I
    :cond_2
    return-void
.end method

.method protected onMeasure(II)V
    .locals 6
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 57
    iget v0, p0, Lio/appium/android/apis/animation/FixedGridLayout;->mCellWidth:I

    const/high16 v1, -0x80000000

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 59
    .local v0, "cellWidthSpec":I
    iget v2, p0, Lio/appium/android/apis/animation/FixedGridLayout;->mCellHeight:I

    invoke-static {v2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 62
    .local v1, "cellHeightSpec":I
    invoke-virtual {p0}, Lio/appium/android/apis/animation/FixedGridLayout;->getChildCount()I

    move-result v2

    .line 63
    .local v2, "count":I
    const/4 v3, 0x0

    .local v3, "index":I
    :goto_0
    if-ge v3, v2, :cond_0

    .line 64
    invoke-virtual {p0, v3}, Lio/appium/android/apis/animation/FixedGridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 65
    .local v4, "child":Landroid/view/View;
    invoke-virtual {v4, v0, v1}, Landroid/view/View;->measure(II)V

    .line 63
    .end local v4    # "child":Landroid/view/View;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 69
    .end local v3    # "index":I
    :cond_0
    const/4 v3, 0x3

    if-le v2, v3, :cond_1

    move v3, v2

    .line 70
    .local v3, "minCount":I
    :cond_1
    iget v4, p0, Lio/appium/android/apis/animation/FixedGridLayout;->mCellWidth:I

    mul-int v4, v4, v3

    invoke-static {v4, p1}, Lio/appium/android/apis/animation/FixedGridLayout;->resolveSize(II)I

    move-result v4

    iget v5, p0, Lio/appium/android/apis/animation/FixedGridLayout;->mCellHeight:I

    mul-int v5, v5, v3

    .line 71
    invoke-static {v5, p2}, Lio/appium/android/apis/animation/FixedGridLayout;->resolveSize(II)I

    move-result v5

    .line 70
    invoke-virtual {p0, v4, v5}, Lio/appium/android/apis/animation/FixedGridLayout;->setMeasuredDimension(II)V

    .line 72
    return-void
.end method

.method public setCellHeight(I)V
    .locals 0
    .param p1, "px"    # I

    .line 51
    iput p1, p0, Lio/appium/android/apis/animation/FixedGridLayout;->mCellHeight:I

    .line 52
    invoke-virtual {p0}, Lio/appium/android/apis/animation/FixedGridLayout;->requestLayout()V

    .line 53
    return-void
.end method

.method public setCellWidth(I)V
    .locals 0
    .param p1, "px"    # I

    .line 46
    iput p1, p0, Lio/appium/android/apis/animation/FixedGridLayout;->mCellWidth:I

    .line 47
    invoke-virtual {p0}, Lio/appium/android/apis/animation/FixedGridLayout;->requestLayout()V

    .line 48
    return-void
.end method
