.class public Lio/appium/android/apis/view/SearchViewFilterMode;
.super Landroid/app/Activity;
.source "SearchViewFilterMode.java"

# interfaces
.implements Landroid/widget/SearchView$OnQueryTextListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "SearchViewFilterMode"


# instance fields
.field private mAdapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mListView:Landroid/widget/ListView;

.field private mSearchView:Landroid/widget/SearchView;

.field private final mStrings:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 33
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 41
    sget-object v0, Lio/appium/android/apis/view/Cheeses;->sCheeseStrings:[Ljava/lang/String;

    iput-object v0, p0, Lio/appium/android/apis/view/SearchViewFilterMode;->mStrings:[Ljava/lang/String;

    return-void
.end method

.method private setupSearchView()V
    .locals 2

    .line 60
    iget-object v0, p0, Lio/appium/android/apis/view/SearchViewFilterMode;->mSearchView:Landroid/widget/SearchView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/SearchView;->setIconifiedByDefault(Z)V

    .line 61
    iget-object v0, p0, Lio/appium/android/apis/view/SearchViewFilterMode;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v0, p0}, Landroid/widget/SearchView;->setOnQueryTextListener(Landroid/widget/SearchView$OnQueryTextListener;)V

    .line 62
    iget-object v0, p0, Lio/appium/android/apis/view/SearchViewFilterMode;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v0, v1}, Landroid/widget/SearchView;->setSubmitButtonEnabled(Z)V

    .line 63
    iget-object v0, p0, Lio/appium/android/apis/view/SearchViewFilterMode;->mSearchView:Landroid/widget/SearchView;

    const v1, 0x7f0e00fa

    invoke-virtual {p0, v1}, Lio/appium/android/apis/view/SearchViewFilterMode;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/SearchView;->setQueryHint(Ljava/lang/CharSequence;)V

    .line 64
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 45
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 46
    invoke-virtual {p0}, Lio/appium/android/apis/view/SearchViewFilterMode;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/Window;->requestFeature(I)Z

    .line 48
    const v0, 0x7f0b00ec

    invoke-virtual {p0, v0}, Lio/appium/android/apis/view/SearchViewFilterMode;->setContentView(I)V

    .line 50
    const v0, 0x7f0901af

    invoke-virtual {p0, v0}, Lio/appium/android/apis/view/SearchViewFilterMode;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SearchView;

    iput-object v0, p0, Lio/appium/android/apis/view/SearchViewFilterMode;->mSearchView:Landroid/widget/SearchView;

    .line 51
    const v0, 0x7f09011a

    invoke-virtual {p0, v0}, Lio/appium/android/apis/view/SearchViewFilterMode;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lio/appium/android/apis/view/SearchViewFilterMode;->mListView:Landroid/widget/ListView;

    .line 52
    iget-object v0, p0, Lio/appium/android/apis/view/SearchViewFilterMode;->mListView:Landroid/widget/ListView;

    new-instance v1, Landroid/widget/ArrayAdapter;

    iget-object v2, p0, Lio/appium/android/apis/view/SearchViewFilterMode;->mStrings:[Ljava/lang/String;

    const v3, 0x1090003

    invoke-direct {v1, p0, v3, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    iput-object v1, p0, Lio/appium/android/apis/view/SearchViewFilterMode;->mAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 55
    iget-object v0, p0, Lio/appium/android/apis/view/SearchViewFilterMode;->mListView:Landroid/widget/ListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setTextFilterEnabled(Z)V

    .line 56
    invoke-direct {p0}, Lio/appium/android/apis/view/SearchViewFilterMode;->setupSearchView()V

    .line 57
    return-void
.end method

.method public onQueryTextChange(Ljava/lang/String;)Z
    .locals 2
    .param p1, "newText"    # Ljava/lang/String;

    .line 67
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lio/appium/android/apis/view/SearchViewFilterMode;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->clearTextFilter()V

    goto :goto_0

    .line 70
    :cond_0
    iget-object v0, p0, Lio/appium/android/apis/view/SearchViewFilterMode;->mListView:Landroid/widget/ListView;

    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setFilterText(Ljava/lang/String;)V

    .line 72
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public onQueryTextSubmit(Ljava/lang/String;)Z
    .locals 1
    .param p1, "query"    # Ljava/lang/String;

    .line 76
    const/4 v0, 0x0

    return v0
.end method
