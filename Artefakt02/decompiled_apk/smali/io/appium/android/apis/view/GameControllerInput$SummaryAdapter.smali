.class Lio/appium/android/apis/view/GameControllerInput$SummaryAdapter;
.super Landroid/widget/BaseAdapter;
.source "GameControllerInput.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/appium/android/apis/view/GameControllerInput;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SummaryAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/appium/android/apis/view/GameControllerInput$SummaryAdapter$TextColumn;,
        Lio/appium/android/apis/view/GameControllerInput$SummaryAdapter$Heading;,
        Lio/appium/android/apis/view/GameControllerInput$SummaryAdapter$Item;
    }
.end annotation


# static fields
.field private static final BASE_ID_AXIS_ITEM:I = 0xc00

.field private static final BASE_ID_DEVICE_ITEM:I = 0x800

.field private static final BASE_ID_HEADING:I = 0x400

.field private static final BASE_ID_KEY_ITEM:I = 0x1000


# instance fields
.field private final mAxesHeading:Lio/appium/android/apis/view/GameControllerInput$SummaryAdapter$Heading;

.field private final mContext:Landroid/content/Context;

.field private final mDataItems:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lio/appium/android/apis/view/GameControllerInput$SummaryAdapter$Item;",
            ">;"
        }
    .end annotation
.end field

.field private final mDeviceHeading:Lio/appium/android/apis/view/GameControllerInput$SummaryAdapter$Heading;

.field private final mDeviceNameTextColumn:Lio/appium/android/apis/view/GameControllerInput$SummaryAdapter$TextColumn;

.field private final mKeysHeading:Lio/appium/android/apis/view/GameControllerInput$SummaryAdapter$Heading;

.field private final mResources:Landroid/content/res/Resources;

.field private mState:Lio/appium/android/apis/view/GameControllerInput$InputDeviceState;

