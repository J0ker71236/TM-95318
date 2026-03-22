.class Lio/appium/android/apis/app/ReceiveResult$1;
.super Ljava/lang/Object;
.source "ReceiveResult.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/appium/android/apis/app/ReceiveResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/appium/android/apis/app/ReceiveResult;


# direct methods
.method constructor <init>(Lio/appium/android/apis/app/ReceiveResult;)V
    .locals 0
    .param p1, "this$0"    # Lio/appium/android/apis/app/ReceiveResult;

    .line 142
    iput-object p1, p0, Lio/appium/android/apis/app/ReceiveResult$1;->this$0:Lio/appium/android/apis/app/ReceiveResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .line 146
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lio/appium/android/apis/app/ReceiveResult$1;->this$0:Lio/appium/android/apis/app/ReceiveResult;

    const-class v2, Lio/appium/android/apis/app/SendResult;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 147
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lio/appium/android/apis/app/ReceiveResult$1;->this$0:Lio/appium/android/apis/app/ReceiveResult;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lio/appium/android/apis/app/ReceiveResult;->startActivityForResult(Landroid/content/Intent;I)V

    .line 148
    return-void
.end method
