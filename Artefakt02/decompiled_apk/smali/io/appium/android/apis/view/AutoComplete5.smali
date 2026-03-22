.class public Lio/appium/android/apis/view/AutoComplete5;
.super Landroid/app/Activity;
.source "AutoComplete5.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 31
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 32
    const v0, 0x7f0b003c

    invoke-virtual {p0, v0}, Lio/appium/android/apis/view/AutoComplete5;->setContentView(I)V

    .line 34
    invoke-virtual {p0}, Lio/appium/android/apis/view/AutoComplete5;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 35
    .local v0, "content":Landroid/content/ContentResolver;
    sget-object v2, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Lio/appium/android/apis/view/AutoComplete4;->CONTACT_PROJECTION:[Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 37
    .local v1, "cursor":Landroid/database/Cursor;
    new-instance v2, Lio/appium/android/apis/view/AutoComplete4$ContactListAdapter;

    invoke-direct {v2, p0, v1}, Lio/appium/android/apis/view/AutoComplete4$ContactListAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V

    .line 40
    .local v2, "adapter":Lio/appium/android/apis/view/AutoComplete4$ContactListAdapter;
    nop

    .line 41
    const v3, 0x7f0900a4

    invoke-virtual {p0, v3}, Lio/appium/android/apis/view/AutoComplete5;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/AutoCompleteTextView;

    .line 42
    .local v3, "textView":Landroid/widget/AutoCompleteTextView;
    invoke-virtual {v3, v2}, Landroid/widget/AutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 43
    return-void
.end method
