.class Lio/appium/android/apis/app/IsolatedService$Controller$ServiceInfo$2;
.super Ljava/lang/Object;
.source "IsolatedService.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/appium/android/apis/app/IsolatedService$Controller$ServiceInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/appium/android/apis/app/IsolatedService$Controller$ServiceInfo;


# direct methods
.method constructor <init>(Lio/appium/android/apis/app/IsolatedService$Controller$ServiceInfo;)V
    .locals 0
    .param p1, "this$0"    # Lio/appium/android/apis/app/IsolatedService$Controller$ServiceInfo;

    .line 138
    iput-object p1, p0, Lio/appium/android/apis/app/IsolatedService$Controller$ServiceInfo$2;->this$0:Lio/appium/android/apis/app/IsolatedService$Controller$ServiceInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .line 140
    iget-object v0, p0, Lio/appium/android/apis/app/IsolatedService$Controller$ServiceInfo$2;->this$0:Lio/appium/android/apis/app/IsolatedService$Controller$ServiceInfo;

    iget-object v0, v0, Lio/appium/android/apis/app/IsolatedService$Controller$ServiceInfo;->mActivity:Landroid/app/Activity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lio/appium/android/apis/app/IsolatedService$Controller$ServiceInfo$2;->this$0:Lio/appium/android/apis/app/IsolatedService$Controller$ServiceInfo;

    iget-object v2, v2, Lio/appium/android/apis/app/IsolatedService$Controller$ServiceInfo;->mActivity:Landroid/app/Activity;

    iget-object v3, p0, Lio/appium/android/apis/app/IsolatedService$Controller$ServiceInfo$2;->this$0:Lio/appium/android/apis/app/IsolatedService$Controller$ServiceInfo;

    iget-object v3, v3, Lio/appium/android/apis/app/IsolatedService$Controller$ServiceInfo;->mClz:Ljava/lang/Class;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->stopService(Landroid/content/Intent;)Z

    .line 141
    return-void
.end method
