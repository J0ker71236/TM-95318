.class Lio/appium/android/apis/app/Forwarding$1;
.super Ljava/lang/Object;
.source "Forwarding.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/appium/android/apis/app/Forwarding;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/appium/android/apis/app/Forwarding;


# direct methods
.method constructor <init>(Lio/appium/android/apis/app/Forwarding;)V
    .locals 0
    .param p1, "this$0"    # Lio/appium/android/apis/app/Forwarding;

    .line 72
    iput-object p1, p0, Lio/appium/android/apis/app/Forwarding$1;->this$0:Lio/appium/android/apis/app/Forwarding;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .line 78
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 79
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lio/appium/android/apis/app/Forwarding$1;->this$0:Lio/appium/android/apis/app/Forwarding;

    const-class v2, Lio/appium/android/apis/app/ForwardTarget;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 80
    iget-object v1, p0, Lio/appium/android/apis/app/Forwarding$1;->this$0:Lio/appium/android/apis/app/Forwarding;

    invoke-virtual {v1, v0}, Lio/appium/android/apis/app/Forwarding;->startActivity(Landroid/content/Intent;)V

    .line 81
    iget-object v1, p0, Lio/appium/android/apis/app/Forwarding$1;->this$0:Lio/appium/android/apis/app/Forwarding;

    invoke-virtual {v1}, Lio/appium/android/apis/app/Forwarding;->finish()V

    .line 82
    return-void
.end method
