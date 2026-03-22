.class public Lio/appium/android/apis/view/SearchViewActionBar;
.super Landroid/app/Activity;
.source "SearchViewActionBar.java"

# interfaces
.implements Landroid/widget/SearchView$OnQueryTextListener;


# instance fields
.field private mSearchView:Landroid/widget/SearchView;

.field private mStatusView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private setupSearchView(Landroid/view/MenuItem;)V
    .locals 7
    .param p1, "searchItem"    # Landroid/view/MenuItem;

    .line 72
    invoke-virtual {p0}, Lio/appium/android/apis/view/SearchViewActionBar;->isAlwaysExpanded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lio/appium/android/apis/view/SearchViewActionBar;->mSearchView:Landroid/widget/SearchView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/SearchView;->setIconifiedByDefault(Z)V

    goto :goto_0

    .line 75
    :cond_0
    const/16 v0, 0x9

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setShowAsActionFlags(I)Landroid/view/MenuItem;

    .line 79
    :goto_0
    const-string v0, "search"

    invoke-virtual {p0, v0}, Lio/appium/android/apis/view/SearchViewActionBar;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/SearchManager;

    .line 80
    .local v0, "searchManager":Landroid/app/SearchManager;
    if-eqz v0, :cond_3

    .line 81
    invoke-virtual {v0}, Landroid/app/SearchManager;->getSearchablesInGlobalSearch()Ljava/util/List;

    move-result-object v1

    .line 84
    .local v1, "searchables":Ljava/util/List;, "Ljava/util/List<Landroid/app/SearchableInfo;>;"
    invoke-virtual {p0}, Lio/appium/android/apis/view/SearchViewActionBar;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/SearchManager;->getSearchableInfo(Landroid/content/ComponentName;)Landroid/app/SearchableInfo;

    move-result-object v2

    .line 85
    .local v2, "info":Landroid/app/SearchableInfo;
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/SearchableInfo;

    .line 86
    .local v4, "inf":Landroid/app/SearchableInfo;
    invoke-virtual {v4}, Landroid/app/SearchableInfo;->getSuggestAuthority()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 87
    invoke-virtual {v4}, Landroid/app/SearchableInfo;->getSuggestAuthority()Ljava/lang/String;

    move-result-object v5

    const-string v6, "applications"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 88
    move-object v2, v4

    .line 90
    .end local v4    # "inf":Landroid/app/SearchableInfo;
    :cond_1
    goto :goto_1

    .line 91
    :cond_2
    iget-object v3, p0, Lio/appium/android/apis/view/SearchViewActionBar;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v3, v2}, Landroid/widget/SearchView;->setSearchableInfo(Landroid/app/SearchableInfo;)V

    .line 94
    .end local v1    # "searchables":Ljava/util/List;, "Ljava/util/List<Landroid/app/SearchableInfo;>;"
    .end local v2    # "info":Landroid/app/SearchableInfo;
    :cond_3
    iget-object v1, p0, Lio/appium/android/apis/view/SearchViewActionBar;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v1, p0}, Landroid/widget/SearchView;->setOnQueryTextListener(Landroid/widget/SearchView$OnQueryTextListener;)V

    .line 95
    return-void
.end method


# virtual methods
.method protected isAlwaysExpanded()Z
    .locals 1

    .line 113
    const/4 v0, 0x0

    return v0
.end method

.method public onClose()Z
    .locals 2

    .line 108
    iget-object v0, p0, Lio/appium/android/apis/view/SearchViewActionBar;->mStatusView:Landroid/widget/TextView;

    const-string v1, "Closed!"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 109
    const/4 v0, 0x0

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 49
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 50
    invoke-virtual {p0}, Lio/appium/android/apis/view/SearchViewActionBar;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/Window;->requestFeature(I)Z

    .line 52
    const v0, 0x7f0b00eb

    invoke-virtual {p0, v0}, Lio/appium/android/apis/view/SearchViewActionBar;->setContentView(I)V

    .line 54
    const v0, 0x7f0901f4

    invoke-virtual {p0, v0}, Lio/appium/android/apis/view/SearchViewActionBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lio/appium/android/apis/view/SearchViewActionBar;->mStatusView:Landroid/widget/TextView;

    .line 55
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;

    .line 59
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 61
    invoke-virtual {p0}, Lio/appium/android/apis/view/SearchViewActionBar;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 62
    .local v0, "inflater":Landroid/view/MenuInflater;
    const v1, 0x7f0c000e

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 63
    const v1, 0x7f09001a

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 64
    .local v1, "searchItem":Landroid/view/MenuItem;
    invoke-interface {v1}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/SearchView;

    iput-object v2, p0, Lio/appium/android/apis/view/SearchViewActionBar;->mSearchView:Landroid/widget/SearchView;

    .line 65
    invoke-direct {p0, v1}, Lio/appium/android/apis/view/SearchViewActionBar;->setupSearchView(Landroid/view/MenuItem;)V

    .line 67
    const/4 v2, 0x1

    return v2
.end method

.method public onQueryTextChange(Ljava/lang/String;)Z
    .locals 3
    .param p1, "newText"    # Ljava/lang/String;

    .line 98
    iget-object v0, p0, Lio/appium/android/apis/view/SearchViewActionBar;->mStatusView:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Query = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 99
    const/4 v0, 0x0

    return v0
.end method

.method public onQueryTextSubmit(Ljava/lang/String;)Z
    .locals 3
    .param p1, "query"    # Ljava/lang/String;

    .line 103
    iget-object v0, p0, Lio/appium/android/apis/view/SearchViewActionBar;->mStatusView:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Query = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " : submitted"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 104
    const/4 v0, 0x0

    return v0
.end method
