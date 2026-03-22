.class Lio/appium/android/apis/view/DateWidgets1$1;
.super Ljava/lang/Object;
.source "DateWidgets1.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/appium/android/apis/view/DateWidgets1;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/appium/android/apis/view/DateWidgets1;


# direct methods
.method constructor <init>(Lio/appium/android/apis/view/DateWidgets1;)V
    .locals 0
    .param p1, "this$0"    # Lio/appium/android/apis/view/DateWidgets1;

    .line 67
    iput-object p1, p0, Lio/appium/android/apis/view/DateWidgets1$1;->this$0:Lio/appium/android/apis/view/DateWidgets1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .line 70
    iget-object v0, p0, Lio/appium/android/apis/view/DateWidgets1$1;->this$0:Lio/appium/android/apis/view/DateWidgets1;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lio/appium/android/apis/view/DateWidgets1;->showDialog(I)V

    .line 71
    return-void
.end method
