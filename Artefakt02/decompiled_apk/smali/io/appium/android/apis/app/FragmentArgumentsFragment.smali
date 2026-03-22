.class public Lio/appium/android/apis/app/FragmentArgumentsFragment;
.super Landroid/app/Fragment;
.source "FragmentArgumentsFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 34
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 36
    if-nez p1, :cond_0

    .line 38
    invoke-virtual {p0}, Lio/appium/android/apis/app/FragmentArgumentsFragment;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 39
    .local v0, "ft":Landroid/app/FragmentTransaction;
    const-string v1, "From Arguments 1"

    invoke-static {v1}, Lio/appium/android/apis/app/FragmentArguments$MyFragment;->newInstance(Ljava/lang/CharSequence;)Lio/appium/android/apis/app/FragmentArguments$MyFragment;

    move-result-object v1

    .line 40
    .local v1, "newFragment":Landroid/app/Fragment;
    const v2, 0x7f09007e

    invoke-virtual {v0, v2, v1}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 41
    const-string v2, "From Arguments 2"

    invoke-static {v2}, Lio/appium/android/apis/app/FragmentArguments$MyFragment;->newInstance(Ljava/lang/CharSequence;)Lio/appium/android/apis/app/FragmentArguments$MyFragment;

    move-result-object v1

    .line 42
    const v2, 0x7f09007f

    invoke-virtual {v0, v2, v1}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 43
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    .line 45
    .end local v0    # "ft":Landroid/app/FragmentTransaction;
    .end local v1    # "newFragment":Landroid/app/Fragment;
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .line 49
    const v0, 0x7f0b0065

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 50
    .local v0, "v":Landroid/view/View;
    return-object v0
.end method
