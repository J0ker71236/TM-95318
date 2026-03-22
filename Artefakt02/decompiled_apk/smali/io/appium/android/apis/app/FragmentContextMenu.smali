.class public Lio/appium/android/apis/app/FragmentContextMenu;
.super Landroid/app/Activity;
.source "FragmentContextMenu.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/appium/android/apis/app/FragmentContextMenu$ContextMenuFragment;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 41
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 44
    new-instance v0, Lio/appium/android/apis/app/FragmentContextMenu$ContextMenuFragment;

    invoke-direct {v0}, Lio/appium/android/apis/app/FragmentContextMenu$ContextMenuFragment;-><init>()V

    .line 45
    .local v0, "content":Lio/appium/android/apis/app/FragmentContextMenu$ContextMenuFragment;
    invoke-virtual {p0}, Lio/appium/android/apis/app/FragmentContextMenu;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    const v2, 0x1020002

    invoke-virtual {v1, v2, v0}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commit()I

    .line 46
    return-void
.end method
