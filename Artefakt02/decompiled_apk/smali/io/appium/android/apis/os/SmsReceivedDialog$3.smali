.class Lio/appium/android/apis/os/SmsReceivedDialog$3;
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

    .line 89
    iput-object p1, p0, Lio/appium/android/apis/os/SmsReceivedDialog$3;->this$0:Lio/appium/android/apis/os/SmsReceivedDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .line 92
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 93
    .local v0, "i":Landroid/content/Intent;
    iget-object v1, p0, Lio/appium/android/apis/os/SmsReceivedDialog$3;->this$0:Lio/appium/android/apis/os/SmsReceivedDialog;

    const-class v2, Lio/appium/android/apis/os/SmsMessagingDemo;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 94
    const-string v1, "io.appium.android.apis.os.SMS_RECIPIENT"

    iget-object v2, p0, Lio/appium/android/apis/os/SmsReceivedDialog$3;->this$0:Lio/appium/android/apis/os/SmsReceivedDialog;

    invoke-static {v2}, Lio/appium/android/apis/os/SmsReceivedDialog;->access$000(Lio/appium/android/apis/os/SmsReceivedDialog;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 95
    iget-object v1, p0, Lio/appium/android/apis/os/SmsReceivedDialog$3;->this$0:Lio/appium/android/apis/os/SmsReceivedDialog;

    invoke-virtual {v1, v0}, Lio/appium/android/apis/os/SmsReceivedDialog;->startActivity(Landroid/content/Intent;)V

    .line 97
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 98
    iget-object v1, p0, Lio/appium/android/apis/os/SmsReceivedDialog$3;->this$0:Lio/appium/android/apis/os/SmsReceivedDialog;

    invoke-virtual {v1}, Lio/appium/android/apis/os/SmsReceivedDialog;->finish()V

    .line 99
    return-void
.end method
