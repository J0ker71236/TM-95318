.class public Lio/appium/android/apis/app/FragmentMenu;
.super Landroid/app/Activity;
.source "FragmentMenu.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/appium/android/apis/app/FragmentMenu$Menu2Fragment;,
        Lio/appium/android/apis/app/FragmentMenu$MenuFragment;
    }
.end annotation


# instance fields
.field mCheckBox1:Landroid/widget/CheckBox;

.field mCheckBox2:Landroid/widget/CheckBox;

.field final mClickListener:Landroid/view/View$OnClickListener;

.field mFragment1:Landroid/app/Fragment;

.field mFragment2:Landroid/app/Fragment;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 36
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 43
    new-instance v0, Lio/appium/android/apis/app/FragmentMenu$1;

    invoke-direct {v0, p0}, Lio/appium/android/apis/app/FragmentMenu$1;-><init>(Lio/appium/android/apis/app/FragmentMenu;)V

    iput-object v0, p0, Lio/appium/android/apis/app/FragmentMenu;->mClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 51
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 52
    const v0, 0x7f0b006b

    invoke-virtual {p0, v0}, Lio/appium/android/apis/app/FragmentMenu;->setContentView(I)V

    .line 55
    invoke-virtual {p0}, Lio/appium/android/apis/app/FragmentMenu;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 56
    .local v0, "fm":Landroid/app/FragmentManager;
    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 57
    .local v1, "ft":Landroid/app/FragmentTransaction;
    const-string v2, "f1"

    invoke-virtual {v0, v2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v2

    iput-object v2, p0, Lio/appium/android/apis/app/FragmentMenu;->mFragment1:Landroid/app/Fragment;

    .line 58
    iget-object v2, p0, Lio/appium/android/apis/app/FragmentMenu;->mFragment1:Landroid/app/Fragment;

    if-nez v2, :cond_0

    .line 59
    new-instance v2, Lio/appium/android/apis/app/FragmentMenu$MenuFragment;

    invoke-direct {v2}, Lio/appium/android/apis/app/FragmentMenu$MenuFragment;-><init>()V

    iput-object v2, p0, Lio/appium/android/apis/app/FragmentMenu;->mFragment1:Landroid/app/Fragment;

    .line 60
    iget-object v2, p0, Lio/appium/android/apis/app/FragmentMenu;->mFragment1:Landroid/app/Fragment;

    const-string v3, "f1"

    invoke-virtual {v1, v2, v3}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 62
    :cond_0
    const-string v2, "f2"

    invoke-virtual {v0, v2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v2

    iput-object v2, p0, Lio/appium/android/apis/app/FragmentMenu;->mFragment2:Landroid/app/Fragment;

    .line 63
    iget-object v2, p0, Lio/appium/android/apis/app/FragmentMenu;->mFragment2:Landroid/app/Fragment;

    if-nez v2, :cond_1

    .line 64
    new-instance v2, Lio/appium/android/apis/app/FragmentMenu$Menu2Fragment;

    invoke-direct {v2}, Lio/appium/android/apis/app/FragmentMenu$Menu2Fragment;-><init>()V

    iput-object v2, p0, Lio/appium/android/apis/app/FragmentMenu;->mFragment2:Landroid/app/Fragment;

    .line 65
    iget-object v2, p0, Lio/appium/android/apis/app/FragmentMenu;->mFragment2:Landroid/app/Fragment;

    const-string v3, "f2"

    invoke-virtual {v1, v2, v3}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 67
    :cond_1
    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commit()I

    .line 70
    const v2, 0x7f090123

    invoke-virtual {p0, v2}, Lio/appium/android/apis/app/FragmentMenu;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    iput-object v2, p0, Lio/appium/android/apis/app/FragmentMenu;->mCheckBox1:Landroid/widget/CheckBox;

    .line 71
    iget-object v2, p0, Lio/appium/android/apis/app/FragmentMenu;->mCheckBox1:Landroid/widget/CheckBox;

    iget-object v3, p0, Lio/appium/android/apis/app/FragmentMenu;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 72
    const v2, 0x7f090124

    invoke-virtual {p0, v2}, Lio/appium/android/apis/app/FragmentMenu;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    iput-object v2, p0, Lio/appium/android/apis/app/FragmentMenu;->mCheckBox2:Landroid/widget/CheckBox;

    .line 73
    iget-object v2, p0, Lio/appium/android/apis/app/FragmentMenu;->mCheckBox2:Landroid/widget/CheckBox;

    iget-object v3, p0, Lio/appium/android/apis/app/FragmentMenu;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 76
    invoke-virtual {p0}, Lio/appium/android/apis/app/FragmentMenu;->updateFragmentVisibility()V

    .line 77
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 81
    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 83
    invoke-virtual {p0}, Lio/appium/android/apis/app/FragmentMenu;->updateFragmentVisibility()V

    .line 84
    return-void
.end method

.method updateFragmentVisibility()V
    .locals 2

    .line 88
    invoke-virtual {p0}, Lio/appium/android/apis/app/FragmentMenu;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 89
    .local v0, "ft":Landroid/app/FragmentTransaction;
    iget-object v1, p0, Lio/appium/android/apis/app/FragmentMenu;->mCheckBox1:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lio/appium/android/apis/app/FragmentMenu;->mFragment1:Landroid/app/Fragment;

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->show(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    goto :goto_0

    .line 90
    :cond_0
    iget-object v1, p0, Lio/appium/android/apis/app/FragmentMenu;->mFragment1:Landroid/app/Fragment;

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->hide(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 91
    :goto_0
    iget-object v1, p0, Lio/appium/android/apis/app/FragmentMenu;->mCheckBox2:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lio/appium/android/apis/app/FragmentMenu;->mFragment2:Landroid/app/Fragment;

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->show(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    goto :goto_1

    .line 92
    :cond_1
    iget-object v1, p0, Lio/appium/android/apis/app/FragmentMenu;->mFragment2:Landroid/app/Fragment;

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->hide(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 93
    :goto_1
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    .line 94
    return-void
.end method
