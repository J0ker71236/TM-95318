.class Lio/appium/android/apis/app/FinishAffinity$2;
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

    .line 57
    iput-object p1, p0, Lio/appium/android/apis/app/FinishAffinity$2;->this$0:Lio/appium/android/apis/app/FinishAffinity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .line 59
    iget-object v0, p0, Lio/appium/android/apis/app/FinishAffinity$2;->this$0:Lio/appium/android/apis/app/FinishAffinity;

    invoke-virtual {v0}, Lio/appium/android/apis/app/FinishAffinity;->finishAffinity()V

    .line 60
    return-void
.end method
