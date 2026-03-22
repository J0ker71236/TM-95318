.class Lio/appium/android/apis/app/FragmentDialog$MyDialogFragment$1;
.super Ljava/lang/Object;
.source "FragmentDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/appium/android/apis/app/FragmentDialog$MyDialogFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/appium/android/apis/app/FragmentDialog$MyDialogFragment;


# direct methods
.method constructor <init>(Lio/appium/android/apis/app/FragmentDialog$MyDialogFragment;)V
    .locals 0
    .param p1, "this$0"    # Lio/appium/android/apis/app/FragmentDialog$MyDialogFragment;

    .line 157
    iput-object p1, p0, Lio/appium/android/apis/app/FragmentDialog$MyDialogFragment$1;->this$0:Lio/appium/android/apis/app/FragmentDialog$MyDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .line 160
    iget-object v0, p0, Lio/appium/android/apis/app/FragmentDialog$MyDialogFragment$1;->this$0:Lio/appium/android/apis/app/FragmentDialog$MyDialogFragment;

    invoke-virtual {v0}, Lio/appium/android/apis/app/FragmentDialog$MyDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lio/appium/android/apis/app/FragmentDialog;

    invoke-virtual {v0}, Lio/appium/android/apis/app/FragmentDialog;->showDialog()V

    .line 161
    return-void
.end method
