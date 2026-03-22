.class public Lio/appium/android/apis/view/ExpandableList2;
.super Landroid/app/ExpandableListActivity;
.source "ExpandableList2.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/appium/android/apis/view/ExpandableList2$MyExpandableListAdapter;,
        Lio/appium/android/apis/view/ExpandableList2$QueryHandler;
    }
.end annotation


# static fields
.field private static final CONTACTS_PROJECTION:[Ljava/lang/String;

.field private static final GROUP_ID_COLUMN_INDEX:I = 0x0

.field private static final PHONE_NUMBER_PROJECTION:[Ljava/lang/String;

.field private static final TOKEN_CHILD:I = 0x1

.field private static final TOKEN_GROUP:I


# instance fields
.field private mAdapter:Landroid/widget/CursorTreeAdapter;

.field private mQueryHandler:Lio/appium/android/apis/view/ExpandableList2$QueryHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 36
    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/String;

    const-string v2, "_id"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "display_name"

    const/4 v4, 0x1

    aput-object v2, v1, v4

    sput-object v1, Lio/appium/android/apis/view/ExpandableList2;->CONTACTS_PROJECTION:[Ljava/lang/String;

    .line 42
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "data1"

    aput-object v1, v0, v4

    sput-object v0, Lio/appium/android/apis/view/ExpandableList2;->PHONE_NUMBER_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Landroid/app/ExpandableListActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000()[Ljava/lang/String;
    .locals 1

    .line 34
    sget-object v0, Lio/appium/android/apis/view/ExpandableList2;->PHONE_NUMBER_PROJECTION:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lio/appium/android/apis/view/ExpandableList2;)Lio/appium/android/apis/view/ExpandableList2$QueryHandler;
    .locals 1
    .param p0, "x0"    # Lio/appium/android/apis/view/ExpandableList2;

    .line 34
    iget-object v0, p0, Lio/appium/android/apis/view/ExpandableList2;->mQueryHandler:Lio/appium/android/apis/view/ExpandableList2$QueryHandler;

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 108
    invoke-super {p0, p1}, Landroid/app/ExpandableListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 111
    new-instance v9, Lio/appium/android/apis/view/ExpandableList2$MyExpandableListAdapter;

    const/4 v0, 0x1

    new-array v5, v0, [Ljava/lang/String;

    const-string v1, "display_name"

    const/4 v2, 0x0

    aput-object v1, v5, v2

    new-array v6, v0, [I

    const v1, 0x1020014

    aput v1, v6, v2

    new-array v7, v0, [Ljava/lang/String;

    const-string v3, "data1"

    aput-object v3, v7, v2

    new-array v8, v0, [I

    aput v1, v8, v2

    const v3, 0x1090006

    const v4, 0x1090006

    move-object v0, v9

    move-object v1, p0

    move-object v2, p0

    invoke-direct/range {v0 .. v8}, Lio/appium/android/apis/view/ExpandableList2$MyExpandableListAdapter;-><init>(Lio/appium/android/apis/view/ExpandableList2;Landroid/content/Context;II[Ljava/lang/String;[I[Ljava/lang/String;[I)V

    iput-object v9, p0, Lio/appium/android/apis/view/ExpandableList2;->mAdapter:Landroid/widget/CursorTreeAdapter;

    .line 120
    iget-object v0, p0, Lio/appium/android/apis/view/ExpandableList2;->mAdapter:Landroid/widget/CursorTreeAdapter;

    invoke-virtual {p0, v0}, Lio/appium/android/apis/view/ExpandableList2;->setListAdapter(Landroid/widget/ExpandableListAdapter;)V

    .line 122
    new-instance v0, Lio/appium/android/apis/view/ExpandableList2$QueryHandler;

    iget-object v1, p0, Lio/appium/android/apis/view/ExpandableList2;->mAdapter:Landroid/widget/CursorTreeAdapter;

    invoke-direct {v0, p0, v1}, Lio/appium/android/apis/view/ExpandableList2$QueryHandler;-><init>(Landroid/content/Context;Landroid/widget/CursorTreeAdapter;)V

    iput-object v0, p0, Lio/appium/android/apis/view/ExpandableList2;->mQueryHandler:Lio/appium/android/apis/view/ExpandableList2$QueryHandler;

    .line 125
    iget-object v2, p0, Lio/appium/android/apis/view/ExpandableList2;->mQueryHandler:Lio/appium/android/apis/view/ExpandableList2$QueryHandler;

    sget-object v5, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    sget-object v6, Lio/appium/android/apis/view/ExpandableList2;->CONTACTS_PROJECTION:[Ljava/lang/String;

    const-string v7, "has_phone_number=1"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v9}, Lio/appium/android/apis/view/ExpandableList2$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 131
    invoke-super {p0}, Landroid/app/ExpandableListActivity;->onDestroy()V

    .line 135
    iget-object v0, p0, Lio/appium/android/apis/view/ExpandableList2;->mAdapter:Landroid/widget/CursorTreeAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CursorTreeAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 136
    iput-object v1, p0, Lio/appium/android/apis/view/ExpandableList2;->mAdapter:Landroid/widget/CursorTreeAdapter;

    .line 137
    return-void
.end method
