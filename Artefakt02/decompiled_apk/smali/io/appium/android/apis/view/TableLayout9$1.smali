.class Lio/appium/android/apis/view/TableLayout9$1;
.super Ljava/lang/Object;
.source "TableLayout9.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/appium/android/apis/view/TableLayout9;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/appium/android/apis/view/TableLayout9;

.field final synthetic val$table:Landroid/widget/TableLayout;


# direct methods
.method constructor <init>(Lio/appium/android/apis/view/TableLayout9;Landroid/widget/TableLayout;)V
    .locals 0
    .param p1, "this$0"    # Lio/appium/android/apis/view/TableLayout9;

    .line 39
    iput-object p1, p0, Lio/appium/android/apis/view/TableLayout9$1;->this$0:Lio/appium/android/apis/view/TableLayout9;

    iput-object p2, p0, Lio/appium/android/apis/view/TableLayout9$1;->val$table:Landroid/widget/TableLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .line 41
    iget-object v0, p0, Lio/appium/android/apis/view/TableLayout9$1;->this$0:Lio/appium/android/apis/view/TableLayout9;

    invoke-static {v0}, Lio/appium/android/apis/view/TableLayout9;->access$000(Lio/appium/android/apis/view/TableLayout9;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lio/appium/android/apis/view/TableLayout9;->access$002(Lio/appium/android/apis/view/TableLayout9;Z)Z

    .line 42
    iget-object v0, p0, Lio/appium/android/apis/view/TableLayout9$1;->val$table:Landroid/widget/TableLayout;

    const/4 v1, 0x0

    iget-object v2, p0, Lio/appium/android/apis/view/TableLayout9$1;->this$0:Lio/appium/android/apis/view/TableLayout9;

    invoke-static {v2}, Lio/appium/android/apis/view/TableLayout9;->access$000(Lio/appium/android/apis/view/TableLayout9;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/TableLayout;->setColumnShrinkable(IZ)V

    .line 43
    return-void
.end method
