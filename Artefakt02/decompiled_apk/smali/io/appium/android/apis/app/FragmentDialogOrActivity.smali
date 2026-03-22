.class public Lio/appium/android/apis/app/FragmentDialogOrActivity;
.super Landroid/app/Activity;
.source "FragmentDialogOrActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/appium/android/apis/app/FragmentDialogOrActivity$MyDialogFragment;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 36
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 37
    const v0, 0x7f0b0068

    invoke-virtual {p0, v0}, Lio/appium/android/apis/app/FragmentDialogOrActivity;->setContentView(I)V

    .line 39
    if-nez p1, :cond_0

    .line 42
    invoke-virtual {p0}, Lio/appium/android/apis/app/FragmentDialogOrActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 43
    .local v0, "ft":Landroid/app/FragmentTransaction;
    invoke-static {}, Lio/appium/android/apis/app/FragmentDialogOrActivity$MyDialogFragment;->newInstance()Lio/appium/android/apis/app/FragmentDialogOrActivity$MyDialogFragment;

    move-result-object v1

    .line 44
    .local v1, "newFragment":Landroid/app/DialogFragment;
    const v2, 0x7f0900ac

    invoke-virtual {v0, v2, v1}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 45
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    .line 50
    .end local v0    # "ft":Landroid/app/FragmentTransaction;
    .end local v1    # "newFragment":Landroid/app/DialogFragment;
    :cond_0
    const v0, 0x7f0901cd

    invoke-virtual {p0, v0}, Lio/appium/android/apis/app/FragmentDialogOrActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 51
    .local v0, "button":Landroid/widget/Button;
    new-instance v1, Lio/appium/android/apis/app/FragmentDialogOrActivity$1;

    invoke-direct {v1, p0}, Lio/appium/android/apis/app/FragmentDialogOrActivity$1;-><init>(Lio/appium/android/apis/app/FragmentDialogOrActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 56
    return-void
.end method

.method showDialog()V
    .locals 3

    .line 61
    invoke-static {}, Lio/appium/android/apis/app/FragmentDialogOrActivity$MyDialogFragment;->newInstance()Lio/appium/android/apis/app/FragmentDialogOrActivity$MyDialogFragment;

    move-result-object v0

    .line 62
    .local v0, "newFragment":Landroid/app/DialogFragment;
    invoke-virtual {p0}, Lio/appium/android/apis/app/FragmentDialogOrActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "dialog"

    invoke-virtual {v0, v1, v2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 63
    return-void
.end method
