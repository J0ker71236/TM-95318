.class Lio/appium/android/apis/accessibility/ClockBackService$1;
.super Landroid/os/Handler;
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

    .line 224
    iput-object p1, p0, Lio/appium/android/apis/accessibility/ClockBackService$1;->this$0:Lio/appium/android/apis/accessibility/ClockBackService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "message"    # Landroid/os/Message;

    .line 227
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 265
    return-void

    .line 262
    :pswitch_0
    iget-object v0, p0, Lio/appium/android/apis/accessibility/ClockBackService$1;->this$0:Lio/appium/android/apis/accessibility/ClockBackService;

    invoke-static {v0}, Lio/appium/android/apis/accessibility/ClockBackService;->access$400(Lio/appium/android/apis/accessibility/ClockBackService;)Landroid/os/Vibrator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Vibrator;->cancel()V

    .line 263
    return-void

    .line 255
    :pswitch_1
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 256
    .local v0, "key":I
    invoke-static {}, Lio/appium/android/apis/accessibility/ClockBackService;->access$300()Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [J

    .line 257
    .local v1, "pattern":[J
    if-eqz v1, :cond_0

    .line 258
    iget-object v2, p0, Lio/appium/android/apis/accessibility/ClockBackService$1;->this$0:Lio/appium/android/apis/accessibility/ClockBackService;

    invoke-static {v2}, Lio/appium/android/apis/accessibility/ClockBackService;->access$400(Lio/appium/android/apis/accessibility/ClockBackService;)Landroid/os/Vibrator;

    move-result-object v2

    const/4 v3, -0x1

    invoke-virtual {v2, v1, v3}, Landroid/os/Vibrator;->vibrate([JI)V

    .line 260
    :cond_0
    return-void

    .line 252
    .end local v0    # "key":I
    .end local v1    # "pattern":[J
    :pswitch_2
    iget-object v0, p0, Lio/appium/android/apis/accessibility/ClockBackService$1;->this$0:Lio/appium/android/apis/accessibility/ClockBackService;

    invoke-static {v0}, Lio/appium/android/apis/accessibility/ClockBackService;->access$000(Lio/appium/android/apis/accessibility/ClockBackService;)Landroid/speech/tts/TextToSpeech;

    move-result-object v0

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->stop()I

    .line 253
    return-void

    .line 248
    :pswitch_3
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 249
    .local v0, "resourceId":I
    iget-object v1, p0, Lio/appium/android/apis/accessibility/ClockBackService$1;->this$0:Lio/appium/android/apis/accessibility/ClockBackService;

    invoke-static {v1, v0}, Lio/appium/android/apis/accessibility/ClockBackService;->access$200(Lio/appium/android/apis/accessibility/ClockBackService;I)V

    .line 250
    return-void

    .line 245
    .end local v0    # "resourceId":I
    :pswitch_4
    iget-object v0, p0, Lio/appium/android/apis/accessibility/ClockBackService$1;->this$0:Lio/appium/android/apis/accessibility/ClockBackService;

    invoke-static {v0}, Lio/appium/android/apis/accessibility/ClockBackService;->access$000(Lio/appium/android/apis/accessibility/ClockBackService;)Landroid/speech/tts/TextToSpeech;

    move-result-object v0

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->shutdown()V

    .line 246
    return-void

    .line 236
    :pswitch_5
    iget-object v0, p0, Lio/appium/android/apis/accessibility/ClockBackService$1;->this$0:Lio/appium/android/apis/accessibility/ClockBackService;

    new-instance v1, Landroid/speech/tts/TextToSpeech;

    iget-object v2, v0, Lio/appium/android/apis/accessibility/ClockBackService;->mContext:Landroid/content/Context;

    new-instance v3, Lio/appium/android/apis/accessibility/ClockBackService$1$1;

    invoke-direct {v3, p0}, Lio/appium/android/apis/accessibility/ClockBackService$1$1;-><init>(Lio/appium/android/apis/accessibility/ClockBackService$1;)V

    invoke-direct {v1, v2, v3}, Landroid/speech/tts/TextToSpeech;-><init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;)V

    invoke-static {v0, v1}, Lio/appium/android/apis/accessibility/ClockBackService;->access$002(Lio/appium/android/apis/accessibility/ClockBackService;Landroid/speech/tts/TextToSpeech;)Landroid/speech/tts/TextToSpeech;

    .line 243
    return-void

    .line 233
    :pswitch_6
    iget-object v0, p0, Lio/appium/android/apis/accessibility/ClockBackService$1;->this$0:Lio/appium/android/apis/accessibility/ClockBackService;

    invoke-static {v0}, Lio/appium/android/apis/accessibility/ClockBackService;->access$000(Lio/appium/android/apis/accessibility/ClockBackService;)Landroid/speech/tts/TextToSpeech;

    move-result-object v0

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->stop()I

    .line 234
    return-void

    .line 229
    :pswitch_7
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 230
    .local v0, "utterance":Ljava/lang/String;
    iget-object v1, p0, Lio/appium/android/apis/accessibility/ClockBackService$1;->this$0:Lio/appium/android/apis/accessibility/ClockBackService;

    invoke-static {v1}, Lio/appium/android/apis/accessibility/ClockBackService;->access$000(Lio/appium/android/apis/accessibility/ClockBackService;)Landroid/speech/tts/TextToSpeech;

    move-result-object v1

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/String;ILjava/util/HashMap;)I

    .line 231
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
