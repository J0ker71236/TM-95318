.class public Lio/appium/android/apis/app/QuickContactsDemo;
.super Landroid/app/ListActivity;
.source "QuickContactsDemo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/appium/android/apis/app/QuickContactsDemo$ContactListItemCache;,
        Lio/appium/android/apis/app/QuickContactsDemo$ContactListItemAdapter;
    }
.end annotation


# static fields
.field static final CONTACTS_SUMMARY_PROJECTION:[Ljava/lang/String;

.field static final SUMMARY_HAS_PHONE_COLUMN_INDEX:I = 0x7

.field static final SUMMARY_ID_COLUMN_INDEX:I = 0x0

.field static final SUMMARY_LOOKUP_KEY:I = 0x6

.field static final SUMMARY_NAME_COLUMN_INDEX:I = 0x1

.field static final SUMMARY_PHOTO_ID_COLUMN_INDEX:I = 0x5

.field static final SUMMARY_PRESENCE_STATUS_COLUMN_INDEX:I = 0x4

.field static final SUMMARY_STARRED_COLUMN_INDEX:I = 0x2

.field static final SUMMARY_TIMES_CONTACTED_COLUMN_INDEX:I = 0x3


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 34
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "display_name"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "starred"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, "times_contacted"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string v1, "contact_presence"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-string v1, "photo_id"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string v1, "lookup"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string v1, "has_phone_number"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sput-object v0, Lio/appium/android/apis/app/QuickContactsDemo;->CONTACTS_SUMMARY_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 57
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 58
    const-string v6, "((display_name NOTNULL) AND (has_phone_number=1) AND (display_name != \'\' ))"

    .line 61
    .local v6, "select":Ljava/lang/String;
    nop

    .line 62
    invoke-virtual {p0}, Lio/appium/android/apis/app/QuickContactsDemo;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lio/appium/android/apis/app/QuickContactsDemo;->CONTACTS_SUMMARY_PROJECTION:[Ljava/lang/String;

    const-string v5, "display_name COLLATE LOCALIZED ASC"

    const/4 v4, 0x0

    move-object v3, v6

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 64
    .local v0, "c":Landroid/database/Cursor;
    invoke-virtual {p0, v0}, Lio/appium/android/apis/app/QuickContactsDemo;->startManagingCursor(Landroid/database/Cursor;)V

    .line 65
    new-instance v1, Lio/appium/android/apis/app/QuickContactsDemo$ContactListItemAdapter;

    const v2, 0x7f0b00c5

    invoke-direct {v1, p0, p0, v2, v0}, Lio/appium/android/apis/app/QuickContactsDemo$ContactListItemAdapter;-><init>(Lio/appium/android/apis/app/QuickContactsDemo;Landroid/content/Context;ILandroid/database/Cursor;)V

    .line 66
    .local v1, "adapter":Lio/appium/android/apis/app/QuickContactsDemo$ContactListItemAdapter;
    invoke-virtual {p0, v1}, Lio/appium/android/apis/app/QuickContactsDemo;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 68
    return-void
.end method
