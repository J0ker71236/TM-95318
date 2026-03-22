.class public Lio/appium/android/apis/view/VideoPlayerActivity$Content;
.super Landroid/widget/ImageView;
.source "VideoPlayerActivity.java"

# interfaces
.implements Landroid/view/View$OnSystemUiVisibilityChangeListener;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/app/ActionBar$OnMenuVisibilityListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/appium/android/apis/view/VideoPlayerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Content"
.end annotation


# instance fields
.field mActivity:Landroid/app/Activity;

.field mAddedMenuListener:Z

.field mLastSystemUiVis:I

.field mMenusOpen:Z

.field mNavHider:Ljava/lang/Runnable;

.field mNavVisible:Z

.field mPaused:Z

.field mPlayButton:Landroid/widget/Button;

.field mSeekView:Landroid/widget/SeekBar;

.field mTitleView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 81
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 74
    new-instance v0, Lio/appium/android/apis/view/VideoPlayerActivity$Content$1;

    invoke-direct {v0, p0}, Lio/appium/android/apis/view/VideoPlayerActivity$Content$1;-><init>(Lio/appium/android/apis/view/VideoPlayerActivity$Content;)V

    iput-object v0, p0, Lio/appium/android/apis/view/VideoPlayerActivity$Content;->mNavHider:Ljava/lang/Runnable;

    .line 82
    invoke-virtual {p0, p0}, Lio/appium/android/apis/view/VideoPlayerActivity$Content;->setOnSystemUiVisibilityChangeListener(Landroid/view/View$OnSystemUiVisibilityChangeListener;)V

    .line 83
    invoke-virtual {p0, p0}, Lio/appium/android/apis/view/VideoPlayerActivity$Content;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    return-void
.end method


