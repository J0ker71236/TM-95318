.class public Lio/appium/android/apis/view/ContentBrowserActivity$Content;
.super Landroid/widget/ScrollView;
.source "ContentBrowserActivity.java"

# interfaces
.implements Landroid/view/View$OnSystemUiVisibilityChangeListener;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/appium/android/apis/view/ContentBrowserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Content"
.end annotation


# instance fields
.field mBaseSystemUiVisibility:I

.field mLastSystemUiVis:I

.field mNavHider:Ljava/lang/Runnable;

.field mNavVisible:Z

.field mSeekView:Landroid/widget/SeekBar;

.field mText:Landroid/widget/TextView;

.field mTitleView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 77
    invoke-direct {p0, p1, p2}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 66
    const/16 v0, 0x500

    iput v0, p0, Lio/appium/android/apis/view/ContentBrowserActivity$Content;->mBaseSystemUiVisibility:I

    .line 70
    new-instance v0, Lio/appium/android/apis/view/ContentBrowserActivity$Content$1;

    invoke-direct {v0, p0}, Lio/appium/android/apis/view/ContentBrowserActivity$Content$1;-><init>(Lio/appium/android/apis/view/ContentBrowserActivity$Content;)V

    iput-object v0, p0, Lio/appium/android/apis/view/ContentBrowserActivity$Content;->mNavHider:Ljava/lang/Runnable;

    .line 79
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lio/appium/android/apis/view/ContentBrowserActivity$Content;->mText:Landroid/widget/TextView;

    .line 80
    iget-object v0, p0, Lio/appium/android/apis/view/ContentBrowserActivity$Content;->mText:Landroid/widget/TextView;

    const/4 v1, 0x1

    const/high16 v2, 0x41800000    # 16.0f

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 81
    iget-object v0, p0, Lio/appium/android/apis/view/ContentBrowserActivity$Content;->mText:Landroid/widget/TextView;

    const v2, 0x7f0e00a4

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 82
    iget-object v0, p0, Lio/appium/android/apis/view/ContentBrowserActivity$Content;->mText:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setClickable(Z)V

    .line 83
    iget-object v0, p0, Lio/appium/android/apis/view/ContentBrowserActivity$Content;->mText:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    iget-object v0, p0, Lio/appium/android/apis/view/ContentBrowserActivity$Content;->mText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextIsSelectable(Z)V

    .line 85
    iget-object v0, p0, Lio/appium/android/apis/view/ContentBrowserActivity$Content;->mText:Landroid/widget/TextView;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lio/appium/android/apis/view/ContentBrowserActivity$Content;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 88
    invoke-virtual {p0, p0}, Lio/appium/android/apis/view/ContentBrowserActivity$Content;->setOnSystemUiVisibilityChangeListener(Landroid/view/View$OnSystemUiVisibilityChangeListener;)V

    .line 89
    return-void
.end method


# virtual methods
.method public init(Landroid/widget/TextView;Landroid/widget/SeekBar;)V
    .locals 1
    .param p1, "title"    # Landroid/widget/TextView;
    .param p2, "seek"    # Landroid/widget/SeekBar;

    .line 94
    iput-object p1, p0, Lio/appium/android/apis/view/ContentBrowserActivity$Content;->mTitleView:Landroid/widget/TextView;

    .line 95
    iput-object p2, p0, Lio/appium/android/apis/view/ContentBrowserActivity$Content;->mSeekView:Landroid/widget/SeekBar;

    .line 96
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lio/appium/android/apis/view/ContentBrowserActivity$Content;->setNavVisibility(Z)V

    .line 97
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .line 129
    invoke-virtual {p0}, Lio/appium/android/apis/view/ContentBrowserActivity$Content;->getSystemUiVisibility()I

    move-result v0

    .line 130
    .local v0, "curVis":I
    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0, v1}, Lio/appium/android/apis/view/ContentBrowserActivity$Content;->setNavVisibility(Z)V

    .line 131
    return-void
.end method

