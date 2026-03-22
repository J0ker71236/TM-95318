.class public Lio/appium/android/apis/app/IncomingMessage;
.super Landroid/app/Activity;
.source "IncomingMessage.java"


# static fields
.field private static final CHANNEL_DESCRIPTION:Ljava/lang/String; = "Incoming Message"

.field private static final CHANNEL_ID:Ljava/lang/String; = "main_channel"

.field private static final CHANNEL_NAME:Ljava/lang/String; = "Sample App"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private createChannel()V
    .locals 5
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x1a
    .end annotation

    .line 109
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Lio/appium/android/apis/app/IncomingMessage;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 110
    .local v0, "mNotificationManager":Landroid/app/NotificationManager;
    if-nez v0, :cond_0

    .line 111
    return-void

    .line 113
    :cond_0
    new-instance v1, Landroid/app/NotificationChannel;

    const-string v2, "main_channel"

    const-string v3, "Sample App"

    const/4 v4, 0x3

    invoke-direct {v1, v2, v3, v4}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 114
    .local v1, "mChannel":Landroid/app/NotificationChannel;
    const-string v2, "Incoming Message"

    invoke-virtual {v1, v2}, Landroid/app/NotificationChannel;->setDescription(Ljava/lang/String;)V

    .line 115
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/NotificationChannel;->setShowBadge(Z)V

    .line 116
    invoke-virtual {v1, v2}, Landroid/app/NotificationChannel;->setLockscreenVisibility(I)V

    .line 117
    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 118
    return-void
.end method

