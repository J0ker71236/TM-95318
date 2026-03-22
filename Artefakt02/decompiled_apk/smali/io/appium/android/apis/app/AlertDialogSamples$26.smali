.class Lio/appium/android/apis/app/AlertDialogSamples$26;
.super Ljava/lang/Object;
.source "AlertDialogSamples.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/appium/android/apis/app/AlertDialogSamples;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/appium/android/apis/app/AlertDialogSamples;


# direct methods
.method constructor <init>(Lio/appium/android/apis/app/AlertDialogSamples;)V
    .locals 0
    .param p1, "this$0"    # Lio/appium/android/apis/app/AlertDialogSamples;

    .line 326
    iput-object p1, p0, Lio/appium/android/apis/app/AlertDialogSamples$26;->this$0:Lio/appium/android/apis/app/AlertDialogSamples;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .line 328
    iget-object v0, p0, Lio/appium/android/apis/app/AlertDialogSamples$26;->this$0:Lio/appium/android/apis/app/AlertDialogSamples;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lio/appium/android/apis/app/AlertDialogSamples;->showDialog(I)V

    .line 329
    return-void
.end method
