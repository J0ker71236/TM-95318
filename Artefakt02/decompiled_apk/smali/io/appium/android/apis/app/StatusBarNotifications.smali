.class public Lio/appium/android/apis/app/StatusBarNotifications;
.super Landroid/app/Activity;
.source "StatusBarNotifications.java"


# static fields
.field private static final CHANNEL_DESCRIPTION:Ljava/lang/String; = "Status Bar Notifications"

.field private static final CHANNEL_ID:Ljava/lang/String; = "main_channel"

.field private static final CHANNEL_NAME:Ljava/lang/String; = "Sample App"

.field private static MOOD_NOTIFICATIONS:I


# instance fields
.field private mNotificationManager:Landroid/app/NotificationManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 43
    const v0, 0x7f0b0100

    sput v0, Lio/appium/android/apis/app/StatusBarNotifications;->MOOD_NOTIFICATIONS:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lio/appium/android/apis/app/StatusBarNotifications;IIZ)V
    .locals 0
    .param p0, "x0"    # Lio/appium/android/apis/app/StatusBarNotifications;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # Z

    .line 38
    invoke-direct {p0, p1, p2, p3}, Lio/appium/android/apis/app/StatusBarNotifications;->setMood(IIZ)V

    return-void
.end method

.method static synthetic access$100(Lio/appium/android/apis/app/StatusBarNotifications;II)V
    .locals 0
    .param p0, "x0"    # Lio/appium/android/apis/app/StatusBarNotifications;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .line 38
    invoke-direct {p0, p1, p2}, Lio/appium/android/apis/app/StatusBarNotifications;->setMoodView(II)V

    return-void
.end method

.method static synthetic access$200(Lio/appium/android/apis/app/StatusBarNotifications;I)V
    .locals 0
    .param p0, "x0"    # Lio/appium/android/apis/app/StatusBarNotifications;
    .param p1, "x1"    # I

    .line 38
    invoke-direct {p0, p1}, Lio/appium/android/apis/app/StatusBarNotifications;->setDefault(I)V

    return-void
.end method

.method static synthetic access$300(Lio/appium/android/apis/app/StatusBarNotifications;)Landroid/app/NotificationManager;
    .locals 1
    .param p0, "x0"    # Lio/appium/android/apis/app/StatusBarNotifications;

    .line 38
    iget-object v0, p0, Lio/appium/android/apis/app/StatusBarNotifications;->mNotificationManager:Landroid/app/NotificationManager;

    return-object v0
.end method

.method private createChannel()V
    .locals 5
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x1a
    .end annotation

    .line 204
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Lio/appium/android/apis/app/StatusBarNotifications;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 205
    .local v0, "mNotificationManager":Landroid/app/NotificationManager;
    if-nez v0, :cond_0

    .line 206
    return-void

    .line 208
    :cond_0
    new-instance v1, Landroid/app/NotificationChannel;

    const-string v2, "main_channel"

    const-string v3, "Sample App"

    const/4 v4, 0x3

    invoke-direct {v1, v2, v3, v4}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 209
    .local v1, "mChannel":Landroid/app/NotificationChannel;
    const-string v2, "Status Bar Notifications"

    invoke-virtual {v1, v2}, Landroid/app/NotificationChannel;->setDescription(Ljava/lang/String;)V

    .line 210
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/NotificationChannel;->setShowBadge(Z)V

    .line 211
    invoke-virtual {v1, v2}, Landroid/app/NotificationChannel;->setLockscreenVisibility(I)V

    .line 212
    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 213
    return-void
.end method

