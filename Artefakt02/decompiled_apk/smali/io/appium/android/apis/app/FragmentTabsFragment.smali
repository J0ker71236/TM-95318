.class public Lio/appium/android/apis/app/FragmentTabsFragment;
.super Landroid/app/Fragment;
.source "FragmentTabsFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/appium/android/apis/app/FragmentTabsFragment$TabManager;
    }
.end annotation


# instance fields
.field mTabManager:Lio/appium/android/apis/app/FragmentTabsFragment$TabManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 40
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 41
    new-instance v0, Lio/appium/android/apis/app/FragmentTabsFragment$TabManager;

    invoke-virtual {p0}, Lio/appium/android/apis/app/FragmentTabsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p0}, Lio/appium/android/apis/app/FragmentTabsFragment;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const v3, 0x7f090179

    invoke-direct {v0, v1, v2, v3}, Lio/appium/android/apis/app/FragmentTabsFragment$TabManager;-><init>(Landroid/content/Context;Landroid/app/FragmentManager;I)V

    iput-object v0, p0, Lio/appium/android/apis/app/FragmentTabsFragment;->mTabManager:Lio/appium/android/apis/app/FragmentTabsFragment$TabManager;

    .line 43
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .line 48
    const v0, 0x7f0b006e

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 49
    .local v0, "v":Landroid/view/View;
    iget-object v1, p0, Lio/appium/android/apis/app/FragmentTabsFragment;->mTabManager:Lio/appium/android/apis/app/FragmentTabsFragment$TabManager;

    invoke-virtual {v1, v0}, Lio/appium/android/apis/app/FragmentTabsFragment$TabManager;->handleCreateView(Landroid/view/View;)Landroid/widget/TabHost;

    move-result-object v1

    .line 51
    .local v1, "host":Landroid/widget/TabHost;
    iget-object v2, p0, Lio/appium/android/apis/app/FragmentTabsFragment;->mTabManager:Lio/appium/android/apis/app/FragmentTabsFragment$TabManager;

    const-string v3, "result"

    invoke-virtual {v1, v3}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v3

    const-string v4, "Result"

    invoke-virtual {v3, v4}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;)Landroid/widget/TabHost$TabSpec;

    move-result-object v3

    const-class v4, Lio/appium/android/apis/app/FragmentReceiveResult$ReceiveResultFragment;

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lio/appium/android/apis/app/FragmentTabsFragment$TabManager;->addTab(Landroid/widget/TabHost$TabSpec;Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 53
    iget-object v2, p0, Lio/appium/android/apis/app/FragmentTabsFragment;->mTabManager:Lio/appium/android/apis/app/FragmentTabsFragment$TabManager;

    const-string v3, "contacts"

    invoke-virtual {v1, v3}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v3

    const-string v4, "Contacts"

    invoke-virtual {v3, v4}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;)Landroid/widget/TabHost$TabSpec;

    move-result-object v3

    const-class v4, Lio/appium/android/apis/app/LoaderCursor$CursorLoaderListFragment;

    invoke-virtual {v2, v3, v4, v5}, Lio/appium/android/apis/app/FragmentTabsFragment$TabManager;->addTab(Landroid/widget/TabHost$TabSpec;Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 55
    iget-object v2, p0, Lio/appium/android/apis/app/FragmentTabsFragment;->mTabManager:Lio/appium/android/apis/app/FragmentTabsFragment$TabManager;

    const-string v3, "apps"

    invoke-virtual {v1, v3}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v3

    const-string v4, "Apps"

    invoke-virtual {v3, v4}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;)Landroid/widget/TabHost$TabSpec;

    move-result-object v3

    const-class v4, Lio/appium/android/apis/app/LoaderCustom$AppListFragment;

    invoke-virtual {v2, v3, v4, v5}, Lio/appium/android/apis/app/FragmentTabsFragment$TabManager;->addTab(Landroid/widget/TabHost$TabSpec;Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 57
    iget-object v2, p0, Lio/appium/android/apis/app/FragmentTabsFragment;->mTabManager:Lio/appium/android/apis/app/FragmentTabsFragment$TabManager;

    const-string v3, "throttle"

    invoke-virtual {v1, v3}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v3

    const-string v4, "Throttle"

    invoke-virtual {v3, v4}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;)Landroid/widget/TabHost$TabSpec;

    move-result-object v3

    const-class v4, Lio/appium/android/apis/app/LoaderThrottle$ThrottledLoaderListFragment;

    invoke-virtual {v2, v3, v4, v5}, Lio/appium/android/apis/app/FragmentTabsFragment$TabManager;->addTab(Landroid/widget/TabHost$TabSpec;Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 60
    return-object v0
.end method

.method public onDestroyView()V
    .locals 1

    .line 71
    invoke-super {p0}, Landroid/app/Fragment;->onDestroyView()V

    .line 72
    iget-object v0, p0, Lio/appium/android/apis/app/FragmentTabsFragment;->mTabManager:Lio/appium/android/apis/app/FragmentTabsFragment$TabManager;

    invoke-virtual {v0}, Lio/appium/android/apis/app/FragmentTabsFragment$TabManager;->handleDestroyView()V

    .line 73
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "outState"    # Landroid/os/Bundle;

    .line 77
    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 78
    iget-object v0, p0, Lio/appium/android/apis/app/FragmentTabsFragment;->mTabManager:Lio/appium/android/apis/app/FragmentTabsFragment$TabManager;

    invoke-virtual {v0, p1}, Lio/appium/android/apis/app/FragmentTabsFragment$TabManager;->handleSaveInstanceState(Landroid/os/Bundle;)V

    .line 79
    return-void
.end method

.method public onViewStateRestored(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 65
    invoke-super {p0, p1}, Landroid/app/Fragment;->onViewStateRestored(Landroid/os/Bundle;)V

    .line 66
    iget-object v0, p0, Lio/appium/android/apis/app/FragmentTabsFragment;->mTabManager:Lio/appium/android/apis/app/FragmentTabsFragment$TabManager;

    invoke-virtual {v0, p1}, Lio/appium/android/apis/app/FragmentTabsFragment$TabManager;->handleViewStateRestored(Landroid/os/Bundle;)V

    .line 67
    return-void
.end method