.field private final mVisibleItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lio/appium/android/apis/view/GameControllerInput$SummaryAdapter$Item;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/res/Resources;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resources"    # Landroid/content/res/Resources;

    .line 356
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 345
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lio/appium/android/apis/view/GameControllerInput$SummaryAdapter;->mDataItems:Landroid/util/SparseArray;

    .line 346
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/appium/android/apis/view/GameControllerInput$SummaryAdapter;->mVisibleItems:Ljava/util/ArrayList;

    .line 357
    iput-object p1, p0, Lio/appium/android/apis/view/GameControllerInput$SummaryAdapter;->mContext:Landroid/content/Context;

    .line 358
    iput-object p2, p0, Lio/appium/android/apis/view/GameControllerInput$SummaryAdapter;->mResources:Landroid/content/res/Resources;

    .line 360
    new-instance v0, Lio/appium/android/apis/view/GameControllerInput$SummaryAdapter$Heading;

    iget-object v1, p0, Lio/appium/android/apis/view/GameControllerInput$SummaryAdapter;->mResources:Landroid/content/res/Resources;

    .line 361
    const v2, 0x7f0e017c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x400

    invoke-direct {v0, v2, v1}, Lio/appium/android/apis/view/GameControllerInput$SummaryAdapter$Heading;-><init>(ILjava/lang/String;)V

    iput-object v0, p0, Lio/appium/android/apis/view/GameControllerInput$SummaryAdapter;->mDeviceHeading:Lio/appium/android/apis/view/GameControllerInput$SummaryAdapter$Heading;

    .line 362
    new-instance v0, Lio/appium/android/apis/view/GameControllerInput$SummaryAdapter$TextColumn;

    iget-object v1, p0, Lio/appium/android/apis/view/GameControllerInput$SummaryAdapter;->mResources:Landroid/content/res/Resources;

    .line 363
    const v2, 0x7f0e0180

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x800

    invoke-direct {v0, v2, v1}, Lio/appium/android/apis/view/GameControllerInput$SummaryAdapter$TextColumn;-><init>(ILjava/lang/String;)V

    iput-object v0, p0, Lio/appium/android/apis/view/GameControllerInput$SummaryAdapter;->mDeviceNameTextColumn:Lio/appium/android/apis/view/GameControllerInput$SummaryAdapter$TextColumn;

    .line 365
    new-instance v0, Lio/appium/android/apis/view/GameControllerInput$SummaryAdapter$Heading;

    iget-object v1, p0, Lio/appium/android/apis/view/GameControllerInput$SummaryAdapter;->mResources:Landroid/content/res/Resources;

    .line 366
    const v2, 0x7f0e017b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x401

    invoke-direct {v0, v2, v1}, Lio/appium/android/apis/view/GameControllerInput$SummaryAdapter$Heading;-><init>(ILjava/lang/String;)V

    iput-object v0, p0, Lio/appium/android/apis/view/GameControllerInput$SummaryAdapter;->mAxesHeading:Lio/appium/android/apis/view/GameControllerInput$SummaryAdapter$Heading;

    .line 367
    new-instance v0, Lio/appium/android/apis/view/GameControllerInput$SummaryAdapter$Heading;

    iget-object v1, p0, Lio/appium/android/apis/view/GameControllerInput$SummaryAdapter;->mResources:Landroid/content/res/Resources;

    .line 368
    const v2, 0x7f0e017d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x402

    invoke-direct {v0, v2, v1}, Lio/appium/android/apis/view/GameControllerInput$SummaryAdapter$Heading;-><init>(ILjava/lang/String;)V

    iput-object v0, p0, Lio/appium/android/apis/view/GameControllerInput$SummaryAdapter;->mKeysHeading:Lio/appium/android/apis/view/GameControllerInput$SummaryAdapter$Heading;

    .line 369
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 430
    iget-object v0, p0, Lio/appium/android/apis/view/GameControllerInput$SummaryAdapter;->mVisibleItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Lio/appium/android/apis/view/GameControllerInput$SummaryAdapter$Item;
    .locals 1
    .param p1, "position"    # I

    .line 435
    iget-object v0, p0, Lio/appium/android/apis/view/GameControllerInput$SummaryAdapter;->mVisibleItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/appium/android/apis/view/GameControllerInput$SummaryAdapter$Item;

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 0

    .line 336
    invoke-virtual {p0, p1}, Lio/appium/android/apis/view/GameControllerInput$SummaryAdapter;->getItem(I)Lio/appium/android/apis/view/GameControllerInput$SummaryAdapter$Item;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .line 440
    invoke-virtual {p0, p1}, Lio/appium/android/apis/view/GameControllerInput$SummaryAdapter;->getItem(I)Lio/appium/android/apis/view/GameControllerInput$SummaryAdapter$Item;

    move-result-object v0

    invoke-virtual {v0}, Lio/appium/android/apis/view/GameControllerInput$SummaryAdapter$Item;->getItemId()J

    move-result-wide v0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .line 445
    invoke-virtual {p0, p1}, Lio/appium/android/apis/view/GameControllerInput$SummaryAdapter;->getItem(I)Lio/appium/android/apis/view/GameControllerInput$SummaryAdapter$Item;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lio/appium/android/apis/view/GameControllerInput$SummaryAdapter$Item;->getView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public hasStableIds()Z
    .locals 1

    .line 425
    const/4 v0, 0x1

    return v0
.end method

.method public onItemClick(I)V
    .locals 3
    .param p1, "position"    # I

    .line 372
    iget-object v0, p0, Lio/appium/android/apis/view/GameControllerInput$SummaryAdapter;->mState:Lio/appium/android/apis/view/GameControllerInput$InputDeviceState;

    if-eqz v0, :cond_0

    .line 373
    iget-object v1, p0, Lio/appium/android/apis/view/GameControllerInput$SummaryAdapter;->mContext:Landroid/content/Context;

    .line 374
    invoke-virtual {v0}, Lio/appium/android/apis/view/GameControllerInput$InputDeviceState;->getDevice()Landroid/view/InputDevice;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/InputDevice;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    .line 373
    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 375
    .local v0, "toast":Landroid/widget/Toast;
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 377
    .end local v0    # "toast":Landroid/widget/Toast;
    :cond_0
    return-void