.method private makeDefaultIntent()Landroid/app/PendingIntent;
    .locals 5

    .line 170
    const/4 v0, 0x4

    new-array v0, v0, [Landroid/content/Intent;

    .line 175
    .local v0, "intents":[Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-class v2, Lio/appium/android/apis/ApiDemos;

    invoke-direct {v1, p0, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {v1}, Landroid/content/Intent;->makeRestartActivityTask(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 179
    new-instance v1, Landroid/content/Intent;

    const-class v3, Lio/appium/android/apis/ApiDemos;

    invoke-direct {v1, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v3, 0x1

    aput-object v1, v0, v3

    .line 180
    aget-object v1, v0, v3

    const-string v3, "io.appium.android.apis.Path"

    const-string v4, "App"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 182
    new-instance v1, Landroid/content/Intent;

    const-class v3, Lio/appium/android/apis/ApiDemos;

    invoke-direct {v1, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v3, 0x2

    aput-object v1, v0, v3

    .line 183
    aget-object v1, v0, v3

    const-string v3, "io.appium.android.apis.Path"

    const-string v4, "App/Notification"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 186
    new-instance v1, Landroid/content/Intent;

    const-class v3, Lio/appium/android/apis/app/StatusBarNotifications;

    invoke-direct {v1, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v3, 0x3

    aput-object v1, v0, v3

    .line 192
    const/high16 v1, 0x8000000

    invoke-static {p0, v2, v0, v1}, Landroid/app/PendingIntent;->getActivities(Landroid/content/Context;I[Landroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 194
    .local v1, "contentIntent":Landroid/app/PendingIntent;
    return-object v1
.end method

.method private makeMoodIntent(I)Landroid/app/PendingIntent;
    .locals 3
    .param p1, "moodId"    # I

    .line 158
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lio/appium/android/apis/app/NotificationDisplay;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "moodimg"

    .line 159
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    .line 158
    const/4 v1, 0x0

    const/high16 v2, 0x8000000

    invoke-static {p0, v1, v0, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 161
    .local v0, "contentIntent":Landroid/app/PendingIntent;
    return-object v0
.end method

.method private setDefault(I)V
    .locals 7
    .param p1, "defaults"    # I

    .line 274
    invoke-direct {p0}, Lio/appium/android/apis/app/StatusBarNotifications;->makeDefaultIntent()Landroid/app/PendingIntent;

    move-result-object v0

    .line 276
    .local v0, "contentIntent":Landroid/app/PendingIntent;
    const v1, 0x7f0e030d

    invoke-virtual {p0, v1}, Lio/appium/android/apis/app/StatusBarNotifications;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 278
    .local v1, "text":Ljava/lang/CharSequence;
    const v2, 0x7f0e0310

    invoke-virtual {p0, v2}, Lio/appium/android/apis/app/StatusBarNotifications;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 281
    .local v2, "title":Ljava/lang/CharSequence;
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1a

    if-lt v3, v4, :cond_0

    .line 282
    new-instance v3, Landroid/app/Notification$Builder;

    const-string v4, "main_channel"

    invoke-direct {v3, p0, v4}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 284
    :cond_0
    new-instance v3, Landroid/app/Notification$Builder;

    invoke-direct {v3, p0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 288
    .local v3, "notifBuilder":Landroid/app/Notification$Builder;
    :goto_0
    const v4, 0x7f0800be

    .line 289
    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 290
    invoke-virtual {v4, v1}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 291
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 292
    invoke-virtual {v4, v2}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 293
    invoke-virtual {v4, v1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 294
    invoke-virtual {v4, v0}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 295
    invoke-virtual {v4, p1}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 296
    invoke-virtual {v4}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v4

    .line 297
    .local v4, "notification":Landroid/app/Notification;
    iget-object v5, p0, Lio/appium/android/apis/app/StatusBarNotifications;->mNotificationManager:Landroid/app/NotificationManager;

    sget v6, Lio/appium/android/apis/app/StatusBarNotifications;->MOOD_NOTIFICATIONS:I

    invoke-virtual {v5, v6, v4}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 301
    return-void
.end method

.method private setMood(IIZ)V
    .locals 7
    .param p1, "moodId"    # I
    .param p2, "textId"    # I
    .param p3, "showTicker"    # Z

    .line 217
    invoke-virtual {p0, p2}, Lio/appium/android/apis/app/StatusBarNotifications;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 219
    .local v0, "text":Ljava/lang/CharSequence;
    const v1, 0x7f0e0310

    invoke-virtual {p0, v1}, Lio/appium/android/apis/app/StatusBarNotifications;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 223
    .local v1, "title":Ljava/lang/CharSequence;
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1a

    if-lt v2, v3, :cond_0

    .line 224
    new-instance v2, Landroid/app/Notification$Builder;

    const-string v3, "main_channel"

    invoke-direct {v2, p0, v3}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 226
    :cond_0
    new-instance v2, Landroid/app/Notification$Builder;

    invoke-direct {v2, p0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 229
    .local v2, "builder":Landroid/app/Notification$Builder;
    :goto_0
    nop

    .line 230
    invoke-virtual {v2, p1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v3

    .line 231
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v3

    .line 232
    invoke-virtual {v3, v1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v3

    .line 233
    invoke-virtual {v3, v0}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v3

    .line 234
    invoke-direct {p0, p1}, Lio/appium/android/apis/app/StatusBarNotifications;->makeMoodIntent(I)Landroid/app/PendingIntent;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v3

    .line 235
    .local v3, "notifBuidler":Landroid/app/Notification$Builder;
    if-eqz p3, :cond_1

    .line 237
    invoke-virtual {p0, p2}, Lio/appium/android/apis/app/StatusBarNotifications;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 241
    :cond_1
    iget-object v4, p0, Lio/appium/android/apis/app/StatusBarNotifications;->mNotificationManager:Landroid/app/NotificationManager;

    sget v5, Lio/appium/android/apis/app/StatusBarNotifications;->MOOD_NOTIFICATIONS:I

    invoke-virtual {v3}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 242
    return-void
.end method

.method private setMoodView(II)V
    .locals 5
    .param p1, "moodId"    # I
    .param p2, "textId"    # I

    .line 249
    new-instance v0, Landroid/app/Notification;

    invoke-direct {v0}, Landroid/app/Notification;-><init>()V

    .line 252
    .local v0, "notif":Landroid/app/Notification;
    invoke-direct {p0, p1}, Lio/appium/android/apis/app/StatusBarNotifications;->makeMoodIntent(I)Landroid/app/PendingIntent;

    move-result-object v1

    iput-object v1, v0, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 255
    invoke-virtual {p0, p2}, Lio/appium/android/apis/app/StatusBarNotifications;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 256
    .local v1, "text":Ljava/lang/CharSequence;
    iput-object v1, v0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 259
    iput p1, v0, Landroid/app/Notification;->icon:I

    .line 262
    new-instance v2, Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Lio/appium/android/apis/app/StatusBarNotifications;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f0b00ff

    invoke-direct {v2, v3, v4}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 263
    .local v2, "contentView":Landroid/widget/RemoteViews;
    const v3, 0x7f09020c

    invoke-virtual {v2, v3, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 264
    const v3, 0x7f0900ef

    invoke-virtual {v2, v3, p1}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 265
    iput-object v2, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 269
    iget-object v3, p0, Lio/appium/android/apis/app/StatusBarNotifications;->mNotificationManager:Landroid/app/NotificationManager;

    sget v4, Lio/appium/android/apis/app/StatusBarNotifications;->MOOD_NOTIFICATIONS:I

    invoke-virtual {v3, v4, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 270
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 47
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 49
    const v0, 0x7f0b0100

    invoke-virtual {p0, v0}, Lio/appium/android/apis/app/StatusBarNotifications;->setContentView(I)V

    .line 54
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Lio/appium/android/apis/app/StatusBarNotifications;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lio/appium/android/apis/app/StatusBarNotifications;->mNotificationManager:Landroid/app/NotificationManager;

    .line 56
    const v0, 0x7f0900e1

    invoke-virtual {p0, v0}, Lio/appium/android/apis/app/StatusBarNotifications;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 57
    .local v0, "button":Landroid/widget/Button;
    new-instance v1, Lio/appium/android/apis/app/StatusBarNotifications$1;

    invoke-direct {v1, p0}, Lio/appium/android/apis/app/StatusBarNotifications$1;-><init>(Lio/appium/android/apis/app/StatusBarNotifications;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 64
    const v1, 0x7f09013d

    invoke-virtual {p0, v1}, Lio/appium/android/apis/app/StatusBarNotifications;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Landroid/widget/Button;

    .line 65
    new-instance v1, Lio/appium/android/apis/app/StatusBarNotifications$2;

    invoke-direct {v1, p0}, Lio/appium/android/apis/app/StatusBarNotifications$2;-><init>(Lio/appium/android/apis/app/StatusBarNotifications;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 72
    const v1, 0x7f090199

    invoke-virtual {p0, v1}, Lio/appium/android/apis/app/StatusBarNotifications;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Landroid/widget/Button;

    .line 73
    new-instance v1, Lio/appium/android/apis/app/StatusBarNotifications$3;

    invoke-direct {v1, p0}, Lio/appium/android/apis/app/StatusBarNotifications$3;-><init>(Lio/appium/android/apis/app/StatusBarNotifications;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 79
    const v1, 0x7f0900e2

    invoke-virtual {p0, v1}, Lio/appium/android/apis/app/StatusBarNotifications;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Landroid/widget/Button;

    .line 80
    new-instance v1, Lio/appium/android/apis/app/StatusBarNotifications$4;

    invoke-direct {v1, p0}, Lio/appium/android/apis/app/StatusBarNotifications$4;-><init>(Lio/appium/android/apis/app/StatusBarNotifications;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 87
    const v1, 0x7f09013e

    invoke-virtual {p0, v1}, Lio/appium/android/apis/app/StatusBarNotifications;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Landroid/widget/Button;

    .line 88
    new-instance v1, Lio/appium/android/apis/app/StatusBarNotifications$5;

    invoke-direct {v1, p0}, Lio/appium/android/apis/app/StatusBarNotifications$5;-><init>(Lio/appium/android/apis/app/StatusBarNotifications;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 94
    const v1, 0x7f09019a

    invoke-virtual {p0, v1}, Lio/appium/android/apis/app/StatusBarNotifications;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Landroid/widget/Button;

    .line 95
    new-instance v1, Lio/appium/android/apis/app/StatusBarNotifications$6;

    invoke-direct {v1, p0}, Lio/appium/android/apis/app/StatusBarNotifications$6;-><init>(Lio/appium/android/apis/app/StatusBarNotifications;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 101
    const v1, 0x7f0900e3

    invoke-virtual {p0, v1}, Lio/appium/android/apis/app/StatusBarNotifications;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Landroid/widget/Button;

    .line 102
    new-instance v1, Lio/appium/android/apis/app/StatusBarNotifications$7;

    invoke-direct {v1, p0}, Lio/appium/android/apis/app/StatusBarNotifications$7;-><init>(Lio/appium/android/apis/app/StatusBarNotifications;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 108
    const v1, 0x7f09013f

    invoke-virtual {p0, v1}, Lio/appium/android/apis/app/StatusBarNotifications;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Landroid/widget/Button;

    .line 109
    new-instance v1, Lio/appium/android/apis/app/StatusBarNotifications$8;

    invoke-direct {v1, p0}, Lio/appium/android/apis/app/StatusBarNotifications$8;-><init>(Lio/appium/android/apis/app/StatusBarNotifications;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 115
    const v1, 0x7f09019b

    invoke-virtual {p0, v1}, Lio/appium/android/apis/app/StatusBarNotifications;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Landroid/widget/Button;

    .line 116
    new-instance v1, Lio/appium/android/apis/app/StatusBarNotifications$9;

    invoke-direct {v1, p0}, Lio/appium/android/apis/app/StatusBarNotifications$9;-><init>(Lio/appium/android/apis/app/StatusBarNotifications;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 122
    const v1, 0x7f09008a

    invoke-virtual {p0, v1}, Lio/appium/android/apis/app/StatusBarNotifications;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Landroid/widget/Button;

    .line 123
    new-instance v1, Lio/appium/android/apis/app/StatusBarNotifications$10;

    invoke-direct {v1, p0}, Lio/appium/android/apis/app/StatusBarNotifications$10;-><init>(Lio/appium/android/apis/app/StatusBarNotifications;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 129
    const v1, 0x7f09008b

    invoke-virtual {p0, v1}, Lio/appium/android/apis/app/StatusBarNotifications;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Landroid/widget/Button;

    .line 130
    new-instance v1, Lio/appium/android/apis/app/StatusBarNotifications$11;

    invoke-direct {v1, p0}, Lio/appium/android/apis/app/StatusBarNotifications$11;-><init>(Lio/appium/android/apis/app/StatusBarNotifications;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 136
    const v1, 0x7f090089

    invoke-virtual {p0, v1}, Lio/appium/android/apis/app/StatusBarNotifications;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Landroid/widget/Button;

    .line 137
    new-instance v1, Lio/appium/android/apis/app/StatusBarNotifications$12;

    invoke-direct {v1, p0}, Lio/appium/android/apis/app/StatusBarNotifications$12;-><init>(Lio/appium/android/apis/app/StatusBarNotifications;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 143
    const v1, 0x7f09006b

    invoke-virtual {p0, v1}, Lio/appium/android/apis/app/StatusBarNotifications;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Landroid/widget/Button;

    .line 144
    new-instance v1, Lio/appium/android/apis/app/StatusBarNotifications$13;

    invoke-direct {v1, p0}, Lio/appium/android/apis/app/StatusBarNotifications$13;-><init>(Lio/appium/android/apis/app/StatusBarNotifications;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 150
    invoke-direct {p0}, Lio/appium/android/apis/app/StatusBarNotifications;->createChannel()V

    .line 151
    return-void
.end method
