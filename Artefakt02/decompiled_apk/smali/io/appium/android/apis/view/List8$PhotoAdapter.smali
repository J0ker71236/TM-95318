.class public Lio/appium/android/apis/view/List8$PhotoAdapter;
.super Landroid/widget/BaseAdapter;
.source "List8.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/appium/android/apis/view/List8;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PhotoAdapter"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mPhotoPool:[Ljava/lang/Integer;

.field private mPhotos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lio/appium/android/apis/view/List8;


# direct methods
.method public constructor <init>(Lio/appium/android/apis/view/List8;Landroid/content/Context;)V
    .locals 3
    .param p1, "this$0"    # Lio/appium/android/apis/view/List8;
    .param p2, "c"    # Landroid/content/Context;

    .line 89
    iput-object p1, p0, Lio/appium/android/apis/view/List8$PhotoAdapter;->this$0:Lio/appium/android/apis/view/List8;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 82
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/Integer;

    .line 83
    const v1, 0x7f0800a9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const v1, 0x7f0800aa

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const v1, 0x7f0800ab

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 84
    const v1, 0x7f0800ac

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const v1, 0x7f0800ad

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const v1, 0x7f0800ae

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 85
    const v1, 0x7f0800af

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const v1, 0x7f0800b0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    iput-object v0, p0, Lio/appium/android/apis/view/List8$PhotoAdapter;->mPhotoPool:[Ljava/lang/Integer;

    .line 87
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/appium/android/apis/view/List8$PhotoAdapter;->mPhotos:Ljava/util/ArrayList;

    .line 90
    iput-object p2, p0, Lio/appium/android/apis/view/List8$PhotoAdapter;->mContext:Landroid/content/Context;

    .line 91
    return-void
.end method


# virtual methods
.method public addPhotos()V
    .locals 4

    .line 126
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    iget-object v2, p0, Lio/appium/android/apis/view/List8$PhotoAdapter;->mPhotoPool:[Ljava/lang/Integer;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    int-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int v1, v0

    .line 127
    .local v1, "whichPhoto":I
    iget-object v0, p0, Lio/appium/android/apis/view/List8$PhotoAdapter;->mPhotoPool:[Ljava/lang/Integer;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 128
    .local v0, "newPhoto":I
    iget-object v2, p0, Lio/appium/android/apis/view/List8$PhotoAdapter;->mPhotos:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 129
    invoke-virtual {p0}, Lio/appium/android/apis/view/List8$PhotoAdapter;->notifyDataSetChanged()V

    .line 130
    return-void
.end method

.method public clearPhotos()V
    .locals 1

    .line 121
    iget-object v0, p0, Lio/appium/android/apis/view/List8$PhotoAdapter;->mPhotos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 122
    invoke-virtual {p0}, Lio/appium/android/apis/view/List8$PhotoAdapter;->notifyDataSetChanged()V

    .line 123
    return-void
.end method

.method public getCount()I
    .locals 1

    .line 94
    iget-object v0, p0, Lio/appium/android/apis/view/List8$PhotoAdapter;->mPhotos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .line 98
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .line 102
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .line 107
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lio/appium/android/apis/view/List8$PhotoAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 109
    .local v0, "i":Landroid/widget/ImageView;
    iget-object v1, p0, Lio/appium/android/apis/view/List8$PhotoAdapter;->mPhotos:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 110
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAdjustViewBounds(Z)V

    .line 111
    new-instance v1, Landroid/widget/AbsListView$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v2, v2}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 114
    const v1, 0x7f08009a

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 115
    return-object v0
.end method
