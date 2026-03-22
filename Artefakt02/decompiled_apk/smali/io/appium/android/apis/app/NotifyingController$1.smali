.class Lio/appium/android/apis/app/NotifyingController$1;
.super Ljava/lang/Object;
.source "NotifyingController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/appium/android/apis/app/NotifyingController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/appium/android/apis/app/NotifyingController;


# direct methods
.method constructor <init>(Lio/appium/android/apis/app/NotifyingController;)V
    .locals 0
    .param p1, "this$0"    # Lio/appium/android/apis/app/NotifyingController;

    .line 47
    iput-object p1, p0, Lio/appium/android/apis/app/NotifyingController$1;->this$0:Lio/appium/android/apis/app/NotifyingController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .line 49
    iget-object v0, p0, Lio/appium/android/apis/app/NotifyingController$1;->this$0:Lio/appium/android/apis/app/NotifyingController;

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lio/appium/android/apis/app/NotifyingService;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lio/appium/android/apis/app/NotifyingController;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 51
    return-void
.end method
