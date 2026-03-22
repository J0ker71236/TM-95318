.class Lio/appium/android/apis/text/LogTextBox1$1;
.super Ljava/lang/Object;
.source "LogTextBox1.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/appium/android/apis/text/LogTextBox1;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/appium/android/apis/text/LogTextBox1;


# direct methods
.method constructor <init>(Lio/appium/android/apis/text/LogTextBox1;)V
    .locals 0
    .param p1, "this$0"    # Lio/appium/android/apis/text/LogTextBox1;

    .line 44
    iput-object p1, p0, Lio/appium/android/apis/text/LogTextBox1$1;->this$0:Lio/appium/android/apis/text/LogTextBox1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .line 47
    iget-object v0, p0, Lio/appium/android/apis/text/LogTextBox1$1;->this$0:Lio/appium/android/apis/text/LogTextBox1;

    invoke-static {v0}, Lio/appium/android/apis/text/LogTextBox1;->access$000(Lio/appium/android/apis/text/LogTextBox1;)Lio/appium/android/apis/text/LogTextBox;

    move-result-object v0

    const-string v1, "This is a test\n"

    invoke-virtual {v0, v1}, Lio/appium/android/apis/text/LogTextBox;->append(Ljava/lang/CharSequence;)V

    .line 48
    return-void
.end method
