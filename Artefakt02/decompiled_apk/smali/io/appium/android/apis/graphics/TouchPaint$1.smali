.class Lio/appium/android/apis/graphics/TouchPaint$1;
.super Landroid/os/Handler;
.source "TouchPaint.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/appium/android/apis/graphics/TouchPaint;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/appium/android/apis/graphics/TouchPaint;


# direct methods
.method constructor <init>(Lio/appium/android/apis/graphics/TouchPaint;)V
    .locals 0
    .param p1, "this$0"    # Lio/appium/android/apis/graphics/TouchPaint;

    .line 199
    iput-object p1, p0, Lio/appium/android/apis/graphics/TouchPaint$1;->this$0:Lio/appium/android/apis/graphics/TouchPaint;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .line 202
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 212
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    goto :goto_0

    .line 207
    :cond_0
    iget-object v0, p0, Lio/appium/android/apis/graphics/TouchPaint$1;->this$0:Lio/appium/android/apis/graphics/TouchPaint;

    iget-object v0, v0, Lio/appium/android/apis/graphics/TouchPaint;->mView:Lio/appium/android/apis/graphics/TouchPaint$PaintView;

    invoke-virtual {v0}, Lio/appium/android/apis/graphics/TouchPaint$PaintView;->fade()V

    .line 208
    iget-object v0, p0, Lio/appium/android/apis/graphics/TouchPaint$1;->this$0:Lio/appium/android/apis/graphics/TouchPaint;

    invoke-virtual {v0}, Lio/appium/android/apis/graphics/TouchPaint;->scheduleFade()V

    .line 209
    nop

    .line 214
    :goto_0
    return-void
.end method
