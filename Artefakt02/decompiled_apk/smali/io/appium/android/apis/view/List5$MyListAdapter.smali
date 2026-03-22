.class Lio/appium/android/apis/view/List5$MyListAdapter;
.super Landroid/widget/BaseAdapter;
.source "List5.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/appium/android/apis/view/List5;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyListAdapter"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field final synthetic this$0:Lio/appium/android/apis/view/List5;


# direct methods
.method public constructor <init>(Lio/appium/android/apis/view/List5;Landroid/content/Context;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;

    .line 44
    iput-object p1, p0, Lio/appium/android/apis/view/List5$MyListAdapter;->this$0:Lio/appium/android/apis/view/List5;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 45
    iput-object p2, p0, Lio/appium/android/apis/view/List5$MyListAdapter;->mContext:Landroid/content/Context;

    .line 46
    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .line 54
    const/4 v0, 0x0

    return v0
.end method

.method public getCount()I
    .locals 1

    .line 49
    iget-object v0, p0, Lio/appium/android/apis/view/List5$MyListAdapter;->this$0:Lio/appium/android/apis/view/List5;

    invoke-static {v0}, Lio/appium/android/apis/view/List5;->access$000(Lio/appium/android/apis/view/List5;)[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .line 63
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .line 67
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .line 72
    if-nez p2, :cond_0

    .line 73
    iget-object v0, p0, Lio/appium/android/apis/view/List5$MyListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x1090006

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    goto :goto_0

    .line 76
    :cond_0
    move-object v0, p2

    check-cast v0, Landroid/widget/TextView;

    .line 78
    .local v0, "tv":Landroid/widget/TextView;
    :goto_0
    iget-object v1, p0, Lio/appium/android/apis/view/List5$MyListAdapter;->this$0:Lio/appium/android/apis/view/List5;

    invoke-static {v1}, Lio/appium/android/apis/view/List5;->access$000(Lio/appium/android/apis/view/List5;)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 79
    return-object v0
.end method

.method public isEnabled(I)Z
    .locals 2
    .param p1, "position"    # I

    .line 59
    iget-object v0, p0, Lio/appium/android/apis/view/List5$MyListAdapter;->this$0:Lio/appium/android/apis/view/List5;

    invoke-static {v0}, Lio/appium/android/apis/view/List5;->access$000(Lio/appium/android/apis/view/List5;)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, p1

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method
