.class Lio/appium/android/apis/view/DraggableDot$1;
.super Ljava/lang/Object;
.source "DraggableDot.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/appium/android/apis/view/DraggableDot;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/appium/android/apis/view/DraggableDot;


# direct methods
.method constructor <init>(Lio/appium/android/apis/view/DraggableDot;)V
    .locals 0
    .param p1, "this$0"    # Lio/appium/android/apis/view/DraggableDot;

    .line 131
    iput-object p1, p0, Lio/appium/android/apis/view/DraggableDot$1;->this$0:Lio/appium/android/apis/view/DraggableDot;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .line 133
    const-string v0, "dot"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Dot : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/View;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v0

    .line 134
    .local v0, "data":Landroid/content/ClipData;
    new-instance v1, Lio/appium/android/apis/view/DraggableDot$ANRShadowBuilder;

    iget-object v2, p0, Lio/appium/android/apis/view/DraggableDot$1;->this$0:Lio/appium/android/apis/view/DraggableDot;

    iget v3, v2, Lio/appium/android/apis/view/DraggableDot;->mAnrType:I

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v3, v5, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    invoke-direct {v1, v2, p1, v3}, Lio/appium/android/apis/view/DraggableDot$ANRShadowBuilder;-><init>(Lio/appium/android/apis/view/DraggableDot;Landroid/view/View;Z)V

    invoke-virtual {p1, v0, v1, p1, v4}, Landroid/view/View;->startDrag(Landroid/content/ClipData;Landroid/view/View$DragShadowBuilder;Ljava/lang/Object;I)Z

    .line 136
    return v5
.end method
