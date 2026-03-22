.class public Lio/appium/android/apis/app/LoaderCursor$CursorLoaderListFragment;
.super Landroid/app/ListFragment;
.source "LoaderCursor.java"

# interfaces
.implements Landroid/widget/SearchView$OnQueryTextListener;
.implements Landroid/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/appium/android/apis/app/LoaderCursor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CursorLoaderListFragment"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/app/ListFragment;",
        "Landroid/widget/SearchView$OnQueryTextListener;",
        "Landroid/app/LoaderManager$LoaderCallbacks<",
        "Landroid/database/Cursor;",
        ">;"
    }
.end annotation


# static fields
.field static final CONTACTS_SUMMARY_PROJECTION:[Ljava/lang/String;


# instance fields
.field mAdapter:Landroid/widget/SimpleCursorAdapter;

.field mCurFilter:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 134
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "display_name"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "contact_status"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, "contact_presence"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string v1, "photo_id"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-string v1, "lookup"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sput-object v0, Lio/appium/android/apis/app/LoaderCursor$CursorLoaderListFragment;->CONTACTS_SUMMARY_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 60
    invoke-direct {p0}, Landroid/app/ListFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 70
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 74
    const-string v0, "No phone numbers"

    invoke-virtual {p0, v0}, Lio/appium/android/apis/app/LoaderCursor$CursorLoaderListFragment;->setEmptyText(Ljava/lang/CharSequence;)V

    .line 77
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lio/appium/android/apis/app/LoaderCursor$CursorLoaderListFragment;->setHasOptionsMenu(Z)V

    .line 80
    new-instance v8, Landroid/widget/SimpleCursorAdapter;

    invoke-virtual {p0}, Lio/appium/android/apis/app/LoaderCursor$CursorLoaderListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const/4 v1, 0x2

    new-array v5, v1, [Ljava/lang/String;

    const-string v3, "display_name"

    const/4 v9, 0x0

    aput-object v3, v5, v9

    const-string v3, "contact_status"

    aput-object v3, v5, v0

    new-array v6, v1, [I

    fill-array-data v6, :array_0

    const v3, 0x1090004

    const/4 v4, 0x0

    const/4 v7, 0x0

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Landroid/widget/SimpleCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[II)V

    iput-object v8, p0, Lio/appium/android/apis/app/LoaderCursor$CursorLoaderListFragment;->mAdapter:Landroid/widget/SimpleCursorAdapter;

    .line 84
    iget-object v0, p0, Lio/appium/android/apis/app/LoaderCursor$CursorLoaderListFragment;->mAdapter:Landroid/widget/SimpleCursorAdapter;

    invoke-virtual {p0, v0}, Lio/appium/android/apis/app/LoaderCursor$CursorLoaderListFragment;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 87
    invoke-virtual {p0, v9}, Lio/appium/android/apis/app/LoaderCursor$CursorLoaderListFragment;->setListShown(Z)V

    .line 91
    invoke-virtual {p0}, Lio/appium/android/apis/app/LoaderCursor$CursorLoaderListFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v9, v1, p0}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 92
    return-void

    nop

    :array_0
    .array-data 4
        0x1020014
        0x1020015
    .end array-data
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 10
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

    .line 149
    iget-object v0, p0, Lio/appium/android/apis/app/LoaderCursor$CursorLoaderListFragment;->mCurFilter:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 150
    sget-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_FILTER_URI:Landroid/net/Uri;

    iget-object v1, p0, Lio/appium/android/apis/app/LoaderCursor$CursorLoaderListFragment;->mCurFilter:Ljava/lang/String;

    .line 151
    invoke-static {v1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 150
    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0

    .line 153
    :cond_0
    sget-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    .line 158
    .local v0, "baseUri":Landroid/net/Uri;
    :goto_0
    const-string v8, "((display_name NOTNULL) AND (has_phone_number=1) AND (display_name != \'\' ))"

    .line 161
    .local v8, "select":Ljava/lang/String;
    new-instance v9, Landroid/content/CursorLoader;

    invoke-virtual {p0}, Lio/appium/android/apis/app/LoaderCursor$CursorLoaderListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    sget-object v4, Lio/appium/android/apis/app/LoaderCursor$CursorLoaderListFragment;->CONTACTS_SUMMARY_PROJECTION:[Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "display_name COLLATE LOCALIZED ASC"

    move-object v1, v9

    move-object v3, v0

    move-object v5, v8

    invoke-direct/range {v1 .. v7}, Landroid/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-object v9
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .line 96
    const-string v0, "Search"

    invoke-interface {p1, v0}, Landroid/view/Menu;->add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    .line 97
    .local v0, "item":Landroid/view/MenuItem;
    const v1, 0x108004f

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 98
    const/16 v1, 0x9

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 100
    new-instance v1, Landroid/widget/SearchView;

    invoke-virtual {p0}, Lio/appium/android/apis/app/LoaderCursor$CursorLoaderListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/SearchView;-><init>(Landroid/content/Context;)V

    .line 101
    .local v1, "sv":Landroid/widget/SearchView;
    invoke-virtual {v1, p0}, Landroid/widget/SearchView;->setOnQueryTextListener(Landroid/widget/SearchView$OnQueryTextListener;)V

    .line 102
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setActionView(Landroid/view/View;)Landroid/view/MenuItem;

    .line 103
    return-void
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 3
    .param p1, "l"    # Landroid/widget/ListView;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J

    .line 130
    const-string v0, "FragmentComplexList"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Item clicked: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
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

    .line 169
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Landroid/database/Cursor;>;"
    iget-object v0, p0, Lio/appium/android/apis/app/LoaderCursor$CursorLoaderListFragment;->mAdapter:Landroid/widget/SimpleCursorAdapter;

    invoke-virtual {v0, p2}, Landroid/widget/SimpleCursorAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 172
    invoke-virtual {p0}, Lio/appium/android/apis/app/LoaderCursor$CursorLoaderListFragment;->isResumed()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 173
    invoke-virtual {p0, v1}, Lio/appium/android/apis/app/LoaderCursor$CursorLoaderListFragment;->setListShown(Z)V

    goto :goto_0

    .line 175
    :cond_0
    invoke-virtual {p0, v1}, Lio/appium/android/apis/app/LoaderCursor$CursorLoaderListFragment;->setListShownNoAnimation(Z)V

    .line 177
    :goto_0
    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0

    .line 60
    check-cast p2, Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2}, Lio/appium/android/apis/app/LoaderCursor$CursorLoaderListFragment;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

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

    .line 183
    .local p1, "loader":Landroid/content/Loader;, "Landroid/content/Loader<Landroid/database/Cursor;>;"
    iget-object v0, p0, Lio/appium/android/apis/app/LoaderCursor$CursorLoaderListFragment;->mAdapter:Landroid/widget/SimpleCursorAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/SimpleCursorAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 184
    return-void
.end method

.method public onQueryTextChange(Ljava/lang/String;)Z
    .locals 5
    .param p1, "newText"    # Ljava/lang/String;

    .line 109
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v0, p1

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 112
    .local v0, "newFilter":Ljava/lang/String;
    :goto_0
    iget-object v2, p0, Lio/appium/android/apis/app/LoaderCursor$CursorLoaderListFragment;->mCurFilter:Ljava/lang/String;

    const/4 v3, 0x1

    if-nez v2, :cond_1

    if-nez v0, :cond_1

    .line 113
    return v3

    .line 115
    :cond_1
    iget-object v2, p0, Lio/appium/android/apis/app/LoaderCursor$CursorLoaderListFragment;->mCurFilter:Ljava/lang/String;

    if-eqz v2, :cond_2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 116
    return v3

    .line 118
    :cond_2
    iput-object v0, p0, Lio/appium/android/apis/app/LoaderCursor$CursorLoaderListFragment;->mCurFilter:Ljava/lang/String;

    .line 119
    invoke-virtual {p0}, Lio/appium/android/apis/app/LoaderCursor$CursorLoaderListFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v1, p0}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 120
    return v3
.end method

.method public onQueryTextSubmit(Ljava/lang/String;)Z
    .locals 1
    .param p1, "query"    # Ljava/lang/String;

    .line 125
    const/4 v0, 0x1

    return v0
.end method
