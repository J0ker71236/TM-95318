.class Lio/appium/android/apis/os/SmsReceivedDialog$2;
.super Ljava/lang/Object;
.source "SmsReceivedDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/appium/android/apis/os/SmsReceivedDialog;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/appium/android/apis/os/SmsReceivedDialog;


# direct methods
.method constructor <init>(Lio/appium/android/apis/os/SmsReceivedDialog;)V
    .locals 0
    .param p1, "this$0"    # Lio/appium/android/apis/os/SmsReceivedDialog;

    .line 101
    iput-object p1, p0, Lio/appium/android/apis/os/SmsReceivedDialog$2;->this$0:Lio/appium/android/apis/os/SmsReceivedDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .line 103
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 104
    iget-object v0, p0, Lio/appium/android/apis/os/SmsReceivedDialog$2;->this$0:Lio/appium/android/apis/os/SmsReceivedDialog;

    invoke-virtual {v0}, Lio/appium/android/apis/os/SmsReceivedDialog;->finish()V

    .line 105
    return-void
.end method
