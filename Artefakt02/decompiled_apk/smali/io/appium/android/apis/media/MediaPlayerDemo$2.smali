.class Lio/appium/android/apis/media/MediaPlayerDemo$2;
.super Ljava/lang/Object;
.source "MediaPlayerDemo.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/appium/android/apis/media/MediaPlayerDemo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/appium/android/apis/media/MediaPlayerDemo;


# direct methods
.method constructor <init>(Lio/appium/android/apis/media/MediaPlayerDemo;)V
    .locals 0
    .param p1, "this$0"    # Lio/appium/android/apis/media/MediaPlayerDemo;

    .line 68
    iput-object p1, p0, Lio/appium/android/apis/media/MediaPlayerDemo$2;->this$0:Lio/appium/android/apis/media/MediaPlayerDemo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .line 70
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lio/appium/android/apis/media/MediaPlayerDemo$2;->this$0:Lio/appium/android/apis/media/MediaPlayerDemo;

    .line 71
    invoke-virtual {v1}, Lio/appium/android/apis/media/MediaPlayerDemo;->getApplication()Landroid/app/Application;

    move-result-object v1

    const-class v2, Lio/appium/android/apis/media/MediaPlayerDemo_Audio;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 73
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "media"

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 74
    iget-object v1, p0, Lio/appium/android/apis/media/MediaPlayerDemo$2;->this$0:Lio/appium/android/apis/media/MediaPlayerDemo;

    invoke-virtual {v1, v0}, Lio/appium/android/apis/media/MediaPlayerDemo;->startActivity(Landroid/content/Intent;)V

    .line 76
    return-void
.end method
