.class Lio/appium/android/apis/app/FinishAffinity$1;
.super Ljava/lang/Object;
.source "FinishAffinity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/appium/android/apis/app/FinishAffinity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/appium/android/apis/app/FinishAffinity;


# direct methods
.method constructor <init>(Lio/appium/android/apis/app/FinishAffinity;)V
    .locals 0
    .param p1, "this$0"    # Lio/appium/android/apis/app/FinishAffinity;

    .line 49
    iput-object p1, p0, Lio/appium/android/apis/app/FinishAffinity$1;->this$0:Lio/appium/android/apis/app/FinishAffinity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .line 51
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lio/appium/android/apis/app/FinishAffinity$1;->this$0:Lio/appium/android/apis/app/FinishAffinity;

    const-class v2, Lio/appium/android/apis/app/FinishAffinity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 52
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "nesting"

    iget-object v2, p0, Lio/appium/android/apis/app/FinishAffinity$1;->this$0:Lio/appium/android/apis/app/FinishAffinity;

    iget v2, v2, Lio/appium/android/apis/app/FinishAffinity;->mNesting:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 53
    iget-object v1, p0, Lio/appium/android/apis/app/FinishAffinity$1;->this$0:Lio/appium/android/apis/app/FinishAffinity;

    invoke-virtual {v1, v0}, Lio/appium/android/apis/app/FinishAffinity;->startActivity(Landroid/content/Intent;)V

    .line 54
    return-void
.end method
