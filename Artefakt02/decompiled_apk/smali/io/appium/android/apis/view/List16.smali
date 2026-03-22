.class public Lio/appium/android/apis/view/List16;
.super Landroid/app/ListActivity;
.source "List16.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/appium/android/apis/view/List16$ModeCallback;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 38
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 39
    invoke-virtual {p0}, Lio/appium/android/apis/view/List16;->getListView()Landroid/widget/ListView;

    move-result-object v0

    .line 40
    .local v0, "lv":Landroid/widget/ListView;
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 41
    new-instance v1, Lio/appium/android/apis/view/List16$ModeCallback;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lio/appium/android/apis/view/List16$ModeCallback;-><init>(Lio/appium/android/apis/view/List16;Lio/appium/android/apis/view/List16$1;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setMultiChoiceModeListener(Landroid/widget/AbsListView$MultiChoiceModeListener;)V

    .line 42
    new-instance v1, Landroid/widget/ArrayAdapter;

    sget-object v2, Lio/appium/android/apis/view/Cheeses;->sCheeseStrings:[Ljava/lang/String;

    const v3, 0x1090016

    invoke-direct {v1, p0, v3, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    invoke-virtual {p0, v1}, Lio/appium/android/apis/view/List16;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 44
    return-void
.end method

.method protected onPostCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 48
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onPostCreate(Landroid/os/Bundle;)V

    .line 49
    invoke-virtual {p0}, Lio/appium/android/apis/view/List16;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const-string v1, "Long press to start selection"

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 50
    return-void
.end method
