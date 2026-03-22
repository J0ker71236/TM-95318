.class public Lio/appium/android/apis/view/ExpandableList2$MyExpandableListAdapter;
.super Landroid/widget/SimpleCursorTreeAdapter;
.source "ExpandableList2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/appium/android/apis/view/ExpandableList2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyExpandableListAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lio/appium/android/apis/view/ExpandableList2;


# direct methods
.method public constructor <init>(Lio/appium/android/apis/view/ExpandableList2;Landroid/content/Context;II[Ljava/lang/String;[I[Ljava/lang/String;[I)V
    .locals 11
    .param p1, "this$0"    # Lio/appium/android/apis/view/ExpandableList2;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "groupLayout"    # I
    .param p4, "childLayout"    # I
    .param p5, "groupFrom"    # [Ljava/lang/String;
    .param p6, "groupTo"    # [I
    .param p7, "childrenFrom"    # [Ljava/lang/String;
    .param p8, "childrenTo"    # [I

    .line 79
    move-object v9, p0

    move-object v10, p1

    iput-object v10, v9, Lio/appium/android/apis/view/ExpandableList2$MyExpandableListAdapter;->this$0:Lio/appium/android/apis/view/ExpandableList2;

    .line 81
    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p2

    move v3, p3

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    move v6, p4

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    invoke-direct/range {v0 .. v8}, Landroid/widget/SimpleCursorTreeAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;I[Ljava/lang/String;[II[Ljava/lang/String;[I)V

    .line 83
    return-void
.end method


# virtual methods
.method protected getChildrenCursor(Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 11
    .param p1, "groupCursor"    # Landroid/database/Cursor;

    .line 90
    sget-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 91
    .local v0, "builder":Landroid/net/Uri$Builder;
    const/4 v1, 0x0

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Landroid/content/ContentUris;->appendId(Landroid/net/Uri$Builder;J)Landroid/net/Uri$Builder;

    .line 92
    const-string v2, "data"

    invoke-virtual {v0, v2}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 93
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    .line 95
    .local v2, "phoneNumbersUri":Landroid/net/Uri;
    iget-object v3, p0, Lio/appium/android/apis/view/ExpandableList2$MyExpandableListAdapter;->this$0:Lio/appium/android/apis/view/ExpandableList2;

    invoke-static {v3}, Lio/appium/android/apis/view/ExpandableList2;->access$100(Lio/appium/android/apis/view/ExpandableList2;)Lio/appium/android/apis/view/ExpandableList2$QueryHandler;

    move-result-object v3

    invoke-interface {p1}, Landroid/database/Cursor;->getPosition()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 96
    invoke-static {}, Lio/appium/android/apis/view/ExpandableList2;->access$000()[Ljava/lang/String;

    move-result-object v7

    const-string v8, "mimetype=?"

    const/4 v4, 0x1

    new-array v9, v4, [Ljava/lang/String;

    const-string v4, "vnd.android.cursor.item/phone_v2"

    aput-object v4, v9, v1

    .line 95
    const/4 v4, 0x1

    const/4 v10, 0x0

    move-object v6, v2

    invoke-virtual/range {v3 .. v10}, Lio/appium/android/apis/view/ExpandableList2$QueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    const/4 v1, 0x0

    return-object v1
.end method
