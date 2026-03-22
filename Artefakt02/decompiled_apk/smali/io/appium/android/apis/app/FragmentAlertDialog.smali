.class public Lio/appium/android/apis/app/FragmentAlertDialog;
.super Landroid/app/Activity;
.source "FragmentAlertDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/appium/android/apis/app/FragmentAlertDialog$MyAlertDialogFragment;
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
.method public doNegativeClick()V
    .locals 2

    .line 69
    const-string v0, "FragmentAlertDialog"

    const-string v1, "Negative click!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    return-void
.end method

.method public doPositiveClick()V
    .locals 2

    .line 64
    const-string v0, "FragmentAlertDialog"

    const-string v1, "Positive click!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 40
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 41
    const v0, 0x7f0b0067

    invoke-virtual {p0, v0}, Lio/appium/android/apis/app/FragmentAlertDialog;->setContentView(I)V

    .line 43
    const v0, 0x7f09020c

    invoke-virtual {p0, v0}, Lio/appium/android/apis/app/FragmentAlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 44
    .local v0, "tv":Landroid/view/View;
    move-object v1, v0

    check-cast v1, Landroid/widget/TextView;

    const-string v2, "Example of displaying an alert dialog with a DialogFragment"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 47
    const v1, 0x7f0901c6

    invoke-virtual {p0, v1}, Lio/appium/android/apis/app/FragmentAlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 48
    .local v1, "button":Landroid/widget/Button;
    new-instance v2, Lio/appium/android/apis/app/FragmentAlertDialog$1;

    invoke-direct {v2, p0}, Lio/appium/android/apis/app/FragmentAlertDialog$1;-><init>(Lio/appium/android/apis/app/FragmentAlertDialog;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 53
    return-void
.end method

.method showDialog()V
    .locals 3

    .line 57
    const v0, 0x7f0e00a8

    invoke-static {v0}, Lio/appium/android/apis/app/FragmentAlertDialog$MyAlertDialogFragment;->newInstance(I)Lio/appium/android/apis/app/FragmentAlertDialog$MyAlertDialogFragment;

    move-result-object v0

    .line 59
    .local v0, "newFragment":Landroid/app/DialogFragment;
    invoke-virtual {p0}, Lio/appium/android/apis/app/FragmentAlertDialog;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "dialog"

    invoke-virtual {v0, v1, v2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 60
    return-void
.end method
