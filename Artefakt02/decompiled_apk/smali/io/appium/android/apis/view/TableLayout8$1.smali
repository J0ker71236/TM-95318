.class Lio/appium/android/apis/view/TableLayout8$1;
.super Ljava/lang/Object;
.source "TableLayout8.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/appium/android/apis/view/TableLayout8;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/appium/android/apis/view/TableLayout8;

.field final synthetic val$table:Landroid/widget/TableLayout;


# direct methods
.method constructor <init>(Lio/appium/android/apis/view/TableLayout8;Landroid/widget/TableLayout;)V
    .locals 0
    .param p1, "this$0"    # Lio/appium/android/apis/view/TableLayout8;

    .line 42
    iput-object p1, p0, Lio/appium/android/apis/view/TableLayout8$1;->this$0:Lio/appium/android/apis/view/TableLayout8;

    iput-object p2, p0, Lio/appium/android/apis/view/TableLayout8$1;->val$table:Landroid/widget/TableLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .line 44
    iget-object v0, p0, Lio/appium/android/apis/view/TableLayout8$1;->this$0:Lio/appium/android/apis/view/TableLayout8;

    invoke-static {v0}, Lio/appium/android/apis/view/TableLayout8;->access$000(Lio/appium/android/apis/view/TableLayout8;)Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    invoke-static {v0, v1}, Lio/appium/android/apis/view/TableLayout8;->access$002(Lio/appium/android/apis/view/TableLayout8;Z)Z

    .line 45
    iget-object v0, p0, Lio/appium/android/apis/view/TableLayout8$1;->val$table:Landroid/widget/TableLayout;

    iget-object v1, p0, Lio/appium/android/apis/view/TableLayout8$1;->this$0:Lio/appium/android/apis/view/TableLayout8;

    invoke-static {v1}, Lio/appium/android/apis/view/TableLayout8;->access$000(Lio/appium/android/apis/view/TableLayout8;)Z

    move-result v1

    invoke-virtual {v0, v2, v1}, Landroid/widget/TableLayout;->setColumnStretchable(IZ)V

    .line 46
    return-void
.end method
