.class Lio/appium/android/apis/graphics/PurgeableBitmap$RefreshHandler;
.super Landroid/os/Handler;
.source "PurgeableBitmap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/appium/android/apis/graphics/PurgeableBitmap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RefreshHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lio/appium/android/apis/graphics/PurgeableBitmap;


# direct methods
.method constructor <init>(Lio/appium/android/apis/graphics/PurgeableBitmap;)V
    .locals 0
    .param p1, "this$0"    # Lio/appium/android/apis/graphics/PurgeableBitmap;

    .line 42
    iput-object p1, p0, Lio/appium/android/apis/graphics/PurgeableBitmap$RefreshHandler;->this$0:Lio/appium/android/apis/graphics/PurgeableBitmap;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 46
    iget-object v0, p0, Lio/appium/android/apis/graphics/PurgeableBitmap$RefreshHandler;->this$0:Lio/appium/android/apis/graphics/PurgeableBitmap;

    invoke-static {v0}, Lio/appium/android/apis/graphics/PurgeableBitmap;->access$000(Lio/appium/android/apis/graphics/PurgeableBitmap;)Lio/appium/android/apis/graphics/PurgeableBitmapView;

    move-result-object v0

    invoke-virtual {v0, p0}, Lio/appium/android/apis/graphics/PurgeableBitmapView;->update(Lio/appium/android/apis/graphics/PurgeableBitmap$RefreshHandler;)I

    move-result v0

    .line 47
    .local v0, "index":I
    if-lez v0, :cond_0

    .line 48
    iget-object v1, p0, Lio/appium/android/apis/graphics/PurgeableBitmap$RefreshHandler;->this$0:Lio/appium/android/apis/graphics/PurgeableBitmap;

    const/4 v2, 0x1

    invoke-static {v1, v2, v0}, Lio/appium/android/apis/graphics/PurgeableBitmap;->access$100(Lio/appium/android/apis/graphics/PurgeableBitmap;ZI)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lio/appium/android/apis/graphics/PurgeableBitmap;->access$200(Lio/appium/android/apis/graphics/PurgeableBitmap;Ljava/lang/String;)V

    goto :goto_0

    .line 49
    :cond_0
    if-gez v0, :cond_1

    .line 50
    iget-object v1, p0, Lio/appium/android/apis/graphics/PurgeableBitmap$RefreshHandler;->this$0:Lio/appium/android/apis/graphics/PurgeableBitmap;

    invoke-static {v1}, Lio/appium/android/apis/graphics/PurgeableBitmap;->access$000(Lio/appium/android/apis/graphics/PurgeableBitmap;)Lio/appium/android/apis/graphics/PurgeableBitmapView;

    move-result-object v1

    invoke-virtual {v1}, Lio/appium/android/apis/graphics/PurgeableBitmapView;->invalidate()V

    .line 51
    iget-object v1, p0, Lio/appium/android/apis/graphics/PurgeableBitmap$RefreshHandler;->this$0:Lio/appium/android/apis/graphics/PurgeableBitmap;

    const/4 v2, 0x0

    neg-int v3, v0

    invoke-static {v1, v2, v3}, Lio/appium/android/apis/graphics/PurgeableBitmap;->access$100(Lio/appium/android/apis/graphics/PurgeableBitmap;ZI)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lio/appium/android/apis/graphics/PurgeableBitmap;->access$200(Lio/appium/android/apis/graphics/PurgeableBitmap;Ljava/lang/String;)V

    goto :goto_0

    .line 53
    :cond_1
    iget-object v1, p0, Lio/appium/android/apis/graphics/PurgeableBitmap$RefreshHandler;->this$0:Lio/appium/android/apis/graphics/PurgeableBitmap;

    invoke-static {v1}, Lio/appium/android/apis/graphics/PurgeableBitmap;->access$000(Lio/appium/android/apis/graphics/PurgeableBitmap;)Lio/appium/android/apis/graphics/PurgeableBitmapView;

    move-result-object v1

    invoke-virtual {v1}, Lio/appium/android/apis/graphics/PurgeableBitmapView;->invalidate()V

    .line 55
    :goto_0
    return-void
.end method

.method public sleep(J)V
    .locals 1
    .param p1, "delayMillis"    # J

    .line 58
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lio/appium/android/apis/graphics/PurgeableBitmap$RefreshHandler;->removeMessages(I)V

    .line 59
    invoke-virtual {p0, v0}, Lio/appium/android/apis/graphics/PurgeableBitmap$RefreshHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lio/appium/android/apis/graphics/PurgeableBitmap$RefreshHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 60
    return-void
.end method
