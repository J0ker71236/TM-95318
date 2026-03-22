.class Lio/appium/android/apis/os/SmsMessagingDemo$2;
.super Ljava/lang/Object;
.source "SmsMessagingDemo.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/appium/android/apis/os/SmsMessagingDemo;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/appium/android/apis/os/SmsMessagingDemo;

.field final synthetic val$contentTextEdit:Landroid/widget/EditText;

.field final synthetic val$recipientTextEdit:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lio/appium/android/apis/os/SmsMessagingDemo;Landroid/widget/EditText;Landroid/widget/EditText;)V
    .locals 0
    .param p1, "this$0"    # Lio/appium/android/apis/os/SmsMessagingDemo;

    .line 96
    iput-object p1, p0, Lio/appium/android/apis/os/SmsMessagingDemo$2;->this$0:Lio/appium/android/apis/os/SmsMessagingDemo;

    iput-object p2, p0, Lio/appium/android/apis/os/SmsMessagingDemo$2;->val$recipientTextEdit:Landroid/widget/EditText;

    iput-object p3, p0, Lio/appium/android/apis/os/SmsMessagingDemo$2;->val$contentTextEdit:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 12
    .param p1, "v"    # Landroid/view/View;

    .line 98
    iget-object v0, p0, Lio/appium/android/apis/os/SmsMessagingDemo$2;->val$recipientTextEdit:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lio/appium/android/apis/os/SmsMessagingDemo$2;->this$0:Lio/appium/android/apis/os/SmsMessagingDemo;

    const-string v2, "Please enter a message recipient."

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 100
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 101
    return-void

    .line 104
    :cond_0
    iget-object v0, p0, Lio/appium/android/apis/os/SmsMessagingDemo$2;->val$contentTextEdit:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 105
    iget-object v0, p0, Lio/appium/android/apis/os/SmsMessagingDemo$2;->this$0:Lio/appium/android/apis/os/SmsMessagingDemo;

    const-string v2, "Please enter a message body."

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 106
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 107
    return-void

    .line 110
    :cond_1
    iget-object v0, p0, Lio/appium/android/apis/os/SmsMessagingDemo$2;->val$recipientTextEdit:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 111
    iget-object v0, p0, Lio/appium/android/apis/os/SmsMessagingDemo$2;->val$contentTextEdit:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 113
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v0

    .line 115
    .local v0, "sms":Landroid/telephony/SmsManager;
    iget-object v2, p0, Lio/appium/android/apis/os/SmsMessagingDemo$2;->val$contentTextEdit:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/telephony/SmsManager;->divideMessage(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v8

    .line 117
    .local v8, "messages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v2, p0, Lio/appium/android/apis/os/SmsMessagingDemo$2;->val$recipientTextEdit:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    .line 118
    .local v9, "recipient":Ljava/lang/String;
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Ljava/lang/String;

    .line 119
    .local v11, "message":Ljava/lang/String;
    const/4 v4, 0x0

    iget-object v2, p0, Lio/appium/android/apis/os/SmsMessagingDemo$2;->this$0:Lio/appium/android/apis/os/SmsMessagingDemo;

    new-instance v3, Landroid/content/Intent;

    const-string v5, "io.appium.android.apis.os.SMS_SENT_ACTION"

    invoke-direct {v3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v1, v3, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    const/4 v7, 0x0

    move-object v2, v0

    move-object v3, v9

    move-object v5, v11

    invoke-virtual/range {v2 .. v7}, Landroid/telephony/SmsManager;->sendTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    .line 121
    .end local v11    # "message":Ljava/lang/String;
    goto :goto_0

    .line 122
    :cond_2
    return-void
.end method
