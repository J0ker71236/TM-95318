.class public Lio/appium/android/apis/app/FragmentLayout;
.super Landroid/app/Activity;
.source "FragmentLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/appium/android/apis/app/FragmentLayout$DetailsFragment;,
        Lio/appium/android/apis/app/FragmentLayout$TitlesFragment;,
        Lio/appium/android/apis/app/FragmentLayout$DetailsActivity;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 48
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 50
    const v0, 0x7f0b006a

    invoke-virtual {p0, v0}, Lio/appium/android/apis/app/FragmentLayout;->setContentView(I)V

    .line 51
    return-void
.end method
