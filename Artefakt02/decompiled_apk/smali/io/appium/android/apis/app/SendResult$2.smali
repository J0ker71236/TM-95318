.class Lio/appium/android/apis/app/SendResult$2;
.super Ljava/lang/Object;
.source "SendResult.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/appium/android/apis/app/SendResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/appium/android/apis/app/SendResult;


# direct methods
.method constructor <init>(Lio/appium/android/apis/app/SendResult;)V
    .locals 0
    .param p1, "this$0"    # Lio/appium/android/apis/app/SendResult;

    .line 71
    iput-object p1, p0, Lio/appium/android/apis/app/SendResult$2;->this$0:Lio/appium/android/apis/app/SendResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .line 76
    iget-object v0, p0, Lio/appium/android/apis/app/SendResult$2;->this$0:Lio/appium/android/apis/app/SendResult;

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "Violet!"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v0, v2, v1}, Lio/appium/android/apis/app/SendResult;->setResult(ILandroid/content/Intent;)V

    .line 77
    iget-object v0, p0, Lio/appium/android/apis/app/SendResult$2;->this$0:Lio/appium/android/apis/app/SendResult;

    invoke-virtual {v0}, Lio/appium/android/apis/app/SendResult;->finish()V

    .line 78
    return-void
.end method
