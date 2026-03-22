.class public Lio/appium/android/apis/view/List3;
.super Landroid/app/ListActivity;
.source "List3.java"


# static fields
.field private static final COLUMN_LABEL:I = 0x2

.field private static final COLUMN_TYPE:I = 0x1

.field private static final PHONE_PROJECTION:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 75
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "data2"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "data3"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, "data1"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sput-object v0, Lio/appium/android/apis/view/List3;->PHONE_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 12
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 37
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 40
    invoke-virtual {p0}, Lio/appium/android/apis/view/List3;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lio/appium/android/apis/view/List3;->PHONE_PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 42
    .local v0, "c":Landroid/database/Cursor;
    invoke-virtual {p0, v0}, Lio/appium/android/apis/view/List3;->startManagingCursor(Landroid/database/Cursor;)V

    .line 45
    new-instance v1, Landroid/widget/SimpleCursorAdapter;

    const/4 v2, 0x2

    new-array v10, v2, [Ljava/lang/String;

    const-string v3, "data2"

    const/4 v4, 0x0

    aput-object v3, v10, v4

    const-string v3, "data1"

    const/4 v4, 0x1

    aput-object v3, v10, v4

    new-array v11, v2, [I

    fill-array-data v11, :array_0

    const v8, 0x1090004

    move-object v6, v1

    move-object v7, p0

    move-object v9, v0

    invoke-direct/range {v6 .. v11}, Landroid/widget/SimpleCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[I)V

    .line 53
    .local v1, "adapter":Landroid/widget/SimpleCursorAdapter;
    new-instance v2, Lio/appium/android/apis/view/List3$1;

    invoke-direct {v2, p0}, Lio/appium/android/apis/view/List3$1;-><init>(Lio/appium/android/apis/view/List3;)V

    invoke-virtual {v1, v2}, Landroid/widget/SimpleCursorAdapter;->setViewBinder(Landroid/widget/SimpleCursorAdapter$ViewBinder;)V

    .line 72
    invoke-virtual {p0, v1}, Lio/appium/android/apis/view/List3;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 73
    return-void

    :array_0
    .array-data 4
        0x1020014
        0x1020015
    .end array-data
.end method
