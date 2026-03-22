.class Lio/appium/android/apis/view/List4$SpeechView;
.super Landroid/widget/LinearLayout;
.source "List4.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/appium/android/apis/view/List4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SpeechView"
.end annotation


# instance fields
.field private mDialogue:Landroid/widget/TextView;

.field private mTitle:Landroid/widget/TextView;

.field final synthetic this$0:Lio/appium/android/apis/view/List4;


# direct methods
.method public constructor <init>(Lio/appium/android/apis/view/List4;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "title"    # Ljava/lang/String;
    .param p4, "words"    # Ljava/lang/String;

    .line 118
    iput-object p1, p0, Lio/appium/android/apis/view/List4$SpeechView;->this$0:Lio/appium/android/apis/view/List4;

    .line 119
    invoke-direct {p0, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 121
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lio/appium/android/apis/view/List4$SpeechView;->setOrientation(I)V

    .line 126
    new-instance p1, Landroid/widget/TextView;

    invoke-direct {p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lio/appium/android/apis/view/List4$SpeechView;->mTitle:Landroid/widget/TextView;

    .line 127
    iget-object p1, p0, Lio/appium/android/apis/view/List4$SpeechView;->mTitle:Landroid/widget/TextView;

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 128
    iget-object p1, p0, Lio/appium/android/apis/view/List4$SpeechView;->mTitle:Landroid/widget/TextView;

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x2

    const/4 v2, -0x1

    invoke-direct {v0, v2, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1, v0}, Lio/appium/android/apis/view/List4$SpeechView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 131
    new-instance p1, Landroid/widget/TextView;

    invoke-direct {p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lio/appium/android/apis/view/List4$SpeechView;->mDialogue:Landroid/widget/TextView;

    .line 132
    iget-object p1, p0, Lio/appium/android/apis/view/List4$SpeechView;->mDialogue:Landroid/widget/TextView;

    invoke-virtual {p1, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 133
    iget-object p1, p0, Lio/appium/android/apis/view/List4$SpeechView;->mDialogue:Landroid/widget/TextView;

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v2, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1, v0}, Lio/appium/android/apis/view/List4$SpeechView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 135
    return-void
.end method


# virtual methods
.method public setDialogue(Ljava/lang/String;)V
    .locals 1
    .param p1, "words"    # Ljava/lang/String;

    .line 148
    iget-object v0, p0, Lio/appium/android/apis/view/List4$SpeechView;->mDialogue:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 149
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/String;

    .line 141
    iget-object v0, p0, Lio/appium/android/apis/view/List4$SpeechView;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 142
    return-void
.end method
