.class Lio/appium/android/apis/app/ServiceStartArguments$Controller$1;
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

    .line 228
    iput-object p1, p0, Lio/appium/android/apis/app/ServiceStartArguments$Controller$1;->this$0:Lio/appium/android/apis/app/ServiceStartArguments$Controller;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .line 230
    iget-object v0, p0, Lio/appium/android/apis/app/ServiceStartArguments$Controller$1;->this$0:Lio/appium/android/apis/app/ServiceStartArguments$Controller;

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lio/appium/android/apis/app/ServiceStartArguments;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "name"

    const-string v3, "One"

    .line 232
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 230
    invoke-virtual {v0, v1}, Lio/appium/android/apis/app/ServiceStartArguments$Controller;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 233
    return-void
.end method
