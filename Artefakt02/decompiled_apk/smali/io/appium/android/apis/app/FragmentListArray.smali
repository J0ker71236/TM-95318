.class public Lio/appium/android/apis/app/FragmentListArray;
.super Landroid/app/Activity;
.source "FragmentListArray.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/appium/android/apis/app/FragmentListArray$ArrayListFragment;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 37
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 40
    invoke-virtual {p0}, Lio/appium/android/apis/app/FragmentListArray;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    if-nez v0, :cond_0

    .line 41
    new-instance v0, Lio/appium/android/apis/app/FragmentListArray$ArrayListFragment;

    invoke-direct {v0}, Lio/appium/android/apis/app/FragmentListArray$ArrayListFragment;-><init>()V

    .line 42
    .local v0, "list":Lio/appium/android/apis/app/FragmentListArray$ArrayListFragment;
    invoke-virtual {p0}, Lio/appium/android/apis/app/FragmentListArray;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commit()I

    .line 44
    .end local v0    # "list":Lio/appium/android/apis/app/FragmentListArray$ArrayListFragment;
    :cond_0
    return-void
.end method
