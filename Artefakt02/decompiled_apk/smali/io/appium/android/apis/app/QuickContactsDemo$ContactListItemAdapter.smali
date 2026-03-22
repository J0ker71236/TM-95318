.class final Lio/appium/android/apis/app/QuickContactsDemo$ContactListItemAdapter;
.super Landroid/widget/ResourceCursorAdapter;
.source "QuickContactsDemo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/appium/android/apis/app/QuickContactsDemo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ContactListItemAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lio/appium/android/apis/app/QuickContactsDemo;


# direct methods
.method public constructor <init>(Lio/appium/android/apis/app/QuickContactsDemo;Landroid/content/Context;ILandroid/database/Cursor;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "layout"    # I
    .param p4, "c"    # Landroid/database/Cursor;

    .line 71
    iput-object p1, p0, Lio/appium/android/apis/app/QuickContactsDemo$ContactListItemAdapter;->this$0:Lio/appium/android/apis/app/QuickContactsDemo;

    .line 72
    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ResourceCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;)V

    .line 73
    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "cursor"    # Landroid/database/Cursor;

    .line 77
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/appium/android/apis/app/QuickContactsDemo$ContactListItemCache;

    .line 79
    .local v0, "cache":Lio/appium/android/apis/app/QuickContactsDemo$ContactListItemCache;
    iget-object v1, v0, Lio/appium/android/apis/app/QuickContactsDemo$ContactListItemCache;->nameBuffer:Landroid/database/CharArrayBuffer;

    const/4 v2, 0x1

    invoke-interface {p3, v2, v1}, Landroid/database/Cursor;->copyStringToBuffer(ILandroid/database/CharArrayBuffer;)V

    .line 80
    iget-object v1, v0, Lio/appium/android/apis/app/QuickContactsDemo$ContactListItemCache;->nameBuffer:Landroid/database/CharArrayBuffer;

    iget v1, v1, Landroid/database/CharArrayBuffer;->sizeCopied:I

    .line 81
    .local v1, "size":I
    iget-object v2, v0, Lio/appium/android/apis/app/QuickContactsDemo$ContactListItemCache;->nameView:Landroid/widget/TextView;

    iget-object v3, v0, Lio/appium/android/apis/app/QuickContactsDemo$ContactListItemCache;->nameBuffer:Landroid/database/CharArrayBuffer;

    iget-object v3, v3, Landroid/database/CharArrayBuffer;->data:[C

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v1}, Landroid/widget/TextView;->setText([CII)V

    .line 82
    invoke-interface {p3, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 83
    .local v2, "contactId":J
    const/4 v4, 0x6

    invoke-interface {p3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 84
    .local v4, "lookupKey":Ljava/lang/String;
    iget-object v5, v0, Lio/appium/android/apis/app/QuickContactsDemo$ContactListItemCache;->photoView:Landroid/widget/QuickContactBadge;

    invoke-static {v2, v3, v4}, Landroid/provider/ContactsContract$Contacts;->getLookupUri(JLjava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/QuickContactBadge;->assignContactUri(Landroid/net/Uri;)V

    .line 85
    return-void
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cursor"    # Landroid/database/Cursor;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .line 89
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ResourceCursorAdapter;->newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 90
    .local v0, "view":Landroid/view/View;
    new-instance v1, Lio/appium/android/apis/app/QuickContactsDemo$ContactListItemCache;

    invoke-direct {v1}, Lio/appium/android/apis/app/QuickContactsDemo$ContactListItemCache;-><init>()V

    .line 91
    .local v1, "cache":Lio/appium/android/apis/app/QuickContactsDemo$ContactListItemCache;
    const v2, 0x7f09013b

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lio/appium/android/apis/app/QuickContactsDemo$ContactListItemCache;->nameView:Landroid/widget/TextView;

    .line 92
    const v2, 0x7f090030

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/QuickContactBadge;

    iput-object v2, v1, Lio/appium/android/apis/app/QuickContactsDemo$ContactListItemCache;->photoView:Landroid/widget/QuickContactBadge;

    .line 93
    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 95
    return-object v0
.end method
