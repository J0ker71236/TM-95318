.class public Lio/appium/android/apis/app/LoaderThrottle;
.super Landroid/app/Activity;
.source "LoaderThrottle.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/appium/android/apis/app/LoaderThrottle$ThrottledLoaderListFragment;,
        Lio/appium/android/apis/app/LoaderThrottle$SimpleProvider;,
        Lio/appium/android/apis/app/LoaderThrottle$DatabaseHelper;,
        Lio/appium/android/apis/app/LoaderThrottle$MainTable;
    }
.end annotation


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = "io.appium.android.apis.app.LoaderThrottle"

.field static final TAG:Ljava/lang/String; = "LoaderThrottle"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 58
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 372
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 374
    invoke-virtual {p0}, Lio/appium/android/apis/app/LoaderThrottle;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 377
    .local v0, "fm":Landroid/app/FragmentManager;
    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v2

    if-nez v2, :cond_0

    .line 378
    new-instance v2, Lio/appium/android/apis/app/LoaderThrottle$ThrottledLoaderListFragment;

    invoke-direct {v2}, Lio/appium/android/apis/app/LoaderThrottle$ThrottledLoaderListFragment;-><init>()V

    .line 379
    .local v2, "list":Lio/appium/android/apis/app/LoaderThrottle$ThrottledLoaderListFragment;
    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commit()I

    .line 381
    .end local v2    # "list":Lio/appium/android/apis/app/LoaderThrottle$ThrottledLoaderListFragment;
    :cond_0
    return-void
.end method
