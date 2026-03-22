.class Lio/appium/android/apis/app/DialogActivity$2;
.super Ljava/lang/Object;
.source "DialogActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/appium/android/apis/app/DialogActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/appium/android/apis/app/DialogActivity;


# direct methods
.method constructor <init>(Lio/appium/android/apis/app/DialogActivity;)V
    .locals 0
    .param p1, "this$0"    # Lio/appium/android/apis/app/DialogActivity;

    .line 77
    iput-object p1, p0, Lio/appium/android/apis/app/DialogActivity$2;->this$0:Lio/appium/android/apis/app/DialogActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .line 79
    iget-object v0, p0, Lio/appium/android/apis/app/DialogActivity$2;->this$0:Lio/appium/android/apis/app/DialogActivity;

    const v1, 0x7f0900f9

    invoke-virtual {v0, v1}, Lio/appium/android/apis/app/DialogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 80
    .local v0, "layout":Landroid/widget/LinearLayout;
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    .line 81
    .local v1, "num":I
    if-lez v1, :cond_0

    .line 82
    add-int/lit8 v2, v1, -0x1

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->removeViewAt(I)V

    .line 84
    :cond_0
    return-void
.end method
