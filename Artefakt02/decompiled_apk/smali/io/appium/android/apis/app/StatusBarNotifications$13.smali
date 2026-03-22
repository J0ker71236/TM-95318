.class Lio/appium/android/apis/app/StatusBarNotifications$13;
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

    .line 144
    iput-object p1, p0, Lio/appium/android/apis/app/StatusBarNotifications$13;->this$0:Lio/appium/android/apis/app/StatusBarNotifications;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .line 146
    iget-object v0, p0, Lio/appium/android/apis/app/StatusBarNotifications$13;->this$0:Lio/appium/android/apis/app/StatusBarNotifications;

    invoke-static {v0}, Lio/appium/android/apis/app/StatusBarNotifications;->access$300(Lio/appium/android/apis/app/StatusBarNotifications;)Landroid/app/NotificationManager;

    move-result-object v0

    const v1, 0x7f0b0100

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 147
    return-void
.end method
