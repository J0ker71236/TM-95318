.class public Lio/appium/android/apis/view/List2;
.super Landroid/app/ListActivity;
.source "List2.java"


# static fields
.field private static final CONTACT_PROJECTION:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 53
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "display_name"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sput-object v0, Lio/appium/android/apis/view/List2;->CONTACT_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 12
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 34
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 37
    invoke-virtual {p0}, Lio/appium/android/apis/view/List2;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lio/appium/android/apis/view/List2;->CONTACT_PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 39
    .local v0, "c":Landroid/database/Cursor;
    invoke-virtual {p0, v0}, Lio/appium/android/apis/view/List2;->startManagingCursor(Landroid/database/Cursor;)V

    .line 41
    new-instance v1, Landroid/widget/SimpleCursorAdapter;

    const/4 v2, 0x1

    new-array v10, v2, [Ljava/lang/String;

    const-string v3, "display_name"

    const/4 v4, 0x0

    aput-object v3, v10, v4

    new-array v11, v2, [I

    const v2, 0x1020014

    aput v2, v11, v4

    const v8, 0x1090003

    move-object v6, v1

    move-object v7, p0

    move-object v9, v0

    invoke-direct/range {v6 .. v11}, Landroid/widget/SimpleCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[I)V

    .line 50
    .local v1, "adapter":Landroid/widget/ListAdapter;
    invoke-virtual {p0, v1}, Lio/appium/android/apis/view/List2;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 51
    return-void
.end method
