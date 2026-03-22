.class public Lio/appium/android/apis/accessibility/AccessibilityNodeProviderActivity$VirtualSubtreeRootView;
.super Landroid/view/View;
.source "AccessibilityNodeProviderActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/appium/android/apis/accessibility/AccessibilityNodeProviderActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VirtualSubtreeRootView"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/appium/android/apis/accessibility/AccessibilityNodeProviderActivity$VirtualSubtreeRootView$VirtualDescendantsProvider;,
        Lio/appium/android/apis/accessibility/AccessibilityNodeProviderActivity$VirtualSubtreeRootView$VirtualView;
    }
.end annotation


# instance fields
.field private final mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private mAccessibilityNodeProvider:Landroid/view/accessibility/AccessibilityNodeProvider;

.field private final mChildren:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/appium/android/apis/accessibility/AccessibilityNodeProviderActivity$VirtualSubtreeRootView$VirtualView;",
            ">;"
        }
    .end annotation
.end field

.field private mLastHoveredChild:Lio/appium/android/apis/accessibility/AccessibilityNodeProviderActivity$VirtualSubtreeRootView$VirtualView;

.field private final mPaint:Landroid/graphics/Paint;

.field private final mTempRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 94
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 76
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lio/appium/android/apis/accessibility/AccessibilityNodeProviderActivity$VirtualSubtreeRootView;->mPaint:Landroid/graphics/Paint;

    .line 79
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lio/appium/android/apis/accessibility/AccessibilityNodeProviderActivity$VirtualSubtreeRootView;->mTempRect:Landroid/graphics/Rect;

    .line 85
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/appium/android/apis/accessibility/AccessibilityNodeProviderActivity$VirtualSubtreeRootView;->mChildren:Ljava/util/List;

    .line 95
    const-string v0, "accessibility"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    iput-object v0, p0, Lio/appium/android/apis/accessibility/AccessibilityNodeProviderActivity$VirtualSubtreeRootView;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 97
    invoke-direct {p0}, Lio/appium/android/apis/accessibility/AccessibilityNodeProviderActivity$VirtualSubtreeRootView;->createVirtualChildren()V

    .line 98
    return-void
.end method

.method static synthetic access$100(Lio/appium/android/apis/accessibility/AccessibilityNodeProviderActivity$VirtualSubtreeRootView;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lio/appium/android/apis/accessibility/AccessibilityNodeProviderActivity$VirtualSubtreeRootView;

    .line 73
    iget-object v0, p0, Lio/appium/android/apis/accessibility/AccessibilityNodeProviderActivity$VirtualSubtreeRootView;->mChildren:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$200(Lio/appium/android/apis/accessibility/AccessibilityNodeProviderActivity$VirtualSubtreeRootView;I)Lio/appium/android/apis/accessibility/AccessibilityNodeProviderActivity$VirtualSubtreeRootView$VirtualView;
    .locals 1
    .param p0, "x0"    # Lio/appium/android/apis/accessibility/AccessibilityNodeProviderActivity$VirtualSubtreeRootView;
    .param p1, "x1"    # I

    .line 73
    invoke-direct {p0, p1}, Lio/appium/android/apis/accessibility/AccessibilityNodeProviderActivity$VirtualSubtreeRootView;->findVirtualViewById(I)Lio/appium/android/apis/accessibility/AccessibilityNodeProviderActivity$VirtualSubtreeRootView$VirtualView;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lio/appium/android/apis/accessibility/AccessibilityNodeProviderActivity$VirtualSubtreeRootView;Lio/appium/android/apis/accessibility/AccessibilityNodeProviderActivity$VirtualSubtreeRootView$VirtualView;Z)V
    .locals 0
    .param p0, "x0"    # Lio/appium/android/apis/accessibility/AccessibilityNodeProviderActivity$VirtualSubtreeRootView;
    .param p1, "x1"    # Lio/appium/android/apis/accessibility/AccessibilityNodeProviderActivity$VirtualSubtreeRootView$VirtualView;
    .param p2, "x2"    # Z

    .line 73
    invoke-direct {p0, p1, p2}, Lio/appium/android/apis/accessibility/AccessibilityNodeProviderActivity$VirtualSubtreeRootView;->setVirtualViewSelected(Lio/appium/android/apis/accessibility/AccessibilityNodeProviderActivity$VirtualSubtreeRootView$VirtualView;Z)V

    return-void
