.class Lio/appium/android/apis/view/GameControllerInput$1;
.super Ljava/lang/Object;
.source "GameControllerInput.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/appium/android/apis/view/GameControllerInput;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/appium/android/apis/view/GameControllerInput;


# direct methods
.method constructor <init>(Lio/appium/android/apis/view/GameControllerInput;)V
    .locals 0
    .param p1, "this$0"    # Lio/appium/android/apis/view/GameControllerInput;

    .line 81
    iput-object p1, p0, Lio/appium/android/apis/view/GameControllerInput$1;->this$0:Lio/appium/android/apis/view/GameControllerInput;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
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

    .line 84
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lio/appium/android/apis/view/GameControllerInput$1;->this$0:Lio/appium/android/apis/view/GameControllerInput;

    invoke-static {v0}, Lio/appium/android/apis/view/GameControllerInput;->access$000(Lio/appium/android/apis/view/GameControllerInput;)Lio/appium/android/apis/view/GameControllerInput$SummaryAdapter;

    move-result-object v0

    invoke-virtual {v0, p3}, Lio/appium/android/apis/view/GameControllerInput$SummaryAdapter;->onItemClick(I)V

    .line 85
    return-void
.end method
