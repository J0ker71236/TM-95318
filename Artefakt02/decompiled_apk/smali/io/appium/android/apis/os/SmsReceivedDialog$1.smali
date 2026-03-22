.class Lio/appium/android/apis/os/SmsReceivedDialog$1;
.super Ljava/lang/Object;
.source "SmsReceivedDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


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

    .line 107
    iput-object p1, p0, Lio/appium/android/apis/os/SmsReceivedDialog$1;->this$0:Lio/appium/android/apis/os/SmsReceivedDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .line 109
    iget-object v0, p0, Lio/appium/android/apis/os/SmsReceivedDialog$1;->this$0:Lio/appium/android/apis/os/SmsReceivedDialog;

    invoke-virtual {v0}, Lio/appium/android/apis/os/SmsReceivedDialog;->finish()V

    .line 110
    return-void
.end method