.end method

.method public show(Lio/appium/android/apis/view/GameControllerInput$InputDeviceState;)V
    .locals 8
    .param p1, "state"    # Lio/appium/android/apis/view/GameControllerInput$InputDeviceState;

    .line 380
    iput-object p1, p0, Lio/appium/android/apis/view/GameControllerInput$SummaryAdapter;->mState:Lio/appium/android/apis/view/GameControllerInput$InputDeviceState;

    .line 381
    iget-object v0, p0, Lio/appium/android/apis/view/GameControllerInput$SummaryAdapter;->mVisibleItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 384
    iget-object v0, p0, Lio/appium/android/apis/view/GameControllerInput$SummaryAdapter;->mVisibleItems:Ljava/util/ArrayList;

    iget-object v1, p0, Lio/appium/android/apis/view/GameControllerInput$SummaryAdapter;->mDeviceHeading:Lio/appium/android/apis/view/GameControllerInput$SummaryAdapter$Heading;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 385
    iget-object v0, p0, Lio/appium/android/apis/view/GameControllerInput$SummaryAdapter;->mDeviceNameTextColumn:Lio/appium/android/apis/view/GameControllerInput$SummaryAdapter$TextColumn;

    invoke-virtual {p1}, Lio/appium/android/apis/view/GameControllerInput$InputDeviceState;->getDevice()Landroid/view/InputDevice;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/InputDevice;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/appium/android/apis/view/GameControllerInput$SummaryAdapter$TextColumn;->setContent(Ljava/lang/String;)V

    .line 386
    iget-object v0, p0, Lio/appium/android/apis/view/GameControllerInput$SummaryAdapter;->mVisibleItems:Ljava/util/ArrayList;

    iget-object v1, p0, Lio/appium/android/apis/view/GameControllerInput$SummaryAdapter;->mDeviceNameTextColumn:Lio/appium/android/apis/view/GameControllerInput$SummaryAdapter$TextColumn;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 389
    iget-object v0, p0, Lio/appium/android/apis/view/GameControllerInput$SummaryAdapter;->mVisibleItems:Ljava/util/ArrayList;

    iget-object v1, p0, Lio/appium/android/apis/view/GameControllerInput$SummaryAdapter;->mAxesHeading:Lio/appium/android/apis/view/GameControllerInput$SummaryAdapter$Heading;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 390
    invoke-virtual {p1}, Lio/appium/android/apis/view/GameControllerInput$InputDeviceState;->getAxisCount()I

    move-result v0

    .line 391
    .local v0, "axisCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 392
    invoke-virtual {p1, v1}, Lio/appium/android/apis/view/GameControllerInput$InputDeviceState;->getAxis(I)I

    move-result v2

    .line 393
    .local v2, "axis":I
    or-int/lit16 v3, v2, 0xc00

    .line 394
    .local v3, "id":I
    iget-object v4, p0, Lio/appium/android/apis/view/GameControllerInput$SummaryAdapter;->mDataItems:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/appium/android/apis/view/GameControllerInput$SummaryAdapter$TextColumn;

    .line 395
    .local v4, "column":Lio/appium/android/apis/view/GameControllerInput$SummaryAdapter$TextColumn;
    if-nez v4, :cond_0

    .line 396
    new-instance v5, Lio/appium/android/apis/view/GameControllerInput$SummaryAdapter$TextColumn;

    invoke-static {v2}, Landroid/view/MotionEvent;->axisToString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v3, v6}, Lio/appium/android/apis/view/GameControllerInput$SummaryAdapter$TextColumn;-><init>(ILjava/lang/String;)V

    move-object v4, v5

    .line 397
    iget-object v5, p0, Lio/appium/android/apis/view/GameControllerInput$SummaryAdapter;->mDataItems:Landroid/util/SparseArray;

    invoke-virtual {v5, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 399
    :cond_0
    invoke-virtual {p1, v1}, Lio/appium/android/apis/view/GameControllerInput$InputDeviceState;->getAxisValue(I)F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lio/appium/android/apis/view/GameControllerInput$SummaryAdapter$TextColumn;->setContent(Ljava/lang/String;)V

    .line 400
    iget-object v5, p0, Lio/appium/android/apis/view/GameControllerInput$SummaryAdapter;->mVisibleItems:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 391
    .end local v2    # "axis":I
    .end local v3    # "id":I
    .end local v4    # "column":Lio/appium/android/apis/view/GameControllerInput$SummaryAdapter$TextColumn;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 404
    .end local v1    # "i":I
    :cond_1
    iget-object v1, p0, Lio/appium/android/apis/view/GameControllerInput$SummaryAdapter;->mVisibleItems:Ljava/util/ArrayList;

    iget-object v2, p0, Lio/appium/android/apis/view/GameControllerInput$SummaryAdapter;->mKeysHeading:Lio/appium/android/apis/view/GameControllerInput$SummaryAdapter$Heading;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 405
    invoke-virtual {p1}, Lio/appium/android/apis/view/GameControllerInput$InputDeviceState;->getKeyCount()I

    move-result v1

    .line 406
    .local v1, "keyCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v1, :cond_4

    .line 407
    invoke-virtual {p1, v2}, Lio/appium/android/apis/view/GameControllerInput$InputDeviceState;->getKeyCode(I)I

    move-result v3

    .line 408
    .local v3, "keyCode":I
    or-int/lit16 v4, v3, 0x1000

    .line 409
    .local v4, "id":I
    iget-object v5, p0, Lio/appium/android/apis/view/GameControllerInput$SummaryAdapter;->mDataItems:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lio/appium/android/apis/view/GameControllerInput$SummaryAdapter$TextColumn;

    .line 410
    .local v5, "column":Lio/appium/android/apis/view/GameControllerInput$SummaryAdapter$TextColumn;
    if-nez v5, :cond_2

    .line 411
    new-instance v6, Lio/appium/android/apis/view/GameControllerInput$SummaryAdapter$TextColumn;

    invoke-static {v3}, Landroid/view/KeyEvent;->keyCodeToString(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v4, v7}, Lio/appium/android/apis/view/GameControllerInput$SummaryAdapter$TextColumn;-><init>(ILjava/lang/String;)V

    move-object v5, v6

    .line 412
    iget-object v6, p0, Lio/appium/android/apis/view/GameControllerInput$SummaryAdapter;->mDataItems:Landroid/util/SparseArray;

    invoke-virtual {v6, v4, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 414
    :cond_2
    iget-object v6, p0, Lio/appium/android/apis/view/GameControllerInput$SummaryAdapter;->mResources:Landroid/content/res/Resources;

    invoke-virtual {p1, v2}, Lio/appium/android/apis/view/GameControllerInput$InputDeviceState;->isKeyPressed(I)Z

    move-result v7

    if-eqz v7, :cond_3

    const v7, 0x7f0e017e

    goto :goto_2

    :cond_3
    const v7, 0x7f0e017f

    :goto_2
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lio/appium/android/apis/view/GameControllerInput$SummaryAdapter$TextColumn;->setContent(Ljava/lang/String;)V

    .line 417
    iget-object v6, p0, Lio/appium/android/apis/view/GameControllerInput$SummaryAdapter;->mVisibleItems:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 406
    .end local v3    # "keyCode":I
    .end local v4    # "id":I
    .end local v5    # "column":Lio/appium/android/apis/view/GameControllerInput$SummaryAdapter$TextColumn;
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 420
    .end local v2    # "i":I
    :cond_4
    invoke-virtual {p0}, Lio/appium/android/apis/view/GameControllerInput$SummaryAdapter;->notifyDataSetChanged()V

    .line 421
    return-void
.end method
