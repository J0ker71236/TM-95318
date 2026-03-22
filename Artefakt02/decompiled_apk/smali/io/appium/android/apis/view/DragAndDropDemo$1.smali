.class Lio/appium/android/apis/view/DragAndDropDemo$1;
.super Ljava/lang/Object;
.source "DragAndDropDemo.java"

# interfaces
.implements Landroid/view/View$OnDragListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/appium/android/apis/view/DragAndDropDemo;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/appium/android/apis/view/DragAndDropDemo;


# direct methods
.method constructor <init>(Lio/appium/android/apis/view/DragAndDropDemo;)V
    .locals 0
    .param p1, "this$0"    # Lio/appium/android/apis/view/DragAndDropDemo;

    .line 48
    iput-object p1, p0, Lio/appium/android/apis/view/DragAndDropDemo$1;->this$0:Lio/appium/android/apis/view/DragAndDropDemo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDrag(Landroid/view/View;Landroid/view/DragEvent;)Z
    .locals 5
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/DragEvent;

    .line 50
    iget-object v0, p0, Lio/appium/android/apis/view/DragAndDropDemo$1;->this$0:Lio/appium/android/apis/view/DragAndDropDemo;

    iget-object v0, v0, Lio/appium/android/apis/view/DragAndDropDemo;->mResultText:Landroid/widget/TextView;

    const-string v1, "Dragging..."

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 51
    invoke-virtual {p2}, Landroid/view/DragEvent;->getAction()I

    move-result v0

    .line 52
    .local v0, "action":I
    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v2, 0x4

    if-eq v0, v2, :cond_0

    goto :goto_1

    .line 62
    :cond_0
    iget-object v3, p0, Lio/appium/android/apis/view/DragAndDropDemo$1;->this$0:Lio/appium/android/apis/view/DragAndDropDemo;

    iget-object v3, v3, Lio/appium/android/apis/view/DragAndDropDemo;->mHiddenDot:Lio/appium/android/apis/view/DraggableDot;

    invoke-virtual {v3, v2}, Lio/appium/android/apis/view/DraggableDot;->setVisibility(I)V

    .line 65
    invoke-virtual {p2}, Landroid/view/DragEvent;->getResult()Z

    move-result v2

    .line 66
    .local v2, "dropped":Z
    iget-object v3, p0, Lio/appium/android/apis/view/DragAndDropDemo$1;->this$0:Lio/appium/android/apis/view/DragAndDropDemo;

    iget-object v3, v3, Lio/appium/android/apis/view/DragAndDropDemo;->mResultText:Landroid/widget/TextView;

    if-eqz v2, :cond_1

    const-string v4, "Dropped!"

    goto :goto_0

    :cond_1
    const-string v4, "No drop"

    :goto_0
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 57
    .end local v2    # "dropped":Z
    :cond_2
    iget-object v2, p0, Lio/appium/android/apis/view/DragAndDropDemo$1;->this$0:Lio/appium/android/apis/view/DragAndDropDemo;

    iget-object v2, v2, Lio/appium/android/apis/view/DragAndDropDemo;->mHiddenDot:Lio/appium/android/apis/view/DraggableDot;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lio/appium/android/apis/view/DraggableDot;->setVisibility(I)V

    .line 58
    nop

    .line 70
    :goto_1
    return v1
.end method
