.class Lio/appium/android/apis/text/KeyEventText$1;
.super Ljava/lang/Object;
.source "KeyEventText.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/appium/android/apis/text/KeyEventText;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/appium/android/apis/text/KeyEventText;


# direct methods
.method constructor <init>(Lio/appium/android/apis/text/KeyEventText;)V
    .locals 0
    .param p1, "this$0"    # Lio/appium/android/apis/text/KeyEventText;

    .line 45
    iput-object p1, p0, Lio/appium/android/apis/text/KeyEventText$1;->this$0:Lio/appium/android/apis/text/KeyEventText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .line 47
    iget-object v0, p0, Lio/appium/android/apis/text/KeyEventText$1;->this$0:Lio/appium/android/apis/text/KeyEventText;

    invoke-static {v0}, Lio/appium/android/apis/text/KeyEventText;->access$000(Lio/appium/android/apis/text/KeyEventText;)Lio/appium/android/apis/text/LogTextBox;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Lio/appium/android/apis/text/LogTextBox;->setText(Ljava/lang/CharSequence;)V

    .line 48
    return-void
.end method
