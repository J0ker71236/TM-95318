.class Lio/appium/android/apis/app/IntentActivityFlags$1;
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

    .line 66
    iput-object p1, p0, Lio/appium/android/apis/app/IntentActivityFlags$1;->this$0:Lio/appium/android/apis/app/IntentActivityFlags;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .line 68
    iget-object v0, p0, Lio/appium/android/apis/app/IntentActivityFlags$1;->this$0:Lio/appium/android/apis/app/IntentActivityFlags;

    invoke-static {v0}, Lio/appium/android/apis/app/IntentActivityFlags;->access$000(Lio/appium/android/apis/app/IntentActivityFlags;)[Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/appium/android/apis/app/IntentActivityFlags;->startActivities([Landroid/content/Intent;)V

    .line 69
    return-void
.end method
