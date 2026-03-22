.class final Lio/appium/android/apis/animation/Transition3d$SwapViews;
.super Ljava/lang/Object;
.source "Transition3d.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/appium/android/apis/animation/Transition3d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SwapViews"
.end annotation


# instance fields
.field private final mPosition:I

.field final synthetic this$0:Lio/appium/android/apis/animation/Transition3d;


# direct methods
.method public constructor <init>(Lio/appium/android/apis/animation/Transition3d;I)V
    .locals 0
    .param p2, "position"    # I

    .line 144
    iput-object p1, p0, Lio/appium/android/apis/animation/Transition3d$SwapViews;->this$0:Lio/appium/android/apis/animation/Transition3d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 145
    iput p2, p0, Lio/appium/android/apis/animation/Transition3d$SwapViews;->mPosition:I

    .line 146
    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .line 149
    iget-object v0, p0, Lio/appium/android/apis/animation/Transition3d$SwapViews;->this$0:Lio/appium/android/apis/animation/Transition3d;

    invoke-static {v0}, Lio/appium/android/apis/animation/Transition3d;->access$100(Lio/appium/android/apis/animation/Transition3d;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    .line 150
    .local v0, "centerX":F
    iget-object v2, p0, Lio/appium/android/apis/animation/Transition3d$SwapViews;->this$0:Lio/appium/android/apis/animation/Transition3d;

    invoke-static {v2}, Lio/appium/android/apis/animation/Transition3d;->access$100(Lio/appium/android/apis/animation/Transition3d;)Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float v1, v2, v1

    .line 153
    .local v1, "centerY":F
    iget v2, p0, Lio/appium/android/apis/animation/Transition3d$SwapViews;->mPosition:I

    const/4 v3, 0x0

    const/16 v4, 0x8

    const/4 v5, -0x1

    if-le v2, v5, :cond_0

    .line 154
    iget-object v2, p0, Lio/appium/android/apis/animation/Transition3d$SwapViews;->this$0:Lio/appium/android/apis/animation/Transition3d;

    invoke-static {v2}, Lio/appium/android/apis/animation/Transition3d;->access$200(Lio/appium/android/apis/animation/Transition3d;)Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/widget/ListView;->setVisibility(I)V

    .line 155
    iget-object v2, p0, Lio/appium/android/apis/animation/Transition3d$SwapViews;->this$0:Lio/appium/android/apis/animation/Transition3d;

    invoke-static {v2}, Lio/appium/android/apis/animation/Transition3d;->access$300(Lio/appium/android/apis/animation/Transition3d;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 156
    iget-object v2, p0, Lio/appium/android/apis/animation/Transition3d$SwapViews;->this$0:Lio/appium/android/apis/animation/Transition3d;

    invoke-static {v2}, Lio/appium/android/apis/animation/Transition3d;->access$300(Lio/appium/android/apis/animation/Transition3d;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ImageView;->requestFocus()Z

    .line 158
    new-instance v9, Lio/appium/android/apis/animation/Rotate3dAnimation;

    const/high16 v3, 0x42b40000    # 90.0f

    const/high16 v4, 0x43340000    # 180.0f

    const/high16 v7, 0x439b0000    # 310.0f

    const/4 v8, 0x0

    move-object v2, v9

    move v5, v0

    move v6, v1

    invoke-direct/range {v2 .. v8}, Lio/appium/android/apis/animation/Rotate3dAnimation;-><init>(FFFFFZ)V

    goto :goto_0

    .line 160
    :cond_0
    iget-object v2, p0, Lio/appium/android/apis/animation/Transition3d$SwapViews;->this$0:Lio/appium/android/apis/animation/Transition3d;

    invoke-static {v2}, Lio/appium/android/apis/animation/Transition3d;->access$300(Lio/appium/android/apis/animation/Transition3d;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 161
    iget-object v2, p0, Lio/appium/android/apis/animation/Transition3d$SwapViews;->this$0:Lio/appium/android/apis/animation/Transition3d;

    invoke-static {v2}, Lio/appium/android/apis/animation/Transition3d;->access$200(Lio/appium/android/apis/animation/Transition3d;)Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setVisibility(I)V

    .line 162
    iget-object v2, p0, Lio/appium/android/apis/animation/Transition3d$SwapViews;->this$0:Lio/appium/android/apis/animation/Transition3d;

    invoke-static {v2}, Lio/appium/android/apis/animation/Transition3d;->access$200(Lio/appium/android/apis/animation/Transition3d;)Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ListView;->requestFocus()Z

    .line 164
    new-instance v9, Lio/appium/android/apis/animation/Rotate3dAnimation;

    const/high16 v3, 0x42b40000    # 90.0f

    const/4 v4, 0x0

    const/high16 v7, 0x439b0000    # 310.0f

    const/4 v8, 0x0

    move-object v2, v9

    move v5, v0

    move v6, v1

    invoke-direct/range {v2 .. v8}, Lio/appium/android/apis/animation/Rotate3dAnimation;-><init>(FFFFFZ)V

    .line 167
    .local v2, "rotation":Lio/appium/android/apis/animation/Rotate3dAnimation;
    :goto_0
    const-wide/16 v3, 0x1f4

    invoke-virtual {v2, v3, v4}, Lio/appium/android/apis/animation/Rotate3dAnimation;->setDuration(J)V

    .line 168
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lio/appium/android/apis/animation/Rotate3dAnimation;->setFillAfter(Z)V

    .line 169
    new-instance v3, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v2, v3}, Lio/appium/android/apis/animation/Rotate3dAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 171
    iget-object v3, p0, Lio/appium/android/apis/animation/Transition3d$SwapViews;->this$0:Lio/appium/android/apis/animation/Transition3d;

    invoke-static {v3}, Lio/appium/android/apis/animation/Transition3d;->access$100(Lio/appium/android/apis/animation/Transition3d;)Landroid/view/ViewGroup;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V

    .line 172
    return-void
.end method
