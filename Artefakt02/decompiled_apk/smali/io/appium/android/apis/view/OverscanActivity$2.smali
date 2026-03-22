.class Lio/appium/android/apis/view/OverscanActivity$2;
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

    .line 181
    iput-object p1, p0, Lio/appium/android/apis/view/OverscanActivity$2;->this$0:Lio/appium/android/apis/view/OverscanActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .line 184
    iget-object v0, p0, Lio/appium/android/apis/view/OverscanActivity$2;->this$0:Lio/appium/android/apis/view/OverscanActivity;

    invoke-static {v0, p2}, Lio/appium/android/apis/view/OverscanActivity;->access$300(Lio/appium/android/apis/view/OverscanActivity;Z)V

    .line 185
    return-void
.end method
