.class Lio/appium/android/apis/app/RemoteService$BindingOptions$8;
.super Ljava/lang/Object;
.source "RemoteService.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/appium/android/apis/app/RemoteService$BindingOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/appium/android/apis/app/RemoteService$BindingOptions;


# direct methods
.method constructor <init>(Lio/appium/android/apis/app/RemoteService$BindingOptions;)V
    .locals 0
    .param p1, "this$0"    # Lio/appium/android/apis/app/RemoteService$BindingOptions;

    .line 643
    iput-object p1, p0, Lio/appium/android/apis/app/RemoteService$BindingOptions$8;->this$0:Lio/appium/android/apis/app/RemoteService$BindingOptions;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .line 645
    iget-object v0, p0, Lio/appium/android/apis/app/RemoteService$BindingOptions$8;->this$0:Lio/appium/android/apis/app/RemoteService$BindingOptions;

    iget-object v0, v0, Lio/appium/android/apis/app/RemoteService$BindingOptions;->mCurConnection:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_0

    .line 646
    iget-object v0, p0, Lio/appium/android/apis/app/RemoteService$BindingOptions$8;->this$0:Lio/appium/android/apis/app/RemoteService$BindingOptions;

    iget-object v1, v0, Lio/appium/android/apis/app/RemoteService$BindingOptions;->mCurConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Lio/appium/android/apis/app/RemoteService$BindingOptions;->unbindService(Landroid/content/ServiceConnection;)V

    .line 647
    iget-object v0, p0, Lio/appium/android/apis/app/RemoteService$BindingOptions$8;->this$0:Lio/appium/android/apis/app/RemoteService$BindingOptions;

    const/4 v1, 0x0

    iput-object v1, v0, Lio/appium/android/apis/app/RemoteService$BindingOptions;->mCurConnection:Landroid/content/ServiceConnection;

    .line 649
    :cond_0
    return-void
.end method
