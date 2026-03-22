.class Lio/appium/android/apis/app/Animation$1;
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

    .line 66
    iput-object p1, p0, Lio/appium/android/apis/app/Animation$1;->this$0:Lio/appium/android/apis/app/Animation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .line 69
    iget-object v0, p0, Lio/appium/android/apis/app/Animation$1;->this$0:Lio/appium/android/apis/app/Animation;

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lio/appium/android/apis/app/AlertDialogSamples;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lio/appium/android/apis/app/Animation;->startActivity(Landroid/content/Intent;)V

    .line 74
    iget-object v0, p0, Lio/appium/android/apis/app/Animation$1;->this$0:Lio/appium/android/apis/app/Animation;

    const v1, 0x7f010010

    const v2, 0x7f010011

    invoke-virtual {v0, v1, v2}, Lio/appium/android/apis/app/Animation;->overridePendingTransition(II)V

    .line 75
    return-void
.end method
