.class public Lio/appium/android/apis/view/LayoutAnimation6$AppsAdapter;
.super Landroid/widget/BaseAdapter;
.source "LayoutAnimation6.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/appium/android/apis/view/LayoutAnimation6;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AppsAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lio/appium/android/apis/view/LayoutAnimation6;


# direct methods
.method public constructor <init>(Lio/appium/android/apis/view/LayoutAnimation6;)V
    .locals 0
    .param p1, "this$0"    # Lio/appium/android/apis/view/LayoutAnimation6;

    .line 54
    iput-object p1, p0, Lio/appium/android/apis/view/LayoutAnimation6$AppsAdapter;->this$0:Lio/appium/android/apis/view/LayoutAnimation6;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final getCount()I
    .locals 2

    .line 69
    iget-object v0, p0, Lio/appium/android/apis/view/LayoutAnimation6$AppsAdapter;->this$0:Lio/appium/android/apis/view/LayoutAnimation6;

    invoke-static {v0}, Lio/appium/android/apis/view/LayoutAnimation6;->access$000(Lio/appium/android/apis/view/LayoutAnimation6;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x20

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 2
    .param p1, "position"    # I

    .line 73
    iget-object v0, p0, Lio/appium/android/apis/view/LayoutAnimation6$AppsAdapter;->this$0:Lio/appium/android/apis/view/LayoutAnimation6;

    invoke-static {v0}, Lio/appium/android/apis/view/LayoutAnimation6;->access$000(Lio/appium/android/apis/view/LayoutAnimation6;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lio/appium/android/apis/view/LayoutAnimation6$AppsAdapter;->this$0:Lio/appium/android/apis/view/LayoutAnimation6;

    invoke-static {v1}, Lio/appium/android/apis/view/LayoutAnimation6;->access$000(Lio/appium/android/apis/view/LayoutAnimation6;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    rem-int v1, p1, v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .line 77
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .line 56
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lio/appium/android/apis/view/LayoutAnimation6$AppsAdapter;->this$0:Lio/appium/android/apis/view/LayoutAnimation6;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 58
    .local v0, "i":Landroid/widget/ImageView;
    iget-object v1, p0, Lio/appium/android/apis/view/LayoutAnimation6$AppsAdapter;->this$0:Lio/appium/android/apis/view/LayoutAnimation6;

    invoke-static {v1}, Lio/appium/android/apis/view/LayoutAnimation6;->access$000(Lio/appium/android/apis/view/LayoutAnimation6;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lio/appium/android/apis/view/LayoutAnimation6$AppsAdapter;->this$0:Lio/appium/android/apis/view/LayoutAnimation6;

    invoke-static {v2}, Lio/appium/android/apis/view/LayoutAnimation6;->access$000(Lio/appium/android/apis/view/LayoutAnimation6;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    rem-int v2, p1, v2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 60
    .local v1, "info":Landroid/content/pm/ResolveInfo;
    iget-object v2, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, p0, Lio/appium/android/apis/view/LayoutAnimation6$AppsAdapter;->this$0:Lio/appium/android/apis/view/LayoutAnimation6;

    invoke-virtual {v3}, Lio/appium/android/apis/view/LayoutAnimation6;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/pm/ActivityInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 61
    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 62
    iget-object v2, p0, Lio/appium/android/apis/view/LayoutAnimation6$AppsAdapter;->this$0:Lio/appium/android/apis/view/LayoutAnimation6;

    invoke-virtual {v2}, Lio/appium/android/apis/view/LayoutAnimation6;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    const/high16 v3, 0x42100000    # 36.0f

    mul-float v2, v2, v3

    const/high16 v3, 0x3f000000    # 0.5f

    add-float/2addr v2, v3

    float-to-int v2, v2

    .line 63
    .local v2, "w":I
    new-instance v3, Landroid/widget/AbsListView$LayoutParams;

    invoke-direct {v3, v2, v2}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 64
    return-object v0
.end method
