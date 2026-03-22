.class Lio/appium/android/apis/graphics/ColorFilters$SampleView;
.super Landroid/view/View;
.source "ColorFilters.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/appium/android/apis/graphics/ColorFilters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SampleView"
.end annotation


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mColors:[I

.field private mDrawable:Landroid/graphics/drawable/Drawable;

.field private mDrawables:[Landroid/graphics/drawable/Drawable;

.field private mModeIndex:I

.field private mModes:[Landroid/graphics/PorterDuff$Mode;

.field private mPaint:Landroid/graphics/Paint;

.field private mPaint2:Landroid/graphics/Paint;

.field private mPaintTextOffset:F


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 9
    .param p1, "activity"    # Landroid/app/Activity;

    .line 59
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 60
    iput-object p1, p0, Lio/appium/android/apis/graphics/ColorFilters$SampleView;->mActivity:Landroid/app/Activity;

    .line 61
    move-object v0, p1

    .line 62
    .local v0, "context":Landroid/content/Context;
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lio/appium/android/apis/graphics/ColorFilters$SampleView;->setFocusable(Z)V

    .line 64
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080063

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lio/appium/android/apis/graphics/ColorFilters$SampleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 65
    iget-object v2, p0, Lio/appium/android/apis/graphics/ColorFilters$SampleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x0

    const/16 v4, 0x96

    const/16 v5, 0x30

    invoke-virtual {v2, v3, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 66
    iget-object v2, p0, Lio/appium/android/apis/graphics/ColorFilters$SampleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->setDither(Z)V

    .line 68
    const/4 v2, 0x3

    new-array v2, v2, [I

    fill-array-data v2, :array_0

    .line 73
    .local v2, "resIDs":[I
    array-length v4, v2

    new-array v4, v4, [Landroid/graphics/drawable/Drawable;

    iput-object v4, p0, Lio/appium/android/apis/graphics/ColorFilters$SampleView;->mDrawables:[Landroid/graphics/drawable/Drawable;

    .line 74
    iget-object v4, p0, Lio/appium/android/apis/graphics/ColorFilters$SampleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 75
    .local v4, "prev":Landroid/graphics/drawable/Drawable;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    array-length v6, v2

    if-ge v5, v6, :cond_0

    .line 76
    iget-object v6, p0, Lio/appium/android/apis/graphics/ColorFilters$SampleView;->mDrawables:[Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    aget v8, v2, v5

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    aput-object v7, v6, v5

    .line 77
    iget-object v6, p0, Lio/appium/android/apis/graphics/ColorFilters$SampleView;->mDrawables:[Landroid/graphics/drawable/Drawable;

    aget-object v6, v6, v5

    invoke-virtual {v6, v1}, Landroid/graphics/drawable/Drawable;->setDither(Z)V

    .line 78
    iget-object v6, p0, Lio/appium/android/apis/graphics/ColorFilters$SampleView;->mDrawables:[Landroid/graphics/drawable/Drawable;

    aget-object v6, v6, v5

    invoke-static {v6, v4}, Lio/appium/android/apis/graphics/ColorFilters$SampleView;->addToTheRight(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 79
    iget-object v6, p0, Lio/appium/android/apis/graphics/ColorFilters$SampleView;->mDrawables:[Landroid/graphics/drawable/Drawable;

    aget-object v4, v6, v5

    .line 75
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 82
    .end local v5    # "i":I
    :cond_0
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    iput-object v5, p0, Lio/appium/android/apis/graphics/ColorFilters$SampleView;->mPaint:Landroid/graphics/Paint;

    .line 83
    iget-object v5, p0, Lio/appium/android/apis/graphics/ColorFilters$SampleView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 84
    iget-object v5, p0, Lio/appium/android/apis/graphics/ColorFilters$SampleView;->mPaint:Landroid/graphics/Paint;

    const/high16 v6, 0x41800000    # 16.0f

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 85
    iget-object v5, p0, Lio/appium/android/apis/graphics/ColorFilters$SampleView;->mPaint:Landroid/graphics/Paint;

    sget-object v6, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 87
    new-instance v5, Landroid/graphics/Paint;

    iget-object v6, p0, Lio/appium/android/apis/graphics/ColorFilters$SampleView;->mPaint:Landroid/graphics/Paint;

    invoke-direct {v5, v6}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    iput-object v5, p0, Lio/appium/android/apis/graphics/ColorFilters$SampleView;->mPaint2:Landroid/graphics/Paint;

    .line 88
    iget-object v5, p0, Lio/appium/android/apis/graphics/ColorFilters$SampleView;->mPaint2:Landroid/graphics/Paint;

    const/16 v6, 0x40

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 90
    iget-object v5, p0, Lio/appium/android/apis/graphics/ColorFilters$SampleView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v5}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v5

    .line 91
    .local v5, "fm":Landroid/graphics/Paint$FontMetrics;
    iget v6, v5, Landroid/graphics/Paint$FontMetrics;->descent:F

    iget v7, v5, Landroid/graphics/Paint$FontMetrics;->ascent:F

    add-float/2addr v6, v7

    const/high16 v7, 0x3f000000    # 0.5f

    mul-float v6, v6, v7

    iput v6, p0, Lio/appium/android/apis/graphics/ColorFilters$SampleView;->mPaintTextOffset:F

    .line 93
    const/4 v6, 0x7

    new-array v6, v6, [I

    fill-array-data v6, :array_1

    iput-object v6, p0, Lio/appium/android/apis/graphics/ColorFilters$SampleView;->mColors:[I

    .line 103
    const/4 v6, 0x2

    new-array v6, v6, [Landroid/graphics/PorterDuff$Mode;

    sget-object v7, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    aput-object v7, v6, v3

    sget-object v7, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    aput-object v7, v6, v1

    iput-object v6, p0, Lio/appium/android/apis/graphics/ColorFilters$SampleView;->mModes:[Landroid/graphics/PorterDuff$Mode;

    .line 107
    iput v3, p0, Lio/appium/android/apis/graphics/ColorFilters$SampleView;->mModeIndex:I

    .line 109
    invoke-direct {p0}, Lio/appium/android/apis/graphics/ColorFilters$SampleView;->updateTitle()V

    .line 110
    return-void

    :array_0
    .array-data 4
        0x7f080062
        0x7f080060
        0x7f080061
    .end array-data

    :array_1
    .array-data 4
        0x0
        -0x33ffff01    # -3.3555452E7f
        -0x77ffff01
        0x440000ff
        -0x333301
        -0x777701
        -0xbbbb01
    .end array-data
.end method

.method private static addToTheRight(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 7
    .param p0, "curr"    # Landroid/graphics/drawable/Drawable;
    .param p1, "prev"    # Landroid/graphics/drawable/Drawable;

    .line 49
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 50
    .local v0, "r":Landroid/graphics/Rect;
    iget v1, v0, Landroid/graphics/Rect;->right:I

    add-int/lit8 v1, v1, 0xc

    .line 51
    .local v1, "x":I
    iget v2, v0, Landroid/graphics/Rect;->top:I

    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v2, v3

    shr-int/lit8 v2, v2, 0x1

    .line 52
    .local v2, "center":I
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    .line 53
    .local v3, "h":I
    shr-int/lit8 v4, v3, 0x1

    sub-int v4, v2, v4

    .line 55
    .local v4, "y":I
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    add-int/2addr v5, v1

    add-int v6, v4, v3

    invoke-virtual {p0, v1, v4, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 56
    return-void
.end method

.method private drawSample(Landroid/graphics/Canvas;Landroid/graphics/ColorFilter;)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "filter"    # Landroid/graphics/ColorFilter;

    .line 128
    iget-object v0, p0, Lio/appium/android/apis/graphics/ColorFilters$SampleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 129
    .local v0, "r":Landroid/graphics/Rect;
    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget v2, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float v1, v1, v2

    .line 130
    .local v1, "x":F
    iget v3, v0, Landroid/graphics/Rect;->top:I

    iget v4, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    mul-float v3, v3, v2

    iget v2, p0, Lio/appium/android/apis/graphics/ColorFilters$SampleView;->mPaintTextOffset:F

    sub-float/2addr v3, v2

    .line 132
    .local v3, "y":F
    iget-object v2, p0, Lio/appium/android/apis/graphics/ColorFilters$SampleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p2}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 133
    iget-object v2, p0, Lio/appium/android/apis/graphics/ColorFilters$SampleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 134
    const-string v2, "Label"

    const/high16 v4, 0x3f800000    # 1.0f

    add-float v5, v1, v4

    add-float/2addr v4, v3

    iget-object v6, p0, Lio/appium/android/apis/graphics/ColorFilters$SampleView;->mPaint2:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v5, v4, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 135
    const-string v2, "Label"

    iget-object v4, p0, Lio/appium/android/apis/graphics/ColorFilters$SampleView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v1, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 137
    iget-object v2, p0, Lio/appium/android/apis/graphics/ColorFilters$SampleView;->mDrawables:[Landroid/graphics/drawable/Drawable;

    array-length v4, v2

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_0

    aget-object v6, v2, v5

    .line 138
    .local v6, "dr":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v6, p2}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 139
    invoke-virtual {v6, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 137
    .end local v6    # "dr":Landroid/graphics/drawable/Drawable;
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 141
    :cond_0
    return-void
.end method

.method private swapPaintColors()V
    .locals 3

    .line 113
    iget-object v0, p0, Lio/appium/android/apis/graphics/ColorFilters$SampleView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    const/4 v1, -0x1

    const/high16 v2, -0x1000000

    if-ne v0, v2, :cond_0

    .line 114
    iget-object v0, p0, Lio/appium/android/apis/graphics/ColorFilters$SampleView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 115
    iget-object v0, p0, Lio/appium/android/apis/graphics/ColorFilters$SampleView;->mPaint2:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_0

    .line 117
    :cond_0
    iget-object v0, p0, Lio/appium/android/apis/graphics/ColorFilters$SampleView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 118
    iget-object v0, p0, Lio/appium/android/apis/graphics/ColorFilters$SampleView;->mPaint2:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 120
    :goto_0
    iget-object v0, p0, Lio/appium/android/apis/graphics/ColorFilters$SampleView;->mPaint2:Landroid/graphics/Paint;

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 121
    return-void
.end method

.method private updateTitle()V
    .locals 3

    .line 124
    iget-object v0, p0, Lio/appium/android/apis/graphics/ColorFilters$SampleView;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lio/appium/android/apis/graphics/ColorFilters$SampleView;->mModes:[Landroid/graphics/PorterDuff$Mode;

    iget v2, p0, Lio/appium/android/apis/graphics/ColorFilters$SampleView;->mModeIndex:I

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/graphics/PorterDuff$Mode;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 125
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 144
    const v0, -0x333334

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 146
    const/high16 v0, 0x41000000    # 8.0f

    const/high16 v1, 0x41400000    # 12.0f

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 147
    iget-object v0, p0, Lio/appium/android/apis/graphics/ColorFilters$SampleView;->mColors:[I

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget v3, v0, v2

    .line 149
    .local v3, "color":I
    if-nez v3, :cond_0

    .line 150
    const/4 v4, 0x0

    goto :goto_1

    .line 152
    :cond_0
    new-instance v4, Landroid/graphics/PorterDuffColorFilter;

    iget-object v5, p0, Lio/appium/android/apis/graphics/ColorFilters$SampleView;->mModes:[Landroid/graphics/PorterDuff$Mode;

    iget v6, p0, Lio/appium/android/apis/graphics/ColorFilters$SampleView;->mModeIndex:I

    aget-object v5, v5, v6

    invoke-direct {v4, v3, v5}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    .line 155
    .local v4, "filter":Landroid/graphics/ColorFilter;
    :goto_1
    invoke-direct {p0, p1, v4}, Lio/appium/android/apis/graphics/ColorFilters$SampleView;->drawSample(Landroid/graphics/Canvas;Landroid/graphics/ColorFilter;)V

    .line 156
    const/4 v5, 0x0

    const/high16 v6, 0x425c0000    # 55.0f

    invoke-virtual {p1, v5, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 147
    .end local v3    # "color":I
    .end local v4    # "filter":Landroid/graphics/ColorFilter;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 158
    :cond_1
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 162
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 166
    :pswitch_0
    goto :goto_0

    .line 169
    :pswitch_1
    iget-object v0, p0, Lio/appium/android/apis/graphics/ColorFilters$SampleView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    .line 170
    iget v0, p0, Lio/appium/android/apis/graphics/ColorFilters$SampleView;->mModeIndex:I

    add-int/2addr v0, v1

    iget-object v2, p0, Lio/appium/android/apis/graphics/ColorFilters$SampleView;->mModes:[Landroid/graphics/PorterDuff$Mode;

    array-length v2, v2

    rem-int/2addr v0, v2

    iput v0, p0, Lio/appium/android/apis/graphics/ColorFilters$SampleView;->mModeIndex:I

    .line 171
    invoke-direct {p0}, Lio/appium/android/apis/graphics/ColorFilters$SampleView;->updateTitle()V

    .line 173
    :cond_0
    invoke-direct {p0}, Lio/appium/android/apis/graphics/ColorFilters$SampleView;->swapPaintColors()V

    .line 174
    invoke-virtual {p0}, Lio/appium/android/apis/graphics/ColorFilters$SampleView;->invalidate()V

    goto :goto_0

    .line 164
    :pswitch_2
    nop

    .line 177
    :goto_0
    return v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
