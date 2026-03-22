.class Lio/appium/android/apis/app/AlarmController$2;
.super Ljava/lang/Object;
.source "AlarmController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/appium/android/apis/app/AlarmController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/appium/android/apis/app/AlarmController;


# direct methods
.method constructor <init>(Lio/appium/android/apis/app/AlarmController;)V
    .locals 0
    .param p1, "this$0"    # Lio/appium/android/apis/app/AlarmController;

    .line 114
    iput-object p1, p0, Lio/appium/android/apis/app/AlarmController$2;->this$0:Lio/appium/android/apis/app/AlarmController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 12
    .param p1, "v"    # Landroid/view/View;

    .line 123
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lio/appium/android/apis/app/AlarmController$2;->this$0:Lio/appium/android/apis/app/AlarmController;

    const-class v2, Lio/appium/android/apis/app/RepeatingAlarm;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 124
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lio/appium/android/apis/app/AlarmController$2;->this$0:Lio/appium/android/apis/app/AlarmController;

    const/4 v2, 0x0

    invoke-static {v1, v2, v0, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 128
    .local v1, "sender":Landroid/app/PendingIntent;
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 129
    .local v2, "firstTime":J
    const-wide/16 v4, 0x3a98

    add-long v10, v2, v4

    .line 132
    .end local v2    # "firstTime":J
    .local v10, "firstTime":J
    iget-object v2, p0, Lio/appium/android/apis/app/AlarmController$2;->this$0:Lio/appium/android/apis/app/AlarmController;

    const-string v3, "alarm"

    invoke-virtual {v2, v3}, Lio/appium/android/apis/app/AlarmController;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AlarmManager;

    .line 133
    .local v2, "am":Landroid/app/AlarmManager;
    const/4 v4, 0x2

    const-wide/16 v7, 0x3a98

    move-object v3, v2

    move-wide v5, v10

    move-object v9, v1

    invoke-virtual/range {v3 .. v9}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    .line 137
    iget-object v3, p0, Lio/appium/android/apis/app/AlarmController$2;->this$0:Lio/appium/android/apis/app/AlarmController;

    iget-object v3, v3, Lio/appium/android/apis/app/AlarmController;->mToast:Landroid/widget/Toast;

    if-eqz v3, :cond_0

    .line 138
    iget-object v3, p0, Lio/appium/android/apis/app/AlarmController$2;->this$0:Lio/appium/android/apis/app/AlarmController;

    iget-object v3, v3, Lio/appium/android/apis/app/AlarmController;->mToast:Landroid/widget/Toast;

    invoke-virtual {v3}, Landroid/widget/Toast;->cancel()V

    .line 140
    :cond_0
    iget-object v3, p0, Lio/appium/android/apis/app/AlarmController$2;->this$0:Lio/appium/android/apis/app/AlarmController;

    const v4, 0x7f0e028a

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    iput-object v4, v3, Lio/appium/android/apis/app/AlarmController;->mToast:Landroid/widget/Toast;

    .line 142
    iget-object v3, p0, Lio/appium/android/apis/app/AlarmController$2;->this$0:Lio/appium/android/apis/app/AlarmController;

    iget-object v3, v3, Lio/appium/android/apis/app/AlarmController;->mToast:Landroid/widget/Toast;

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 143
    return-void
.end method
