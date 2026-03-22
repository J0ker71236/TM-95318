.class public Lio/appium/android/apis/app/FragmentLayout$DetailsActivity;
.super Landroid/app/Activity;
.source "FragmentLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/appium/android/apis/app/FragmentLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DetailsActivity"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 59
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 63
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 65
    invoke-virtual {p0}, Lio/appium/android/apis/app/FragmentLayout$DetailsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 69
    invoke-virtual {p0}, Lio/appium/android/apis/app/FragmentLayout$DetailsActivity;->finish()V

    .line 70
    return-void

    .line 73
    :cond_0
    if-nez p1, :cond_1

    .line 75
    new-instance v0, Lio/appium/android/apis/app/FragmentLayout$DetailsFragment;

    invoke-direct {v0}, Lio/appium/android/apis/app/FragmentLayout$DetailsFragment;-><init>()V

    .line 76
    .local v0, "details":Lio/appium/android/apis/app/FragmentLayout$DetailsFragment;
    invoke-virtual {p0}, Lio/appium/android/apis/app/FragmentLayout$DetailsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/appium/android/apis/app/FragmentLayout$DetailsFragment;->setArguments(Landroid/os/Bundle;)V

    .line 77
    invoke-virtual {p0}, Lio/appium/android/apis/app/FragmentLayout$DetailsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    const v2, 0x1020002

    invoke-virtual {v1, v2, v0}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commit()I

    .line 79
    .end local v0    # "details":Lio/appium/android/apis/app/FragmentLayout$DetailsFragment;
    :cond_1
    return-void
.end method
