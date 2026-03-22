.class Lio/appium/android/apis/view/Hover$1;
.super Ljava/lang/Object;
.source "Hover.java"

# interfaces
.implements Landroid/view/View$OnHoverListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/appium/android/apis/view/Hover;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/appium/android/apis/view/Hover;


# direct methods
.method constructor <init>(Lio/appium/android/apis/view/Hover;)V
    .locals 0
    .param p1, "this$0"    # Lio/appium/android/apis/view/Hover;

    .line 75
    iput-object p1, p0, Lio/appium/android/apis/view/Hover$1;->this$0:Lio/appium/android/apis/view/Hover;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onHover(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .line 78
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x7

    const/4 v2, 0x1

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    .line 90
    :pswitch_0
    iget-object v0, p0, Lio/appium/android/apis/view/Hover$1;->this$0:Lio/appium/android/apis/view/Hover;

    invoke-static {v0}, Lio/appium/android/apis/view/Hover;->access$000(Lio/appium/android/apis/view/Hover;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lio/appium/android/apis/view/Hover$1;->this$0:Lio/appium/android/apis/view/Hover;

    invoke-virtual {v1}, Lio/appium/android/apis/view/Hover;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v5, 0x7f0e0199

    new-array v3, v3, [Ljava/lang/Object;

    .line 92
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v3, v4

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v3, v2

    .line 90
    invoke-virtual {v1, v5, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 80
    :pswitch_1
    iget-object v0, p0, Lio/appium/android/apis/view/Hover$1;->this$0:Lio/appium/android/apis/view/Hover;

    invoke-static {v0}, Lio/appium/android/apis/view/Hover;->access$000(Lio/appium/android/apis/view/Hover;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lio/appium/android/apis/view/Hover$1;->this$0:Lio/appium/android/apis/view/Hover;

    invoke-virtual {v1}, Lio/appium/android/apis/view/Hover;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v5, 0x7f0e0198

    new-array v3, v3, [Ljava/lang/Object;

    .line 82
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v3, v4

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v3, v2

    .line 80
    invoke-virtual {v1, v5, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 83
    goto :goto_0

    .line 85
    :cond_0
    iget-object v0, p0, Lio/appium/android/apis/view/Hover$1;->this$0:Lio/appium/android/apis/view/Hover;

    invoke-static {v0}, Lio/appium/android/apis/view/Hover;->access$000(Lio/appium/android/apis/view/Hover;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lio/appium/android/apis/view/Hover$1;->this$0:Lio/appium/android/apis/view/Hover;

    invoke-virtual {v1}, Lio/appium/android/apis/view/Hover;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v5, 0x7f0e019b

    new-array v3, v3, [Ljava/lang/Object;

    .line 87
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v3, v4

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v3, v2

    .line 85
    invoke-virtual {v1, v5, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 88
    nop

    .line 95
    :goto_0
    return v4

    nop

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
