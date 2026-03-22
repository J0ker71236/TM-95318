.class public Lio/appium/android/apis/app/LoaderCustom;
.super Landroid/app/Activity;
.source "LoaderCustom.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/appium/android/apis/app/LoaderCustom$AppListFragment;,
        Lio/appium/android/apis/app/LoaderCustom$AppListAdapter;,
        Lio/appium/android/apis/app/LoaderCustom$AppListLoader;,
        Lio/appium/android/apis/app/LoaderCustom$PackageIntentReceiver;,
        Lio/appium/android/apis/app/LoaderCustom$InterestingConfigChanges;,
        Lio/appium/android/apis/app/LoaderCustom$AppEntry;
    }
.end annotation


# static fields
.field public static final ALPHA_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lio/appium/android/apis/app/LoaderCustom$AppEntry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 149
    new-instance v0, Lio/appium/android/apis/app/LoaderCustom$1;

    invoke-direct {v0}, Lio/appium/android/apis/app/LoaderCustom$1;-><init>()V

    sput-object v0, Lio/appium/android/apis/app/LoaderCustom;->ALPHA_COMPARATOR:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 63
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 67
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 69
    invoke-virtual {p0}, Lio/appium/android/apis/app/LoaderCustom;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 72
    .local v0, "fm":Landroid/app/FragmentManager;
    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v2

    if-nez v2, :cond_0

    .line 73
    new-instance v2, Lio/appium/android/apis/app/LoaderCustom$AppListFragment;

    invoke-direct {v2}, Lio/appium/android/apis/app/LoaderCustom$AppListFragment;-><init>()V

    .line 74
    .local v2, "list":Lio/appium/android/apis/app/LoaderCustom$AppListFragment;
    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commit()I

    .line 76
    .end local v2    # "list":Lio/appium/android/apis/app/LoaderCustom$AppListFragment;
    :cond_0
    return-void
.end method
