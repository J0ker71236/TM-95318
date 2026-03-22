.class Lio/appium/android/apis/app/RedirectEnter$1;
.super Ljava/lang/Object;
.source "RedirectEnter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/appium/android/apis/app/RedirectEnter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/appium/android/apis/app/RedirectEnter;


# direct methods
.method constructor <init>(Lio/appium/android/apis/app/RedirectEnter;)V
    .locals 0
    .param p1, "this$0"    # Lio/appium/android/apis/app/RedirectEnter;

    .line 49
    iput-object p1, p0, Lio/appium/android/apis/app/RedirectEnter$1;->this$0:Lio/appium/android/apis/app/RedirectEnter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .line 54
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lio/appium/android/apis/app/RedirectEnter$1;->this$0:Lio/appium/android/apis/app/RedirectEnter;

    const-class v2, Lio/appium/android/apis/app/RedirectMain;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 55
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lio/appium/android/apis/app/RedirectEnter$1;->this$0:Lio/appium/android/apis/app/RedirectEnter;

    invoke-virtual {v1, v0}, Lio/appium/android/apis/app/RedirectEnter;->startActivity(Landroid/content/Intent;)V

    .line 56
    return-void
.end method
