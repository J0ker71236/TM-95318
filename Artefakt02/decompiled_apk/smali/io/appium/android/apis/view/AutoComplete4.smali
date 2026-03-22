.class public Lio/appium/android/apis/view/AutoComplete4;
.super Landroid/app/Activity;
.source "AutoComplete4.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/appium/android/apis/view/AutoComplete4$ContactListAdapter;
    }
.end annotation


# static fields
.field private static final COLUMN_DISPLAY_NAME:I = 0x1

.field public static final CONTACT_PROJECTION:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 97
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "display_name"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sput-object v0, Lio/appium/android/apis/view/AutoComplete4;->CONTACT_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 40
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 41
    const v0, 0x7f0b003b

    invoke-virtual {p0, v0}, Lio/appium/android/apis/view/AutoComplete4;->setContentView(I)V

    .line 43
    invoke-virtual {p0}, Lio/appium/android/apis/view/AutoComplete4;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 44
    .local v0, "content":Landroid/content/ContentResolver;
    sget-object v2, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Lio/appium/android/apis/view/AutoComplete4;->CONTACT_PROJECTION:[Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 47
    .local v1, "cursor":Landroid/database/Cursor;
    new-instance v2, Lio/appium/android/apis/view/AutoComplete4$ContactListAdapter;

    invoke-direct {v2, p0, v1}, Lio/appium/android/apis/view/AutoComplete4$ContactListAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V

    .line 49
    .local v2, "adapter":Lio/appium/android/apis/view/AutoComplete4$ContactListAdapter;
    nop

    .line 50
    const v3, 0x7f0900a4

    invoke-virtual {p0, v3}, Lio/appium/android/apis/view/AutoComplete4;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/AutoCompleteTextView;

    .line 51
    .local v3, "textView":Landroid/widget/AutoCompleteTextView;
    invoke-virtual {v3, v2}, Landroid/widget/AutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 52
    return-void
.end method
