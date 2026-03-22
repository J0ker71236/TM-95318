.class Lio/appium/android/apis/app/ServiceStartArguments$Controller$5;
.super Ljava/lang/Object;
.source "ServiceStartArguments.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/appium/android/apis/app/ServiceStartArguments$Controller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/appium/android/apis/app/ServiceStartArguments$Controller;


# direct methods
.method constructor <init>(Lio/appium/android/apis/app/ServiceStartArguments$Controller;)V
    .locals 0
    .param p1, "this$0"    # Lio/appium/android/apis/app/ServiceStartArguments$Controller;

    .line 262
    iput-object p1, p0, Lio/appium/android/apis/app/ServiceStartArguments$Controller$5;->this$0:Lio/appium/android/apis/app/ServiceStartArguments$Controller;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .line 266
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    .line 267
    return-void
.end method
