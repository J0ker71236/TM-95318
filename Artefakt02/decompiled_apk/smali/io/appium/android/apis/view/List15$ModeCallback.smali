.class Lio/appium/android/apis/view/List15$ModeCallback;
.super Ljava/lang/Object;
.source "List15.java"

# interfaces
.implements Landroid/widget/AbsListView$MultiChoiceModeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/appium/android/apis/view/List15;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ModeCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lio/appium/android/apis/view/List15;


# direct methods
.method private constructor <init>(Lio/appium/android/apis/view/List15;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lio/appium/android/apis/view/List15$ModeCallback;->this$0:Lio/appium/android/apis/view/List15;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lio/appium/android/apis/view/List15;Lio/appium/android/apis/view/List15$1;)V
    .locals 0
    .param p1, "x0"    # Lio/appium/android/apis/view/List15;
    .param p2, "x1"    # Lio/appium/android/apis/view/List15$1;

    .line 50
    invoke-direct {p0, p1}, Lio/appium/android/apis/view/List15$ModeCallback;-><init>(Lio/appium/android/apis/view/List15;)V

    return-void
.end method

.method private setSubtitle(Landroid/view/ActionMode;)V
    .locals 3
    .param p1, "mode"    # Landroid/view/ActionMode;

    .line 88
    iget-object v0, p0, Lio/appium/android/apis/view/List15$ModeCallback;->this$0:Lio/appium/android/apis/view/List15;

    invoke-virtual {v0}, Lio/appium/android/apis/view/List15;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getCheckedItemCount()I

    move-result v0

    .line 89
    .local v0, "checkedCount":I
    packed-switch v0, :pswitch_data_0

    .line 97
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " items selected"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/view/ActionMode;->setSubtitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 94
    :pswitch_0
    const-string v1, "One item selected"

    invoke-virtual {p1, v1}, Landroid/view/ActionMode;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 95
    goto :goto_0

    .line 91
    :pswitch_1
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/ActionMode;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 92
    nop

    .line 100
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 4
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "item"    # Landroid/view/MenuItem;

    .line 65
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, 0x0

    const v2, 0x7f0901c3

    if-eq v0, v2, :cond_0

    .line 72
    iget-object v0, p0, Lio/appium/android/apis/view/List15$ModeCallback;->this$0:Lio/appium/android/apis/view/List15;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Clicked "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 73
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 67
    :cond_0
    iget-object v0, p0, Lio/appium/android/apis/view/List15$ModeCallback;->this$0:Lio/appium/android/apis/view/List15;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Shared "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lio/appium/android/apis/view/List15$ModeCallback;->this$0:Lio/appium/android/apis/view/List15;

    invoke-virtual {v3}, Lio/appium/android/apis/view/List15;->getListView()Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ListView;->getCheckedItemCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " items"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 68
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 69
    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    .line 70
    nop

    .line 76
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 2
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "menu"    # Landroid/view/Menu;

    .line 53
    iget-object v0, p0, Lio/appium/android/apis/view/List15$ModeCallback;->this$0:Lio/appium/android/apis/view/List15;

    invoke-virtual {v0}, Lio/appium/android/apis/view/List15;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 54
    .local v0, "inflater":Landroid/view/MenuInflater;
    const v1, 0x7f0c000a

    invoke-virtual {v0, v1, p2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 55
    const-string v1, "Select Items"

    invoke-virtual {p1, v1}, Landroid/view/ActionMode;->setTitle(Ljava/lang/CharSequence;)V

    .line 56
    invoke-direct {p0, p1}, Lio/appium/android/apis/view/List15$ModeCallback;->setSubtitle(Landroid/view/ActionMode;)V

    .line 57
    const/4 v1, 0x1

    return v1
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 0
    .param p1, "mode"    # Landroid/view/ActionMode;

    .line 80
    return-void
.end method

.method public onItemCheckedStateChanged(Landroid/view/ActionMode;IJZ)V
    .locals 0
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "position"    # I
    .param p3, "id"    # J
    .param p5, "checked"    # Z

    .line 84
    invoke-direct {p0, p1}, Lio/appium/android/apis/view/List15$ModeCallback;->setSubtitle(Landroid/view/ActionMode;)V

    .line 85
    return-void
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 1
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "menu"    # Landroid/view/Menu;

    .line 61
    const/4 v0, 0x1

    return v0
.end method
