.class Lio/appium/android/apis/app/FragmentReceiveResult$ReceiveResultFragment$1;
.super Ljava/lang/Object;
.source "FragmentReceiveResult.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/appium/android/apis/app/FragmentReceiveResult$ReceiveResultFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/appium/android/apis/app/FragmentReceiveResult$ReceiveResultFragment;


# direct methods
.method constructor <init>(Lio/appium/android/apis/app/FragmentReceiveResult$ReceiveResultFragment;)V
    .locals 0
    .param p1, "this$0"    # Lio/appium/android/apis/app/FragmentReceiveResult$ReceiveResultFragment;

    .line 61
    iput-object p1, p0, Lio/appium/android/apis/app/FragmentReceiveResult$ReceiveResultFragment$1;->this$0:Lio/appium/android/apis/app/FragmentReceiveResult$ReceiveResultFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .line 65
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lio/appium/android/apis/app/FragmentReceiveResult$ReceiveResultFragment$1;->this$0:Lio/appium/android/apis/app/FragmentReceiveResult$ReceiveResultFragment;

    invoke-virtual {v1}, Lio/appium/android/apis/app/FragmentReceiveResult$ReceiveResultFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lio/appium/android/apis/app/SendResult;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 66
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lio/appium/android/apis/app/FragmentReceiveResult$ReceiveResultFragment$1;->this$0:Lio/appium/android/apis/app/FragmentReceiveResult$ReceiveResultFragment;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lio/appium/android/apis/app/FragmentReceiveResult$ReceiveResultFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 67
    return-void
.end method
