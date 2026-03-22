.class public Lio/appium/android/apis/view/InternalSelectionView;
.super Landroid/view/View;
.source "InternalSelectionView.java"


# instance fields
.field private mDesiredHeight:Ljava/lang/Integer;

.field private final mEstimatedPixelHeight:I

.field private mLabel:Ljava/lang/String;

.field private mNumRows:I

.field private mPainter:Landroid/graphics/Paint;

.field private mSelectedRow:I

.field private mTempRect:Landroid/graphics/Rect;

.field private mTextPaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "numRows"    # I

    .line 59
    const-string v0, ""

    invoke-direct {p0, p1, p2, v0}, Lio/appium/android/apis/view/InternalSelectionView;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    .line 60
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILjava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "numRows"    # I
    .param p3, "label"    # Ljava/lang/String;

    .line 63
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 46
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lio/appium/android/apis/view/InternalSelectionView;->mPainter:Landroid/graphics/Paint;

    .line 47
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lio/appium/android/apis/view/InternalSelectionView;->mTextPaint:Landroid/graphics/Paint;

    .line 48
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lio/appium/android/apis/view/InternalSelectionView;->mTempRect:Landroid/graphics/Rect;

    .line 50
    const/4 v0, 0x5

    iput v0, p0, Lio/appium/android/apis/view/InternalSelectionView;->mNumRows:I

    .line 51
    const/4 v0, 0x0

    iput v0, p0, Lio/appium/android/apis/view/InternalSelectionView;->mSelectedRow:I

    .line 52
    const/16 v0, 0xa

    iput v0, p0, Lio/appium/android/apis/view/InternalSelectionView;->mEstimatedPixelHeight:I

    .line 54
    const/4 v0, 0x0

    iput-object v0, p0, Lio/appium/android/apis/view/InternalSelectionView;->mDesiredHeight:Ljava/lang/Integer;

    .line 55
    iput-object v0, p0, Lio/appium/android/apis/view/InternalSelectionView;->mLabel:Ljava/lang/String;

    .line 64
    iput p2, p0, Lio/appium/android/apis/view/InternalSelectionView;->mNumRows:I

    .line 65
    iput-object p3, p0, Lio/appium/android/apis/view/InternalSelectionView;->mLabel:Ljava/lang/String;

    .line 66
    invoke-direct {p0}, Lio/appium/android/apis/view/InternalSelectionView;->init()V

    .line 67
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 70
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 46
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lio/appium/android/apis/view/InternalSelectionView;->mPainter:Landroid/graphics/Paint;

    .line 47
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lio/appium/android/apis/view/InternalSelectionView;->mTextPaint:Landroid/graphics/Paint;

    .line 48
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lio/appium/android/apis/view/InternalSelectionView;->mTempRect:Landroid/graphics/Rect;

    .line 50
    const/4 v0, 0x5

    iput v0, p0, Lio/appium/android/apis/view/InternalSelectionView;->mNumRows:I

    .line 51
    const/4 v0, 0x0

    iput v0, p0, Lio/appium/android/apis/view/InternalSelectionView;->mSelectedRow:I

    .line 52
    const/16 v0, 0xa

    iput v0, p0, Lio/appium/android/apis/view/InternalSelectionView;->mEstimatedPixelHeight:I

    .line 54
    const/4 v0, 0x0

    iput-object v0, p0, Lio/appium/android/apis/view/InternalSelectionView;->mDesiredHeight:Ljava/lang/Integer;

    .line 55
    iput-object v0, p0, Lio/appium/android/apis/view/InternalSelectionView;->mLabel:Ljava/lang/String;

    .line 71
    invoke-direct {p0}, Lio/appium/android/apis/view/InternalSelectionView;->init()V

    .line 72
    return-void
.end method

