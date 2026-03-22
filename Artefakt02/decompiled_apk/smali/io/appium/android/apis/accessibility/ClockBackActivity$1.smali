.class Lio/appium/android/apis/accessibility/ClockBackActivity$1;
.super Ljava/lang/Object;
.source "ClockBackActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/appium/android/apis/accessibility/ClockBackActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/appium/android/apis/accessibility/ClockBackActivity;


# direct methods
.method constructor <init>(Lio/appium/android/apis/accessibility/ClockBackActivity;)V
    .locals 0
    .param p1, "this$0"    # Lio/appium/android/apis/accessibility/ClockBackActivity;

    .line 48
    iput-object p1, p0, Lio/appium/android/apis/accessibility/ClockBackActivity$1;->this$0:Lio/appium/android/apis/accessibility/ClockBackActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .line 51
    iget-object v0, p0, Lio/appium/android/apis/accessibility/ClockBackActivity$1;->this$0:Lio/appium/android/apis/accessibility/ClockBackActivity;

    invoke-static {}, Lio/appium/android/apis/accessibility/ClockBackActivity;->access$000()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/appium/android/apis/accessibility/ClockBackActivity;->startActivity(Landroid/content/Intent;)V

    .line 52
    return-void
.end method