.method protected onScrollChanged(IIII)V
    .locals 1
    .param p1, "l"    # I
    .param p2, "t"    # I
    .param p3, "oldl"    # I
    .param p4, "oldt"    # I

    .line 121
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ScrollView;->onScrollChanged(IIII)V

    .line 124
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lio/appium/android/apis/view/ContentBrowserActivity$Content;->setNavVisibility(Z)V

    .line 125
    return-void
.end method

.method public onSystemUiVisibilityChange(I)V
    .locals 2
    .param p1, "visibility"    # I

    .line 103
    iget v0, p0, Lio/appium/android/apis/view/ContentBrowserActivity$Content;->mLastSystemUiVis:I

    xor-int/2addr v0, p1

    .line 104
    .local v0, "diff":I
    iput p1, p0, Lio/appium/android/apis/view/ContentBrowserActivity$Content;->mLastSystemUiVis:I

    .line 105
    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_0

    and-int/lit8 v1, p1, 0x1

    if-nez v1, :cond_0

    .line 107
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lio/appium/android/apis/view/ContentBrowserActivity$Content;->setNavVisibility(Z)V

    .line 109
    :cond_0
    return-void
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 4
    .param p1, "visibility"    # I

    .line 112
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->onWindowVisibilityChanged(I)V

    .line 116
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lio/appium/android/apis/view/ContentBrowserActivity$Content;->setNavVisibility(Z)V

    .line 117
    invoke-virtual {p0}, Lio/appium/android/apis/view/ContentBrowserActivity$Content;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lio/appium/android/apis/view/ContentBrowserActivity$Content;->mNavHider:Ljava/lang/Runnable;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 118
    return-void
.end method

.method setBaseSystemUiVisibility(I)V
    .locals 0
    .param p1, "visibility"    # I

    .line 134
    iput p1, p0, Lio/appium/android/apis/view/ContentBrowserActivity$Content;->mBaseSystemUiVisibility:I

    .line 135
    return-void
.end method

.method setNavVisibility(Z)V
    .locals 6
    .param p1, "visible"    # Z

    .line 138
    iget v0, p0, Lio/appium/android/apis/view/ContentBrowserActivity$Content;->mBaseSystemUiVisibility:I

    .line 139
    .local v0, "newVis":I
    if-nez p1, :cond_0

    .line 140
    or-int/lit8 v0, v0, 0x5

    .line 142
    :cond_0
    invoke-virtual {p0}, Lio/appium/android/apis/view/ContentBrowserActivity$Content;->getSystemUiVisibility()I

    move-result v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 146
    .local v1, "changed":Z
    :goto_0
    if-nez v1, :cond_2

    if-eqz p1, :cond_3

    .line 147
    :cond_2
    invoke-virtual {p0}, Lio/appium/android/apis/view/ContentBrowserActivity$Content;->getHandler()Landroid/os/Handler;

    move-result-object v3

    .line 148
    .local v3, "h":Landroid/os/Handler;
    if-eqz v3, :cond_3

    .line 149
    iget-object v4, p0, Lio/appium/android/apis/view/ContentBrowserActivity$Content;->mNavHider:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 154
    .end local v3    # "h":Landroid/os/Handler;
    :cond_3
    invoke-virtual {p0, v0}, Lio/appium/android/apis/view/ContentBrowserActivity$Content;->setSystemUiVisibility(I)V

    .line 155
    iget-object v3, p0, Lio/appium/android/apis/view/ContentBrowserActivity$Content;->mTitleView:Landroid/widget/TextView;

    const/4 v4, 0x4

    if-eqz p1, :cond_4

    const/4 v5, 0x0

    goto :goto_1

    :cond_4
    const/4 v5, 0x4

    :goto_1
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 156
    iget-object v3, p0, Lio/appium/android/apis/view/ContentBrowserActivity$Content;->mSeekView:Landroid/widget/SeekBar;

    if-eqz p1, :cond_5

    goto :goto_2

    :cond_5
    const/4 v2, 0x4

    :goto_2
    invoke-virtual {v3, v2}, Landroid/widget/SeekBar;->setVisibility(I)V

    .line 157
    return-void
.end method