.method private getRowHeight()I
    .locals 2

    .line 180
    invoke-virtual {p0}, Lio/appium/android/apis/view/InternalSelectionView;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Lio/appium/android/apis/view/InternalSelectionView;->getPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lio/appium/android/apis/view/InternalSelectionView;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Lio/appium/android/apis/view/InternalSelectionView;->mNumRows:I

    div-int/2addr v0, v1

    return v0
.end method

.method private init()V
    .locals 2

    .line 75
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lio/appium/android/apis/view/InternalSelectionView;->setFocusable(Z)V

    .line 76
    iget-object v1, p0, Lio/appium/android/apis/view/InternalSelectionView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 77
    iget-object v0, p0, Lio/appium/android/apis/view/InternalSelectionView;->mTextPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x41200000    # 10.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 78
    iget-object v0, p0, Lio/appium/android/apis/view/InternalSelectionView;->mTextPaint:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 79
    return-void
.end method

.method private measureHeight(I)I
    .locals 4
    .param p1, "measureSpec"    # I

    .line 120
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 121
    .local v0, "specMode":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 123
    .local v1, "specSize":I
    iget-object v2, p0, Lio/appium/android/apis/view/InternalSelectionView;->mDesiredHeight:Ljava/lang/Integer;

    if-eqz v2, :cond_0

    .line 124
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_0

    :cond_0
    iget v2, p0, Lio/appium/android/apis/view/InternalSelectionView;->mNumRows:I

    mul-int/lit8 v2, v2, 0xa

    .line 125
    invoke-virtual {p0}, Lio/appium/android/apis/view/InternalSelectionView;->getPaddingTop()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {p0}, Lio/appium/android/apis/view/InternalSelectionView;->getPaddingBottom()I

    move-result v3

    add-int/2addr v2, v3

    :goto_0
    nop

    .line 126
    .local v2, "desiredHeight":I
    const/high16 v3, 0x40000000    # 2.0f

    if-ne v0, v3, :cond_1

    .line 128
    return v1

    .line 129
    :cond_1
    const/high16 v3, -0x80000000

    if-ne v0, v3, :cond_3

    .line 130
    if-ge v2, v1, :cond_2

    move v3, v2

    goto :goto_1

    :cond_2
    move v3, v1

    :goto_1
    return v3

    .line 132
    :cond_3
    return v2
.end method

.method private measureWidth(I)I
    .locals 4
    .param p1, "measureSpec"    # I

    .line 105
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 106
    .local v0, "specMode":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 108
    .local v1, "specSize":I
    invoke-virtual {p0}, Lio/appium/android/apis/view/InternalSelectionView;->getPaddingLeft()I

    move-result v2

    add-int/lit16 v2, v2, 0x12c

    invoke-virtual {p0}, Lio/appium/android/apis/view/InternalSelectionView;->getPaddingRight()I

    move-result v3

    add-int/2addr v2, v3

    .line 109
    .local v2, "desiredWidth":I
    const/high16 v3, 0x40000000    # 2.0f

    if-ne v0, v3, :cond_0

    .line 111
    return v1

    .line 112
    :cond_0
    const/high16 v3, -0x80000000

    if-ne v0, v3, :cond_2

    .line 113
    if-ge v2, v1, :cond_1

    move v3, v2

    goto :goto_0

    :cond_1
    move v3, v1

    :goto_0
    return v3

    .line 115
    :cond_2
    return v2
.end method


# virtual methods
.method ensureRectVisible()V
    .locals 2

    .line 194
    iget-object v0, p0, Lio/appium/android/apis/view/InternalSelectionView;->mTempRect:Landroid/graphics/Rect;

    iget v1, p0, Lio/appium/android/apis/view/InternalSelectionView;->mSelectedRow:I

    invoke-virtual {p0, v0, v1}, Lio/appium/android/apis/view/InternalSelectionView;->getRectForRow(Landroid/graphics/Rect;I)V

    .line 195
    iget-object v0, p0, Lio/appium/android/apis/view/InternalSelectionView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Lio/appium/android/apis/view/InternalSelectionView;->requestRectangleOnScreen(Landroid/graphics/Rect;)Z

    .line 196
    return-void
