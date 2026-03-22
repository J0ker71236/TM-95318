.class public Lio/appium/android/apis/view/LabelView;
.super Landroid/view/View;
.source "LabelView.java"


# instance fields
.field private mAscent:I

.field private mText:Ljava/lang/String;

.field private mTextPaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 48
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 49
    invoke-direct {p0}, Lio/appium/android/apis/view/LabelView;->initLabelView()V

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 60
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 61
    invoke-direct {p0}, Lio/appium/android/apis/view/LabelView;->initLabelView()V

    .line 63
    sget-object v0, Lio/appium/android/apis/R$styleable;->LabelView:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 66
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 67
    .local v2, "s":Ljava/lang/CharSequence;
    if-eqz v2, :cond_0

    .line 68
    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lio/appium/android/apis/view/LabelView;->setText(Ljava/lang/String;)V

    .line 74
    :cond_0
    const/4 v3, 0x1

    const/high16 v4, -0x1000000

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    invoke-virtual {p0, v3}, Lio/appium/android/apis/view/LabelView;->setTextColor(I)V

    .line 76
    const/4 v3, 0x2

    invoke-virtual {v0, v3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    .line 77
    .local v1, "textSize":I
    if-lez v1, :cond_1

    .line 78
    invoke-virtual {p0, v1}, Lio/appium/android/apis/view/LabelView;->setTextSize(I)V

    .line 81
    :cond_1
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 82
    return-void
.end method

.method private final initLabelView()V
    .locals 3

    .line 85
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lio/appium/android/apis/view/LabelView;->mTextPaint:Landroid/graphics/Paint;

    .line 86
    iget-object v0, p0, Lio/appium/android/apis/view/LabelView;->mTextPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 88
    iget-object v0, p0, Lio/appium/android/apis/view/LabelView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lio/appium/android/apis/view/LabelView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v2, 0x41800000    # 16.0f

    mul-float v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 89
    iget-object v0, p0, Lio/appium/android/apis/view/LabelView;->mTextPaint:Landroid/graphics/Paint;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 90
    const/4 v0, 0x3

    invoke-virtual {p0, v0, v0, v0, v0}, Lio/appium/android/apis/view/LabelView;->setPadding(IIII)V

    .line 91
    return-void
.end method

.method private measureHeight(I)I
    .locals 5
    .param p1, "measureSpec"    # I

    .line 164
    const/4 v0, 0x0

    .line 165
    .local v0, "result":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 166
    .local v1, "specMode":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 168
    .local v2, "specSize":I
    iget-object v3, p0, Lio/appium/android/apis/view/LabelView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->ascent()F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Lio/appium/android/apis/view/LabelView;->mAscent:I

    .line 169
    const/high16 v3, 0x40000000    # 2.0f

    if-ne v1, v3, :cond_0

    .line 171
    move v0, v2

    goto :goto_0

    .line 174
    :cond_0
    iget v3, p0, Lio/appium/android/apis/view/LabelView;->mAscent:I

    neg-int v3, v3

    int-to-float v3, v3

    iget-object v4, p0, Lio/appium/android/apis/view/LabelView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v4}, Landroid/graphics/Paint;->descent()F

    move-result v4

    add-float/2addr v3, v4

    float-to-int v3, v3

    invoke-virtual {p0}, Lio/appium/android/apis/view/LabelView;->getPaddingTop()I

    move-result v4

    add-int/2addr v3, v4

    .line 175
    invoke-virtual {p0}, Lio/appium/android/apis/view/LabelView;->getPaddingBottom()I

    move-result v4

    add-int v0, v3, v4

    .line 176
    const/high16 v3, -0x80000000

    if-ne v1, v3, :cond_1

    .line 178
    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 181
    :cond_1
    :goto_0
    return v0
.end method

.method private measureWidth(I)I
    .locals 5
    .param p1, "measureSpec"    # I

    .line 138
    const/4 v0, 0x0

    .line 139
    .local v0, "result":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 140
    .local v1, "specMode":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 142
    .local v2, "specSize":I
    const/high16 v3, 0x40000000    # 2.0f

    if-ne v1, v3, :cond_0

    .line 144
    move v0, v2

    goto :goto_0

    .line 147
    :cond_0
    iget-object v3, p0, Lio/appium/android/apis/view/LabelView;->mTextPaint:Landroid/graphics/Paint;

    iget-object v4, p0, Lio/appium/android/apis/view/LabelView;->mText:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p0}, Lio/appium/android/apis/view/LabelView;->getPaddingLeft()I

    move-result v4

    add-int/2addr v3, v4

    .line 148
    invoke-virtual {p0}, Lio/appium/android/apis/view/LabelView;->getPaddingRight()I

    move-result v4

    add-int v0, v3, v4

    .line 149
    const/high16 v3, -0x80000000

    if-ne v1, v3, :cond_1

    .line 151
    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 155
    :cond_1
    :goto_0
    return v0
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 191
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 192
    iget-object v0, p0, Lio/appium/android/apis/view/LabelView;->mText:Ljava/lang/String;

    invoke-virtual {p0}, Lio/appium/android/apis/view/LabelView;->getPaddingLeft()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lio/appium/android/apis/view/LabelView;->getPaddingTop()I

    move-result v2

    iget v3, p0, Lio/appium/android/apis/view/LabelView;->mAscent:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iget-object v3, p0, Lio/appium/android/apis/view/LabelView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 193
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 128
    invoke-direct {p0, p1}, Lio/appium/android/apis/view/LabelView;->measureWidth(I)I

    move-result v0

    .line 129
    invoke-direct {p0, p2}, Lio/appium/android/apis/view/LabelView;->measureHeight(I)I

    move-result v1

    .line 128
    invoke-virtual {p0, v0, v1}, Lio/appium/android/apis/view/LabelView;->setMeasuredDimension(II)V

    .line 130
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/String;

    .line 98
    iput-object p1, p0, Lio/appium/android/apis/view/LabelView;->mText:Ljava/lang/String;

    .line 99
    invoke-virtual {p0}, Lio/appium/android/apis/view/LabelView;->requestLayout()V

    .line 100
    invoke-virtual {p0}, Lio/appium/android/apis/view/LabelView;->invalidate()V

    .line 101
    return-void
.end method

.method public setTextColor(I)V
    .locals 1
    .param p1, "color"    # I

    .line 119
    iget-object v0, p0, Lio/appium/android/apis/view/LabelView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 120
    invoke-virtual {p0}, Lio/appium/android/apis/view/LabelView;->invalidate()V

    .line 121
    return-void
.end method

.method public setTextSize(I)V
    .locals 2
    .param p1, "size"    # I

    .line 109
    iget-object v0, p0, Lio/appium/android/apis/view/LabelView;->mTextPaint:Landroid/graphics/Paint;

    int-to-float v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 110
    invoke-virtual {p0}, Lio/appium/android/apis/view/LabelView;->requestLayout()V

    .line 111
    invoke-virtual {p0}, Lio/appium/android/apis/view/LabelView;->invalidate()V

    .line 112
    return-void
.end method
