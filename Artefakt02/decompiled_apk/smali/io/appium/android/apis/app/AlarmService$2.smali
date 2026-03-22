.class Lio/appium/android/apis/app/AlarmService$2;
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

    .line 77
    iput-object p1, p0, Lio/appium/android/apis/app/AlarmService$2;->this$0:Lio/appium/android/apis/app/AlarmService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .line 80
    iget-object v0, p0, Lio/appium/android/apis/app/AlarmService$2;->this$0:Lio/appium/android/apis/app/AlarmService;

    const-string v1, "alarm"

    invoke-virtual {v0, v1}, Lio/appium/android/apis/app/AlarmService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 81
    .local v0, "am":Landroid/app/AlarmManager;
    iget-object v1, p0, Lio/appium/android/apis/app/AlarmService$2;->this$0:Lio/appium/android/apis/app/AlarmService;

    invoke-static {v1}, Lio/appium/android/apis/app/AlarmService;->access$000(Lio/appium/android/apis/app/AlarmService;)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 84
    iget-object v1, p0, Lio/appium/android/apis/app/AlarmService$2;->this$0:Lio/appium/android/apis/app/AlarmService;

    const v2, 0x7f0e028b

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    .line 85
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 87
    return-void
.end method
