.class public Lio/appium/android/apis/app/FragmentReceiveResult;
.super Landroid/app/Activity;
.source "FragmentReceiveResult.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/appium/android/apis/app/FragmentReceiveResult$ReceiveResultFragment;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 39
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 40
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 43
    .local v0, "lp":Landroid/widget/FrameLayout$LayoutParams;
    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 44
    .local v1, "frame":Landroid/widget/FrameLayout;
    const v2, 0x7f0901d0

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setId(I)V

    .line 45
    invoke-virtual {p0, v1, v0}, Lio/appium/android/apis/app/FragmentReceiveResult;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 47
    if-nez p1, :cond_0

    .line 49
    new-instance v3, Lio/appium/android/apis/app/FragmentReceiveResult$ReceiveResultFragment;

    invoke-direct {v3}, Lio/appium/android/apis/app/FragmentReceiveResult$ReceiveResultFragment;-><init>()V

    .line 50
    .local v3, "newFragment":Landroid/app/Fragment;
    invoke-virtual {p0}, Lio/appium/android/apis/app/FragmentReceiveResult;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v4

    .line 51
    .local v4, "ft":Landroid/app/FragmentTransaction;
    invoke-virtual {v4, v2, v3}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentTransaction;->commit()I

    .line 53
    .end local v3    # "newFragment":Landroid/app/Fragment;
    .end local v4    # "ft":Landroid/app/FragmentTransaction;
    :cond_0
    return-void
.end method
