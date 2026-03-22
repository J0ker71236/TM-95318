.class Lio/appium/android/apis/app/FragmentAlertDialog$MyAlertDialogFragment$1;
.super Ljava/lang/Object;
.source "FragmentAlertDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/appium/android/apis/app/FragmentAlertDialog$MyAlertDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/appium/android/apis/app/FragmentAlertDialog$MyAlertDialogFragment;


# direct methods
.method constructor <init>(Lio/appium/android/apis/app/FragmentAlertDialog$MyAlertDialogFragment;)V
    .locals 0
    .param p1, "this$0"    # Lio/appium/android/apis/app/FragmentAlertDialog$MyAlertDialogFragment;

    .line 99
    iput-object p1, p0, Lio/appium/android/apis/app/FragmentAlertDialog$MyAlertDialogFragment$1;->this$0:Lio/appium/android/apis/app/FragmentAlertDialog$MyAlertDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .line 101
    iget-object v0, p0, Lio/appium/android/apis/app/FragmentAlertDialog$MyAlertDialogFragment$1;->this$0:Lio/appium/android/apis/app/FragmentAlertDialog$MyAlertDialogFragment;

    invoke-virtual {v0}, Lio/appium/android/apis/app/FragmentAlertDialog$MyAlertDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lio/appium/android/apis/app/FragmentAlertDialog;

    invoke-virtual {v0}, Lio/appium/android/apis/app/FragmentAlertDialog;->doNegativeClick()V

    .line 102
    return-void
.end method
