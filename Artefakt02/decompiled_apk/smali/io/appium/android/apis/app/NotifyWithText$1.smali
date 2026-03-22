.class Lio/appium/android/apis/app/NotifyWithText$1;
.super Ljava/lang/Object;
.source "NotifyWithText.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/appium/android/apis/app/NotifyWithText;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/appium/android/apis/app/NotifyWithText;


# direct methods
.method constructor <init>(Lio/appium/android/apis/app/NotifyWithText;)V
    .locals 0
    .param p1, "this$0"    # Lio/appium/android/apis/app/NotifyWithText;

    .line 47
    iput-object p1, p0, Lio/appium/android/apis/app/NotifyWithText$1;->this$0:Lio/appium/android/apis/app/NotifyWithText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .line 58
    iget-object v0, p0, Lio/appium/android/apis/app/NotifyWithText$1;->this$0:Lio/appium/android/apis/app/NotifyWithText;

    const v1, 0x7f0e02e2

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 59
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 60
    return-void
.end method
