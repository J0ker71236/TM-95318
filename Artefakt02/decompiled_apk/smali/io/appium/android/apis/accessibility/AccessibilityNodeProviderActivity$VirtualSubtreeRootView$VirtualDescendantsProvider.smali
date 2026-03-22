.class Lio/appium/android/apis/accessibility/AccessibilityNodeProviderActivity$VirtualSubtreeRootView$VirtualDescendantsProvider;
.super Landroid/view/accessibility/AccessibilityNodeProvider;
.source "AccessibilityNodeProviderActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/appium/android/apis/accessibility/AccessibilityNodeProviderActivity$VirtualSubtreeRootView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VirtualDescendantsProvider"
.end annotation


# instance fields
.field final synthetic this$0:Lio/appium/android/apis/accessibility/AccessibilityNodeProviderActivity$VirtualSubtreeRootView;


# direct methods
.method private constructor <init>(Lio/appium/android/apis/accessibility/AccessibilityNodeProviderActivity$VirtualSubtreeRootView;)V
    .locals 0

    .line 352
    iput-object p1, p0, Lio/appium/android/apis/accessibility/AccessibilityNodeProviderActivity$VirtualSubtreeRootView$VirtualDescendantsProvider;->this$0:Lio/appium/android/apis/accessibility/AccessibilityNodeProviderActivity$VirtualSubtreeRootView;

    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityNodeProvider;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lio/appium/android/apis/accessibility/AccessibilityNodeProviderActivity$VirtualSubtreeRootView;Lio/appium/android/apis/accessibility/AccessibilityNodeProviderActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lio/appium/android/apis/accessibility/AccessibilityNodeProviderActivity$VirtualSubtreeRootView;
    .param p2, "x1"    # Lio/appium/android/apis/accessibility/AccessibilityNodeProviderActivity$1;

    .line 352
    invoke-direct {p0, p1}, Lio/appium/android/apis/accessibility/AccessibilityNodeProviderActivity$VirtualSubtreeRootView$VirtualDescendantsProvider;-><init>(Lio/appium/android/apis/accessibility/AccessibilityNodeProviderActivity$VirtualSubtreeRootView;)V

    return-void
.end method


