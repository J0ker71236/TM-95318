.class Lio/appium/android/apis/app/StatusBarNotifications$9;
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

    .line 116
    iput-object p1, p0, Lio/appium/android/apis/app/StatusBarNotifications$9;->this$0:Lio/appium/android/apis/app/StatusBarNotifications;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .line 118
    iget-object v0, p0, Lio/appium/android/apis/app/StatusBarNotifications$9;->this$0:Lio/appium/android/apis/app/StatusBarNotifications;

    const v1, 0x7f0800c0

    const v2, 0x7f0e0315

    invoke-static {v0, v1, v2}, Lio/appium/android/apis/app/StatusBarNotifications;->access$100(Lio/appium/android/apis/app/StatusBarNotifications;II)V

    .line 119
    return-void
.end method
