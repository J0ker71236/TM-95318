.class Lio/appium/android/apis/app/Animation$2;
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

    .line 78
    iput-object p1, p0, Lio/appium/android/apis/app/Animation$2;->this$0:Lio/appium/android/apis/app/Animation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .line 81
    iget-object v0, p0, Lio/appium/android/apis/app/Animation$2;->this$0:Lio/appium/android/apis/app/Animation;

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lio/appium/android/apis/app/AlertDialogSamples;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lio/appium/android/apis/app/Animation;->startActivity(Landroid/content/Intent;)V

    .line 87
    iget-object v0, p0, Lio/appium/android/apis/app/Animation$2;->this$0:Lio/appium/android/apis/app/Animation;

    const v1, 0x7f010026

    const v2, 0x7f010027

    invoke-virtual {v0, v1, v2}, Lio/appium/android/apis/app/Animation;->overridePendingTransition(II)V

    .line 88
    return-void
.end method
