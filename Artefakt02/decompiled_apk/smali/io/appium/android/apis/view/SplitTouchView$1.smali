.class Lio/appium/android/apis/view/SplitTouchView$1;
.super Ljava/lang/Object;
.source "SplitTouchView.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/appium/android/apis/view/SplitTouchView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/appium/android/apis/view/SplitTouchView;


# direct methods
.method constructor <init>(Lio/appium/android/apis/view/SplitTouchView;)V
    .locals 0
    .param p1, "this$0"    # Lio/appium/android/apis/view/SplitTouchView;

    .line 54
    iput-object p1, p0, Lio/appium/android/apis/view/SplitTouchView$1;->this$0:Lio/appium/android/apis/view/SplitTouchView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 56
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lio/appium/android/apis/view/SplitTouchView$1;->this$0:Lio/appium/android/apis/view/SplitTouchView;

    invoke-virtual {v0}, Lio/appium/android/apis/view/SplitTouchView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x7f030000

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 57
    .local v0, "responses":[Ljava/lang/String;
    iget-object v1, p0, Lio/appium/android/apis/view/SplitTouchView$1;->this$0:Lio/appium/android/apis/view/SplitTouchView;

    invoke-static {v1}, Lio/appium/android/apis/view/SplitTouchView;->access$008(Lio/appium/android/apis/view/SplitTouchView;)I

    move-result v1

    array-length v2, v0

    rem-int/2addr v1, v2

    aget-object v1, v0, v1

    .line 59
    .local v1, "response":Ljava/lang/String;
    iget-object v2, p0, Lio/appium/android/apis/view/SplitTouchView$1;->this$0:Lio/appium/android/apis/view/SplitTouchView;

    invoke-virtual {v2}, Lio/appium/android/apis/view/SplitTouchView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    sget-object v4, Lio/appium/android/apis/view/Cheeses;->sCheeseStrings:[Ljava/lang/String;

    aget-object v4, v4, p3

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const/4 v4, 0x1

    aput-object v1, v3, v4

    const v4, 0x7f0e02f8

    invoke-virtual {v2, v4, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 62
    .local v2, "message":Ljava/lang/String;
    iget-object v3, p0, Lio/appium/android/apis/view/SplitTouchView$1;->this$0:Lio/appium/android/apis/view/SplitTouchView;

    invoke-virtual {v3}, Lio/appium/android/apis/view/SplitTouchView;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    .line 63
    .local v3, "toast":Landroid/widget/Toast;
    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 64
    return-void
.end method
