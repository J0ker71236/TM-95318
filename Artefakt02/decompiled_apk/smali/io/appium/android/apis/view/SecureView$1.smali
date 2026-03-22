.class Lio/appium/android/apis/view/SecureView$1;
.super Ljava/lang/Object;
.source "SecureView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/appium/android/apis/view/SecureView;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/appium/android/apis/view/SecureView;


# direct methods
.method constructor <init>(Lio/appium/android/apis/view/SecureView;)V
    .locals 0
    .param p1, "this$0"    # Lio/appium/android/apis/view/SecureView;

    .line 79
    iput-object p1, p0, Lio/appium/android/apis/view/SecureView$1;->this$0:Lio/appium/android/apis/view/SecureView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .line 81
    iget-object v0, p0, Lio/appium/android/apis/view/SecureView$1;->this$0:Lio/appium/android/apis/view/SecureView;

    invoke-static {v0}, Lio/appium/android/apis/view/SecureView;->access$000(Lio/appium/android/apis/view/SecureView;)V

    .line 82
    return-void
.end method
