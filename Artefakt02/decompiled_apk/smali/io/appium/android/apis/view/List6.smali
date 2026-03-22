.class public Lio/appium/android/apis/view/List6;
.super Landroid/app/ListActivity;
.source "List6.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/appium/android/apis/view/List6$SpeechView;,
        Lio/appium/android/apis/view/List6$SpeechListAdapter;
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
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 41
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 44
    new-instance v0, Lio/appium/android/apis/view/List6$SpeechListAdapter;

    invoke-direct {v0, p0, p0}, Lio/appium/android/apis/view/List6$SpeechListAdapter;-><init>(Lio/appium/android/apis/view/List6;Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lio/appium/android/apis/view/List6;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 45
    return-void
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 1
    .param p1, "l"    # Landroid/widget/ListView;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J

    .line 51
    invoke-virtual {p0}, Lio/appium/android/apis/view/List6;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lio/appium/android/apis/view/List6$SpeechListAdapter;

    invoke-virtual {v0, p3}, Lio/appium/android/apis/view/List6$SpeechListAdapter;->toggle(I)V

    .line 52
    return-void
.end method
