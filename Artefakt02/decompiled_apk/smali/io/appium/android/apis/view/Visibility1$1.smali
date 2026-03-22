.class Lio/appium/android/apis/view/Visibility1$1;
.super Ljava/lang/Object;
.source "Visibility1.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/appium/android/apis/view/Visibility1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/appium/android/apis/view/Visibility1;


# direct methods
.method constructor <init>(Lio/appium/android/apis/view/Visibility1;)V
    .locals 0
    .param p1, "this$0"    # Lio/appium/android/apis/view/Visibility1;

    .line 57
    iput-object p1, p0, Lio/appium/android/apis/view/Visibility1$1;->this$0:Lio/appium/android/apis/view/Visibility1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .line 59
    iget-object v0, p0, Lio/appium/android/apis/view/Visibility1$1;->this$0:Lio/appium/android/apis/view/Visibility1;

    invoke-static {v0}, Lio/appium/android/apis/view/Visibility1;->access$000(Lio/appium/android/apis/view/Visibility1;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 60
    return-void
.end method
