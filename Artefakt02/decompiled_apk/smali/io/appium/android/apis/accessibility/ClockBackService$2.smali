.class Lio/appium/android/apis/accessibility/ClockBackService$2;
.super Landroid/content/BroadcastReceiver;
.source "ClockBackService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/appium/android/apis/accessibility/ClockBackService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/appium/android/apis/accessibility/ClockBackService;


# direct methods
.method constructor <init>(Lio/appium/android/apis/accessibility/ClockBackService;)V
    .locals 0
    .param p1, "this$0"    # Lio/appium/android/apis/accessibility/ClockBackService;

    .line 272
    iput-object p1, p0, Lio/appium/android/apis/accessibility/ClockBackService$2;->this$0:Lio/appium/android/apis/accessibility/ClockBackService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private provideScreenStateChangeFeedback(I)V
    .locals 3
    .param p1, "feedbackIndex"    # I

    .line 299
    iget-object v0, p0, Lio/appium/android/apis/accessibility/ClockBackService$2;->this$0:Lio/appium/android/apis/accessibility/ClockBackService;

    iget v0, v0, Lio/appium/android/apis/accessibility/ClockBackService;->mProvidedFeedbackType:I

    const/4 v1, 0x4

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    .line 311
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected feedback type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lio/appium/android/apis/accessibility/ClockBackService$2;->this$0:Lio/appium/android/apis/accessibility/ClockBackService;

    iget v2, v2, Lio/appium/android/apis/accessibility/ClockBackService;->mProvidedFeedbackType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 308
    :pswitch_0
    iget-object v0, p0, Lio/appium/android/apis/accessibility/ClockBackService$2;->this$0:Lio/appium/android/apis/accessibility/ClockBackService;

    iget-object v0, v0, Lio/appium/android/apis/accessibility/ClockBackService;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 309
    return-void

    .line 301
    :pswitch_1
    iget-object v0, p0, Lio/appium/android/apis/accessibility/ClockBackService$2;->this$0:Lio/appium/android/apis/accessibility/ClockBackService;

    invoke-static {v0, p1}, Lio/appium/android/apis/accessibility/ClockBackService;->access$600(Lio/appium/android/apis/accessibility/ClockBackService;I)Ljava/lang/String;

    move-result-object v0

    .line 302
    .local v0, "utterance":Ljava/lang/String;
    iget-object v1, p0, Lio/appium/android/apis/accessibility/ClockBackService$2;->this$0:Lio/appium/android/apis/accessibility/ClockBackService;

    iget-object v1, v1, Lio/appium/android/apis/accessibility/ClockBackService;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 303
    return-void

    .line 305
    .end local v0    # "utterance":Ljava/lang/String;
    :cond_0
    iget-object v0, p0, Lio/appium/android/apis/accessibility/ClockBackService$2;->this$0:Lio/appium/android/apis/accessibility/ClockBackService;

    iget-object v0, v0, Lio/appium/android/apis/accessibility/ClockBackService;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 306
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 275
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 277
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.media.RINGER_MODE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 278
    const-string v1, "android.media.EXTRA_RINGER_MODE"

    const/4 v2, 0x2

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 280
    .local v1, "ringerMode":I
    iget-object v2, p0, Lio/appium/android/apis/accessibility/ClockBackService$2;->this$0:Lio/appium/android/apis/accessibility/ClockBackService;

    invoke-static {v2, v1}, Lio/appium/android/apis/accessibility/ClockBackService;->access$500(Lio/appium/android/apis/accessibility/ClockBackService;I)V

    .line 281
    .end local v1    # "ringerMode":I
    goto :goto_0

    :cond_0
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 282
    const/16 v1, 0x100

    invoke-direct {p0, v1}, Lio/appium/android/apis/accessibility/ClockBackService$2;->provideScreenStateChangeFeedback(I)V

    goto :goto_0

    .line 283
    :cond_1
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 284
    const/16 v1, 0x200

    invoke-direct {p0, v1}, Lio/appium/android/apis/accessibility/ClockBackService$2;->provideScreenStateChangeFeedback(I)V

    goto :goto_0

    .line 286
    :cond_2
    const-string v1, "ClockBackService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Registered for but not handling action "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    :goto_0
    return-void
.end method
