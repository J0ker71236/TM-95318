.class Lio/appium/android/apis/app/LocalSampleInstrumentation$1;
.super Lio/appium/android/apis/app/LocalSampleInstrumentation$ActivityRunnable;
.source "LocalSampleInstrumentation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/appium/android/apis/app/LocalSampleInstrumentation;->onStart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/appium/android/apis/app/LocalSampleInstrumentation;


# direct methods
.method constructor <init>(Lio/appium/android/apis/app/LocalSampleInstrumentation;Landroid/app/Activity;)V
    .locals 0
    .param p1, "this$0"    # Lio/appium/android/apis/app/LocalSampleInstrumentation;
    .param p2, "_activity"    # Landroid/app/Activity;

    .line 65
    iput-object p1, p0, Lio/appium/android/apis/app/LocalSampleInstrumentation$1;->this$0:Lio/appium/android/apis/app/LocalSampleInstrumentation;

    invoke-direct {p0, p2}, Lio/appium/android/apis/app/LocalSampleInstrumentation$ActivityRunnable;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 67
    iget-object v0, p0, Lio/appium/android/apis/app/LocalSampleInstrumentation$1;->activity:Landroid/app/Activity;

    check-cast v0, Lio/appium/android/apis/app/SaveRestoreState;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lio/appium/android/apis/app/SaveRestoreState;->setSavedText(Ljava/lang/CharSequence;)V

    .line 68
    return-void
.end method
