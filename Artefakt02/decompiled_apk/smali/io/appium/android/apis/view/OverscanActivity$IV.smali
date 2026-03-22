.class public Lio/appium/android/apis/view/OverscanActivity$IV;
.super Landroid/widget/ImageView;
.source "OverscanActivity.java"

# interfaces
.implements Landroid/view/View$OnSystemUiVisibilityChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/appium/android/apis/view/OverscanActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IV"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/appium/android/apis/view/OverscanActivity$IV$MyActionModeCallback;
    }
.end annotation


# instance fields
.field private mActionMode:Landroid/view/ActionMode;

.field private mActivity:Lio/appium/android/apis/view/OverscanActivity;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 60
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 61
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 63
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 64
    return-void
.end method

.method static synthetic access$002(Lio/appium/android/apis/view/OverscanActivity$IV;Landroid/view/ActionMode;)Landroid/view/ActionMode;
    .locals 0
    .param p0, "x0"    # Lio/appium/android/apis/view/OverscanActivity$IV;
    .param p1, "x1"    # Landroid/view/ActionMode;

    .line 56
    iput-object p1, p0, Lio/appium/android/apis/view/OverscanActivity$IV;->mActionMode:Landroid/view/ActionMode;

    return-object p1
.end method

.method static synthetic access$100(Lio/appium/android/apis/view/OverscanActivity$IV;)Lio/appium/android/apis/view/OverscanActivity;
    .locals 1
    .param p0, "x0"    # Lio/appium/android/apis/view/OverscanActivity$IV;

    .line 56
    iget-object v0, p0, Lio/appium/android/apis/view/OverscanActivity$IV;->mActivity:Lio/appium/android/apis/view/OverscanActivity;

    return-object v0
.end method


# virtual methods
.method public onSizeChanged(IIII)V
    .locals 1
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .line 71
    iget-object v0, p0, Lio/appium/android/apis/view/OverscanActivity$IV;->mActivity:Lio/appium/android/apis/view/OverscanActivity;

    invoke-virtual {v0}, Lio/appium/android/apis/view/OverscanActivity;->refreshSizes()V

    .line 72
    return-void
.end method

.method public onSystemUiVisibilityChange(I)V
    .locals 1
    .param p1, "visibility"    # I

    .line 75
    iget-object v0, p0, Lio/appium/android/apis/view/OverscanActivity$IV;->mActivity:Lio/appium/android/apis/view/OverscanActivity;

    invoke-virtual {v0}, Lio/appium/android/apis/view/OverscanActivity;->updateCheckControls()V

    .line 76
    iget-object v0, p0, Lio/appium/android/apis/view/OverscanActivity$IV;->mActivity:Lio/appium/android/apis/view/OverscanActivity;

    invoke-virtual {v0}, Lio/appium/android/apis/view/OverscanActivity;->refreshSizes()V

    .line 77
    return-void
.end method

.method public setActivity(Lio/appium/android/apis/view/OverscanActivity;)V
    .locals 0
    .param p1, "act"    # Lio/appium/android/apis/view/OverscanActivity;

    .line 66
    invoke-virtual {p0, p0}, Lio/appium/android/apis/view/OverscanActivity$IV;->setOnSystemUiVisibilityChangeListener(Landroid/view/View$OnSystemUiVisibilityChangeListener;)V

    .line 67
    iput-object p1, p0, Lio/appium/android/apis/view/OverscanActivity$IV;->mActivity:Lio/appium/android/apis/view/OverscanActivity;

    .line 68
    return-void
.end method

.method public startActionMode()V
    .locals 2

    .line 104
    iget-object v0, p0, Lio/appium/android/apis/view/OverscanActivity$IV;->mActionMode:Landroid/view/ActionMode;

    if-nez v0, :cond_0

    .line 105
    new-instance v0, Lio/appium/android/apis/view/OverscanActivity$IV$MyActionModeCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/appium/android/apis/view/OverscanActivity$IV$MyActionModeCallback;-><init>(Lio/appium/android/apis/view/OverscanActivity$IV;Lio/appium/android/apis/view/OverscanActivity$1;)V

    .line 106
    .local v0, "cb":Landroid/view/ActionMode$Callback;
    invoke-virtual {p0, v0}, Lio/appium/android/apis/view/OverscanActivity$IV;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v1

    iput-object v1, p0, Lio/appium/android/apis/view/OverscanActivity$IV;->mActionMode:Landroid/view/ActionMode;

    .line 108
    .end local v0    # "cb":Landroid/view/ActionMode$Callback;
    :cond_0
    return-void
.end method

.method public stopActionMode()V
    .locals 1

    .line 111
    iget-object v0, p0, Lio/appium/android/apis/view/OverscanActivity$IV;->mActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    .line 112
    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    .line 114
    :cond_0
    return-void
.end method
