.class public Lio/appium/android/apis/text/Unicode;
.super Landroid/app/ListActivity;
.source "Unicode.java"


# instance fields
.field private mStrings:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 27
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 40
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "\u0639\u0631\u0628\u064a"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "\u0ba4\u0bae\u0bbf\u0bb4\u0bcd"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iput-object v0, p0, Lio/appium/android/apis/text/Unicode;->mStrings:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 31
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 35
    new-instance v0, Landroid/widget/ArrayAdapter;

    iget-object v1, p0, Lio/appium/android/apis/text/Unicode;->mStrings:[Ljava/lang/String;

    const v2, 0x1090003

    invoke-direct {v0, p0, v2, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lio/appium/android/apis/text/Unicode;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 37
    invoke-virtual {p0}, Lio/appium/android/apis/text/Unicode;->getListView()Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setTextFilterEnabled(Z)V

    .line 38
    return-void
.end method
