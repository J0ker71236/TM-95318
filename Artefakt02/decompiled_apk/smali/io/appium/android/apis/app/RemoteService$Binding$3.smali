.class Lio/appium/android/apis/app/RemoteService$Binding$3;
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

    .line 358
    iput-object p1, p0, Lio/appium/android/apis/app/RemoteService$Binding$3;->this$0:Lio/appium/android/apis/app/RemoteService$Binding;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .line 364
    iget-object v0, p0, Lio/appium/android/apis/app/RemoteService$Binding$3;->this$0:Lio/appium/android/apis/app/RemoteService$Binding;

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lio/appium/android/apis/app/IRemoteService;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lio/appium/android/apis/app/RemoteService$Binding$3;->this$0:Lio/appium/android/apis/app/RemoteService$Binding;

    .line 365
    invoke-static {v2}, Lio/appium/android/apis/app/RemoteService$Binding;->access$100(Lio/appium/android/apis/app/RemoteService$Binding;)Landroid/content/ServiceConnection;

    move-result-object v2

    .line 364
    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lio/appium/android/apis/app/RemoteService$Binding;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 366
    iget-object v0, p0, Lio/appium/android/apis/app/RemoteService$Binding$3;->this$0:Lio/appium/android/apis/app/RemoteService$Binding;

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lio/appium/android/apis/app/ISecondary;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lio/appium/android/apis/app/RemoteService$Binding$3;->this$0:Lio/appium/android/apis/app/RemoteService$Binding;

    .line 367
    invoke-static {v2}, Lio/appium/android/apis/app/RemoteService$Binding;->access$200(Lio/appium/android/apis/app/RemoteService$Binding;)Landroid/content/ServiceConnection;

    move-result-object v2

    .line 366
    invoke-virtual {v0, v1, v2, v3}, Lio/appium/android/apis/app/RemoteService$Binding;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 368
    iget-object v0, p0, Lio/appium/android/apis/app/RemoteService$Binding$3;->this$0:Lio/appium/android/apis/app/RemoteService$Binding;

    invoke-static {v0, v3}, Lio/appium/android/apis/app/RemoteService$Binding;->access$302(Lio/appium/android/apis/app/RemoteService$Binding;Z)Z

    .line 369
    iget-object v0, p0, Lio/appium/android/apis/app/RemoteService$Binding$3;->this$0:Lio/appium/android/apis/app/RemoteService$Binding;

    iget-object v0, v0, Lio/appium/android/apis/app/RemoteService$Binding;->mCallbackText:Landroid/widget/TextView;

    const-string v1, "Binding."

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 370
    return-void
.end method
