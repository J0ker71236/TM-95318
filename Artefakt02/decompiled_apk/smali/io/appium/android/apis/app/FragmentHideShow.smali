.class public Lio/appium/android/apis/app/FragmentHideShow;
.super Landroid/app/Activity;
.source "FragmentHideShow.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/appium/android/apis/app/FragmentHideShow$SecondFragment;,
        Lio/appium/android/apis/app/FragmentHideShow$FirstFragment;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method addShowHideListener(ILandroid/app/Fragment;)V
    .locals 2
    .param p1, "buttonId"    # I
    .param p2, "fragment"    # Landroid/app/Fragment;

    .line 51
    invoke-virtual {p0, p1}, Lio/appium/android/apis/app/FragmentHideShow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 52
    .local v0, "button":Landroid/widget/Button;
    new-instance v1, Lio/appium/android/apis/app/FragmentHideShow$1;

    invoke-direct {v1, p0, p2, v0}, Lio/appium/android/apis/app/FragmentHideShow$1;-><init>(Lio/appium/android/apis/app/FragmentHideShow;Landroid/app/Fragment;Landroid/widget/Button;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 67
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 40
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 41
    const v0, 0x7f0b0069

    invoke-virtual {p0, v0}, Lio/appium/android/apis/app/FragmentHideShow;->setContentView(I)V

    .line 45
    invoke-virtual {p0}, Lio/appium/android/apis/app/FragmentHideShow;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 46
    .local v0, "fm":Landroid/app/FragmentManager;
    const v1, 0x7f0900d1

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v1

    const v2, 0x7f0900cf

    invoke-virtual {p0, v2, v1}, Lio/appium/android/apis/app/FragmentHideShow;->addShowHideListener(ILandroid/app/Fragment;)V

    .line 47
    const v1, 0x7f0900d2

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v1

    const v2, 0x7f0900d0

    invoke-virtual {p0, v2, v1}, Lio/appium/android/apis/app/FragmentHideShow;->addShowHideListener(ILandroid/app/Fragment;)V

    .line 48
    return-void
.end method
