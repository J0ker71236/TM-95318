.class Lio/appium/android/apis/app/MessengerService$IncomingHandler;
.super Landroid/os/Handler;
.source "MessengerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/appium/android/apis/app/MessengerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "IncomingHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lio/appium/android/apis/app/MessengerService;


# direct methods
.method constructor <init>(Lio/appium/android/apis/app/MessengerService;)V
    .locals 0
    .param p1, "this$0"    # Lio/appium/android/apis/app/MessengerService;

    .line 84
    iput-object p1, p0, Lio/appium/android/apis/app/MessengerService$IncomingHandler;->this$0:Lio/appium/android/apis/app/MessengerService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .line 87
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 109
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    goto :goto_2

    .line 95
    :pswitch_0
    iget-object v0, p0, Lio/appium/android/apis/app/MessengerService$IncomingHandler;->this$0:Lio/appium/android/apis/app/MessengerService;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iput v1, v0, Lio/appium/android/apis/app/MessengerService;->mValue:I

    .line 96
    iget-object v0, p0, Lio/appium/android/apis/app/MessengerService$IncomingHandler;->this$0:Lio/appium/android/apis/app/MessengerService;

    iget-object v0, v0, Lio/appium/android/apis/app/MessengerService;->mClients:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 98
    :try_start_0
    iget-object v1, p0, Lio/appium/android/apis/app/MessengerService$IncomingHandler;->this$0:Lio/appium/android/apis/app/MessengerService;

    iget-object v1, v1, Lio/appium/android/apis/app/MessengerService;->mClients:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Messenger;

    const/4 v2, 0x0

    const/4 v3, 0x3

    iget-object v4, p0, Lio/appium/android/apis/app/MessengerService$IncomingHandler;->this$0:Lio/appium/android/apis/app/MessengerService;

    iget v4, v4, Lio/appium/android/apis/app/MessengerService;->mValue:I

    const/4 v5, 0x0

    invoke-static {v2, v3, v4, v5}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 105
    goto :goto_1

    .line 100
    :catch_0
    move-exception v1

    .line 104
    .local v1, "e":Landroid/os/RemoteException;
    iget-object v2, p0, Lio/appium/android/apis/app/MessengerService$IncomingHandler;->this$0:Lio/appium/android/apis/app/MessengerService;

    iget-object v2, v2, Lio/appium/android/apis/app/MessengerService;->mClients:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 96
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 107
    .end local v0    # "i":I
    :cond_0
    goto :goto_2

    .line 92
    :pswitch_1
    iget-object v0, p0, Lio/appium/android/apis/app/MessengerService$IncomingHandler;->this$0:Lio/appium/android/apis/app/MessengerService;

    iget-object v0, v0, Lio/appium/android/apis/app/MessengerService;->mClients:Ljava/util/ArrayList;

    iget-object v1, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 93
    goto :goto_2

    .line 89
    :pswitch_2
    iget-object v0, p0, Lio/appium/android/apis/app/MessengerService$IncomingHandler;->this$0:Lio/appium/android/apis/app/MessengerService;

    iget-object v0, v0, Lio/appium/android/apis/app/MessengerService;->mClients:Ljava/util/ArrayList;

    iget-object v1, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 90
    nop

    .line 111
    :goto_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
