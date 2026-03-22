.class public Lio/appium/android/apis/view/Grid1$AppsAdapter;
.super Landroid/widget/BaseAdapter;
.source "Grid1.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/appium/android/apis/view/Grid1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AppsAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lio/appium/android/apis/view/Grid1;


# direct methods
.method public constructor <init>(Lio/appium/android/apis/view/Grid1;)V
    .locals 0
    .param p1, "this$0"    # Lio/appium/android/apis/view/Grid1;

    .line 61
    iput-object p1, p0, Lio/appium/android/apis/view/Grid1$AppsAdapter;->this$0:Lio/appium/android/apis/view/Grid1;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 62
    return-void
.end method


# virtual methods
.method public final getCount()I
    .locals 1

    .line 83
    iget-object v0, p0, Lio/appium/android/apis/view/Grid1$AppsAdapter;->this$0:Lio/appium/android/apis/view/Grid1;

    invoke-static {v0}, Lio/appium/android/apis/view/Grid1;->access$000(Lio/appium/android/apis/view/Grid1;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .line 87
    iget-object v0, p0, Lio/appium/android/apis/view/Grid1$AppsAdapter;->this$0:Lio/appium/android/apis/view/Grid1;

    invoke-static {v0}, Lio/appium/android/apis/view/Grid1;->access$000(Lio/appium/android/apis/view/Grid1;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .line 91
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .line 67
    if-nez p2, :cond_0

    .line 68
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lio/appium/android/apis/view/Grid1$AppsAdapter;->this$0:Lio/appium/android/apis/view/Grid1;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 69
    .local v0, "i":Landroid/widget/ImageView;
    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 70
    new-instance v1, Landroid/widget/AbsListView$LayoutParams;

    const/16 v2, 0x32

    invoke-direct {v1, v2, v2}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 72
    .end local v0    # "i":Landroid/widget/ImageView;
    :cond_0
    move-object v0, p2

    check-cast v0, Landroid/widget/ImageView;

    .line 75
    .restart local v0    # "i":Landroid/widget/ImageView;
    :goto_0
    iget-object v1, p0, Lio/appium/android/apis/view/Grid1$AppsAdapter;->this$0:Lio/appium/android/apis/view/Grid1;

    invoke-static {v1}, Lio/appium/android/apis/view/Grid1;->access$000(Lio/appium/android/apis/view/Grid1;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 76
    .local v1, "info":Landroid/content/pm/ResolveInfo;
    iget-object v2, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, p0, Lio/appium/android/apis/view/Grid1$AppsAdapter;->this$0:Lio/appium/android/apis/view/Grid1;

    invoke-virtual {v3}, Lio/appium/android/apis/view/Grid1;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/pm/ActivityInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 78
    return-object v0
.end method
