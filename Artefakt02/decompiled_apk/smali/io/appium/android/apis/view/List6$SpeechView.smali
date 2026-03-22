.class Lio/appium/android/apis/view/List6$SpeechView;
.super Landroid/widget/LinearLayout;
.source "List6.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/appium/android/apis/view/List6;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SpeechView"
.end annotation


# instance fields
.field private mDialogue:Landroid/widget/TextView;

.field private mTitle:Landroid/widget/TextView;

.field final synthetic this$0:Lio/appium/android/apis/view/List6;


# direct methods
.method public constructor <init>(Lio/appium/android/apis/view/List6;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 3
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "title"    # Ljava/lang/String;
    .param p4, "dialogue"    # Ljava/lang/String;
    .param p5, "expanded"    # Z

    .line 367
    iput-object p1, p0, Lio/appium/android/apis/view/List6$SpeechView;->this$0:Lio/appium/android/apis/view/List6;

    .line 368
    invoke-direct {p0, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 370
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lio/appium/android/apis/view/List6$SpeechView;->setOrientation(I)V

    .line 375
    new-instance p1, Landroid/widget/TextView;

    invoke-direct {p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lio/appium/android/apis/view/List6$SpeechView;->mTitle:Landroid/widget/TextView;

    .line 376
    iget-object p1, p0, Lio/appium/android/apis/view/List6$SpeechView;->mTitle:Landroid/widget/TextView;

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 377
    iget-object p1, p0, Lio/appium/android/apis/view/List6$SpeechView;->mTitle:Landroid/widget/TextView;

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x2

    const/4 v2, -0x1

    invoke-direct {v0, v2, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1, v0}, Lio/appium/android/apis/view/List6$SpeechView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 379
    new-instance p1, Landroid/widget/TextView;

    invoke-direct {p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lio/appium/android/apis/view/List6$SpeechView;->mDialogue:Landroid/widget/TextView;

    .line 380
    iget-object p1, p0, Lio/appium/android/apis/view/List6$SpeechView;->mDialogue:Landroid/widget/TextView;

    invoke-virtual {p1, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 381
    iget-object p1, p0, Lio/appium/android/apis/view/List6$SpeechView;->mDialogue:Landroid/widget/TextView;

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v2, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1, v0}, Lio/appium/android/apis/view/List6$SpeechView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 383
    iget-object p1, p0, Lio/appium/android/apis/view/List6$SpeechView;->mDialogue:Landroid/widget/TextView;

    if-eqz p5, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 384
    return-void
.end method


# virtual methods
.method public setDialogue(Ljava/lang/String;)V
    .locals 1
    .param p1, "words"    # Ljava/lang/String;

    .line 397
    iget-object v0, p0, Lio/appium/android/apis/view/List6$SpeechView;->mDialogue:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 398
    return-void
.end method

.method public setExpanded(Z)V
    .locals 2
    .param p1, "expanded"    # Z

    .line 404
    iget-object v0, p0, Lio/appium/android/apis/view/List6$SpeechView;->mDialogue:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 405
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/String;

    .line 390
    iget-object v0, p0, Lio/appium/android/apis/view/List6$SpeechView;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 391
    return-void
.end method
