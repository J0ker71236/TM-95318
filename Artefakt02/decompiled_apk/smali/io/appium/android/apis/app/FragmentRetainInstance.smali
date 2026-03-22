.class public Lio/appium/android/apis/app/FragmentRetainInstance;
.super Landroid/app/Activity;
.source "FragmentRetainInstance.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/appium/android/apis/app/FragmentRetainInstance$RetainedFragment;,
        Lio/appium/android/apis/app/FragmentRetainInstance$UiFragment;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 38
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
    if-nez p1, :cond_0

    .line 45
    invoke-virtual {p0}, Lio/appium/android/apis/app/FragmentRetainInstance;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    const v1, 0x1020002

    new-instance v2, Lio/appium/android/apis/app/FragmentRetainInstance$UiFragment;

    invoke-direct {v2}, Lio/appium/android/apis/app/FragmentRetainInstance$UiFragment;-><init>()V

    invoke-virtual {v0, v1, v2}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 46
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    .line 48
    :cond_0
    return-void
.end method
