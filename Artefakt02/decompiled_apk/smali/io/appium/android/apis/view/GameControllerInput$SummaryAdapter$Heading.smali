.class Lio/appium/android/apis/view/GameControllerInput$SummaryAdapter$Heading;
.super Lio/appium/android/apis/view/GameControllerInput$SummaryAdapter$Item;
.source "GameControllerInput.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/appium/android/apis/view/GameControllerInput$SummaryAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Heading"
.end annotation


# instance fields
.field private final mLabel:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 1
    .param p1, "itemId"    # I
    .param p2, "label"    # Ljava/lang/String;

    .line 484
    const v0, 0x7f0b0072

    invoke-direct {p0, p1, v0}, Lio/appium/android/apis/view/GameControllerInput$SummaryAdapter$Item;-><init>(II)V

    .line 485
    iput-object p2, p0, Lio/appium/android/apis/view/GameControllerInput$SummaryAdapter$Heading;->mLabel:Ljava/lang/String;

    .line 486
    return-void
.end method


# virtual methods
.method public initView(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .line 490
    move-object v0, p1

    check-cast v0, Landroid/widget/TextView;

    .line 491
    .local v0, "textView":Landroid/widget/TextView;
    iget-object v1, p0, Lio/appium/android/apis/view/GameControllerInput$SummaryAdapter$Heading;->mLabel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 492
    return-void
.end method
