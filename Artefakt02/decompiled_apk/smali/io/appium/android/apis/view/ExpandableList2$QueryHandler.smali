.class final Lio/appium/android/apis/view/ExpandableList2$QueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "ExpandableList2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/appium/android/apis/view/ExpandableList2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "QueryHandler"
.end annotation


# instance fields
.field private mAdapter:Landroid/widget/CursorTreeAdapter;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/CursorTreeAdapter;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "adapter"    # Landroid/widget/CursorTreeAdapter;

    .line 54
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 55
    iput-object p2, p0, Lio/appium/android/apis/view/ExpandableList2$QueryHandler;->mAdapter:Landroid/widget/CursorTreeAdapter;

    .line 56
    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 2
    .param p1, "token"    # I
    .param p2, "cookie"    # Ljava/lang/Object;
    .param p3, "cursor"    # Landroid/database/Cursor;

    .line 60
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 66
    :pswitch_0
    move-object v0, p2

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 67
    .local v0, "groupPosition":I
    iget-object v1, p0, Lio/appium/android/apis/view/ExpandableList2$QueryHandler;->mAdapter:Landroid/widget/CursorTreeAdapter;

    invoke-virtual {v1, v0, p3}, Landroid/widget/CursorTreeAdapter;->setChildrenCursor(ILandroid/database/Cursor;)V

    goto :goto_0

    .line 62
    .end local v0    # "groupPosition":I
    :pswitch_1
    iget-object v0, p0, Lio/appium/android/apis/view/ExpandableList2$QueryHandler;->mAdapter:Landroid/widget/CursorTreeAdapter;

    invoke-virtual {v0, p3}, Landroid/widget/CursorTreeAdapter;->setGroupCursor(Landroid/database/Cursor;)V

    .line 63
    nop

    .line 70
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
