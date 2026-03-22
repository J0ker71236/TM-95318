.class Lio/appium/android/apis/view/DraggableDot$ANRShadowBuilder;
.super Landroid/view/View$DragShadowBuilder;
.source "DraggableDot.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/appium/android/apis/view/DraggableDot;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ANRShadowBuilder"
.end annotation


# instance fields
.field mDoAnr:Z

.field final synthetic this$0:Lio/appium/android/apis/view/DraggableDot;


# direct methods
.method public constructor <init>(Lio/appium/android/apis/view/DraggableDot;Landroid/view/View;Z)V
    .locals 0
    .param p1, "this$0"    # Lio/appium/android/apis/view/DraggableDot;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "doAnr"    # Z

    .line 69
    iput-object p1, p0, Lio/appium/android/apis/view/DraggableDot$ANRShadowBuilder;->this$0:Lio/appium/android/apis/view/DraggableDot;

    .line 70
    invoke-direct {p0, p2}, Landroid/view/View$DragShadowBuilder;-><init>(Landroid/view/View;)V

    .line 71
    iput-boolean p3, p0, Lio/appium/android/apis/view/DraggableDot$ANRShadowBuilder;->mDoAnr:Z

    .line 72
    return-void
.end method


# virtual methods
.method public onDrawShadow(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 76
    iget-boolean v0, p0, Lio/appium/android/apis/view/DraggableDot$ANRShadowBuilder;->mDoAnr:Z

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lio/appium/android/apis/view/DraggableDot$ANRShadowBuilder;->this$0:Lio/appium/android/apis/view/DraggableDot;

    invoke-virtual {v0}, Lio/appium/android/apis/view/DraggableDot;->sleepSixSeconds()V

    .line 79
    :cond_0
    invoke-super {p0, p1}, Landroid/view/View$DragShadowBuilder;->onDrawShadow(Landroid/graphics/Canvas;)V

    .line 80
    return-void
.end method