.method static makeMessageIntentStack(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)[Landroid/content/Intent;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "from"    # Ljava/lang/CharSequence;
    .param p2, "msg"    # Ljava/lang/CharSequence;

    .line 78
    const/4 v0, 0x4

    new-array v0, v0, [Landroid/content/Intent;

    .line 83
    .local v0, "intents":[Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-class v2, Lio/appium/android/apis/ApiDemos;

    invoke-direct {v1, p0, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {v1}, Landroid/content/Intent;->makeRestartActivityTask(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 87
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lio/appium/android/apis/ApiDemos;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 88
    aget-object v1, v0, v2

    const-string v2, "io.appium.android.apis.Path"

    const-string v3, "App"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 90
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lio/appium/android/apis/ApiDemos;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 91
    aget-object v1, v0, v2

    const-string v2, "io.appium.android.apis.Path"

    const-string v3, "App/Notification"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 95
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lio/appium/android/apis/app/IncomingMessageView;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 96
    aget-object v1, v0, v2

    const-string v3, "from"

    invoke-virtual {v1, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 97
    aget-object v1, v0, v2

    const-string v2, "message"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 99
    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 44
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 46
    const v0, 0x7f0b007f

    invoke-virtual {p0, v0}, Lio/appium/android/apis/app/IncomingMessage;->setContentView(I)V

    .line 48
    const v0, 0x7f090152

    invoke-virtual {p0, v0}, Lio/appium/android/apis/app/IncomingMessage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 49
    .local v0, "button":Landroid/widget/Button;
    new-instance v1, Lio/appium/android/apis/app/IncomingMessage$1;

    invoke-direct {v1, p0}, Lio/appium/android/apis/app/IncomingMessage$1;-><init>(Lio/appium/android/apis/app/IncomingMessage;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 55
    const v1, 0x7f090153

    invoke-virtual {p0, v1}, Lio/appium/android/apis/app/IncomingMessage;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Landroid/widget/Button;

    .line 56
    new-instance v1, Lio/appium/android/apis/app/IncomingMessage$2;

    invoke-direct {v1, p0}, Lio/appium/android/apis/app/IncomingMessage$2;-><init>(Lio/appium/android/apis/app/IncomingMessage;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 62
    invoke-direct {p0}, Lio/appium/android/apis/app/IncomingMessage;->createChannel()V

    .line 63
    return-void
.end method

.method showAppNotification()V
    .locals 10

    .line 126
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Lio/appium/android/apis/app/IncomingMessage;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 128
    .local v0, "nm":Landroid/app/NotificationManager;
    const-string v1, "Joe"

    .line 130
    .local v1, "from":Ljava/lang/CharSequence;
    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    invoke-virtual {v2}, Ljava/util/Random;->nextInt()I

    move-result v2

    rem-int/lit8 v2, v2, 0x3

    packed-switch v2, :pswitch_data_0

    .line 133
    const-string v2, "kthx. meet u for dinner. cul8r"

    goto :goto_0

    .line 132
    :pswitch_0
    const-string v2, "im nearby u"

    goto :goto_0

    .line 131
    :pswitch_1
    const-string v2, "r u hungry?  i am starved"

    .line 139
    .local v2, "message":Ljava/lang/CharSequence;
    :goto_0
    nop

    .line 140
    invoke-static {p0, v1, v2}, Lio/appium/android/apis/app/IncomingMessage;->makeMessageIntentStack(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)[Landroid/content/Intent;

    move-result-object v3

    const/high16 v4, 0x10000000

    .line 139
    const/4 v5, 0x0

    invoke-static {p0, v5, v3, v4}, Landroid/app/PendingIntent;->getActivities(Landroid/content/Context;I[Landroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 142
    .local v3, "contentIntent":Landroid/app/PendingIntent;
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v2, v4, v5

    const v5, 0x7f0e01a4

    invoke-virtual {p0, v5, v4}, Lio/appium/android/apis/app/IncomingMessage;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 146
    .local v4, "tickerText":Ljava/lang/String;
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x1a

    if-lt v6, v7, :cond_0

    .line 147
    new-instance v6, Landroid/app/Notification$Builder;

    const-string v7, "main_channel"

    invoke-direct {v6, p0, v7}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    .line 149
    :cond_0
    new-instance v6, Landroid/app/Notification$Builder;

    invoke-direct {v6, p0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 152
    .local v6, "notifBuilder":Landroid/app/Notification$Builder;
    :goto_1
    const v7, 0x7f0800c1

    invoke-virtual {v6, v7}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v7

    .line 153
    invoke-virtual {v7, v4}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v7

    .line 154
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v7

    .line 155
    invoke-virtual {v7, v1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v7

    .line 156
    invoke-virtual {v7, v2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v7

    .line 157
    invoke-virtual {v7, v3}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 161
    const/4 v7, -0x1

    invoke-virtual {v6, v7}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    .line 167
    invoke-virtual {v6}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v7

    invoke-virtual {v0, v5, v7}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 168
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method showInterstitialNotification()V
    .locals 11

    .line 177
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Lio/appium/android/apis/app/IncomingMessage;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 179
    .local v0, "nm":Landroid/app/NotificationManager;
    const-string v1, "Dianne"

    .line 181
    .local v1, "from":Ljava/lang/CharSequence;
    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    invoke-virtual {v2}, Ljava/util/Random;->nextInt()I

    move-result v2

    rem-int/lit8 v2, v2, 0x3

    packed-switch v2, :pswitch_data_0

    .line 184
    const-string v2, "meet u soon. dont b late!"

    goto :goto_0

    .line 183
    :pswitch_0
    const-string v2, "how about thai down the block?"

    goto :goto_0

    .line 182
    :pswitch_1
    const-string v2, "i am ready for some dinner"

    .line 190
    .local v2, "message":Ljava/lang/CharSequence;
    :goto_0
    new-instance v3, Landroid/content/Intent;

    const-class v4, Lio/appium/android/apis/app/IncomingMessageInterstitial;

    invoke-direct {v3, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 191
    .local v3, "intent":Landroid/content/Intent;
    const-string v4, "from"

    invoke-virtual {v3, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 192
    const-string v4, "message"

    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 193
    const v4, 0x10008000

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 194
    const/high16 v4, 0x10000000

    const/4 v5, 0x0

    invoke-static {p0, v5, v3, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    .line 198
    .local v4, "contentIntent":Landroid/app/PendingIntent;
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v2, v6, v5

    const v5, 0x7f0e01a4

    invoke-virtual {p0, v5, v6}, Lio/appium/android/apis/app/IncomingMessage;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 201
    .local v6, "tickerText":Ljava/lang/String;
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x1a

    if-lt v7, v8, :cond_0

    .line 202
    new-instance v7, Landroid/app/Notification$Builder;

    const-string v8, "main_channel"

    invoke-direct {v7, p0, v8}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    .line 204
    :cond_0
    new-instance v7, Landroid/app/Notification$Builder;

    invoke-direct {v7, p0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 208
    .local v7, "notifBuilder":Landroid/app/Notification$Builder;
    :goto_1
    const v8, 0x7f0800c1

    .line 209
    invoke-virtual {v7, v8}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v8

    .line 210
    invoke-virtual {v8, v6}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v8

    .line 211
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v8

    .line 212
    invoke-virtual {v8, v1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v8

    .line 213
    invoke-virtual {v8, v2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v8

    .line 214
    invoke-virtual {v8, v4}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 218
    const/4 v8, -0x1

    invoke-virtual {v7, v8}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    .line 224
    invoke-virtual {v7}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v8

    invoke-virtual {v0, v5, v8}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 225
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
