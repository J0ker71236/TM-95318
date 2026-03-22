.class Lio/appium/android/apis/view/TableLayout7$1;
.super Ljava/lang/Object;
.source "TableLayout7.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/appium/android/apis/view/TableLayout7;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/appium/android/apis/view/TableLayout7;

.field final synthetic val$table:Landroid/widget/TableLayout;


# direct methods
.method constructor <init>(Lio/appium/android/apis/view/TableLayout7;Landroid/widget/TableLayout;)V
    .locals 0
    .param p1, "this$0"    # Lio/appium/android/apis/view/TableLayout7;

    .line 43
    iput-object p1, p0, Lio/appium/android/apis/view/TableLayout7$1;->this$0:Lio/appium/android/apis/view/TableLayout7;

    iput-object p2, p0, Lio/appium/android/apis/view/TableLayout7$1;->val$table:Landroid/widget/TableLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .line 45
    iget-object v0, p0, Lio/appium/android/apis/view/TableLayout7$1;->this$0:Lio/appium/android/apis/view/TableLayout7;

    invoke-static {v0}, Lio/appium/android/apis/view/TableLayout7;->access$000(Lio/appium/android/apis/view/TableLayout7;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lio/appium/android/apis/view/TableLayout7;->access$002(Lio/appium/android/apis/view/TableLayout7;Z)Z

    .line 46
    iget-object v0, p0, Lio/appium/android/apis/view/TableLayout7$1;->val$table:Landroid/widget/TableLayout;

    const/4 v1, 0x2

    iget-object v2, p0, Lio/appium/android/apis/view/TableLayout7$1;->this$0:Lio/appium/android/apis/view/TableLayout7;

    invoke-static {v2}, Lio/appium/android/apis/view/TableLayout7;->access$000(Lio/appium/android/apis/view/TableLayout7;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/TableLayout;->setColumnCollapsed(IZ)V

    .line 47
    return-void
.end method
