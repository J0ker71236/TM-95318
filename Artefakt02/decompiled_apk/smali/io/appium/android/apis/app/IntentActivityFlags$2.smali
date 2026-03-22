.class Lio/appium/android/apis/app/IntentActivityFlags$2;
.super Ljava/lang/Object;
.source "IntentActivityFlags.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/appium/android/apis/app/IntentActivityFlags;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/appium/android/apis/app/IntentActivityFlags;


# direct methods
.method constructor <init>(Lio/appium/android/apis/app/IntentActivityFlags;)V
    .locals 0
    .param p1, "this$0"    # Lio/appium/android/apis/app/IntentActivityFlags;

    .line 72
    iput-object p1, p0, Lio/appium/android/apis/app/IntentActivityFlags$2;->this$0:Lio/appium/android/apis/app/IntentActivityFlags;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .line 74
    iget-object v0, p0, Lio/appium/android/apis/app/IntentActivityFlags$2;->this$0:Lio/appium/android/apis/app/IntentActivityFlags;

    .line 76
    .local v0, "context":Landroid/content/Context;
    iget-object v1, p0, Lio/appium/android/apis/app/IntentActivityFlags$2;->this$0:Lio/appium/android/apis/app/IntentActivityFlags;

    .line 77
    invoke-static {v1}, Lio/appium/android/apis/app/IntentActivityFlags;->access$000(Lio/appium/android/apis/app/IntentActivityFlags;)[Landroid/content/Intent;

    move-result-object v1

    .line 76
    const/4 v2, 0x0

    const/high16 v3, 0x8000000

    invoke-static {v0, v2, v1, v3}, Landroid/app/PendingIntent;->getActivities(Landroid/content/Context;I[Landroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 80
    .local v1, "pi":Landroid/app/PendingIntent;
    :try_start_0
    invoke-virtual {v1}, Landroid/app/PendingIntent;->send()V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    goto :goto_0

    .line 81
    :catch_0
    move-exception v2

    .line 82
    .local v2, "e":Landroid/app/PendingIntent$CanceledException;
    const-string v3, "IntentActivityFlags"

    const-string v4, "Failed sending PendingIntent"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 84
    .end local v2    # "e":Landroid/app/PendingIntent$CanceledException;
    :goto_0
    return-void
.end method
