.class Lio/appium/android/apis/os/SmsMessagingDemo$1;
.super Ljava/lang/Object;
.source "SmsMessagingDemo.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/appium/android/apis/os/SmsMessagingDemo;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/appium/android/apis/os/SmsMessagingDemo;

.field final synthetic val$componentName:Landroid/content/ComponentName;

.field final synthetic val$pm:Landroid/content/pm/PackageManager;


# direct methods
.method constructor <init>(Lio/appium/android/apis/os/SmsMessagingDemo;Landroid/content/pm/PackageManager;Landroid/content/ComponentName;)V
    .locals 0
    .param p1, "this$0"    # Lio/appium/android/apis/os/SmsMessagingDemo;

    .line 77
    iput-object p1, p0, Lio/appium/android/apis/os/SmsMessagingDemo$1;->this$0:Lio/appium/android/apis/os/SmsMessagingDemo;

    iput-object p2, p0, Lio/appium/android/apis/os/SmsMessagingDemo$1;->val$pm:Landroid/content/pm/PackageManager;

    iput-object p3, p0, Lio/appium/android/apis/os/SmsMessagingDemo$1;->val$componentName:Landroid/content/ComponentName;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 4
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .line 79
    const-string v0, "SmsMessagingDemo"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p2, :cond_0

    const-string v2, "Enabling"

    goto :goto_0

    :cond_0
    const-string v2, "Disabling"

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " SMS receiver"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    iget-object v0, p0, Lio/appium/android/apis/os/SmsMessagingDemo$1;->val$pm:Landroid/content/pm/PackageManager;

    iget-object v1, p0, Lio/appium/android/apis/os/SmsMessagingDemo$1;->val$componentName:Landroid/content/ComponentName;

    const/4 v2, 0x1

    if-eqz p2, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x2

    :goto_1
    invoke-virtual {v0, v1, v3, v2}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 85
    return-void
.end method
