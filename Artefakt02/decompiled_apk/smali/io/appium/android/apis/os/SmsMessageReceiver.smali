.class public Lio/appium/android/apis/os/SmsMessageReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SmsMessageReceiver.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SmsMessageReceiver"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 16
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 34
    move-object/from16 v0, p1

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 35
    .local v1, "extras":Landroid/os/Bundle;
    if-nez v1, :cond_0

    .line 36
    return-void

    .line 38
    :cond_0
    const-string v2, "pdus"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Object;

    .line 40
    .local v2, "pdus":[Ljava/lang/Object;
    const/4 v3, 0x0

    .local v3, "i":I
    array-length v4, v2

    if-ge v3, v4, :cond_3

    .line 41
    aget-object v4, v2, v3

    check-cast v4, [B

    invoke-static {v4}, Landroid/telephony/SmsMessage;->createFromPdu([B)Landroid/telephony/SmsMessage;

    move-result-object v4

    .line 42
    .local v4, "message":Landroid/telephony/SmsMessage;
    invoke-virtual {v4}, Landroid/telephony/SmsMessage;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v5

    .line 43
    .local v5, "fromAddress":Ljava/lang/String;
    move-object v6, v5

    .line 51
    .local v6, "fromDisplayName":Ljava/lang/String;
    sget-object v7, Landroid/provider/ContactsContract$PhoneLookup;->CONTENT_FILTER_URI:Landroid/net/Uri;

    .line 53
    invoke-static {v5}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 51
    invoke-static {v7, v8}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    .line 54
    .local v7, "uri":Landroid/net/Uri;
    const/4 v8, 0x1

    new-array v11, v8, [Ljava/lang/String;

    const-string v8, "display_name"

    const/4 v15, 0x0

    aput-object v8, v11, v15

    .line 57
    .local v11, "projection":[Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object v10, v7

    invoke-virtual/range {v9 .. v14}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 58
    .local v8, "cursor":Landroid/database/Cursor;
    if-eqz v8, :cond_2

    .line 59
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 60
    invoke-interface {v8, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 62
    :cond_1
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 66
    :cond_2
    new-instance v9, Landroid/content/Intent;

    invoke-direct {v9}, Landroid/content/Intent;-><init>()V

    .line 67
    .local v9, "di":Landroid/content/Intent;
    const-class v10, Lio/appium/android/apis/os/SmsReceivedDialog;

    invoke-virtual {v9, v0, v10}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 68
    const/high16 v10, 0x30000000

    invoke-virtual {v9, v10}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 69
    const-string v10, "io.appium.android.apis.os.SMS_FROM_ADDRESS"

    invoke-virtual {v9, v10, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 70
    const-string v10, "io.appium.android.apis.os.SMS_FROM_DISPLAY_NAME"

    invoke-virtual {v9, v10, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 71
    const-string v10, "io.appium.android.apis.os.SMS_MESSAGE"

    invoke-virtual {v4}, Landroid/telephony/SmsMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v10, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 72
    invoke-virtual {v0, v9}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 77
    .end local v3    # "i":I
    .end local v4    # "message":Landroid/telephony/SmsMessage;
    .end local v5    # "fromAddress":Ljava/lang/String;
    .end local v6    # "fromDisplayName":Ljava/lang/String;
    .end local v7    # "uri":Landroid/net/Uri;
    .end local v8    # "cursor":Landroid/database/Cursor;
    .end local v9    # "di":Landroid/content/Intent;
    .end local v11    # "projection":[Ljava/lang/String;
    :cond_3
    return-void
.end method
