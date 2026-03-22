.class Lio/appium/android/apis/app/AlarmService$1;
.super Ljava/lang/Object;
.source "AlarmService.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/appium/android/apis/app/AlarmService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/appium/android/apis/app/AlarmService;


# direct methods
.method constructor <init>(Lio/appium/android/apis/app/AlarmService;)V
    .locals 0
    .param p1, "this$0"    # Lio/appium/android/apis/app/AlarmService;

    .line 61
    iput-object p1, p0, Lio/appium/android/apis/app/AlarmService$1;->this$0:Lio/appium/android/apis/app/AlarmService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 10
    .param p1, "v"    # Landroid/view/View;

    .line 64
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    .line 67
    .local v7, "firstTime":J
    iget-object v0, p0, Lio/appium/android/apis/app/AlarmService$1;->this$0:Lio/appium/android/apis/app/AlarmService;

    const-string v1, "alarm"

    invoke-virtual {v0, v1}, Lio/appium/android/apis/app/AlarmService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Landroid/app/AlarmManager;

    .line 68
    .local v9, "am":Landroid/app/AlarmManager;
    iget-object v0, p0, Lio/appium/android/apis/app/AlarmService$1;->this$0:Lio/appium/android/apis/app/AlarmService;

    .line 69
    invoke-static {v0}, Lio/appium/android/apis/app/AlarmService;->access$000(Lio/appium/android/apis/app/AlarmService;)Landroid/app/PendingIntent;

    move-result-object v6

    .line 68
    const/4 v1, 0x2

    const-wide/16 v4, 0x7530

    move-object v0, v9

    move-wide v2, v7

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    .line 72
    iget-object v0, p0, Lio/appium/android/apis/app/AlarmService$1;->this$0:Lio/appium/android/apis/app/AlarmService;

    const v1, 0x7f0e028a

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 73
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 74
    return-void
.end method
