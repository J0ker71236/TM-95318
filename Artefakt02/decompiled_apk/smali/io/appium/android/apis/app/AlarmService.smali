.class public Lio/appium/android/apis/app/AlarmService;
.super Landroid/app/Activity;
.source "AlarmService.java"


# instance fields
.field private mAlarmSender:Landroid/app/PendingIntent;

.field private mStartAlarmListener:Landroid/view/View$OnClickListener;

.field private mStopAlarmListener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 40
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 61
    new-instance v0, Lio/appium/android/apis/app/AlarmService$1;

    invoke-direct {v0, p0}, Lio/appium/android/apis/app/AlarmService$1;-><init>(Lio/appium/android/apis/app/AlarmService;)V

    iput-object v0, p0, Lio/appium/android/apis/app/AlarmService;->mStartAlarmListener:Landroid/view/View$OnClickListener;

    .line 77
    new-instance v0, Lio/appium/android/apis/app/AlarmService$2;

    invoke-direct {v0, p0}, Lio/appium/android/apis/app/AlarmService$2;-><init>(Lio/appium/android/apis/app/AlarmService;)V

    iput-object v0, p0, Lio/appium/android/apis/app/AlarmService;->mStopAlarmListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lio/appium/android/apis/app/AlarmService;)Landroid/app/PendingIntent;
    .locals 1
    .param p0, "x0"    # Lio/appium/android/apis/app/AlarmService;

    .line 40
    iget-object v0, p0, Lio/appium/android/apis/app/AlarmService;->mAlarmSender:Landroid/app/PendingIntent;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 45
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 49
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lio/appium/android/apis/app/AlarmService_Service;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v1, 0x0

    invoke-static {p0, v1, v0, v1}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lio/appium/android/apis/app/AlarmService;->mAlarmSender:Landroid/app/PendingIntent;

    .line 52
    const v0, 0x7f0b0027

    invoke-virtual {p0, v0}, Lio/appium/android/apis/app/AlarmService;->setContentView(I)V

    .line 55
    const v0, 0x7f0901ec

    invoke-virtual {p0, v0}, Lio/appium/android/apis/app/AlarmService;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 56
    .local v0, "button":Landroid/widget/Button;
    iget-object v1, p0, Lio/appium/android/apis/app/AlarmService;->mStartAlarmListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 57
    const v1, 0x7f0901f8

    invoke-virtual {p0, v1}, Lio/appium/android/apis/app/AlarmService;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Landroid/widget/Button;

    .line 58
    iget-object v1, p0, Lio/appium/android/apis/app/AlarmService;->mStopAlarmListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 59
    return-void
.end method
