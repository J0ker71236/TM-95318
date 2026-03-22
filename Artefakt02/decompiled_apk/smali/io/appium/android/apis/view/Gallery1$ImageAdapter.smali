.class public Lio/appium/android/apis/view/Gallery1$ImageAdapter;
.super Landroid/widget/BaseAdapter;
.source "Gallery1.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/appium/android/apis/view/Gallery1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ImageAdapter"
.end annotation


# static fields
.field private static final ITEM_HEIGHT:I = 0x58

.field private static final ITEM_WIDTH:I = 0x88


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mDensity:F

.field private final mGalleryItemBackground:I

.field private final mImageIds:[Ljava/lang/Integer;

.field final synthetic this$0:Lio/appium/android/apis/view/Gallery1;


# direct methods
.method public constructor <init>(Lio/appium/android/apis/view/Gallery1;Landroid/content/Context;)V
    .locals 4
    .param p1, "this$0"    # Lio/appium/android/apis/view/Gallery1;
    .param p2, "c"    # Landroid/content/Context;

    .line 93
    iput-object p1, p0, Lio/appium/android/apis/view/Gallery1$ImageAdapter;->this$0:Lio/appium/android/apis/view/Gallery1;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 80
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/Integer;

    .line 81
    const v1, 0x7f08006a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 82
    const v1, 0x7f08006b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v0, v3

    .line 83
    const v1, 0x7f08006c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v3, 0x2

    aput-object v1, v0, v3

    .line 84
    const v1, 0x7f08006d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v3, 0x3

    aput-object v1, v0, v3

    .line 85
    const v1, 0x7f08006e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v3, 0x4

    aput-object v1, v0, v3

    .line 86
    const v1, 0x7f08006f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v3, 0x5

    aput-object v1, v0, v3

    .line 87
    const v1, 0x7f080070

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v3, 0x6

    aput-object v1, v0, v3

    .line 88
    const v1, 0x7f080071

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v3, 0x7

    aput-object v1, v0, v3

    iput-object v0, p0, Lio/appium/android/apis/view/Gallery1$ImageAdapter;->mImageIds:[Ljava/lang/Integer;

    .line 94
    iput-object p2, p0, Lio/appium/android/apis/view/Gallery1$ImageAdapter;->mContext:Landroid/content/Context;

    .line 97
    sget-object v0, Lio/appium/android/apis/R$styleable;->Gallery1:[I

    invoke-virtual {p1, v0}, Lio/appium/android/apis/view/Gallery1;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 98
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lio/appium/android/apis/view/Gallery1$ImageAdapter;->mGalleryItemBackground:I

    .line 100
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 102
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    iput v1, p0, Lio/appium/android/apis/view/Gallery1$ImageAdapter;->mDensity:F

    .line 103
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 106
    iget-object v0, p0, Lio/appium/android/apis/view/Gallery1$ImageAdapter;->mImageIds:[Ljava/lang/Integer;

    array-length v0, v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .line 110
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .line 114
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .line 119
    if-nez p2, :cond_0

    .line 120
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lio/appium/android/apis/view/Gallery1$ImageAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    move-object p2, v0

    .line 122
    move-object v0, p2

    check-cast v0, Landroid/widget/ImageView;

    .line 123
    .local v0, "imageView":Landroid/widget/ImageView;
    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 124
    new-instance v1, Landroid/widget/Gallery$LayoutParams;

    const/high16 v2, 0x43080000    # 136.0f

    iget v3, p0, Lio/appium/android/apis/view/Gallery1$ImageAdapter;->mDensity:F

    mul-float v2, v2, v3

    const/high16 v4, 0x3f000000    # 0.5f

    add-float/2addr v2, v4

    float-to-int v2, v2

    const/high16 v5, 0x42b00000    # 88.0f

    mul-float v3, v3, v5

    add-float/2addr v3, v4

    float-to-int v3, v3

    invoke-direct {v1, v2, v3}, Landroid/widget/Gallery$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 129
    iget v1, p0, Lio/appium/android/apis/view/Gallery1$ImageAdapter;->mGalleryItemBackground:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    .line 131
    .end local v0    # "imageView":Landroid/widget/ImageView;
    :cond_0
    move-object v0, p2

    check-cast v0, Landroid/widget/ImageView;

    .line 134
    .restart local v0    # "imageView":Landroid/widget/ImageView;
    :goto_0
    iget-object v1, p0, Lio/appium/android/apis/view/Gallery1$ImageAdapter;->mImageIds:[Ljava/lang/Integer;

    aget-object v1, v1, p1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 136
    return-object v0
.end method
