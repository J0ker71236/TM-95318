.class public Lio/appium/android/apis/app/LoaderCustom$AppListFragment;
.super Landroid/app/ListFragment;
.source "LoaderCustom.java"

# interfaces
.implements Landroid/widget/SearchView$OnQueryTextListener;
.implements Landroid/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/appium/android/apis/app/LoaderCustom;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AppListFragment"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/app/ListFragment;",
        "Landroid/widget/SearchView$OnQueryTextListener;",
        "Landroid/app/LoaderManager$LoaderCallbacks<",
        "Ljava/util/List<",
        "Lio/appium/android/apis/app/LoaderCustom$AppEntry;",
        ">;>;"
    }
.end annotation


# instance fields
.field mAdapter:Lio/appium/android/apis/app/LoaderCustom$AppListAdapter;

.field mCurFilter:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 399
    invoke-direct {p0}, Landroid/app/ListFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 409
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 413
    const-string v0, "No applications"

    invoke-virtual {p0, v0}, Lio/appium/android/apis/app/LoaderCustom$AppListFragment;->setEmptyText(Ljava/lang/CharSequence;)V

    .line 416
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lio/appium/android/apis/app/LoaderCustom$AppListFragment;->setHasOptionsMenu(Z)V

    .line 419
    new-instance v0, Lio/appium/android/apis/app/LoaderCustom$AppListAdapter;

    invoke-virtual {p0}, Lio/appium/android/apis/app/LoaderCustom$AppListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lio/appium/android/apis/app/LoaderCustom$AppListAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lio/appium/android/apis/app/LoaderCustom$AppListFragment;->mAdapter:Lio/appium/android/apis/app/LoaderCustom$AppListAdapter;

    .line 420
    iget-object v0, p0, Lio/appium/android/apis/app/LoaderCustom$AppListFragment;->mAdapter:Lio/appium/android/apis/app/LoaderCustom$AppListAdapter;

    invoke-virtual {p0, v0}, Lio/appium/android/apis/app/LoaderCustom$AppListFragment;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 423
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lio/appium/android/apis/app/LoaderCustom$AppListFragment;->setListShown(Z)V

    .line 427
    invoke-virtual {p0}, Lio/appium/android/apis/app/LoaderCustom$AppListFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2, p0}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 428
    return-void
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 2
    .param p1, "id"    # I
    .param p2, "args"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/content/Loader<",
            "Ljava/util/List<",
            "Lio/appium/android/apis/app/LoaderCustom$AppEntry;",
            ">;>;"
        }
    .end annotation

    .line 462
    new-instance v0, Lio/appium/android/apis/app/LoaderCustom$AppListLoader;

    invoke-virtual {p0}, Lio/appium/android/apis/app/LoaderCustom$AppListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lio/appium/android/apis/app/LoaderCustom$AppListLoader;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .line 432
    const-string v0, "Search"

    invoke-interface {p1, v0}, Landroid/view/Menu;->add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    .line 433
    .local v0, "item":Landroid/view/MenuItem;
    const v1, 0x108004f

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 434
    const/16 v1, 0x9

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 436
    new-instance v1, Landroid/widget/SearchView;

    invoke-virtual {p0}, Lio/appium/android/apis/app/LoaderCustom$AppListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/SearchView;-><init>(Landroid/content/Context;)V

    .line 437
    .local v1, "sv":Landroid/widget/SearchView;
    invoke-virtual {v1, p0}, Landroid/widget/SearchView;->setOnQueryTextListener(Landroid/widget/SearchView$OnQueryTextListener;)V

    .line 438
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setActionView(Landroid/view/View;)Landroid/view/MenuItem;

    .line 439
    return-void
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 3
    .param p1, "l"    # Landroid/widget/ListView;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J

    .line 456
    const-string v0, "LoaderCustom"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Item clicked: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0

    .line 399
    check-cast p2, Ljava/util/List;

    invoke-virtual {p0, p1, p2}, Lio/appium/android/apis/app/LoaderCustom$AppListFragment;->onLoadFinished(Landroid/content/Loader;Ljava/util/List;)V

    return-void
.end method

.method public onLoadFinished(Landroid/content/Loader;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader<",
            "Ljava/util/List<",
            "Lio/appium/android/apis/app/LoaderCustom$AppEntry;",
            ">;>;",
            "Ljava/util/List<",
            "Lio/appium/android/apis/app/LoaderCustom$AppEntry;",
            ">;)V"
        }
    .end annotation

    .line 467
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Ljava/util/List<Lio/appium/android/apis/app/LoaderCustom$AppEntry;>;>;"
    .local p2, "data":Ljava/util/List;, "Ljava/util/List<Lio/appium/android/apis/app/LoaderCustom$AppEntry;>;"
    iget-object v0, p0, Lio/appium/android/apis/app/LoaderCustom$AppListFragment;->mAdapter:Lio/appium/android/apis/app/LoaderCustom$AppListAdapter;

    invoke-virtual {v0, p2}, Lio/appium/android/apis/app/LoaderCustom$AppListAdapter;->setData(Ljava/util/List;)V

    .line 470
    invoke-virtual {p0}, Lio/appium/android/apis/app/LoaderCustom$AppListFragment;->isResumed()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 471
    invoke-virtual {p0, v1}, Lio/appium/android/apis/app/LoaderCustom$AppListFragment;->setListShown(Z)V

    goto :goto_0

    .line 473
    :cond_0
    invoke-virtual {p0, v1}, Lio/appium/android/apis/app/LoaderCustom$AppListFragment;->setListShownNoAnimation(Z)V

    .line 475
    :goto_0
    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader<",
            "Ljava/util/List<",
            "Lio/appium/android/apis/app/LoaderCustom$AppEntry;",
            ">;>;)V"
        }
    .end annotation

    .line 479
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Ljava/util/List<Lio/appium/android/apis/app/LoaderCustom$AppEntry;>;>;"
    iget-object v0, p0, Lio/appium/android/apis/app/LoaderCustom$AppListFragment;->mAdapter:Lio/appium/android/apis/app/LoaderCustom$AppListAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lio/appium/android/apis/app/LoaderCustom$AppListAdapter;->setData(Ljava/util/List;)V

    .line 480
    return-void
.end method

.method public onQueryTextChange(Ljava/lang/String;)Z
    .locals 2
    .param p1, "newText"    # Ljava/lang/String;

    .line 444
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    move-object v0, p1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lio/appium/android/apis/app/LoaderCustom$AppListFragment;->mCurFilter:Ljava/lang/String;

    .line 445
    iget-object v0, p0, Lio/appium/android/apis/app/LoaderCustom$AppListFragment;->mAdapter:Lio/appium/android/apis/app/LoaderCustom$AppListAdapter;

    invoke-virtual {v0}, Lio/appium/android/apis/app/LoaderCustom$AppListAdapter;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    iget-object v1, p0, Lio/appium/android/apis/app/LoaderCustom$AppListFragment;->mCurFilter:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;)V

    .line 446
    const/4 v0, 0x1

    return v0
.end method

.method public onQueryTextSubmit(Ljava/lang/String;)Z
    .locals 1
    .param p1, "query"    # Ljava/lang/String;

    .line 451
    const/4 v0, 0x1

    return v0
.end method
