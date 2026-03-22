.class Lio/appium/android/apis/view/OverscanActivity$IV$MyActionModeCallback;
.super Ljava/lang/Object;
.source "OverscanActivity.java"

# interfaces
.implements Landroid/view/ActionMode$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/appium/android/apis/view/OverscanActivity$IV;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyActionModeCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lio/appium/android/apis/view/OverscanActivity$IV;


# direct methods
.method private constructor <init>(Lio/appium/android/apis/view/OverscanActivity$IV;)V
    .locals 0

    .line 79
    iput-object p1, p0, Lio/appium/android/apis/view/OverscanActivity$IV$MyActionModeCallback;->this$0:Lio/appium/android/apis/view/OverscanActivity$IV;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lio/appium/android/apis/view/OverscanActivity$IV;Lio/appium/android/apis/view/OverscanActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lio/appium/android/apis/view/OverscanActivity$IV;
    .param p2, "x1"    # Lio/appium/android/apis/view/OverscanActivity$1;

    .line 79
    invoke-direct {p0, p1}, Lio/appium/android/apis/view/OverscanActivity$IV$MyActionModeCallback;-><init>(Lio/appium/android/apis/view/OverscanActivity$IV;)V

    return-void
.end method


# virtual methods
.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "item"    # Landroid/view/MenuItem;

    .line 94
    const/4 v0, 0x1

    return v0
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 2
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "menu"    # Landroid/view/Menu;

    .line 81
    const-string v0, "My Action Mode!"

    invoke-virtual {p1, v0}, Landroid/view/ActionMode;->setTitle(Ljava/lang/CharSequence;)V

    .line 82
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ActionMode;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 83
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ActionMode;->setTitleOptionalHint(Z)V

    .line 84
    const-string v0, "Sort By Size"

    invoke-interface {p2, v0}, Landroid/view/Menu;->add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x108009d

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 85
    const-string v0, "Sort By Alpha"

    invoke-interface {p2, v0}, Landroid/view/Menu;->add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x108009c

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 86
    const/4 v0, 0x1

    return v0
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 2
    .param p1, "mode"    # Landroid/view/ActionMode;

    .line 98
    iget-object v0, p0, Lio/appium/android/apis/view/OverscanActivity$IV$MyActionModeCallback;->this$0:Lio/appium/android/apis/view/OverscanActivity$IV;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lio/appium/android/apis/view/OverscanActivity$IV;->access$002(Lio/appium/android/apis/view/OverscanActivity$IV;Landroid/view/ActionMode;)Landroid/view/ActionMode;

    .line 99
    iget-object v0, p0, Lio/appium/android/apis/view/OverscanActivity$IV$MyActionModeCallback;->this$0:Lio/appium/android/apis/view/OverscanActivity$IV;

    invoke-static {v0}, Lio/appium/android/apis/view/OverscanActivity$IV;->access$100(Lio/appium/android/apis/view/OverscanActivity$IV;)Lio/appium/android/apis/view/OverscanActivity;

    move-result-object v0

    invoke-virtual {v0}, Lio/appium/android/apis/view/OverscanActivity;->clearActionMode()V

    .line 100
    return-void
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 1
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "menu"    # Landroid/view/Menu;

    .line 90
    const/4 v0, 0x1

    return v0
.end method
