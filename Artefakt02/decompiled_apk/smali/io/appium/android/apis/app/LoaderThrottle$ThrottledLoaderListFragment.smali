.class public Lio/appium/android/apis/app/LoaderThrottle$ThrottledLoaderListFragment;
.super Landroid/app/ListFragment;
.source "LoaderThrottle.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/appium/android/apis/app/LoaderThrottle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ThrottledLoaderListFragment"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/app/ListFragment;",
        "Landroid/app/LoaderManager$LoaderCallbacks<",
        "Landroid/database/Cursor;",
        ">;"
    }
.end annotation


# static fields
.field static final CLEAR_ID:I = 0x2

.field static final POPULATE_ID:I = 0x1

.field static final PROJECTION:[Ljava/lang/String;


# instance fields
.field mAdapter:Landroid/widget/SimpleCursorAdapter;

.field mCurFilter:Ljava/lang/String;

.field mPopulatingTask:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 484
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "data"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sput-object v0, Lio/appium/android/apis/app/LoaderThrottle$ThrottledLoaderListFragment;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 383
    invoke-direct {p0}, Landroid/app/ListFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 400
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 402
    const-string v0, "No data.  Select \'Populate\' to fill with data from Z to A at a rate of 4 per second."

    invoke-virtual {p0, v0}, Lio/appium/android/apis/app/LoaderThrottle$ThrottledLoaderListFragment;->setEmptyText(Ljava/lang/CharSequence;)V

    .line 403
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lio/appium/android/apis/app/LoaderThrottle$ThrottledLoaderListFragment;->setHasOptionsMenu(Z)V

    .line 406
    new-instance v8, Landroid/widget/SimpleCursorAdapter;

    invoke-virtual {p0}, Lio/appium/android/apis/app/LoaderThrottle$ThrottledLoaderListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    new-array v5, v0, [Ljava/lang/String;

    const-string v1, "data"

    const/4 v9, 0x0

    aput-object v1, v5, v9

    new-array v6, v0, [I

    const v0, 0x1020014

    aput v0, v6, v9

    const v3, 0x1090003

    const/4 v4, 0x0

    const/4 v7, 0x0

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Landroid/widget/SimpleCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[II)V

    iput-object v8, p0, Lio/appium/android/apis/app/LoaderThrottle$ThrottledLoaderListFragment;->mAdapter:Landroid/widget/SimpleCursorAdapter;

    .line 410
    iget-object v0, p0, Lio/appium/android/apis/app/LoaderThrottle$ThrottledLoaderListFragment;->mAdapter:Landroid/widget/SimpleCursorAdapter;

    invoke-virtual {p0, v0}, Lio/appium/android/apis/app/LoaderThrottle$ThrottledLoaderListFragment;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 413
    invoke-virtual {p0, v9}, Lio/appium/android/apis/app/LoaderThrottle$ThrottledLoaderListFragment;->setListShown(Z)V

    .line 417
    invoke-virtual {p0}, Lio/appium/android/apis/app/LoaderThrottle$ThrottledLoaderListFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v9, v1, p0}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 418
    return-void
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 8
    .param p1, "id"    # I
    .param p2, "args"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/content/Loader<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    .line 490
    new-instance v7, Landroid/content/CursorLoader;

    invoke-virtual {p0}, Lio/appium/android/apis/app/LoaderThrottle$ThrottledLoaderListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    sget-object v2, Lio/appium/android/apis/app/LoaderThrottle$MainTable;->CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Lio/appium/android/apis/app/LoaderThrottle$ThrottledLoaderListFragment;->PROJECTION:[Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Landroid/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 492
    .local v0, "cl":Landroid/content/CursorLoader;
    const-wide/16 v1, 0x7d0

    invoke-virtual {v0, v1, v2}, Landroid/content/CursorLoader;->setUpdateThrottle(J)V

    .line 493
    return-object v0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .line 421
    const-string v0, "Populate"

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-interface {p1, v2, v1, v2, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    .line 422
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 423
    const-string v0, "Clear"

    const/4 v3, 0x2

    invoke-interface {p1, v2, v3, v2, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    .line 424
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 425
    return-void
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 3
    .param p1, "l"    # Landroid/widget/ListView;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J

    .line 480
    const-string v0, "LoaderThrottle"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Item clicked: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    return-void
.end method

.method public onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V
    .locals 2
    .param p2, "data"    # Landroid/database/Cursor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader<",
            "Landroid/database/Cursor;",
            ">;",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation

    .line 497
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Landroid/database/Cursor;>;"
    iget-object v0, p0, Lio/appium/android/apis/app/LoaderThrottle$ThrottledLoaderListFragment;->mAdapter:Landroid/widget/SimpleCursorAdapter;

    invoke-virtual {v0, p2}, Landroid/widget/SimpleCursorAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 500
    invoke-virtual {p0}, Lio/appium/android/apis/app/LoaderThrottle$ThrottledLoaderListFragment;->isResumed()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 501
    invoke-virtual {p0, v1}, Lio/appium/android/apis/app/LoaderThrottle$ThrottledLoaderListFragment;->setListShown(Z)V

    goto :goto_0

    .line 503
    :cond_0
    invoke-virtual {p0, v1}, Lio/appium/android/apis/app/LoaderThrottle$ThrottledLoaderListFragment;->setListShownNoAnimation(Z)V

    .line 505
    :goto_0
    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0

    .line 383
    check-cast p2, Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2}, Lio/appium/android/apis/app/LoaderThrottle$ThrottledLoaderListFragment;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader<",
            "Landroid/database/Cursor;",
            ">;)V"
        }
    .end annotation

    .line 508
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Landroid/database/Cursor;>;"
    iget-object v0, p0, Lio/appium/android/apis/app/LoaderThrottle$ThrottledLoaderListFragment;->mAdapter:Landroid/widget/SimpleCursorAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/SimpleCursorAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 509
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5
    .param p1, "item"    # Landroid/view/MenuItem;

    .line 428
    invoke-virtual {p0}, Lio/appium/android/apis/app/LoaderThrottle$ThrottledLoaderListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 430
    .local v0, "cr":Landroid/content/ContentResolver;
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    packed-switch v1, :pswitch_data_0

    .line 474
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    return v1

    .line 460
    :pswitch_0
    iget-object v1, p0, Lio/appium/android/apis/app/LoaderThrottle$ThrottledLoaderListFragment;->mPopulatingTask:Landroid/os/AsyncTask;

    if-eqz v1, :cond_0

    .line 461
    invoke-virtual {v1, v2}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 462
    iput-object v4, p0, Lio/appium/android/apis/app/LoaderThrottle$ThrottledLoaderListFragment;->mPopulatingTask:Landroid/os/AsyncTask;

    .line 464
    :cond_0
    new-instance v1, Lio/appium/android/apis/app/LoaderThrottle$ThrottledLoaderListFragment$2;

    invoke-direct {v1, p0, v0}, Lio/appium/android/apis/app/LoaderThrottle$ThrottledLoaderListFragment$2;-><init>(Lio/appium/android/apis/app/LoaderThrottle$ThrottledLoaderListFragment;Landroid/content/ContentResolver;)V

    .line 470
    .local v1, "task":Landroid/os/AsyncTask;, "Landroid/os/AsyncTask<Ljava/lang/Void;Ljava/lang/Void;Ljava/lang/Void;>;"
    check-cast v4, [Ljava/lang/Void;

    invoke-virtual {v1, v4}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 471
    return v3

    .line 432
    .end local v1    # "task":Landroid/os/AsyncTask;, "Landroid/os/AsyncTask<Ljava/lang/Void;Ljava/lang/Void;Ljava/lang/Void;>;"
    :pswitch_1
    iget-object v1, p0, Lio/appium/android/apis/app/LoaderThrottle$ThrottledLoaderListFragment;->mPopulatingTask:Landroid/os/AsyncTask;

    if-eqz v1, :cond_1

    .line 433
    invoke-virtual {v1, v2}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 435
    :cond_1
    new-instance v1, Lio/appium/android/apis/app/LoaderThrottle$ThrottledLoaderListFragment$1;

    invoke-direct {v1, p0, v0}, Lio/appium/android/apis/app/LoaderThrottle$ThrottledLoaderListFragment$1;-><init>(Lio/appium/android/apis/app/LoaderThrottle$ThrottledLoaderListFragment;Landroid/content/ContentResolver;)V

    iput-object v1, p0, Lio/appium/android/apis/app/LoaderThrottle$ThrottledLoaderListFragment;->mPopulatingTask:Landroid/os/AsyncTask;

    .line 455
    iget-object v1, p0, Lio/appium/android/apis/app/LoaderThrottle$ThrottledLoaderListFragment;->mPopulatingTask:Landroid/os/AsyncTask;

    sget-object v2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    check-cast v4, [Ljava/lang/Void;

    invoke-virtual {v1, v2, v4}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 457
    return v3

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
