.class Lio/appium/android/apis/app/AlertDialogSamples$36;
.super Landroid/os/Handler;
.source "AlertDialogSamples.java"


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

    .line 409
    iput-object p1, p0, Lio/appium/android/apis/app/AlertDialogSamples$36;->this$0:Lio/appium/android/apis/app/AlertDialogSamples;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 412
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 413
    iget-object v0, p0, Lio/appium/android/apis/app/AlertDialogSamples$36;->this$0:Lio/appium/android/apis/app/AlertDialogSamples;

    invoke-static {v0}, Lio/appium/android/apis/app/AlertDialogSamples;->access$000(Lio/appium/android/apis/app/AlertDialogSamples;)I

    move-result v0

    const/16 v1, 0x64

    if-lt v0, v1, :cond_0

    .line 414
    iget-object v0, p0, Lio/appium/android/apis/app/AlertDialogSamples$36;->this$0:Lio/appium/android/apis/app/AlertDialogSamples;

    invoke-static {v0}, Lio/appium/android/apis/app/AlertDialogSamples;->access$100(Lio/appium/android/apis/app/AlertDialogSamples;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    goto :goto_0

    .line 416
    :cond_0
    iget-object v0, p0, Lio/appium/android/apis/app/AlertDialogSamples$36;->this$0:Lio/appium/android/apis/app/AlertDialogSamples;

    invoke-static {v0}, Lio/appium/android/apis/app/AlertDialogSamples;->access$008(Lio/appium/android/apis/app/AlertDialogSamples;)I

    .line 417
    iget-object v0, p0, Lio/appium/android/apis/app/AlertDialogSamples$36;->this$0:Lio/appium/android/apis/app/AlertDialogSamples;

    invoke-static {v0}, Lio/appium/android/apis/app/AlertDialogSamples;->access$100(Lio/appium/android/apis/app/AlertDialogSamples;)Landroid/app/ProgressDialog;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->incrementProgressBy(I)V

    .line 418
    iget-object v0, p0, Lio/appium/android/apis/app/AlertDialogSamples$36;->this$0:Lio/appium/android/apis/app/AlertDialogSamples;

    invoke-static {v0}, Lio/appium/android/apis/app/AlertDialogSamples;->access$200(Lio/appium/android/apis/app/AlertDialogSamples;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 420
    :goto_0
    return-void
.end method
