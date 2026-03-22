.class Lio/appium/android/apis/app/StatusBarNotifications$7;
.super Ljava/lang/Object;
.source "StatusBarNotifications.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/appium/android/apis/app/StatusBarNotifications;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/appium/android/apis/app/StatusBarNotifications;


# direct methods
.method constructor <init>(Lio/appium/android/apis/app/StatusBarNotifications;)V
    .locals 0
    .param p1, "this$0"    # Lio/appium/android/apis/app/StatusBarNotifications;

    .line 102
    iput-object p1, p0, Lio/appium/android/apis/app/StatusBarNotifications$7;->this$0:Lio/appium/android/apis/app/StatusBarNotifications;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .line 104
    iget-object v0, p0, Lio/appium/android/apis/app/StatusBarNotifications$7;->this$0:Lio/appium/android/apis/app/StatusBarNotifications;

    const v1, 0x7f0800be

    const v2, 0x7f0e030d

    invoke-static {v0, v1, v2}, Lio/appium/android/apis/app/StatusBarNotifications;->access$100(Lio/appium/android/apis/app/StatusBarNotifications;II)V

    .line 105
    return-void
.end method
