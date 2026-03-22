.class abstract Lio/appium/android/apis/view/GameControllerInput$SummaryAdapter$Item;
.super Ljava/lang/Object;
.source "GameControllerInput.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/appium/android/apis/view/GameControllerInput$SummaryAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "Item"
.end annotation


# instance fields
.field private final mItemId:I

.field private final mLayoutResourceId:I

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>(II)V
    .locals 0
    .param p1, "itemId"    # I
    .param p2, "layoutResourceId"    # I

    .line 453
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 454
    iput p1, p0, Lio/appium/android/apis/view/GameControllerInput$SummaryAdapter$Item;->mItemId:I

    .line 455
    iput p2, p0, Lio/appium/android/apis/view/GameControllerInput$SummaryAdapter$Item;->mLayoutResourceId:I

    .line 456
    return-void
.end method


# virtual methods
.method public getItemId()J
    .locals 2

    .line 459
    iget v0, p0, Lio/appium/android/apis/view/GameControllerInput$SummaryAdapter$Item;->mItemId:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public getView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .param p1, "convertView"    # Landroid/view/View;
    .param p2, "parent"    # Landroid/view/ViewGroup;

    .line 463
    iget-object v0, p0, Lio/appium/android/apis/view/GameControllerInput$SummaryAdapter$Item;->mView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 464
    nop

    .line 465
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 466
    .local v0, "inflater":Landroid/view/LayoutInflater;
    iget v1, p0, Lio/appium/android/apis/view/GameControllerInput$SummaryAdapter$Item;->mLayoutResourceId:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lio/appium/android/apis/view/GameControllerInput$SummaryAdapter$Item;->mView:Landroid/view/View;

    .line 467
    iget-object v1, p0, Lio/appium/android/apis/view/GameControllerInput$SummaryAdapter$Item;->mView:Landroid/view/View;

    invoke-virtual {p0, v1}, Lio/appium/android/apis/view/GameControllerInput$SummaryAdapter$Item;->initView(Landroid/view/View;)V

    .line 469
    .end local v0    # "inflater":Landroid/view/LayoutInflater;
    :cond_0
    iget-object v0, p0, Lio/appium/android/apis/view/GameControllerInput$SummaryAdapter$Item;->mView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lio/appium/android/apis/view/GameControllerInput$SummaryAdapter$Item;->updateView(Landroid/view/View;)V

    .line 470
    iget-object v0, p0, Lio/appium/android/apis/view/GameControllerInput$SummaryAdapter$Item;->mView:Landroid/view/View;

    return-object v0
.end method

.method protected initView(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .line 474
    return-void
.end method

.method protected updateView(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .line 477
    return-void
.end method
