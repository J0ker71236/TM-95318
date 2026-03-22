.class public Lio/appium/android/apis/os/SmsMessagingDemo;
.super Landroid/app/Activity;
.source "SmsMessagingDemo.java"


# static fields
.field public static final ACTION_SMS_SENT:Ljava/lang/String; = "io.appium.android.apis.os.SMS_SENT_ACTION"

.field public static final SMS_RECIPIENT_EXTRA:Ljava/lang/String; = "io.appium.android.apis.os.SMS_RECIPIENT"

.field private static final TAG:Ljava/lang/String; = "SmsMessagingDemo"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 46
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 56
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 58
    const v0, 0x7f0b00fb

    invoke-virtual {p0, v0}, Lio/appium/android/apis/os/SmsMessagingDemo;->setContentView(I)V

    .line 60
    invoke-virtual {p0}, Lio/appium/android/apis/os/SmsMessagingDemo;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "io.appium.android.apis.os.SMS_RECIPIENT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    const v1, 0x7f0901d3

    const v2, 0x7f0901d5

    if-eqz v0, :cond_0

    .line 61
    invoke-virtual {p0, v2}, Lio/appium/android/apis/os/SmsMessagingDemo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lio/appium/android/apis/os/SmsMessagingDemo;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "io.appium.android.apis.os.SMS_RECIPIENT"

    .line 62
    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 61
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 63
    invoke-virtual {p0, v1}, Lio/appium/android/apis/os/SmsMessagingDemo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->requestFocus()Z

    .line 68
    :cond_0
    const v0, 0x7f0901d4

    invoke-virtual {p0, v0}, Lio/appium/android/apis/os/SmsMessagingDemo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 70
    .local v0, "enableCheckBox":Landroid/widget/CheckBox;
    invoke-virtual {p0}, Lio/appium/android/apis/os/SmsMessagingDemo;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 71
    .local v3, "pm":Landroid/content/pm/PackageManager;
    new-instance v4, Landroid/content/ComponentName;

    const-string v5, "io.appium.android.apis"

    const-string v6, "io.appium.android.apis.os.SmsMessageReceiver"

    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    .local v4, "componentName":Landroid/content/ComponentName;
    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_1

    goto :goto_0

    :cond_1
    const/4 v6, 0x0

    :goto_0
    invoke-virtual {v0, v6}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 77
    new-instance v5, Lio/appium/android/apis/os/SmsMessagingDemo$1;

    invoke-direct {v5, p0, v3, v4}, Lio/appium/android/apis/os/SmsMessagingDemo$1;-><init>(Lio/appium/android/apis/os/SmsMessagingDemo;Landroid/content/pm/PackageManager;Landroid/content/ComponentName;)V

    invoke-virtual {v0, v5}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 88
    nop

    .line 89
    invoke-virtual {p0, v2}, Lio/appium/android/apis/os/SmsMessagingDemo;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    .line 90
    .local v2, "recipientTextEdit":Landroid/widget/EditText;
    nop

    .line 91
    invoke-virtual {p0, v1}, Lio/appium/android/apis/os/SmsMessagingDemo;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 92
    .local v1, "contentTextEdit":Landroid/widget/EditText;
    const v5, 0x7f0901d7

    invoke-virtual {p0, v5}, Lio/appium/android/apis/os/SmsMessagingDemo;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 95
    .local v5, "statusView":Landroid/widget/TextView;
    const v6, 0x7f0901d6

    invoke-virtual {p0, v6}, Lio/appium/android/apis/os/SmsMessagingDemo;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    .line 96
    .local v6, "sendButton":Landroid/widget/Button;
    new-instance v7, Lio/appium/android/apis/os/SmsMessagingDemo$2;

    invoke-direct {v7, p0, v2, v1}, Lio/appium/android/apis/os/SmsMessagingDemo$2;-><init>(Lio/appium/android/apis/os/SmsMessagingDemo;Landroid/widget/EditText;Landroid/widget/EditText;)V

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 126
    new-instance v7, Lio/appium/android/apis/os/SmsMessagingDemo$3;

    invoke-direct {v7, p0, v2, v1, v5}, Lio/appium/android/apis/os/SmsMessagingDemo$3;-><init>(Lio/appium/android/apis/os/SmsMessagingDemo;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/TextView;)V

    new-instance v8, Landroid/content/IntentFilter;

    const-string v9, "io.appium.android.apis.os.SMS_SENT_ACTION"

    invoke-direct {v8, v9}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v7, v8}, Lio/appium/android/apis/os/SmsMessagingDemo;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 158
    return-void
.end method