.end method

.method public getFocusedRect(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "r"    # Landroid/graphics/Rect;

    .line 228
    iget v0, p0, Lio/appium/android/apis/view/InternalSelectionView;->mSelectedRow:I

    invoke-virtual {p0, p1, v0}, Lio/appium/android/apis/view/InternalSelectionView;->getRectForRow(Landroid/graphics/Rect;I)V

    .line 229
    return-void
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1

    .line 94
    iget-object v0, p0, Lio/appium/android/apis/view/InternalSelectionView;->mLabel:Ljava/lang/String;

    return-object v0
.end method

.method public getNumRows()I
    .locals 1

    .line 82
    iget v0, p0, Lio/appium/android/apis/view/InternalSelectionView;->mNumRows:I

    return v0
.end method

.method public getRectForRow(Landroid/graphics/Rect;I)V
    .locals 5
    .param p1, "rect"    # Landroid/graphics/Rect;
    .param p2, "row"    # I

    .line 184
    invoke-direct {p0}, Lio/appium/android/apis/view/InternalSelectionView;->getRowHeight()I

    move-result v0

    .line 185
    .local v0, "rowHeight":I
    invoke-virtual {p0}, Lio/appium/android/apis/view/InternalSelectionView;->getPaddingTop()I

    move-result v1

    mul-int v2, p2, v0

    add-int/2addr v1, v2

    .line 186
    .local v1, "top":I
    invoke-virtual {p0}, Lio/appium/android/apis/view/InternalSelectionView;->getPaddingLeft()I

    move-result v2

    .line 188
    invoke-virtual {p0}, Lio/appium/android/apis/view/InternalSelectionView;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Lio/appium/android/apis/view/InternalSelectionView;->getPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    add-int v4, v1, v0

    .line 186
    invoke-virtual {p1, v2, v1, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 190
    return-void
.end method

.method public getSelectedRow()I
    .locals 1

    .line 86
    iget v0, p0, Lio/appium/android/apis/view/InternalSelectionView;->mSelectedRow:I

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 10
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 140
    invoke-direct {p0}, Lio/appium/android/apis/view/InternalSelectionView;->getRowHeight()I

    move-result v0

    .line 142
    .local v0, "rowHeight":I
    invoke-virtual {p0}, Lio/appium/android/apis/view/InternalSelectionView;->getPaddingTop()I

    move-result v1

    .line 143
    .local v1, "rectTop":I
    invoke-virtual {p0}, Lio/appium/android/apis/view/InternalSelectionView;->getPaddingLeft()I

    move-result v2

    .line 144
    .local v2, "rectLeft":I
    invoke-virtual {p0}, Lio/appium/android/apis/view/InternalSelectionView;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Lio/appium/android/apis/view/InternalSelectionView;->getPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    .line 145
    .local v3, "rectRight":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    iget v5, p0, Lio/appium/android/apis/view/InternalSelectionView;->mNumRows:I

    if-ge v4, v5, :cond_1

    .line 147
    iget-object v5, p0, Lio/appium/android/apis/view/InternalSelectionView;->mPainter:Landroid/graphics/Paint;

    const/high16 v6, -0x1000000

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 148
    iget-object v5, p0, Lio/appium/android/apis/view/InternalSelectionView;->mPainter:Landroid/graphics/Paint;

    const/16 v7, 0x20

    invoke-virtual {v5, v7}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 151
    iget-object v5, p0, Lio/appium/android/apis/view/InternalSelectionView;->mTempRect:Landroid/graphics/Rect;

    add-int v7, v1, v0

    invoke-virtual {v5, v2, v1, v3, v7}, Landroid/graphics/Rect;->set(IIII)V

    .line 152
    iget-object v5, p0, Lio/appium/android/apis/view/InternalSelectionView;->mTempRect:Landroid/graphics/Rect;

    iget-object v7, p0, Lio/appium/android/apis/view/InternalSelectionView;->mPainter:Landroid/graphics/Paint;

    invoke-virtual {p1, v5, v7}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 155
    iget v5, p0, Lio/appium/android/apis/view/InternalSelectionView;->mSelectedRow:I

    const/16 v7, 0xf0

    if-ne v4, v5, :cond_0

    invoke-virtual {p0}, Lio/appium/android/apis/view/InternalSelectionView;->hasFocus()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 156
    iget-object v5, p0, Lio/appium/android/apis/view/InternalSelectionView;->mPainter:Landroid/graphics/Paint;

    const/high16 v6, -0x10000

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 157
    iget-object v5, p0, Lio/appium/android/apis/view/InternalSelectionView;->mPainter:Landroid/graphics/Paint;

    invoke-virtual {v5, v7}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 158
    iget-object v5, p0, Lio/appium/android/apis/view/InternalSelectionView;->mTextPaint:Landroid/graphics/Paint;

    const/16 v6, 0xff

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_1

    .line 160
    :cond_0
    iget-object v5, p0, Lio/appium/android/apis/view/InternalSelectionView;->mPainter:Landroid/graphics/Paint;

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 161
    iget-object v5, p0, Lio/appium/android/apis/view/InternalSelectionView;->mPainter:Landroid/graphics/Paint;

    const/16 v6, 0x40

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 162
    iget-object v5, p0, Lio/appium/android/apis/view/InternalSelectionView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v7}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 164
    :goto_1
    iget-object v5, p0, Lio/appium/android/apis/view/InternalSelectionView;->mTempRect:Landroid/graphics/Rect;

    add-int/lit8 v6, v2, 0x2

    add-int/lit8 v7, v1, 0x2

    add-int/lit8 v8, v3, -0x2

    add-int v9, v1, v0

    add-int/lit8 v9, v9, -0x2

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/graphics/Rect;->set(IIII)V

    .line 166
    iget-object v5, p0, Lio/appium/android/apis/view/InternalSelectionView;->mTempRect:Landroid/graphics/Rect;

    iget-object v6, p0, Lio/appium/android/apis/view/InternalSelectionView;->mPainter:Landroid/graphics/Paint;

    invoke-virtual {p1, v5, v6}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 169
    nop

    .line 170
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    add-int/lit8 v6, v2, 0x2

    int-to-float v6, v6

    add-int/lit8 v7, v1, 0x2

    iget-object v8, p0, Lio/appium/android/apis/view/InternalSelectionView;->mTextPaint:Landroid/graphics/Paint;

    .line 172
    invoke-virtual {v8}, Landroid/graphics/Paint;->ascent()F

    move-result v8

    float-to-int v8, v8

    sub-int/2addr v7, v8

    int-to-float v7, v7

    iget-object v8, p0, Lio/appium/android/apis/view/InternalSelectionView;->mTextPaint:Landroid/graphics/Paint;

    .line 169
    invoke-virtual {p1, v5, v6, v7, v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 175
    add-int/2addr v1, v0

    .line 145
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 177
    .end local v4    # "i":I
    :cond_1
    return-void
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 3
    .param p1, "focused"    # Z
    .param p2, "direction"    # I
    .param p3, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .line 234
    invoke-super {p0, p1, p2, p3}, Landroid/view/View;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 236
    if-eqz p1, :cond_4

    .line 237
    const/16 v0, 0x11

    const/4 v1, 0x0

    if-eq p2, v0, :cond_2

    const/16 v0, 0x21

    if-eq p2, v0, :cond_1

    const/16 v0, 0x42

    if-eq p2, v0, :cond_2

    const/16 v0, 0x82

    if-eq p2, v0, :cond_0

    .line 259
    return-void

    .line 239
    :cond_0
    iput v1, p0, Lio/appium/android/apis/view/InternalSelectionView;->mSelectedRow:I

    .line 240
    goto :goto_0

    .line 242
    :cond_1
    iget v0, p0, Lio/appium/android/apis/view/InternalSelectionView;->mNumRows:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lio/appium/android/apis/view/InternalSelectionView;->mSelectedRow:I

    .line 243
    goto :goto_0

    .line 247
    :cond_2
    if-eqz p3, :cond_3

    .line 248
    iget v0, p3, Landroid/graphics/Rect;->top:I

    .line 249
    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    .line 250
    .local v0, "y":I
    invoke-virtual {p0}, Lio/appium/android/apis/view/InternalSelectionView;->getHeight()I

    move-result v1

    iget v2, p0, Lio/appium/android/apis/view/InternalSelectionView;->mNumRows:I

    div-int/2addr v1, v2

    .line 251
    .local v1, "yPerRow":I
    div-int v2, v0, v1

    iput v2, p0, Lio/appium/android/apis/view/InternalSelectionView;->mSelectedRow:I

    .line 252
    .end local v0    # "y":I
    .end local v1    # "yPerRow":I
    goto :goto_0

    .line 253
    :cond_3
    iput v1, p0, Lio/appium/android/apis/view/InternalSelectionView;->mSelectedRow:I

    .line 255
    nop

    .line 261
    :goto_0
    invoke-virtual {p0}, Lio/appium/android/apis/view/InternalSelectionView;->invalidate()V

    .line 263
    :cond_4
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 204
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 214
    :pswitch_0
    iget v0, p0, Lio/appium/android/apis/view/InternalSelectionView;->mSelectedRow:I

    iget v2, p0, Lio/appium/android/apis/view/InternalSelectionView;->mNumRows:I

    sub-int/2addr v2, v1

    if-ge v0, v2, :cond_0

    .line 215
    add-int/2addr v0, v1

    iput v0, p0, Lio/appium/android/apis/view/InternalSelectionView;->mSelectedRow:I

    .line 216
    invoke-virtual {p0}, Lio/appium/android/apis/view/InternalSelectionView;->invalidate()V

    .line 217
    invoke-virtual {p0}, Lio/appium/android/apis/view/InternalSelectionView;->ensureRectVisible()V

    .line 218
    return v1

    .line 206
    :pswitch_1
    iget v0, p0, Lio/appium/android/apis/view/InternalSelectionView;->mSelectedRow:I

    if-lez v0, :cond_0

    .line 207
    sub-int/2addr v0, v1

    iput v0, p0, Lio/appium/android/apis/view/InternalSelectionView;->mSelectedRow:I

    .line 208
    invoke-virtual {p0}, Lio/appium/android/apis/view/InternalSelectionView;->invalidate()V

    .line 209
    invoke-virtual {p0}, Lio/appium/android/apis/view/InternalSelectionView;->ensureRectVisible()V

    .line 210
    return v1

    .line 222
    :cond_0
    :goto_0
    const/4 v0, 0x0

    return v0

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 99
    nop

    .line 100
    invoke-direct {p0, p1}, Lio/appium/android/apis/view/InternalSelectionView;->measureWidth(I)I

    move-result v0

    .line 101
    invoke-direct {p0, p2}, Lio/appium/android/apis/view/InternalSelectionView;->measureHeight(I)I

    move-result v1

    .line 99
    invoke-virtual {p0, v0, v1}, Lio/appium/android/apis/view/InternalSelectionView;->setMeasuredDimension(II)V

    .line 102
    return-void
.end method

.method public setDesiredHeight(I)V
    .locals 1
    .param p1, "desiredHeight"    # I

    .line 90
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lio/appium/android/apis/view/InternalSelectionView;->mDesiredHeight:Ljava/lang/Integer;

    .line 91
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 267
    iget-object v0, p0, Lio/appium/android/apis/view/InternalSelectionView;->mLabel:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 268
    return-object v0

    .line 270
    :cond_0
    invoke-super {p0}, Landroid/view/View;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
