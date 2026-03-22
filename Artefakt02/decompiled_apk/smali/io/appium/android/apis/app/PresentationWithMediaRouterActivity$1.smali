.class Lio/appium/android/apis/app/PresentationWithMediaRouterActivity$1;
.super Landroid/media/MediaRouter$SimpleCallback;
.source "PresentationWithMediaRouterActivity.java"


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

    .line 218
    iput-object p1, p0, Lio/appium/android/apis/app/PresentationWithMediaRouterActivity$1;->this$0:Lio/appium/android/apis/app/PresentationWithMediaRouterActivity;

    invoke-direct {p0}, Landroid/media/MediaRouter$SimpleCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onRoutePresentationDisplayChanged(Landroid/media/MediaRouter;Landroid/media/MediaRouter$RouteInfo;)V
    .locals 3
    .param p1, "router"    # Landroid/media/MediaRouter;
    .param p2, "info"    # Landroid/media/MediaRouter$RouteInfo;

    .line 233
    const-string v0, "PresentationWithMediaRouterActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRoutePresentationDisplayChanged: info="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    iget-object v0, p0, Lio/appium/android/apis/app/PresentationWithMediaRouterActivity$1;->this$0:Lio/appium/android/apis/app/PresentationWithMediaRouterActivity;

    invoke-static {v0}, Lio/appium/android/apis/app/PresentationWithMediaRouterActivity;->access$000(Lio/appium/android/apis/app/PresentationWithMediaRouterActivity;)V

    .line 235
    return-void
.end method

.method public onRouteSelected(Landroid/media/MediaRouter;ILandroid/media/MediaRouter$RouteInfo;)V
    .locals 3
    .param p1, "router"    # Landroid/media/MediaRouter;
    .param p2, "type"    # I
    .param p3, "info"    # Landroid/media/MediaRouter$RouteInfo;

    .line 221
    const-string v0, "PresentationWithMediaRouterActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRouteSelected: type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", info="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    iget-object v0, p0, Lio/appium/android/apis/app/PresentationWithMediaRouterActivity$1;->this$0:Lio/appium/android/apis/app/PresentationWithMediaRouterActivity;

    invoke-static {v0}, Lio/appium/android/apis/app/PresentationWithMediaRouterActivity;->access$000(Lio/appium/android/apis/app/PresentationWithMediaRouterActivity;)V

    .line 223
    return-void
.end method

.method public onRouteUnselected(Landroid/media/MediaRouter;ILandroid/media/MediaRouter$RouteInfo;)V
    .locals 3
    .param p1, "router"    # Landroid/media/MediaRouter;
    .param p2, "type"    # I
    .param p3, "info"    # Landroid/media/MediaRouter$RouteInfo;

    .line 227
    const-string v0, "PresentationWithMediaRouterActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRouteUnselected: type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", info="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    iget-object v0, p0, Lio/appium/android/apis/app/PresentationWithMediaRouterActivity$1;->this$0:Lio/appium/android/apis/app/PresentationWithMediaRouterActivity;

    invoke-static {v0}, Lio/appium/android/apis/app/PresentationWithMediaRouterActivity;->access$000(Lio/appium/android/apis/app/PresentationWithMediaRouterActivity;)V

    .line 229
    return-void
.end method
