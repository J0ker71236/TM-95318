.class public Lio/appium/android/apis/app/FragmentMenuFragment;
.super Landroid/app/Fragment;
.source "FragmentMenuFragment.java"


# instance fields
.field mCheckBox1:Landroid/widget/CheckBox;

.field mCheckBox2:Landroid/widget/CheckBox;

.field final mClickListener:Landroid/view/View$OnClickListener;

.field mFragment1:Landroid/app/Fragment;

.field mFragment2:Landroid/app/Fragment;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 34
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 41
    new-instance v0, Lio/appium/android/apis/app/FragmentMenuFragment$1;

    invoke-direct {v0, p0}, Lio/appium/android/apis/app/FragmentMenuFragment$1;-><init>(Lio/appium/android/apis/app/FragmentMenuFragment;)V

    iput-object v0, p0, Lio/appium/android/apis/app/FragmentMenuFragment;->mClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .line 50
    const v0, 0x7f0b006b

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 53
    .local v0, "v":Landroid/view/View;
    invoke-virtual {p0}, Lio/appium/android/apis/app/FragmentMenuFragment;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    .line 54
    .local v1, "fm":Landroid/app/FragmentManager;
    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v2

    .line 55
    .local v2, "ft":Landroid/app/FragmentTransaction;
    const-string v3, "f1"

    invoke-virtual {v1, v3}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v3

    iput-object v3, p0, Lio/appium/android/apis/app/FragmentMenuFragment;->mFragment1:Landroid/app/Fragment;

    .line 56
    iget-object v3, p0, Lio/appium/android/apis/app/FragmentMenuFragment;->mFragment1:Landroid/app/Fragment;

    if-nez v3, :cond_0

    .line 57
    new-instance v3, Lio/appium/android/apis/app/FragmentMenu$MenuFragment;

    invoke-direct {v3}, Lio/appium/android/apis/app/FragmentMenu$MenuFragment;-><init>()V

    iput-object v3, p0, Lio/appium/android/apis/app/FragmentMenuFragment;->mFragment1:Landroid/app/Fragment;

    .line 58
    iget-object v3, p0, Lio/appium/android/apis/app/FragmentMenuFragment;->mFragment1:Landroid/app/Fragment;

    const-string v4, "f1"

    invoke-virtual {v2, v3, v4}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 60
    :cond_0
    const-string v3, "f2"

    invoke-virtual {v1, v3}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v3

    iput-object v3, p0, Lio/appium/android/apis/app/FragmentMenuFragment;->mFragment2:Landroid/app/Fragment;

    .line 61
    iget-object v3, p0, Lio/appium/android/apis/app/FragmentMenuFragment;->mFragment2:Landroid/app/Fragment;

    if-nez v3, :cond_1

    .line 62
    new-instance v3, Lio/appium/android/apis/app/FragmentMenu$Menu2Fragment;

    invoke-direct {v3}, Lio/appium/android/apis/app/FragmentMenu$Menu2Fragment;-><init>()V

    iput-object v3, p0, Lio/appium/android/apis/app/FragmentMenuFragment;->mFragment2:Landroid/app/Fragment;

    .line 63
    iget-object v3, p0, Lio/appium/android/apis/app/FragmentMenuFragment;->mFragment2:Landroid/app/Fragment;

    const-string v4, "f2"

    invoke-virtual {v2, v3, v4}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 65
    :cond_1
    invoke-virtual {v2}, Landroid/app/FragmentTransaction;->commit()I

    .line 68
    const v3, 0x7f090123

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    iput-object v3, p0, Lio/appium/android/apis/app/FragmentMenuFragment;->mCheckBox1:Landroid/widget/CheckBox;

    .line 69
    iget-object v3, p0, Lio/appium/android/apis/app/FragmentMenuFragment;->mCheckBox1:Landroid/widget/CheckBox;

    iget-object v4, p0, Lio/appium/android/apis/app/FragmentMenuFragment;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 70
    const v3, 0x7f090124

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    iput-object v3, p0, Lio/appium/android/apis/app/FragmentMenuFragment;->mCheckBox2:Landroid/widget/CheckBox;

    .line 71
    iget-object v3, p0, Lio/appium/android/apis/app/FragmentMenuFragment;->mCheckBox2:Landroid/widget/CheckBox;

    iget-object v4, p0, Lio/appium/android/apis/app/FragmentMenuFragment;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74
    invoke-virtual {p0}, Lio/appium/android/apis/app/FragmentMenuFragment;->updateFragmentVisibility()V

    .line 76
    return-object v0
.end method

.method public onViewStateRestored(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 81
    invoke-super {p0, p1}, Landroid/app/Fragment;->onViewStateRestored(Landroid/os/Bundle;)V

    .line 83
    invoke-virtual {p0}, Lio/appium/android/apis/app/FragmentMenuFragment;->updateFragmentVisibility()V

    .line 84
    return-void
.end method

.method updateFragmentVisibility()V
    .locals 2

    .line 88
    invoke-virtual {p0}, Lio/appium/android/apis/app/FragmentMenuFragment;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 89
    .local v0, "ft":Landroid/app/FragmentTransaction;
    iget-object v1, p0, Lio/appium/android/apis/app/FragmentMenuFragment;->mCheckBox1:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lio/appium/android/apis/app/FragmentMenuFragment;->mFragment1:Landroid/app/Fragment;

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->show(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    goto :goto_0

    .line 90
    :cond_0
    iget-object v1, p0, Lio/appium/android/apis/app/FragmentMenuFragment;->mFragment1:Landroid/app/Fragment;

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->hide(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 91
    :goto_0
    iget-object v1, p0, Lio/appium/android/apis/app/FragmentMenuFragment;->mCheckBox2:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lio/appium/android/apis/app/FragmentMenuFragment;->mFragment2:Landroid/app/Fragment;

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->show(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    goto :goto_1

    .line 92
    :cond_1
    iget-object v1, p0, Lio/appium/android/apis/app/FragmentMenuFragment;->mFragment2:Landroid/app/Fragment;

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->hide(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 93
    :goto_1
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    .line 94
    return-void
.end method
