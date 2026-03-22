.class Lio/appium/android/apis/app/LocalSample$1;
.super Ljava/lang/Object;
.source "LocalSample.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/appium/android/apis/app/LocalSample;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/appium/android/apis/app/LocalSample;


# direct methods
.method constructor <init>(Lio/appium/android/apis/app/LocalSample;)V
    .locals 0
    .param p1, "this$0"    # Lio/appium/android/apis/app/LocalSample;

    .line 46
    iput-object p1, p0, Lio/appium/android/apis/app/LocalSample$1;->this$0:Lio/appium/android/apis/app/LocalSample;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .line 48
    iget-object v0, p0, Lio/appium/android/apis/app/LocalSample$1;->this$0:Lio/appium/android/apis/app/LocalSample;

    new-instance v1, Landroid/content/ComponentName;

    const-class v2, Lio/appium/android/apis/app/LocalSampleInstrumentation;

    invoke-direct {v1, v0, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Lio/appium/android/apis/app/LocalSample;->startInstrumentation(Landroid/content/ComponentName;Ljava/lang/String;Landroid/os/Bundle;)Z

    .line 50
    return-void
.end method
