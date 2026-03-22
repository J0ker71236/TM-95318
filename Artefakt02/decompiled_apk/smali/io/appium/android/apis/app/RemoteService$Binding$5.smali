.class Lio/appium/android/apis/app/RemoteService$Binding$5;
.super Ljava/lang/Object;
.source "RemoteService.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/appium/android/apis/app/RemoteService$Binding;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/appium/android/apis/app/RemoteService$Binding;


# direct methods
.method constructor <init>(Lio/appium/android/apis/app/RemoteService$Binding;)V
    .locals 0
    .param p1, "this$0"    # Lio/appium/android/apis/app/RemoteService$Binding;

    .line 397
    iput-object p1, p0, Lio/appium/android/apis/app/RemoteService$Binding$5;->this$0:Lio/appium/android/apis/app/RemoteService$Binding;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .line 402
    iget-object v0, p0, Lio/appium/android/apis/app/RemoteService$Binding$5;->this$0:Lio/appium/android/apis/app/RemoteService$Binding;

    iget-object v0, v0, Lio/appium/android/apis/app/RemoteService$Binding;->mSecondaryService:Lio/appium/android/apis/app/ISecondary;

    if-eqz v0, :cond_0

    .line 404
    :try_start_0
    iget-object v0, p0, Lio/appium/android/apis/app/RemoteService$Binding$5;->this$0:Lio/appium/android/apis/app/RemoteService$Binding;

    iget-object v0, v0, Lio/appium/android/apis/app/RemoteService$Binding;->mSecondaryService:Lio/appium/android/apis/app/ISecondary;

    invoke-interface {v0}, Lio/appium/android/apis/app/ISecondary;->getPid()I

    move-result v0

    .line 413
    .local v0, "pid":I
    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    .line 414
    iget-object v1, p0, Lio/appium/android/apis/app/RemoteService$Binding$5;->this$0:Lio/appium/android/apis/app/RemoteService$Binding;

    iget-object v1, v1, Lio/appium/android/apis/app/RemoteService$Binding;->mCallbackText:Landroid/widget/TextView;

    const-string v2, "Killed service process."

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 422
    .end local v0    # "pid":I
    goto :goto_0

    .line 415
    :catch_0
    move-exception v0

    .line 419
    .local v0, "ex":Landroid/os/RemoteException;
    iget-object v1, p0, Lio/appium/android/apis/app/RemoteService$Binding$5;->this$0:Lio/appium/android/apis/app/RemoteService$Binding;

    const v2, 0x7f0e0278

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    .line 421
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 424
    .end local v0    # "ex":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method
