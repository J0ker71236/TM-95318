.class Lio/appium/android/apis/view/List3$1;
.super Ljava/lang/Object;
.source "List3.java"

# interfaces
.implements Landroid/widget/SimpleCursorAdapter$ViewBinder;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/appium/android/apis/view/List3;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/appium/android/apis/view/List3;


# direct methods
.method constructor <init>(Lio/appium/android/apis/view/List3;)V
    .locals 0
    .param p1, "this$0"    # Lio/appium/android/apis/view/List3;

    .line 53
    iput-object p1, p0, Lio/appium/android/apis/view/List3$1;->this$0:Lio/appium/android/apis/view/List3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public setViewValue(Landroid/view/View;Landroid/database/Cursor;I)Z
    .locals 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "cursor"    # Landroid/database/Cursor;
    .param p3, "columnIndex"    # I

    .line 56
    const/4 v0, 0x1

    if-eq p3, v0, :cond_0

    .line 57
    const/4 v0, 0x0

    return v0

    .line 59
    :cond_0
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 60
    .local v1, "type":I
    const/4 v2, 0x0

    .line 62
    .local v2, "label":Ljava/lang/String;
    if-nez v1, :cond_1

    .line 63
    const/4 v3, 0x2

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 66
    :cond_1
    iget-object v3, p0, Lio/appium/android/apis/view/List3$1;->this$0:Lio/appium/android/apis/view/List3;

    invoke-virtual {v3}, Lio/appium/android/apis/view/List3;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {v3, v1, v2}, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->getTypeLabel(Landroid/content/res/Resources;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 68
    .local v3, "text":Ljava/lang/String;
    move-object v4, p1

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 69
    return v0
.end method