# virtual methods
.method public init(Landroid/app/Activity;Landroid/widget/TextView;Landroid/widget/Button;Landroid/widget/SeekBar;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "title"    # Landroid/widget/TextView;
    .param p3, "playButton"    # Landroid/widget/Button;
    .param p4, "seek"    # Landroid/widget/SeekBar;

    .line 90
    iput-object p1, p0, Lio/appium/android/apis/view/VideoPlayerActivity$Content;->mActivity:Landroid/app/Activity;

    .line 91
    iput-object p2, p0, Lio/appium/android/apis/view/VideoPlayerActivity$Content;->mTitleView:Landroid/widget/TextView;

    .line 92
    iput-object p3, p0, Lio/appium/android/apis/view/VideoPlayerActivity$Content;->mPlayButton:Landroid/widget/Button;

    .line 93
    iput-object p4, p0, Lio/appium/android/apis/view/VideoPlayerActivity$Content;->mSeekView:Landroid/widget/SeekBar;

    .line 94
    iget-object v0, p0, Lio/appium/android/apis/view/VideoPlayerActivity$Content;->mPlayButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 95
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lio/appium/android/apis/view/VideoPlayerActivity$Content;->setPlayPaused(Z)V

    .line 96
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 99
    invoke-super {p0}, Landroid/widget/ImageView;->onAttachedToWindow()V

    .line 100
    iget-object v0, p0, Lio/appium/android/apis/view/VideoPlayerActivity$Content;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 101
    const/4 v1, 0x1

    iput-boolean v1, p0, Lio/appium/android/apis/view/VideoPlayerActivity$Content;->mAddedMenuListener:Z

    .line 102
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/ActionBar;->addOnMenuVisibilityListener(Landroid/app/ActionBar$OnMenuVisibilityListener;)V

    .line 104
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .line 133
    iget-object v0, p0, Lio/appium/android/apis/view/VideoPlayerActivity$Content;->mPlayButton:Landroid/widget/Button;

    const/4 v1, 0x1

    if-ne p1, v0, :cond_0

    .line 135
    iget-boolean v0, p0, Lio/appium/android/apis/view/VideoPlayerActivity$Content;->mPaused:Z

    xor-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lio/appium/android/apis/view/VideoPlayerActivity$Content;->setPlayPaused(Z)V

    goto :goto_0

    .line 138
    :cond_0
    invoke-virtual {p0, v1}, Lio/appium/android/apis/view/VideoPlayerActivity$Content;->setNavVisibility(Z)V

    .line 140
    :goto_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 107
    invoke-super {p0}, Landroid/widget/ImageView;->onDetachedFromWindow()V

    .line 108
    iget-boolean v0, p0, Lio/appium/android/apis/view/VideoPlayerActivity$Content;->mAddedMenuListener:Z

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lio/appium/android/apis/view/VideoPlayerActivity$Content;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/ActionBar;->removeOnMenuVisibilityListener(Landroid/app/ActionBar$OnMenuVisibilityListener;)V

    .line 111
    :cond_0
    return-void
.end method

.method public onMenuVisibilityChanged(Z)V
    .locals 1
    .param p1, "isVisible"    # Z

    .line 143
    iput-boolean p1, p0, Lio/appium/android/apis/view/VideoPlayerActivity$Content;->mMenusOpen:Z

    .line 144
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lio/appium/android/apis/view/VideoPlayerActivity$Content;->setNavVisibility(Z)V

    .line 145
    return-void
.end method

.method public onSystemUiVisibilityChange(I)V
    .locals 2
    .param p1, "visibility"    # I

    .line 117
    iget v0, p0, Lio/appium/android/apis/view/VideoPlayerActivity$Content;->mLastSystemUiVis:I

    xor-int/2addr v0, p1

    .line 118
    .local v0, "diff":I
    iput p1, p0, Lio/appium/android/apis/view/VideoPlayerActivity$Content;->mLastSystemUiVis:I

    .line 119
    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_0

    and-int/lit8 v1, p1, 0x2

    if-nez v1, :cond_0

    .line 121
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lio/appium/android/apis/view/VideoPlayerActivity$Content;->setNavVisibility(Z)V

    .line 123
    :cond_0
    return-void
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 1
    .param p1, "visibility"    # I

    .line 126
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onWindowVisibilityChanged(I)V

    .line 129
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lio/appium/android/apis/view/VideoPlayerActivity$Content;->setPlayPaused(Z)V

    .line 130
    return-void
.end method

.method setNavVisibility(Z)V
    .locals 5
    .param p1, "visible"    # Z

    .line 155
    const/16 v0, 0x700

    .line 158
    .local v0, "newVis":I
    if-nez p1, :cond_0

    .line 159
    or-int/lit8 v0, v0, 0x7

    .line 164
    :cond_0
    if-eqz p1, :cond_1

    .line 165
    invoke-virtual {p0}, Lio/appium/android/apis/view/VideoPlayerActivity$Content;->getHandler()Landroid/os/Handler;

    move-result-object v1

    .line 166
    .local v1, "h":Landroid/os/Handler;
    if-eqz v1, :cond_1

    .line 167
    iget-object v2, p0, Lio/appium/android/apis/view/VideoPlayerActivity$Content;->mNavHider:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 168
    iget-boolean v2, p0, Lio/appium/android/apis/view/VideoPlayerActivity$Content;->mMenusOpen:Z

    if-nez v2, :cond_1

    iget-boolean v2, p0, Lio/appium/android/apis/view/VideoPlayerActivity$Content;->mPaused:Z

    if-nez v2, :cond_1

    .line 170
    iget-object v2, p0, Lio/appium/android/apis/view/VideoPlayerActivity$Content;->mNavHider:Ljava/lang/Runnable;

    const-wide/16 v3, 0x5dc

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 176
    .end local v1    # "h":Landroid/os/Handler;
    :cond_1
    invoke-virtual {p0, v0}, Lio/appium/android/apis/view/VideoPlayerActivity$Content;->setSystemUiVisibility(I)V

    .line 177
    iget-object v1, p0, Lio/appium/android/apis/view/VideoPlayerActivity$Content;->mTitleView:Landroid/widget/TextView;

    const/4 v2, 0x0

    const/4 v3, 0x4

    if-eqz p1, :cond_2

    const/4 v4, 0x0

    goto :goto_0

    :cond_2
    const/4 v4, 0x4

    :goto_0
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 178
    iget-object v1, p0, Lio/appium/android/apis/view/VideoPlayerActivity$Content;->mPlayButton:Landroid/widget/Button;

    if-eqz p1, :cond_3

    const/4 v4, 0x0

    goto :goto_1

    :cond_3
    const/4 v4, 0x4

    :goto_1
    invoke-virtual {v1, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 179
    iget-object v1, p0, Lio/appium/android/apis/view/VideoPlayerActivity$Content;->mSeekView:Landroid/widget/SeekBar;

    if-eqz p1, :cond_4

    goto :goto_2

    :cond_4
    const/4 v2, 0x4

    :goto_2
    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setVisibility(I)V

    .line 180
    return-void
.end method

.method setPlayPaused(Z)V
    .locals 2
    .param p1, "paused"    # Z

    .line 148
    iput-boolean p1, p0, Lio/appium/android/apis/view/VideoPlayerActivity$Content;->mPaused:Z

    .line 149
    iget-object v0, p0, Lio/appium/android/apis/view/VideoPlayerActivity$Content;->mPlayButton:Landroid/widget/Button;

    if-eqz p1, :cond_0

    const v1, 0x7f0e0242

    goto :goto_0

    :cond_0
    const v1, 0x7f0e0238

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 150
    nop

    xor-int/lit8 v0, p1, 0x1

    nop

    invoke-virtual {p0, v0}, Lio/appium/android/apis/view/VideoPlayerActivity$Content;->setKeepScreenOn(Z)V

    .line 151
    nop

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lio/appium/android/apis/view/VideoPlayerActivity$Content;->setNavVisibility(Z)V

    .line 152
    nop

    return-void
.end method
