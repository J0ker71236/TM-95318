.class Lio/appium/android/apis/app/ReorderOnLaunch$1;
.super Ljava/lang/Object;
.source "ReorderOnLaunch.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/appium/android/apis/app/ReorderOnLaunch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/appium/android/apis/app/ReorderOnLaunch;


# direct methods
.method constructor <init>(Lio/appium/android/apis/app/ReorderOnLaunch;)V
    .locals 0
    .param p1, "this$0"    # Lio/appium/android/apis/app/ReorderOnLaunch;

    .line 39
    iput-object p1, p0, Lio/appium/android/apis/app/ReorderOnLaunch$1;->this$0:Lio/appium/android/apis/app/ReorderOnLaunch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .line 41
    iget-object v0, p0, Lio/appium/android/apis/app/ReorderOnLaunch$1;->this$0:Lio/appium/android/apis/app/ReorderOnLaunch;

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lio/appium/android/apis/app/ReorderTwo;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lio/appium/android/apis/app/ReorderOnLaunch;->startActivity(Landroid/content/Intent;)V

    .line 42
    return-void
.end method
