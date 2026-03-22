.class Lio/appium/android/apis/view/OverscanActivity$3;
.super Ljava/lang/Object;
.source "OverscanActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/appium/android/apis/view/OverscanActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/appium/android/apis/view/OverscanActivity;


# direct methods
.method constructor <init>(Lio/appium/android/apis/view/OverscanActivity;)V
    .locals 0
    .param p1, "this$0"    # Lio/appium/android/apis/view/OverscanActivity;

    .line 189
    iput-object p1, p0, Lio/appium/android/apis/view/OverscanActivity$3;->this$0:Lio/appium/android/apis/view/OverscanActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .line 192
    if-eqz p2, :cond_0

    .line 193
    iget-object v0, p0, Lio/appium/android/apis/view/OverscanActivity$3;->this$0:Lio/appium/android/apis/view/OverscanActivity;

    invoke-virtual {v0}, Lio/appium/android/apis/view/OverscanActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActionBar;->hide()V

    goto :goto_0

    .line 195
    :cond_0
    iget-object v0, p0, Lio/appium/android/apis/view/OverscanActivity$3;->this$0:Lio/appium/android/apis/view/OverscanActivity;

    invoke-virtual {v0}, Lio/appium/android/apis/view/OverscanActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActionBar;->show()V

    .line 197
    :goto_0
    return-void
.end method
