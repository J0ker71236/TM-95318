.class Lio/appium/android/apis/app/FragmentDialogOrActivity$1;
.super Ljava/lang/Object;
.source "FragmentDialogOrActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/appium/android/apis/app/FragmentDialogOrActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/appium/android/apis/app/FragmentDialogOrActivity;


# direct methods
.method constructor <init>(Lio/appium/android/apis/app/FragmentDialogOrActivity;)V
    .locals 0
    .param p1, "this$0"    # Lio/appium/android/apis/app/FragmentDialogOrActivity;

    .line 51
    iput-object p1, p0, Lio/appium/android/apis/app/FragmentDialogOrActivity$1;->this$0:Lio/appium/android/apis/app/FragmentDialogOrActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .line 53
    iget-object v0, p0, Lio/appium/android/apis/app/FragmentDialogOrActivity$1;->this$0:Lio/appium/android/apis/app/FragmentDialogOrActivity;

    invoke-virtual {v0}, Lio/appium/android/apis/app/FragmentDialogOrActivity;->showDialog()V

    .line 54
    return-void
.end method
