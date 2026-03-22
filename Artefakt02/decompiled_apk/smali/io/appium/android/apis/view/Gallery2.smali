.class public Lio/appium/android/apis/view/Gallery2;
.super Landroid/app/Activity;
.source "Gallery2.java"


# static fields
.field private static final CONTACT_PROJECTION:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 57
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "display_name"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sput-object v0, Lio/appium/android/apis/view/Gallery2;->CONTACT_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 13
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 35
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 36
    const v0, 0x7f0b0070

    invoke-virtual {p0, v0}, Lio/appium/android/apis/view/Gallery2;->setContentView(I)V

    .line 39
    invoke-virtual {p0}, Lio/appium/android/apis/view/Gallery2;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Lio/appium/android/apis/view/Gallery2;->CONTACT_PROJECTION:[Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 41
    .local v0, "c":Landroid/database/Cursor;
    invoke-virtual {p0, v0}, Lio/appium/android/apis/view/Gallery2;->startManagingCursor(Landroid/database/Cursor;)V

    .line 43
    new-instance v1, Landroid/widget/SimpleCursorAdapter;

    const/4 v2, 0x1

    new-array v11, v2, [Ljava/lang/String;

    const-string v3, "display_name"

    const/4 v4, 0x0

    aput-object v3, v11, v4

    new-array v12, v2, [I

    const v2, 0x1020014

    aput v2, v12, v4

    const v9, 0x109000b

    move-object v7, v1

    move-object v8, p0

    move-object v10, v0

    invoke-direct/range {v7 .. v12}, Landroid/widget/SimpleCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[I)V

    .line 53
    .local v1, "adapter":Landroid/widget/SpinnerAdapter;
    const v2, 0x7f0900d6

    invoke-virtual {p0, v2}, Lio/appium/android/apis/view/Gallery2;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Gallery;

    .line 54
    .local v2, "g":Landroid/widget/Gallery;
    invoke-virtual {v2, v1}, Landroid/widget/Gallery;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 55
    return-void
.end method
