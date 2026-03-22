.class Lio/appium/android/apis/app/NotifyingService$1;
.super Ljava/lang/Object;
.source "NotifyingService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/appium/android/apis/app/NotifyingService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/appium/android/apis/app/NotifyingService;


# direct methods
.method constructor <init>(Lio/appium/android/apis/app/NotifyingService;)V
    .locals 0
    .param p1, "this$0"    # Lio/appium/android/apis/app/NotifyingService;

    .line 67
    iput-object p1, p0, Lio/appium/android/apis/app/NotifyingService$1;->this$0:Lio/appium/android/apis/app/NotifyingService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 69
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_3

    .line 70
    iget-object v1, p0, Lio/appium/android/apis/app/NotifyingService$1;->this$0:Lio/appium/android/apis/app/NotifyingService;

    const v2, 0x7f0800be

    const v3, 0x7f0e030d

    invoke-static {v1, v2, v3}, Lio/appium/android/apis/app/NotifyingService;->access$000(Lio/appium/android/apis/app/NotifyingService;II)V

    .line 72
    iget-object v1, p0, Lio/appium/android/apis/app/NotifyingService$1;->this$0:Lio/appium/android/apis/app/NotifyingService;

    invoke-static {v1}, Lio/appium/android/apis/app/NotifyingService;->access$100(Lio/appium/android/apis/app/NotifyingService;)Landroid/os/ConditionVariable;

    move-result-object v1

    const-wide/16 v2, 0x1388

    invoke-virtual {v1, v2, v3}, Landroid/os/ConditionVariable;->block(J)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 73
    goto :goto_1

    .line 74
    :cond_0
    iget-object v1, p0, Lio/appium/android/apis/app/NotifyingService$1;->this$0:Lio/appium/android/apis/app/NotifyingService;

    const v4, 0x7f0800bf

    const v5, 0x7f0e0312

    invoke-static {v1, v4, v5}, Lio/appium/android/apis/app/NotifyingService;->access$000(Lio/appium/android/apis/app/NotifyingService;II)V

    .line 76
    iget-object v1, p0, Lio/appium/android/apis/app/NotifyingService$1;->this$0:Lio/appium/android/apis/app/NotifyingService;

    invoke-static {v1}, Lio/appium/android/apis/app/NotifyingService;->access$100(Lio/appium/android/apis/app/NotifyingService;)Landroid/os/ConditionVariable;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Landroid/os/ConditionVariable;->block(J)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 77
    goto :goto_1

    .line 78
    :cond_1
    iget-object v1, p0, Lio/appium/android/apis/app/NotifyingService$1;->this$0:Lio/appium/android/apis/app/NotifyingService;

    const v4, 0x7f0800c0

    const v5, 0x7f0e0315

    invoke-static {v1, v4, v5}, Lio/appium/android/apis/app/NotifyingService;->access$000(Lio/appium/android/apis/app/NotifyingService;II)V

    .line 80
    iget-object v1, p0, Lio/appium/android/apis/app/NotifyingService$1;->this$0:Lio/appium/android/apis/app/NotifyingService;

    invoke-static {v1}, Lio/appium/android/apis/app/NotifyingService;->access$100(Lio/appium/android/apis/app/NotifyingService;)Landroid/os/ConditionVariable;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Landroid/os/ConditionVariable;->block(J)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 81
    goto :goto_1

    .line 69
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 84
    .end local v0    # "i":I
    :cond_3
    :goto_1
    iget-object v0, p0, Lio/appium/android/apis/app/NotifyingService$1;->this$0:Lio/appium/android/apis/app/NotifyingService;

    invoke-virtual {v0}, Lio/appium/android/apis/app/NotifyingService;->stopSelf()V

    .line 85
    return-void
.end method
