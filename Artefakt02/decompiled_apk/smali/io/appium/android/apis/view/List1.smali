.class public Lio/appium/android/apis/view/List1;
.super Landroid/app/ListActivity;
.source "List1.java"


# instance fields
.field private mStrings:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 28
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 41
    sget-object v0, Lio/appium/android/apis/view/Cheeses;->sCheeseStrings:[Ljava/lang/String;

    iput-object v0, p0, Lio/appium/android/apis/view/List1;->mStrings:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 32
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 36
    new-instance v0, Landroid/widget/ArrayAdapter;

    iget-object v1, p0, Lio/appium/android/apis/view/List1;->mStrings:[Ljava/lang/String;

    const v2, 0x1090003

    invoke-direct {v0, p0, v2, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lio/appium/android/apis/view/List1;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 38
    invoke-virtual {p0}, Lio/appium/android/apis/view/List1;->getListView()Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setTextFilterEnabled(Z)V

    .line 39
    return-void
.end method
