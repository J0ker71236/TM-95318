.class Lio/appium/android/apis/app/ReorderThree$1;
.super Ljava/lang/Object;
.source "ReorderThree.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/appium/android/apis/app/ReorderThree;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/appium/android/apis/app/ReorderThree;


# direct methods
.method constructor <init>(Lio/appium/android/apis/app/ReorderThree;)V
    .locals 0
    .param p1, "this$0"    # Lio/appium/android/apis/app/ReorderThree;

    .line 39
    iput-object p1, p0, Lio/appium/android/apis/app/ReorderThree$1;->this$0:Lio/appium/android/apis/app/ReorderThree;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .line 41
    iget-object v0, p0, Lio/appium/android/apis/app/ReorderThree$1;->this$0:Lio/appium/android/apis/app/ReorderThree;

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lio/appium/android/apis/app/ReorderFour;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lio/appium/android/apis/app/ReorderThree;->startActivity(Landroid/content/Intent;)V

    .line 42
    return-void
.end method