# virtual methods
.method public createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 7
    .param p1, "virtualViewId"    # I

    .line 359
    const/4 v0, 0x0

    .line 360
    .local v0, "info":Landroid/view/accessibility/AccessibilityNodeInfo;
    const/4 v1, -0x1

    if-ne p1, v1, :cond_1

    .line 365
    iget-object v1, p0, Lio/appium/android/apis/accessibility/AccessibilityNodeProviderActivity$VirtualSubtreeRootView$VirtualDescendantsProvider;->this$0:Lio/appium/android/apis/accessibility/AccessibilityNodeProviderActivity$VirtualSubtreeRootView;

    invoke-static {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->obtain(Landroid/view/View;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    .line 366
    iget-object v1, p0, Lio/appium/android/apis/accessibility/AccessibilityNodeProviderActivity$VirtualSubtreeRootView$VirtualDescendantsProvider;->this$0:Lio/appium/android/apis/accessibility/AccessibilityNodeProviderActivity$VirtualSubtreeRootView;

    invoke-virtual {v1, v0}, Lio/appium/android/apis/accessibility/AccessibilityNodeProviderActivity$VirtualSubtreeRootView;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 368
    iget-object v1, p0, Lio/appium/android/apis/accessibility/AccessibilityNodeProviderActivity$VirtualSubtreeRootView$VirtualDescendantsProvider;->this$0:Lio/appium/android/apis/accessibility/AccessibilityNodeProviderActivity$VirtualSubtreeRootView;

    invoke-static {v1}, Lio/appium/android/apis/accessibility/AccessibilityNodeProviderActivity$VirtualSubtreeRootView;->access$100(Lio/appium/android/apis/accessibility/AccessibilityNodeProviderActivity$VirtualSubtreeRootView;)Ljava/util/List;

    move-result-object v1

    .line 369
    .local v1, "children":Ljava/util/List;, "Ljava/util/List<Lio/appium/android/apis/accessibility/AccessibilityNodeProviderActivity$VirtualSubtreeRootView$VirtualView;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    .line 370
    .local v2, "childCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_0

    .line 371
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/appium/android/apis/accessibility/AccessibilityNodeProviderActivity$VirtualSubtreeRootView$VirtualView;

    .line 372
    .local v4, "child":Lio/appium/android/apis/accessibility/AccessibilityNodeProviderActivity$VirtualSubtreeRootView$VirtualView;
    iget-object v5, p0, Lio/appium/android/apis/accessibility/AccessibilityNodeProviderActivity$VirtualSubtreeRootView$VirtualDescendantsProvider;->this$0:Lio/appium/android/apis/accessibility/AccessibilityNodeProviderActivity$VirtualSubtreeRootView;

    iget v6, v4, Lio/appium/android/apis/accessibility/AccessibilityNodeProviderActivity$VirtualSubtreeRootView$VirtualView;->mId:I

    invoke-virtual {v0, v5, v6}, Landroid/view/accessibility/AccessibilityNodeInfo;->addChild(Landroid/view/View;I)V

    .line 370
    .end local v4    # "child":Lio/appium/android/apis/accessibility/AccessibilityNodeProviderActivity$VirtualSubtreeRootView$VirtualView;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 374
    .end local v1    # "children":Ljava/util/List;, "Ljava/util/List<Lio/appium/android/apis/accessibility/AccessibilityNodeProviderActivity$VirtualSubtreeRootView$VirtualView;>;"
    .end local v2    # "childCount":I
    .end local v3    # "i":I
    :cond_0
    goto :goto_1

    .line 376
    :cond_1
    iget-object v1, p0, Lio/appium/android/apis/accessibility/AccessibilityNodeProviderActivity$VirtualSubtreeRootView$VirtualDescendantsProvider;->this$0:Lio/appium/android/apis/accessibility/AccessibilityNodeProviderActivity$VirtualSubtreeRootView;

    invoke-static {v1, p1}, Lio/appium/android/apis/accessibility/AccessibilityNodeProviderActivity$VirtualSubtreeRootView;->access$200(Lio/appium/android/apis/accessibility/AccessibilityNodeProviderActivity$VirtualSubtreeRootView;I)Lio/appium/android/apis/accessibility/AccessibilityNodeProviderActivity$VirtualSubtreeRootView$VirtualView;

    move-result-object v1

    .line 377
    .local v1, "virtualView":Lio/appium/android/apis/accessibility/AccessibilityNodeProviderActivity$VirtualSubtreeRootView$VirtualView;
    if-nez v1, :cond_2

    .line 378
    const/4 v2, 0x0

    return-object v2

    .line 382
    :cond_2
    invoke-static {}, Landroid/view/accessibility/AccessibilityNodeInfo;->obtain()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    .line 383
    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 384
    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 385
    iget-object v2, p0, Lio/appium/android/apis/accessibility/AccessibilityNodeProviderActivity$VirtualSubtreeRootView$VirtualDescendantsProvider;->this$0:Lio/appium/android/apis/accessibility/AccessibilityNodeProviderActivity$VirtualSubtreeRootView;

    invoke-virtual {v2}, Lio/appium/android/apis/accessibility/AccessibilityNodeProviderActivity$VirtualSubtreeRootView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setPackageName(Ljava/lang/CharSequence;)V

    .line 386
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 387
    iget-object v2, p0, Lio/appium/android/apis/accessibility/AccessibilityNodeProviderActivity$VirtualSubtreeRootView$VirtualDescendantsProvider;->this$0:Lio/appium/android/apis/accessibility/AccessibilityNodeProviderActivity$VirtualSubtreeRootView;

    invoke-virtual {v0, v2, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setSource(Landroid/view/View;I)V

    .line 388
    iget-object v2, v1, Lio/appium/android/apis/accessibility/AccessibilityNodeProviderActivity$VirtualSubtreeRootView$VirtualView;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInParent(Landroid/graphics/Rect;)V

    .line 389
    iget-object v2, p0, Lio/appium/android/apis/accessibility/AccessibilityNodeProviderActivity$VirtualSubtreeRootView$VirtualDescendantsProvider;->this$0:Lio/appium/android/apis/accessibility/AccessibilityNodeProviderActivity$VirtualSubtreeRootView;

    invoke-virtual {v0, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setParent(Landroid/view/View;)V

    .line 390
    iget-object v2, v1, Lio/appium/android/apis/accessibility/AccessibilityNodeProviderActivity$VirtualSubtreeRootView$VirtualView;->mText:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    .line 392
    .end local v1    # "virtualView":Lio/appium/android/apis/accessibility/AccessibilityNodeProviderActivity$VirtualSubtreeRootView$VirtualView;
    :goto_1
    return-object v0
.end method

.method public findAccessibilityNodeInfosByText(Ljava/lang/String;I)Ljava/util/List;
    .locals 8
    .param p1, "searched"    # Ljava/lang/String;
    .param p2, "virtualViewId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;"
        }
    .end annotation

    .line 401
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 402
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 404
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 405
    .local v0, "searchedLowerCase":Ljava/lang/String;
    const/4 v1, 0x0

    .line 406
    .local v1, "result":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    const/4 v2, -0x1

    if-ne p2, v2, :cond_4

    .line 410
    iget-object v2, p0, Lio/appium/android/apis/accessibility/AccessibilityNodeProviderActivity$VirtualSubtreeRootView$VirtualDescendantsProvider;->this$0:Lio/appium/android/apis/accessibility/AccessibilityNodeProviderActivity$VirtualSubtreeRootView;

    invoke-static {v2}, Lio/appium/android/apis/accessibility/AccessibilityNodeProviderActivity$VirtualSubtreeRootView;->access$100(Lio/appium/android/apis/accessibility/AccessibilityNodeProviderActivity$VirtualSubtreeRootView;)Ljava/util/List;

    move-result-object v2

    .line 411
    .local v2, "children":Ljava/util/List;, "Ljava/util/List<Lio/appium/android/apis/accessibility/AccessibilityNodeProviderActivity$VirtualSubtreeRootView$VirtualView;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    .line 412
    .local v3, "childCount":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v3, :cond_3

    .line 413
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lio/appium/android/apis/accessibility/AccessibilityNodeProviderActivity$VirtualSubtreeRootView$VirtualView;

    .line 414
    .local v5, "child":Lio/appium/android/apis/accessibility/AccessibilityNodeProviderActivity$VirtualSubtreeRootView$VirtualView;
    iget-object v6, v5, Lio/appium/android/apis/accessibility/AccessibilityNodeProviderActivity$VirtualSubtreeRootView$VirtualView;->mText:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    .line 415
    .local v6, "textToLowerCase":Ljava/lang/String;
    invoke-virtual {v6, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 416
    if-nez v1, :cond_1

    .line 417
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    move-object v1, v7

    .line 419
    :cond_1
    iget v7, v5, Lio/appium/android/apis/accessibility/AccessibilityNodeProviderActivity$VirtualSubtreeRootView$VirtualView;->mId:I

    invoke-virtual {p0, v7}, Lio/appium/android/apis/accessibility/AccessibilityNodeProviderActivity$VirtualSubtreeRootView$VirtualDescendantsProvider;->createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v7

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 412
    .end local v5    # "child":Lio/appium/android/apis/accessibility/AccessibilityNodeProviderActivity$VirtualSubtreeRootView$VirtualView;
    .end local v6    # "textToLowerCase":Ljava/lang/String;
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 422
    .end local v2    # "children":Ljava/util/List;, "Ljava/util/List<Lio/appium/android/apis/accessibility/AccessibilityNodeProviderActivity$VirtualSubtreeRootView$VirtualView;>;"
    .end local v3    # "childCount":I
    .end local v4    # "i":I
    :cond_3
    goto :goto_1

    .line 426
    :cond_4
    iget-object v2, p0, Lio/appium/android/apis/accessibility/AccessibilityNodeProviderActivity$VirtualSubtreeRootView$VirtualDescendantsProvider;->this$0:Lio/appium/android/apis/accessibility/AccessibilityNodeProviderActivity$VirtualSubtreeRootView;

    invoke-static {v2, p2}, Lio/appium/android/apis/accessibility/AccessibilityNodeProviderActivity$VirtualSubtreeRootView;->access$200(Lio/appium/android/apis/accessibility/AccessibilityNodeProviderActivity$VirtualSubtreeRootView;I)Lio/appium/android/apis/accessibility/AccessibilityNodeProviderActivity$VirtualSubtreeRootView$VirtualView;

    move-result-object v2

    .line 427
    .local v2, "virtualView":Lio/appium/android/apis/accessibility/AccessibilityNodeProviderActivity$VirtualSubtreeRootView$VirtualView;
    if-eqz v2, :cond_5

    .line 428
    iget-object v3, v2, Lio/appium/android/apis/accessibility/AccessibilityNodeProviderActivity$VirtualSubtreeRootView$VirtualView;->mText:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    .line 429
    .local v3, "textToLowerCase":Ljava/lang/String;
    invoke-virtual {v3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 430
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object v1, v4

    .line 431
    invoke-virtual {p0, p2}, Lio/appium/android/apis/accessibility/AccessibilityNodeProviderActivity$VirtualSubtreeRootView$VirtualDescendantsProvider;->createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 435
    .end local v2    # "virtualView":Lio/appium/android/apis/accessibility/AccessibilityNodeProviderActivity$VirtualSubtreeRootView$VirtualView;
    .end local v3    # "textToLowerCase":Ljava/lang/String;
    :cond_5
    :goto_1
    if-nez v1, :cond_6

    .line 436
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    return-object v2

    .line 438
    :cond_6
    return-object v1
.end method

.method public performAction(IILandroid/os/Bundle;)Z
    .locals 5
    .param p1, "virtualViewId"    # I
    .param p2, "action"    # I
    .param p3, "arguments"    # Landroid/os/Bundle;

    .line 446
    const/16 v0, 0x8

    const/4 v1, 0x4

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, -0x1

    if-ne p1, v4, :cond_3

    .line 448
    if-eq p2, v1, :cond_1

    if-eq p2, v0, :cond_0

    goto :goto_0

    .line 456
    :cond_0
    iget-object v0, p0, Lio/appium/android/apis/accessibility/AccessibilityNodeProviderActivity$VirtualSubtreeRootView$VirtualDescendantsProvider;->this$0:Lio/appium/android/apis/accessibility/AccessibilityNodeProviderActivity$VirtualSubtreeRootView;

    invoke-virtual {v0}, Lio/appium/android/apis/accessibility/AccessibilityNodeProviderActivity$VirtualSubtreeRootView;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 457
    iget-object v0, p0, Lio/appium/android/apis/accessibility/AccessibilityNodeProviderActivity$VirtualSubtreeRootView$VirtualDescendantsProvider;->this$0:Lio/appium/android/apis/accessibility/AccessibilityNodeProviderActivity$VirtualSubtreeRootView;

    invoke-virtual {v0, v2}, Lio/appium/android/apis/accessibility/AccessibilityNodeProviderActivity$VirtualSubtreeRootView;->setSelected(Z)V

    .line 458
    iget-object v0, p0, Lio/appium/android/apis/accessibility/AccessibilityNodeProviderActivity$VirtualSubtreeRootView$VirtualDescendantsProvider;->this$0:Lio/appium/android/apis/accessibility/AccessibilityNodeProviderActivity$VirtualSubtreeRootView;

    invoke-virtual {v0}, Lio/appium/android/apis/accessibility/AccessibilityNodeProviderActivity$VirtualSubtreeRootView;->isSelected()Z

    move-result v0

    xor-int/2addr v0, v3

    return v0

    .line 450
    :cond_1
    iget-object v0, p0, Lio/appium/android/apis/accessibility/AccessibilityNodeProviderActivity$VirtualSubtreeRootView$VirtualDescendantsProvider;->this$0:Lio/appium/android/apis/accessibility/AccessibilityNodeProviderActivity$VirtualSubtreeRootView;

    invoke-virtual {v0}, Lio/appium/android/apis/accessibility/AccessibilityNodeProviderActivity$VirtualSubtreeRootView;->isSelected()Z

    move-result v0

    if-nez v0, :cond_2

    .line 451
    iget-object v0, p0, Lio/appium/android/apis/accessibility/AccessibilityNodeProviderActivity$VirtualSubtreeRootView$VirtualDescendantsProvider;->this$0:Lio/appium/android/apis/accessibility/AccessibilityNodeProviderActivity$VirtualSubtreeRootView;

    invoke-virtual {v0, v3}, Lio/appium/android/apis/accessibility/AccessibilityNodeProviderActivity$VirtualSubtreeRootView;->setSelected(Z)V

    .line 452
    iget-object v0, p0, Lio/appium/android/apis/accessibility/AccessibilityNodeProviderActivity$VirtualSubtreeRootView$VirtualDescendantsProvider;->this$0:Lio/appium/android/apis/accessibility/AccessibilityNodeProviderActivity$VirtualSubtreeRootView;

    invoke-virtual {v0}, Lio/appium/android/apis/accessibility/AccessibilityNodeProviderActivity$VirtualSubtreeRootView;->isSelected()Z

    move-result v0

    return v0

    .line 460
    :cond_2
    :goto_0
    goto :goto_1

    .line 464
    :cond_3
    iget-object v4, p0, Lio/appium/android/apis/accessibility/AccessibilityNodeProviderActivity$VirtualSubtreeRootView$VirtualDescendantsProvider;->this$0:Lio/appium/android/apis/accessibility/AccessibilityNodeProviderActivity$VirtualSubtreeRootView;

    invoke-static {v4, p1}, Lio/appium/android/apis/accessibility/AccessibilityNodeProviderActivity$VirtualSubtreeRootView;->access$200(Lio/appium/android/apis/accessibility/AccessibilityNodeProviderActivity$VirtualSubtreeRootView;I)Lio/appium/android/apis/accessibility/AccessibilityNodeProviderActivity$VirtualSubtreeRootView$VirtualView;

    move-result-object v4

    .line 465
    .local v4, "child":Lio/appium/android/apis/accessibility/AccessibilityNodeProviderActivity$VirtualSubtreeRootView$VirtualView;
    if-nez v4, :cond_4

    .line 466
    return v2

    .line 469
    :cond_4
    if-eq p2, v1, :cond_6

    if-eq p2, v0, :cond_5

    .line 480
    .end local v4    # "child":Lio/appium/android/apis/accessibility/AccessibilityNodeProviderActivity$VirtualSubtreeRootView$VirtualView;
    :goto_1
    return v2

    .line 475
    .restart local v4    # "child":Lio/appium/android/apis/accessibility/AccessibilityNodeProviderActivity$VirtualSubtreeRootView$VirtualView;
    :cond_5
    iget-object v0, p0, Lio/appium/android/apis/accessibility/AccessibilityNodeProviderActivity$VirtualSubtreeRootView$VirtualDescendantsProvider;->this$0:Lio/appium/android/apis/accessibility/AccessibilityNodeProviderActivity$VirtualSubtreeRootView;

    invoke-static {v0, v4, v2}, Lio/appium/android/apis/accessibility/AccessibilityNodeProviderActivity$VirtualSubtreeRootView;->access$300(Lio/appium/android/apis/accessibility/AccessibilityNodeProviderActivity$VirtualSubtreeRootView;Lio/appium/android/apis/accessibility/AccessibilityNodeProviderActivity$VirtualSubtreeRootView$VirtualView;Z)V

    .line 476
    iget-object v0, p0, Lio/appium/android/apis/accessibility/AccessibilityNodeProviderActivity$VirtualSubtreeRootView$VirtualDescendantsProvider;->this$0:Lio/appium/android/apis/accessibility/AccessibilityNodeProviderActivity$VirtualSubtreeRootView;

    invoke-virtual {v0}, Lio/appium/android/apis/accessibility/AccessibilityNodeProviderActivity$VirtualSubtreeRootView;->invalidate()V

    .line 477
    return v3

    .line 471
    :cond_6
    iget-object v0, p0, Lio/appium/android/apis/accessibility/AccessibilityNodeProviderActivity$VirtualSubtreeRootView$VirtualDescendantsProvider;->this$0:Lio/appium/android/apis/accessibility/AccessibilityNodeProviderActivity$VirtualSubtreeRootView;

    invoke-static {v0, v4, v3}, Lio/appium/android/apis/accessibility/AccessibilityNodeProviderActivity$VirtualSubtreeRootView;->access$300(Lio/appium/android/apis/accessibility/AccessibilityNodeProviderActivity$VirtualSubtreeRootView;Lio/appium/android/apis/accessibility/AccessibilityNodeProviderActivity$VirtualSubtreeRootView$VirtualView;Z)V

    .line 472
    iget-object v0, p0, Lio/appium/android/apis/accessibility/AccessibilityNodeProviderActivity$VirtualSubtreeRootView$VirtualDescendantsProvider;->this$0:Lio/appium/android/apis/accessibility/AccessibilityNodeProviderActivity$VirtualSubtreeRootView;

    invoke-virtual {v0}, Lio/appium/android/apis/accessibility/AccessibilityNodeProviderActivity$VirtualSubtreeRootView;->invalidate()V

    .line 473
    return v3
.end method
