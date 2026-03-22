.class Lio/appium/android/apis/view/GameControllerInput$SummaryAdapter$TextColumn;
.super Lio/appium/android/apis/view/GameControllerInput$SummaryAdapter$Item;
.source "GameControllerInput.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/appium/android/apis/view/GameControllerInput$SummaryAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TextColumn"
.end annotation


# instance fields
.field private mContent:Ljava/lang/String;

.field private mContentView:Landroid/widget/TextView;

.field private final mLabel:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 1
    .param p1, "itemId"    # I
    .param p2, "label"    # Ljava/lang/String;

    .line 502
    const v0, 0x7f0b0073

    invoke-direct {p0, p1, v0}, Lio/appium/android/apis/view/GameControllerInput$SummaryAdapter$Item;-><init>(II)V

    .line 503
    iput-object p2, p0, Lio/appium/android/apis/view/GameControllerInput$SummaryAdapter$TextColumn;->mLabel:Ljava/lang/String;

    .line 504
    return-void
.end method


# virtual methods
.method public initView(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .line 512
    const v0, 0x7f090102

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 513
    .local v0, "textView":Landroid/widget/TextView;
    iget-object v1, p0, Lio/appium/android/apis/view/GameControllerInput$SummaryAdapter$TextColumn;->mLabel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 515
    const v1, 0x7f090074

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lio/appium/android/apis/view/GameControllerInput$SummaryAdapter$TextColumn;->mContentView:Landroid/widget/TextView;

    .line 516
    return-void
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 0
    .param p1, "content"    # Ljava/lang/String;

    .line 507
    iput-object p1, p0, Lio/appium/android/apis/view/GameControllerInput$SummaryAdapter$TextColumn;->mContent:Ljava/lang/String;

    .line 508
    return-void
.end method

.method public updateView(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .line 520
    iget-object v0, p0, Lio/appium/android/apis/view/GameControllerInput$SummaryAdapter$TextColumn;->mContentView:Landroid/widget/TextView;

    iget-object v1, p0, Lio/appium/android/apis/view/GameControllerInput$SummaryAdapter$TextColumn;->mContent:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 521
    return-void
.end method
