.class Lio/appium/android/apis/os/SmsMessagingDemo$3;
.super Landroid/content/BroadcastReceiver;
.source "SmsMessagingDemo.java"


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

.field final synthetic val$statusView:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lio/appium/android/apis/os/SmsMessagingDemo;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/TextView;)V
    .locals 0
    .param p1, "this$0"    # Lio/appium/android/apis/os/SmsMessagingDemo;

    .line 126
    iput-object p1, p0, Lio/appium/android/apis/os/SmsMessagingDemo$3;->this$0:Lio/appium/android/apis/os/SmsMessagingDemo;

    iput-object p2, p0, Lio/appium/android/apis/os/SmsMessagingDemo$3;->val$recipientTextEdit:Landroid/widget/EditText;

    iput-object p3, p0, Lio/appium/android/apis/os/SmsMessagingDemo$3;->val$contentTextEdit:Landroid/widget/EditText;

    iput-object p4, p0, Lio/appium/android/apis/os/SmsMessagingDemo$3;->val$statusView:Landroid/widget/TextView;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 129
    const/4 v0, 0x0

    .line 130
    .local v0, "message":Ljava/lang/String;
    const/4 v1, 0x1

    .line 131
    .local v1, "error":Z
    invoke-virtual {p0}, Lio/appium/android/apis/os/SmsMessagingDemo$3;->getResultCode()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 140
    :pswitch_0
    const-string v0, "Error: No service."

    .line 141
    goto :goto_0

    .line 143
    :pswitch_1
    const-string v0, "Error: Null PDU."

    .line 144
    goto :goto_0

    .line 146
    :pswitch_2
    const-string v0, "Error: Radio off."

    goto :goto_0

    .line 137
    :pswitch_3
    const-string v0, "Error."

    .line 138
    goto :goto_0

    .line 133
    :cond_0
    const-string v0, "Message sent!"

    .line 134
    const/4 v1, 0x0

    .line 135
    nop

    .line 150
    :goto_0
    iget-object v2, p0, Lio/appium/android/apis/os/SmsMessagingDemo$3;->val$recipientTextEdit:Landroid/widget/EditText;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 151
    iget-object v2, p0, Lio/appium/android/apis/os/SmsMessagingDemo$3;->val$contentTextEdit:Landroid/widget/EditText;

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 152
    iget-object v2, p0, Lio/appium/android/apis/os/SmsMessagingDemo$3;->val$contentTextEdit:Landroid/widget/EditText;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 154
    iget-object v2, p0, Lio/appium/android/apis/os/SmsMessagingDemo$3;->val$statusView:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 155
    iget-object v2, p0, Lio/appium/android/apis/os/SmsMessagingDemo$3;->val$statusView:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    const/high16 v3, -0x10000

    goto :goto_1

    :cond_1
    const v3, -0xff0100

    :goto_1
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 156
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
