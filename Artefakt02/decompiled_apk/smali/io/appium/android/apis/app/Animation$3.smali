.class Lio/appium/android/apis/app/Animation$3;
.super Ljava/lang/Object;
.source "Animation.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/appium/android/apis/app/Animation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/appium/android/apis/app/Animation;


# direct methods
.method constructor <init>(Lio/appium/android/apis/app/Animation;)V
    .locals 0
    .param p1, "this$0"    # Lio/appium/android/apis/app/Animation;

    .line 91
    iput-object p1, p0, Lio/appium/android/apis/app/Animation$3;->this$0:Lio/appium/android/apis/app/Animation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .line 98
    iget-object v0, p0, Lio/appium/android/apis/app/Animation$3;->this$0:Lio/appium/android/apis/app/Animation;

    const v1, 0x7f010010

    const v2, 0x7f010011

    invoke-static {v0, v1, v2}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;

    move-result-object v0

    .line 101
    .local v0, "opts":Landroid/app/ActivityOptions;
    iget-object v1, p0, Lio/appium/android/apis/app/Animation$3;->this$0:Lio/appium/android/apis/app/Animation;

    new-instance v2, Landroid/content/Intent;

    const-class v3, Lio/appium/android/apis/app/AlertDialogSamples;

    invoke-direct {v2, v1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lio/appium/android/apis/app/Animation;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 102
    return-void
.end method
