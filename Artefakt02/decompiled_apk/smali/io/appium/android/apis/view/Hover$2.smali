.class Lio/appium/android/apis/view/Hover$2;
.super Ljava/lang/Object;
.source "Hover.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/appium/android/apis/view/Hover;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/appium/android/apis/view/Hover;


# direct methods
.method constructor <init>(Lio/appium/android/apis/view/Hover;)V
    .locals 0
    .param p1, "this$0"    # Lio/appium/android/apis/view/Hover;

    .line 99
    iput-object p1, p0, Lio/appium/android/apis/view/Hover$2;->this$0:Lio/appium/android/apis/view/Hover;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .line 102
    iget-object v0, p0, Lio/appium/android/apis/view/Hover$2;->this$0:Lio/appium/android/apis/view/Hover;

    invoke-static {v0}, Lio/appium/android/apis/view/Hover;->access$100(Lio/appium/android/apis/view/Hover;)Lio/appium/android/apis/view/HoverInterceptorView;

    move-result-object v0

    invoke-virtual {v0, p2}, Lio/appium/android/apis/view/HoverInterceptorView;->setInterceptHover(Z)V

    .line 103
    return-void
.end method
