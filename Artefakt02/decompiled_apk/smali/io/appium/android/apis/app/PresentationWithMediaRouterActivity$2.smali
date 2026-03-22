.class Lio/appium/android/apis/app/PresentationWithMediaRouterActivity$2;
.super Ljava/lang/Object;
.source "PresentationWithMediaRouterActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/appium/android/apis/app/PresentationWithMediaRouterActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/appium/android/apis/app/PresentationWithMediaRouterActivity;


# direct methods
.method constructor <init>(Lio/appium/android/apis/app/PresentationWithMediaRouterActivity;)V
    .locals 0
    .param p1, "this$0"    # Lio/appium/android/apis/app/PresentationWithMediaRouterActivity;

    .line 242
    iput-object p1, p0, Lio/appium/android/apis/app/PresentationWithMediaRouterActivity$2;->this$0:Lio/appium/android/apis/app/PresentationWithMediaRouterActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .line 245
    iget-object v0, p0, Lio/appium/android/apis/app/PresentationWithMediaRouterActivity$2;->this$0:Lio/appium/android/apis/app/PresentationWithMediaRouterActivity;

    invoke-static {v0}, Lio/appium/android/apis/app/PresentationWithMediaRouterActivity;->access$100(Lio/appium/android/apis/app/PresentationWithMediaRouterActivity;)Lio/appium/android/apis/app/PresentationWithMediaRouterActivity$DemoPresentation;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 246
    const-string v0, "PresentationWithMediaRouterActivity"

    const-string v1, "Presentation was dismissed."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    iget-object v0, p0, Lio/appium/android/apis/app/PresentationWithMediaRouterActivity$2;->this$0:Lio/appium/android/apis/app/PresentationWithMediaRouterActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lio/appium/android/apis/app/PresentationWithMediaRouterActivity;->access$102(Lio/appium/android/apis/app/PresentationWithMediaRouterActivity;Lio/appium/android/apis/app/PresentationWithMediaRouterActivity$DemoPresentation;)Lio/appium/android/apis/app/PresentationWithMediaRouterActivity$DemoPresentation;

    .line 248
    iget-object v0, p0, Lio/appium/android/apis/app/PresentationWithMediaRouterActivity$2;->this$0:Lio/appium/android/apis/app/PresentationWithMediaRouterActivity;

    invoke-static {v0}, Lio/appium/android/apis/app/PresentationWithMediaRouterActivity;->access$200(Lio/appium/android/apis/app/PresentationWithMediaRouterActivity;)V

    .line 250
    :cond_0
    return-void
.end method
