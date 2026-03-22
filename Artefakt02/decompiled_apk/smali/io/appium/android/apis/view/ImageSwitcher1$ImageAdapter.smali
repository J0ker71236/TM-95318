.class public Lio/appium/android/apis/view/ImageSwitcher1$ImageAdapter;
.super Landroid/widget/BaseAdapter;
.source "ImageSwitcher1.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/appium/android/apis/view/ImageSwitcher1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ImageAdapter"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field final synthetic this$0:Lio/appium/android/apis/view/ImageSwitcher1;


# direct methods
.method public constructor <init>(Lio/appium/android/apis/view/ImageSwitcher1;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lio/appium/android/apis/view/ImageSwitcher1;
    .param p2, "c"    # Landroid/content/Context;

    .line 78
    iput-object p1, p0, Lio/appium/android/apis/view/ImageSwitcher1$ImageAdapter;->this$0:Lio/appium/android/apis/view/ImageSwitcher1;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 79
    iput-object p2, p0, Lio/appium/android/apis/view/ImageSwitcher1$ImageAdapter;->mContext:Landroid/content/Context;

    .line 80
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 83
    iget-object v0, p0, Lio/appium/android/apis/view/ImageSwitcher1$ImageAdapter;->this$0:Lio/appium/android/apis/view/ImageSwitcher1;

    invoke-static {v0}, Lio/appium/android/apis/view/ImageSwitcher1;->access$000(Lio/appium/android/apis/view/ImageSwitcher1;)[Ljava/lang/Integer;

    move-result-object v0

    array-length v0, v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .line 87
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .line 91
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .line 95
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lio/appium/android/apis/view/ImageSwitcher1$ImageAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 97
    .local v0, "i":Landroid/widget/ImageView;
    iget-object v1, p0, Lio/appium/android/apis/view/ImageSwitcher1$ImageAdapter;->this$0:Lio/appium/android/apis/view/ImageSwitcher1;

    invoke-static {v1}, Lio/appium/android/apis/view/ImageSwitcher1;->access$000(Lio/appium/android/apis/view/ImageSwitcher1;)[Ljava/lang/Integer;

    move-result-object v1

    aget-object v1, v1, p1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 98
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAdjustViewBounds(Z)V

    .line 99
    new-instance v1, Landroid/widget/Gallery$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v2, v2}, Landroid/widget/Gallery$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 101
    const v1, 0x7f08009a

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 102
    return-object v0
.end method
