.class public Lio/appium/android/apis/view/List15;
.super Landroid/app/ListActivity;
.source "List15.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/appium/android/apis/view/List15$ModeCallback;
    }
.end annotation


# instance fields
.field private mStrings:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 33
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 103
    sget-object v0, Lio/appium/android/apis/view/Cheeses;->sCheeseStrings:[Ljava/lang/String;

    iput-object v0, p0, Lio/appium/android/apis/view/List15;->mStrings:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 36
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 37
    invoke-virtual {p0}, Lio/appium/android/apis/view/List15;->getListView()Landroid/widget/ListView;

    move-result-object v0

    .line 38
    .local v0, "lv":Landroid/widget/ListView;
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 39
    new-instance v1, Lio/appium/android/apis/view/List15$ModeCallback;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lio/appium/android/apis/view/List15$ModeCallback;-><init>(Lio/appium/android/apis/view/List15;Lio/appium/android/apis/view/List15$1;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setMultiChoiceModeListener(Landroid/widget/AbsListView$MultiChoiceModeListener;)V

    .line 40
    new-instance v1, Landroid/widget/ArrayAdapter;

    iget-object v2, p0, Lio/appium/android/apis/view/List15;->mStrings:[Ljava/lang/String;

    const v3, 0x1090005

    invoke-direct {v1, p0, v3, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    invoke-virtual {p0, v1}, Lio/appium/android/apis/view/List15;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 42
    return-void
.end method

.method protected onPostCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 46
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onPostCreate(Landroid/os/Bundle;)V

    .line 47
    invoke-virtual {p0}, Lio/appium/android/apis/view/List15;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const-string v1, "Long press to start selection"

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 48
    return-void
.end method
