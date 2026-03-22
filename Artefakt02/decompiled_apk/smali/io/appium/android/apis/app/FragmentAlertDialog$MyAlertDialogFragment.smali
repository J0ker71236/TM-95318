.class public Lio/appium/android/apis/app/FragmentAlertDialog$MyAlertDialogFragment;
.super Landroid/app/DialogFragment;
.source "FragmentAlertDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/appium/android/apis/app/FragmentAlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MyAlertDialogFragment"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 74
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static newInstance(I)Lio/appium/android/apis/app/FragmentAlertDialog$MyAlertDialogFragment;
    .locals 3
    .param p0, "title"    # I

    .line 77
    new-instance v0, Lio/appium/android/apis/app/FragmentAlertDialog$MyAlertDialogFragment;

    invoke-direct {v0}, Lio/appium/android/apis/app/FragmentAlertDialog$MyAlertDialogFragment;-><init>()V

    .line 78
    .local v0, "frag":Lio/appium/android/apis/app/FragmentAlertDialog$MyAlertDialogFragment;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 79
    .local v1, "args":Landroid/os/Bundle;
    const-string v2, "title"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 80
    invoke-virtual {v0, v1}, Lio/appium/android/apis/app/FragmentAlertDialog$MyAlertDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 81
    return-object v0
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 86
    invoke-virtual {p0}, Lio/appium/android/apis/app/FragmentAlertDialog$MyAlertDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "title"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 88
    .local v0, "title":I
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lio/appium/android/apis/app/FragmentAlertDialog$MyAlertDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 89
    const v2, 0x7f080054

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 90
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lio/appium/android/apis/app/FragmentAlertDialog$MyAlertDialogFragment$2;

    invoke-direct {v2, p0}, Lio/appium/android/apis/app/FragmentAlertDialog$MyAlertDialogFragment$2;-><init>(Lio/appium/android/apis/app/FragmentAlertDialog$MyAlertDialogFragment;)V

    .line 91
    const v3, 0x7f0e0097

    invoke-virtual {v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lio/appium/android/apis/app/FragmentAlertDialog$MyAlertDialogFragment$1;

    invoke-direct {v2, p0}, Lio/appium/android/apis/app/FragmentAlertDialog$MyAlertDialogFragment$1;-><init>(Lio/appium/android/apis/app/FragmentAlertDialog$MyAlertDialogFragment;)V

    .line 98
    const v3, 0x7f0e0093

    invoke-virtual {v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 105
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 88
    return-object v1
.end method
