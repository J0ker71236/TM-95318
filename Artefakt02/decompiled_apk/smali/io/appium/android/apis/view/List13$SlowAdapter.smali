.class Lio/appium/android/apis/view/List13$SlowAdapter;
.super Landroid/widget/BaseAdapter;
.source "List13.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/appium/android/apis/view/List13;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SlowAdapter"
.end annotation


# instance fields
.field private mInflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lio/appium/android/apis/view/List13;


# direct methods
.method public constructor <init>(Lio/appium/android/apis/view/List13;Landroid/content/Context;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;

    .line 54
    iput-object p1, p0, Lio/appium/android/apis/view/List13$SlowAdapter;->this$0:Lio/appium/android/apis/view/List13;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 55
    const-string p1, "layout_inflater"

    invoke-virtual {p2, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    iput-object p1, p0, Lio/appium/android/apis/view/List13$SlowAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 56
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 65
    iget-object v0, p0, Lio/appium/android/apis/view/List13$SlowAdapter;->this$0:Lio/appium/android/apis/view/List13;

    invoke-static {v0}, Lio/appium/android/apis/view/List13;->access$000(Lio/appium/android/apis/view/List13;)[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .line 77
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .line 86
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .line 98
    if-nez p2, :cond_0

    .line 99
    iget-object v0, p0, Lio/appium/android/apis/view/List13$SlowAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x1090003

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    goto :goto_0

    .line 101
    :cond_0
    move-object v0, p2

    check-cast v0, Landroid/widget/TextView;

    .line 104
    .local v0, "text":Landroid/widget/TextView;
    :goto_0
    iget-object v1, p0, Lio/appium/android/apis/view/List13$SlowAdapter;->this$0:Lio/appium/android/apis/view/List13;

    invoke-static {v1}, Lio/appium/android/apis/view/List13;->access$100(Lio/appium/android/apis/view/List13;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 105
    iget-object v1, p0, Lio/appium/android/apis/view/List13$SlowAdapter;->this$0:Lio/appium/android/apis/view/List13;

    invoke-static {v1}, Lio/appium/android/apis/view/List13;->access$000(Lio/appium/android/apis/view/List13;)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 107
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    goto :goto_1

    .line 109
    :cond_1
    const-string v1, "Loading..."

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 111
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 114
    :goto_1
    return-object v0
.end method
