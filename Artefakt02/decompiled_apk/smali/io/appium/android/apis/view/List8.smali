.class public Lio/appium/android/apis/view/List8;
.super Landroid/app/ListActivity;
.source "List8.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/appium/android/apis/view/List8$PhotoAdapter;
    }
.end annotation


# instance fields
.field mAdapter:Lio/appium/android/apis/view/List8$PhotoAdapter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 45
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 48
    const v0, 0x7f0b00a2

    invoke-virtual {p0, v0}, Lio/appium/android/apis/view/List8;->setContentView(I)V

    .line 51
    invoke-virtual {p0}, Lio/appium/android/apis/view/List8;->getListView()Landroid/widget/ListView;

    move-result-object v0

    const v1, 0x7f0900ae

    invoke-virtual {p0, v1}, Lio/appium/android/apis/view/List8;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 54
    new-instance v0, Lio/appium/android/apis/view/List8$PhotoAdapter;

    invoke-direct {v0, p0, p0}, Lio/appium/android/apis/view/List8$PhotoAdapter;-><init>(Lio/appium/android/apis/view/List8;Landroid/content/Context;)V

    iput-object v0, p0, Lio/appium/android/apis/view/List8;->mAdapter:Lio/appium/android/apis/view/List8$PhotoAdapter;

    .line 55
    iget-object v0, p0, Lio/appium/android/apis/view/List8;->mAdapter:Lio/appium/android/apis/view/List8$PhotoAdapter;

    invoke-virtual {p0, v0}, Lio/appium/android/apis/view/List8;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 58
    const v0, 0x7f09006b

    invoke-virtual {p0, v0}, Lio/appium/android/apis/view/List8;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 59
    .local v0, "clear":Landroid/widget/Button;
    new-instance v1, Lio/appium/android/apis/view/List8$1;

    invoke-direct {v1, p0}, Lio/appium/android/apis/view/List8$1;-><init>(Lio/appium/android/apis/view/List8;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 66
    const v1, 0x7f090022

    invoke-virtual {p0, v1}, Lio/appium/android/apis/view/List8;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 67
    .local v1, "add":Landroid/widget/Button;
    new-instance v2, Lio/appium/android/apis/view/List8$2;

    invoke-direct {v2, p0}, Lio/appium/android/apis/view/List8$2;-><init>(Lio/appium/android/apis/view/List8;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 72
    return-void
.end method
