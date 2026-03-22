.class Lio/appium/android/apis/app/ReorderFour$1;
.super Ljava/lang/Object;
.source "ReorderFour.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/appium/android/apis/app/ReorderFour;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/appium/android/apis/app/ReorderFour;


# direct methods
.method constructor <init>(Lio/appium/android/apis/app/ReorderFour;)V
    .locals 0
    .param p1, "this$0"    # Lio/appium/android/apis/app/ReorderFour;

    .line 39
    iput-object p1, p0, Lio/appium/android/apis/app/ReorderFour$1;->this$0:Lio/appium/android/apis/app/ReorderFour;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .line 41
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lio/appium/android/apis/app/ReorderFour$1;->this$0:Lio/appium/android/apis/app/ReorderFour;

    const-class v2, Lio/appium/android/apis/app/ReorderTwo;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 42
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x20000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 43
    iget-object v1, p0, Lio/appium/android/apis/app/ReorderFour$1;->this$0:Lio/appium/android/apis/app/ReorderFour;

    invoke-virtual {v1, v0}, Lio/appium/android/apis/app/ReorderFour;->startActivity(Landroid/content/Intent;)V

    .line 44
    return-void
.end method
