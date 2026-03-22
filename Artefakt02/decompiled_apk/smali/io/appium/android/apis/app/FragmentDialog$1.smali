.class Lio/appium/android/apis/app/FragmentDialog$1;
.super Ljava/lang/Object;
.source "FragmentDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/appium/android/apis/app/FragmentDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/appium/android/apis/app/FragmentDialog;


# direct methods
.method constructor <init>(Lio/appium/android/apis/app/FragmentDialog;)V
    .locals 0
    .param p1, "this$0"    # Lio/appium/android/apis/app/FragmentDialog;

    .line 49
    iput-object p1, p0, Lio/appium/android/apis/app/FragmentDialog$1;->this$0:Lio/appium/android/apis/app/FragmentDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .line 51
    iget-object v0, p0, Lio/appium/android/apis/app/FragmentDialog$1;->this$0:Lio/appium/android/apis/app/FragmentDialog;

    invoke-virtual {v0}, Lio/appium/android/apis/app/FragmentDialog;->showDialog()V

    .line 52
    return-void
.end method