.end method

.method private createVirtualChildren()V
    .locals 15

    .line 238
    new-instance v6, Lio/appium/android/apis/accessibility/AccessibilityNodeProviderActivity$VirtualSubtreeRootView$VirtualView;

    new-instance v3, Landroid/graphics/Rect;

    const/16 v7, 0x96

    const/4 v8, 0x0

    invoke-direct {v3, v8, v8, v7, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    const-string v5, "Virtual view 1"

    const/4 v2, 0x0

    const/high16 v4, -0x10000

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lio/appium/android/apis/accessibility/AccessibilityNodeProviderActivity$VirtualSubtreeRootView$VirtualView;-><init>(Lio/appium/android/apis/accessibility/AccessibilityNodeProviderActivity$VirtualSubtreeRootView;ILandroid/graphics/Rect;ILjava/lang/String;)V

    .line 240
    .local v0, "firstChild":Lio/appium/android/apis/accessibility/AccessibilityNodeProviderActivity$VirtualSubtreeRootView$VirtualView;
    iget-object v1, p0, Lio/appium/android/apis/accessibility/AccessibilityNodeProviderActivity$VirtualSubtreeRootView;->mChildren:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 241
    new-instance v1, Lio/appium/android/apis/accessibility/AccessibilityNodeProviderActivity$VirtualSubtreeRootView$VirtualView;

    new-instance v12, Landroid/graphics/Rect;

    invoke-direct {v12, v8, v8, v7, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    const-string v14, "Virtual view 2"

    const/4 v11, 0x1

    const v13, -0xff0100

    move-object v9, v1

    move-object v10, p0

    invoke-direct/range {v9 .. v14}, Lio/appium/android/apis/accessibility/AccessibilityNodeProviderActivity$VirtualSubtreeRootView$VirtualView;-><init>(Lio/appium/android/apis/accessibility/AccessibilityNodeProviderActivity$VirtualSubtreeRootView;ILandroid/graphics/Rect;ILjava/lang/String;)V

    .line 243
    .local v1, "secondChild":Lio/appium/android/apis/accessibility/AccessibilityNodeProviderActivity$VirtualSubtreeRootView$VirtualView;
    iget-object v2, p0, Lio/appium/android/apis/accessibility/AccessibilityNodeProviderActivity$VirtualSubtreeRootView;->mChildren:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 244
    new-instance v2, Lio/appium/android/apis/accessibility/AccessibilityNodeProviderActivity$VirtualSubtreeRootView$VirtualView;

    new-instance v12, Landroid/graphics/Rect;

    invoke-direct {v12, v8, v8, v7, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    const-string v14, "Virtual view 3"

    const/4 v11, 0x2

    const v13, -0xffff01

    move-object v9, v2

    invoke-direct/range {v9 .. v14}, Lio/appium/android/apis/accessibility/AccessibilityNodeProviderActivity$VirtualSubtreeRootView$VirtualView;-><init>(Lio/appium/android/apis/accessibility/AccessibilityNodeProviderActivity$VirtualSubtreeRootView;ILandroid/graphics/Rect;ILjava/lang/String;)V

    .line 246
    .local v2, "thirdChild":Lio/appium/android/apis/accessibility/AccessibilityNodeProviderActivity$VirtualSubtreeRootView$VirtualView;
    iget-object v3, p0, Lio/appium/android/apis/accessibility/AccessibilityNodeProviderActivity$VirtualSubtreeRootView;->mChildren:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 247
    return-void
.end method

.method private findVirtualViewById(I)Lio/appium/android/apis/accessibility/AccessibilityNodeProviderActivity$VirtualSubtreeRootView$VirtualView;
    .locals 5
    .param p1, "id"    # I

    .line 312
    iget-object v0, p0, Lio/appium/android/apis/accessibility/AccessibilityNodeProviderActivity$VirtualSubtreeRootView;->mChildren:Ljava/util/List;

    .line 313
    .local v0, "children":Ljava/util/List;, "Ljava/util/List<Lio/appium/android/apis/accessibility/AccessibilityNodeProviderActivity$VirtualSubtreeRootView$VirtualView;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 314
    .local v1, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 315
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/appium/android/apis/accessibility/AccessibilityNodeProviderActivity$VirtualSubtreeRootView$VirtualView;

    .line 316
    .local v3, "child":Lio/appium/android/apis/accessibility/AccessibilityNodeProviderActivity$VirtualSubtreeRootView$VirtualView;
    iget v4, v3, Lio/appium/android/apis/accessibility/AccessibilityNodeProviderActivity$VirtualSubtreeRootView$VirtualView;->mId:I

    if-ne v4, p1, :cond_0

    .line 317
    return-object v3

    .line 314
    .end local v3    # "child":Lio/appium/android/apis/accessibility/AccessibilityNodeProviderActivity$VirtualSubtreeRootView$VirtualView;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 320
    .end local v2    # "i":I
    :cond_1
    const/4 v2, 0x0

    return-object v2
.end method

.method private onHoverVirtualView(Lio/appium/android/apis/accessibility/AccessibilityNodeProviderActivity$VirtualSubtreeRootView$VirtualView;Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "virtualView"    # Lio/appium/android/apis/accessibility/AccessibilityNodeProviderActivity$VirtualSubtreeRootView$VirtualView;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .line 272
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 273
    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 279
    :pswitch_0
    const/16 v1, 0x100

    invoke-direct {p0, p1, v1}, Lio/appium/android/apis/accessibility/AccessibilityNodeProviderActivity$VirtualSubtreeRootView;->sendAccessibilityEventForVirtualView(Lio/appium/android/apis/accessibility/AccessibilityNodeProviderActivity$VirtualSubtreeRootView$VirtualView;I)V

    goto :goto_0

    .line 275
    :pswitch_1
    const/16 v1, 0x80

    invoke-direct {p0, p1, v1}, Lio/appium/android/apis/accessibility/AccessibilityNodeProviderActivity$VirtualSubtreeRootView;->sendAccessibilityEventForVirtualView(Lio/appium/android/apis/accessibility/AccessibilityNodeProviderActivity$VirtualSubtreeRootView$VirtualView;I)V

    .line 277
    nop

    .line 283
    :goto_0
    const/4 v1, 0x1

    return v1

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private sendAccessibilityEventForVirtualView(Lio/appium/android/apis/accessibility/AccessibilityNodeProviderActivity$VirtualSubtreeRootView$VirtualView;I)V
    .locals 3
    .param p1, "virtualView"    # Lio/appium/android/apis/accessibility/AccessibilityNodeProviderActivity$VirtualSubtreeRootView$VirtualView;
    .param p2, "eventType"    # I

    .line 295
    iget-object v0, p0, Lio/appium/android/apis/accessibility/AccessibilityNodeProviderActivity$VirtualSubtreeRootView;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 296
    invoke-static {p2}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    .line 297
    .local v0, "event":Landroid/view/accessibility/AccessibilityEvent;
    invoke-virtual {p0}, Lio/appium/android/apis/accessibility/AccessibilityNodeProviderActivity$VirtualSubtreeRootView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityEvent;->setPackageName(Ljava/lang/CharSequence;)V

    .line 298
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 299
    iget v1, p1, Lio/appium/android/apis/accessibility/AccessibilityNodeProviderActivity$VirtualSubtreeRootView$VirtualView;->mId:I

    invoke-virtual {v0, p0, v1}, Landroid/view/accessibility/AccessibilityEvent;->setSource(Landroid/view/View;I)V

    .line 300
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v1

    iget-object v2, p1, Lio/appium/android/apis/accessibility/AccessibilityNodeProviderActivity$VirtualSubtreeRootView$VirtualView;->mText:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 301
    invoke-virtual {p0}, Lio/appium/android/apis/accessibility/AccessibilityNodeProviderActivity$VirtualSubtreeRootView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    invoke-interface {v1, p0, v0}, Landroid/view/ViewParent;->requestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    .line 303
    .end local v0    # "event":Landroid/view/accessibility/AccessibilityEvent;
    :cond_0
    return-void
.end method

.method private setVirtualViewSelected(Lio/appium/android/apis/accessibility/AccessibilityNodeProviderActivity$VirtualSubtreeRootView$VirtualView;Z)V
    .locals 1
    .param p1, "virtualView"    # Lio/appium/android/apis/accessibility/AccessibilityNodeProviderActivity$VirtualSubtreeRootView$VirtualView;
    .param p2, "selected"    # Z

    .line 256
    if-eqz p2, :cond_0

    const/16 v0, 0xff

    goto :goto_0

    :cond_0
    const/16 v0, 0x7f

    :goto_0
    iput v0, p1, Lio/appium/android/apis/accessibility/AccessibilityNodeProviderActivity$VirtualSubtreeRootView$VirtualView;->mAlpha:I

    .line 257
    return-void
.end method


# virtual methods
.method public dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 12
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 123
    const/4 v0, 0x0

    .line 124
    .local v0, "handled":Z
    iget-object v1, p0, Lio/appium/android/apis/accessibility/AccessibilityNodeProviderActivity$VirtualSubtreeRootView;->mChildren:Ljava/util/List;

    .line 125
    .local v1, "children":Ljava/util/List;, "Ljava/util/List<Lio/appium/android/apis/accessibility/AccessibilityNodeProviderActivity$VirtualSubtreeRootView$VirtualView;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    .line 126
    .local v2, "childCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_5

    .line 127
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/appium/android/apis/accessibility/AccessibilityNodeProviderActivity$VirtualSubtreeRootView$VirtualView;

    .line 128
    .local v4, "child":Lio/appium/android/apis/accessibility/AccessibilityNodeProviderActivity$VirtualSubtreeRootView$VirtualView;
    iget-object v5, v4, Lio/appium/android/apis/accessibility/AccessibilityNodeProviderActivity$VirtualSubtreeRootView$VirtualView;->mBounds:Landroid/graphics/Rect;

    .line 129
    .local v5, "childBounds":Landroid/graphics/Rect;
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    float-to-int v6, v6

    invoke-virtual {p0}, Lio/appium/android/apis/accessibility/AccessibilityNodeProviderActivity$VirtualSubtreeRootView;->getScrollX()I

    move-result v7

    add-int/2addr v6, v7

    .line 130
    .local v6, "childCoordsX":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    float-to-int v7, v7

    invoke-virtual {p0}, Lio/appium/android/apis/accessibility/AccessibilityNodeProviderActivity$VirtualSubtreeRootView;->getScrollY()I

    move-result v8

    add-int/2addr v7, v8

    .line 131
    .local v7, "childCoordsY":I
    invoke-virtual {v5, v6, v7}, Landroid/graphics/Rect;->contains(II)Z

    move-result v8

    if-nez v8, :cond_0

    .line 132
    goto :goto_3

    .line 134
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v8

    .line 135
    .local v8, "action":I
    const/4 v9, 0x7

    if-eq v8, v9, :cond_1

    packed-switch v8, :pswitch_data_0

    goto :goto_3

    .line 163
    :pswitch_0
    const/4 v9, 0x0

    iput-object v9, p0, Lio/appium/android/apis/accessibility/AccessibilityNodeProviderActivity$VirtualSubtreeRootView;->mLastHoveredChild:Lio/appium/android/apis/accessibility/AccessibilityNodeProviderActivity$VirtualSubtreeRootView$VirtualView;

    .line 164
    invoke-direct {p0, v4, p1}, Lio/appium/android/apis/accessibility/AccessibilityNodeProviderActivity$VirtualSubtreeRootView;->onHoverVirtualView(Lio/appium/android/apis/accessibility/AccessibilityNodeProviderActivity$VirtualSubtreeRootView$VirtualView;Landroid/view/MotionEvent;)Z

    move-result v9

    or-int/2addr v0, v9

    .line 165
    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->setAction(I)V

    goto :goto_3

    .line 137
    :pswitch_1
    iput-object v4, p0, Lio/appium/android/apis/accessibility/AccessibilityNodeProviderActivity$VirtualSubtreeRootView;->mLastHoveredChild:Lio/appium/android/apis/accessibility/AccessibilityNodeProviderActivity$VirtualSubtreeRootView$VirtualView;

    .line 138
    invoke-direct {p0, v4, p1}, Lio/appium/android/apis/accessibility/AccessibilityNodeProviderActivity$VirtualSubtreeRootView;->onHoverVirtualView(Lio/appium/android/apis/accessibility/AccessibilityNodeProviderActivity$VirtualSubtreeRootView$VirtualView;Landroid/view/MotionEvent;)Z

    move-result v9

    or-int/2addr v0, v9

    .line 139
    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->setAction(I)V

    .line 140
    goto :goto_3

    .line 142
    :cond_1
    iget-object v10, p0, Lio/appium/android/apis/accessibility/AccessibilityNodeProviderActivity$VirtualSubtreeRootView;->mLastHoveredChild:Lio/appium/android/apis/accessibility/AccessibilityNodeProviderActivity$VirtualSubtreeRootView$VirtualView;

    if-ne v4, v10, :cond_2

    .line 143
    invoke-direct {p0, v4, p1}, Lio/appium/android/apis/accessibility/AccessibilityNodeProviderActivity$VirtualSubtreeRootView;->onHoverVirtualView(Lio/appium/android/apis/accessibility/AccessibilityNodeProviderActivity$VirtualSubtreeRootView$VirtualView;Landroid/view/MotionEvent;)Z

    move-result v9

    or-int/2addr v0, v9

    .line 144
    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->setAction(I)V

    goto :goto_3

    .line 146
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v10

    if-lez v10, :cond_3

    .line 147
    invoke-static {p1}, Landroid/view/MotionEvent;->obtainNoHistory(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v10

    goto :goto_1

    :cond_3
    move-object v10, p1

    .line 148
    .local v10, "eventNoHistory":Landroid/view/MotionEvent;
    :goto_1
    const/16 v11, 0xa

    invoke-virtual {v10, v11}, Landroid/view/MotionEvent;->setAction(I)V

    .line 149
    iget-object v11, p0, Lio/appium/android/apis/accessibility/AccessibilityNodeProviderActivity$VirtualSubtreeRootView;->mLastHoveredChild:Lio/appium/android/apis/accessibility/AccessibilityNodeProviderActivity$VirtualSubtreeRootView$VirtualView;

    invoke-direct {p0, v11, v10}, Lio/appium/android/apis/accessibility/AccessibilityNodeProviderActivity$VirtualSubtreeRootView;->onHoverVirtualView(Lio/appium/android/apis/accessibility/AccessibilityNodeProviderActivity$VirtualSubtreeRootView$VirtualView;Landroid/view/MotionEvent;)Z

    .line 150
    const/16 v11, 0x9

    invoke-virtual {v10, v11}, Landroid/view/MotionEvent;->setAction(I)V

    .line 151
    invoke-direct {p0, v4, v10}, Lio/appium/android/apis/accessibility/AccessibilityNodeProviderActivity$VirtualSubtreeRootView;->onHoverVirtualView(Lio/appium/android/apis/accessibility/AccessibilityNodeProviderActivity$VirtualSubtreeRootView$VirtualView;Landroid/view/MotionEvent;)Z

    .line 152
    iput-object v4, p0, Lio/appium/android/apis/accessibility/AccessibilityNodeProviderActivity$VirtualSubtreeRootView;->mLastHoveredChild:Lio/appium/android/apis/accessibility/AccessibilityNodeProviderActivity$VirtualSubtreeRootView$VirtualView;

    .line 153
    invoke-virtual {v10, v9}, Landroid/view/MotionEvent;->setAction(I)V

    .line 154
    invoke-direct {p0, v4, v10}, Lio/appium/android/apis/accessibility/AccessibilityNodeProviderActivity$VirtualSubtreeRootView;->onHoverVirtualView(Lio/appium/android/apis/accessibility/AccessibilityNodeProviderActivity$VirtualSubtreeRootView$VirtualView;Landroid/view/MotionEvent;)Z

    move-result v9

    or-int/2addr v0, v9

    .line 155
    if-eq v10, p1, :cond_4

    .line 156
    invoke-virtual {v10}, Landroid/view/MotionEvent;->recycle()V

    goto :goto_2

    .line 158
    :cond_4
    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->setAction(I)V

    .line 161
    .end local v10    # "eventNoHistory":Landroid/view/MotionEvent;
    :goto_2
    nop

    .line 126
    .end local v4    # "child":Lio/appium/android/apis/accessibility/AccessibilityNodeProviderActivity$VirtualSubtreeRootView$VirtualView;
    .end local v5    # "childBounds":Landroid/graphics/Rect;
    .end local v6    # "childCoordsX":I
    .end local v7    # "childCoordsY":I
    .end local v8    # "action":I
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 169
    .end local v3    # "i":I
    :cond_5
    if-nez v0, :cond_6

    .line 170
    invoke-virtual {p0, p1}, Lio/appium/android/apis/accessibility/AccessibilityNodeProviderActivity$VirtualSubtreeRootView;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    or-int/2addr v0, v3

    .line 172
    :cond_6
    return v0

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;
    .locals 2

    .line 108
    iget-object v0, p0, Lio/appium/android/apis/accessibility/AccessibilityNodeProviderActivity$VirtualSubtreeRootView;->mAccessibilityNodeProvider:Landroid/view/accessibility/AccessibilityNodeProvider;

    if-nez v0, :cond_0

    .line 109
    new-instance v0, Lio/appium/android/apis/accessibility/AccessibilityNodeProviderActivity$VirtualSubtreeRootView$VirtualDescendantsProvider;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/appium/android/apis/accessibility/AccessibilityNodeProviderActivity$VirtualSubtreeRootView$VirtualDescendantsProvider;-><init>(Lio/appium/android/apis/accessibility/AccessibilityNodeProviderActivity$VirtualSubtreeRootView;Lio/appium/android/apis/accessibility/AccessibilityNodeProviderActivity$1;)V

    iput-object v0, p0, Lio/appium/android/apis/accessibility/AccessibilityNodeProviderActivity$VirtualSubtreeRootView;->mAccessibilityNodeProvider:Landroid/view/accessibility/AccessibilityNodeProvider;

    .line 111
    :cond_0
    iget-object v0, p0, Lio/appium/android/apis/accessibility/AccessibilityNodeProviderActivity$VirtualSubtreeRootView;->mAccessibilityNodeProvider:Landroid/view/accessibility/AccessibilityNodeProvider;

    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 219
    iget-object v0, p0, Lio/appium/android/apis/accessibility/AccessibilityNodeProviderActivity$VirtualSubtreeRootView;->mTempRect:Landroid/graphics/Rect;

    .line 220
    .local v0, "drawingRect":Landroid/graphics/Rect;
    iget-object v1, p0, Lio/appium/android/apis/accessibility/AccessibilityNodeProviderActivity$VirtualSubtreeRootView;->mChildren:Ljava/util/List;

    .line 221
    .local v1, "children":Ljava/util/List;, "Ljava/util/List<Lio/appium/android/apis/accessibility/AccessibilityNodeProviderActivity$VirtualSubtreeRootView$VirtualView;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    .line 222
    .local v2, "childCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_0

    .line 223
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/appium/android/apis/accessibility/AccessibilityNodeProviderActivity$VirtualSubtreeRootView$VirtualView;

    .line 224
    .local v4, "child":Lio/appium/android/apis/accessibility/AccessibilityNodeProviderActivity$VirtualSubtreeRootView$VirtualView;
    iget-object v5, v4, Lio/appium/android/apis/accessibility/AccessibilityNodeProviderActivity$VirtualSubtreeRootView$VirtualView;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 225
    iget-object v5, p0, Lio/appium/android/apis/accessibility/AccessibilityNodeProviderActivity$VirtualSubtreeRootView;->mPaint:Landroid/graphics/Paint;

    iget v6, v4, Lio/appium/android/apis/accessibility/AccessibilityNodeProviderActivity$VirtualSubtreeRootView$VirtualView;->mColor:I

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 226
    iget-object v5, p0, Lio/appium/android/apis/accessibility/AccessibilityNodeProviderActivity$VirtualSubtreeRootView;->mPaint:Landroid/graphics/Paint;

    iget v6, v4, Lio/appium/android/apis/accessibility/AccessibilityNodeProviderActivity$VirtualSubtreeRootView$VirtualView;->mAlpha:I

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 227
    iget-object v5, p0, Lio/appium/android/apis/accessibility/AccessibilityNodeProviderActivity$VirtualSubtreeRootView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v5}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 222
    .end local v4    # "child":Lio/appium/android/apis/accessibility/AccessibilityNodeProviderActivity$VirtualSubtreeRootView$VirtualView;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 229
    .end local v3    # "i":I
    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 9
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .line 182
    const/4 v0, 0x0

    .line 183
    .local v0, "offsetX":I
    iget-object v1, p0, Lio/appium/android/apis/accessibility/AccessibilityNodeProviderActivity$VirtualSubtreeRootView;->mChildren:Ljava/util/List;

    .line 184
    .local v1, "children":Ljava/util/List;, "Ljava/util/List<Lio/appium/android/apis/accessibility/AccessibilityNodeProviderActivity$VirtualSubtreeRootView$VirtualView;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    .line 185
    .local v2, "childCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_0

    .line 186
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/appium/android/apis/accessibility/AccessibilityNodeProviderActivity$VirtualSubtreeRootView$VirtualView;

    .line 187
    .local v4, "child":Lio/appium/android/apis/accessibility/AccessibilityNodeProviderActivity$VirtualSubtreeRootView$VirtualView;
    iget-object v5, v4, Lio/appium/android/apis/accessibility/AccessibilityNodeProviderActivity$VirtualSubtreeRootView$VirtualView;->mBounds:Landroid/graphics/Rect;

    .line 188
    .local v5, "childBounds":Landroid/graphics/Rect;
    const/4 v6, 0x0

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v7

    add-int/2addr v7, v0

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v8

    invoke-virtual {v5, v0, v6, v7, v8}, Landroid/graphics/Rect;->set(IIII)V

    .line 189
    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v6

    add-int/2addr v0, v6

    .line 185
    .end local v4    # "child":Lio/appium/android/apis/accessibility/AccessibilityNodeProviderActivity$VirtualSubtreeRootView$VirtualView;
    .end local v5    # "childBounds":Landroid/graphics/Rect;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 191
    .end local v3    # "i":I
    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 7
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 200
    const/4 v0, 0x0

    .line 201
    .local v0, "width":I
    const/4 v1, 0x0

    .line 202
    .local v1, "height":I
    iget-object v2, p0, Lio/appium/android/apis/accessibility/AccessibilityNodeProviderActivity$VirtualSubtreeRootView;->mChildren:Ljava/util/List;

    .line 203
    .local v2, "children":Ljava/util/List;, "Ljava/util/List<Lio/appium/android/apis/accessibility/AccessibilityNodeProviderActivity$VirtualSubtreeRootView$VirtualView;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    .line 204
    .local v3, "childCount":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v3, :cond_0

    .line 205
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lio/appium/android/apis/accessibility/AccessibilityNodeProviderActivity$VirtualSubtreeRootView$VirtualView;

    .line 206
    .local v5, "child":Lio/appium/android/apis/accessibility/AccessibilityNodeProviderActivity$VirtualSubtreeRootView$VirtualView;
    iget-object v6, v5, Lio/appium/android/apis/accessibility/AccessibilityNodeProviderActivity$VirtualSubtreeRootView$VirtualView;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v6

    add-int/2addr v0, v6

    .line 207
    iget-object v6, v5, Lio/appium/android/apis/accessibility/AccessibilityNodeProviderActivity$VirtualSubtreeRootView$VirtualView;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v6

    invoke-static {v1, v6}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 204
    .end local v5    # "child":Lio/appium/android/apis/accessibility/AccessibilityNodeProviderActivity$VirtualSubtreeRootView$VirtualView;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 209
    .end local v4    # "i":I
    :cond_0
    invoke-virtual {p0, v0, v1}, Lio/appium/android/apis/accessibility/AccessibilityNodeProviderActivity$VirtualSubtreeRootView;->setMeasuredDimension(II)V

    .line 210
    return-void
.end method
