.class Lio/appium/android/apis/view/List4$SpeechListAdapter;
.super Landroid/widget/BaseAdapter;
.source "List4.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/appium/android/apis/view/List4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SpeechListAdapter"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field final synthetic this$0:Lio/appium/android/apis/view/List4;


# direct methods
.method public constructor <init>(Lio/appium/android/apis/view/List4;Landroid/content/Context;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;

    .line 51
    iput-object p1, p0, Lio/appium/android/apis/view/List4$SpeechListAdapter;->this$0:Lio/appium/android/apis/view/List4;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 52
    iput-object p2, p0, Lio/appium/android/apis/view/List4$SpeechListAdapter;->mContext:Landroid/content/Context;

    .line 53
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 62
    sget-object v0, Lio/appium/android/apis/Shakespeare;->TITLES:[Ljava/lang/String;

    array-length v0, v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .line 74
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .line 83
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .line 94
    if-nez p2, :cond_0

    .line 95
    new-instance v0, Lio/appium/android/apis/view/List4$SpeechView;

    iget-object v1, p0, Lio/appium/android/apis/view/List4$SpeechListAdapter;->this$0:Lio/appium/android/apis/view/List4;

    iget-object v2, p0, Lio/appium/android/apis/view/List4$SpeechListAdapter;->mContext:Landroid/content/Context;

    sget-object v3, Lio/appium/android/apis/Shakespeare;->TITLES:[Ljava/lang/String;

    aget-object v3, v3, p1

    sget-object v4, Lio/appium/android/apis/Shakespeare;->DIALOGUE:[Ljava/lang/String;

    aget-object v4, v4, p1

    invoke-direct {v0, v1, v2, v3, v4}, Lio/appium/android/apis/view/List4$SpeechView;-><init>(Lio/appium/android/apis/view/List4;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 98
    :cond_0
    move-object v0, p2

    check-cast v0, Lio/appium/android/apis/view/List4$SpeechView;

    .line 99
    .local v0, "sv":Lio/appium/android/apis/view/List4$SpeechView;
    sget-object v1, Lio/appium/android/apis/Shakespeare;->TITLES:[Ljava/lang/String;

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Lio/appium/android/apis/view/List4$SpeechView;->setTitle(Ljava/lang/String;)V

    .line 100
    sget-object v1, Lio/appium/android/apis/Shakespeare;->DIALOGUE:[Ljava/lang/String;

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Lio/appium/android/apis/view/List4$SpeechView;->setDialogue(Ljava/lang/String;)V

    .line 103
    :goto_0
    return-object v0
.end method
