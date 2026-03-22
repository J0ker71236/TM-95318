.class public Lio/appium/android/apis/view/List9;
.super Landroid/app/ListActivity;
.source "List9.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/appium/android/apis/view/List9$RemoveWindow;
    }
.end annotation


# instance fields
.field private mDialogText:Landroid/widget/TextView;

.field mHandler:Landroid/os/Handler;

.field private mPrevLetter:C

.field private mReady:Z

.field private mRemoveWindow:Lio/appium/android/apis/view/List9$RemoveWindow;

.field private mShowing:Z

.field private mStrings:[Ljava/lang/String;

.field private mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 42
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 50
    new-instance v0, Lio/appium/android/apis/view/List9$RemoveWindow;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/appium/android/apis/view/List9$RemoveWindow;-><init>(Lio/appium/android/apis/view/List9;Lio/appium/android/apis/view/List9$1;)V

    iput-object v0, p0, Lio/appium/android/apis/view/List9;->mRemoveWindow:Lio/appium/android/apis/view/List9$RemoveWindow;

    .line 51
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lio/appium/android/apis/view/List9;->mHandler:Landroid/os/Handler;

    .line 56
    const/4 v0, 0x0

    iput-char v0, p0, Lio/appium/android/apis/view/List9;->mPrevLetter:C

    .line 143
    sget-object v0, Lio/appium/android/apis/view/Cheeses;->sCheeseStrings:[Ljava/lang/String;

    iput-object v0, p0, Lio/appium/android/apis/view/List9;->mStrings:[Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lio/appium/android/apis/view/List9;)V
    .locals 0
    .param p0, "x0"    # Lio/appium/android/apis/view/List9;

    .line 42
    invoke-direct {p0}, Lio/appium/android/apis/view/List9;->removeWindow()V

    return-void
.end method

.method static synthetic access$202(Lio/appium/android/apis/view/List9;Z)Z
    .locals 0
    .param p0, "x0"    # Lio/appium/android/apis/view/List9;
    .param p1, "x1"    # Z

    .line 42
    iput-boolean p1, p0, Lio/appium/android/apis/view/List9;->mReady:Z

    return p1
.end method

.method static synthetic access$300(Lio/appium/android/apis/view/List9;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lio/appium/android/apis/view/List9;

    .line 42
    iget-object v0, p0, Lio/appium/android/apis/view/List9;->mDialogText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$400(Lio/appium/android/apis/view/List9;)Landroid/view/WindowManager;
    .locals 1
    .param p0, "x0"    # Lio/appium/android/apis/view/List9;

    .line 42
    iget-object v0, p0, Lio/appium/android/apis/view/List9;->mWindowManager:Landroid/view/WindowManager;

    return-object v0
.end method

.method private removeWindow()V
    .locals 2

    .line 137
    iget-boolean v0, p0, Lio/appium/android/apis/view/List9;->mShowing:Z

    if-eqz v0, :cond_0

    .line 138
    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/appium/android/apis/view/List9;->mShowing:Z

    .line 139
    iget-object v0, p0, Lio/appium/android/apis/view/List9;->mDialogText:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 141
    :cond_0
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 60
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 62
    const-string v0, "window"

    invoke-virtual {p0, v0}, Lio/appium/android/apis/view/List9;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lio/appium/android/apis/view/List9;->mWindowManager:Landroid/view/WindowManager;

    .line 66
    new-instance v0, Landroid/widget/ArrayAdapter;

    iget-object v1, p0, Lio/appium/android/apis/view/List9;->mStrings:[Ljava/lang/String;

    const v2, 0x1090003

    invoke-direct {v0, p0, v2, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lio/appium/android/apis/view/List9;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 69
    invoke-virtual {p0}, Lio/appium/android/apis/view/List9;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 71
    const-string v0, "layout_inflater"

    invoke-virtual {p0, v0}, Lio/appium/android/apis/view/List9;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 73
    .local v0, "inflate":Landroid/view/LayoutInflater;
    const v1, 0x7f0b00a5

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lio/appium/android/apis/view/List9;->mDialogText:Landroid/widget/TextView;

    .line 74
    iget-object v1, p0, Lio/appium/android/apis/view/List9;->mDialogText:Landroid/widget/TextView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 76
    iget-object v1, p0, Lio/appium/android/apis/view/List9;->mHandler:Landroid/os/Handler;

    new-instance v2, Lio/appium/android/apis/view/List9$1;

    invoke-direct {v2, p0}, Lio/appium/android/apis/view/List9$1;-><init>(Lio/appium/android/apis/view/List9;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 88
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 106
    invoke-super {p0}, Landroid/app/ListActivity;->onDestroy()V

    .line 107
    iget-object v0, p0, Lio/appium/android/apis/view/List9;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lio/appium/android/apis/view/List9;->mDialogText:Landroid/widget/TextView;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 108
    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/appium/android/apis/view/List9;->mReady:Z

    .line 109
    return-void
.end method

.method protected onPause()V
    .locals 1

    .line 99
    invoke-super {p0}, Landroid/app/ListActivity;->onPause()V

    .line 100
    invoke-direct {p0}, Lio/appium/android/apis/view/List9;->removeWindow()V

    .line 101
    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/appium/android/apis/view/List9;->mReady:Z

    .line 102
    return-void
.end method

.method protected onResume()V
    .locals 1

    .line 92
    invoke-super {p0}, Landroid/app/ListActivity;->onResume()V

    .line 93
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/appium/android/apis/view/List9;->mReady:Z

    .line 94
    return-void
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 5
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "firstVisibleItem"    # I
    .param p3, "visibleItemCount"    # I
    .param p4, "totalItemCount"    # I

    .line 116
    iget-boolean v0, p0, Lio/appium/android/apis/view/List9;->mReady:Z

    if-eqz v0, :cond_1

    .line 117
    iget-object v0, p0, Lio/appium/android/apis/view/List9;->mStrings:[Ljava/lang/String;

    aget-object v0, v0, p2

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 119
    .local v0, "firstLetter":C
    iget-boolean v2, p0, Lio/appium/android/apis/view/List9;->mShowing:Z

    if-nez v2, :cond_0

    iget-char v2, p0, Lio/appium/android/apis/view/List9;->mPrevLetter:C

    if-eq v0, v2, :cond_0

    .line 121
    const/4 v2, 0x1

    iput-boolean v2, p0, Lio/appium/android/apis/view/List9;->mShowing:Z

    .line 122
    iget-object v2, p0, Lio/appium/android/apis/view/List9;->mDialogText:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 124
    :cond_0
    iget-object v1, p0, Lio/appium/android/apis/view/List9;->mDialogText:Landroid/widget/TextView;

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Character;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 125
    iget-object v1, p0, Lio/appium/android/apis/view/List9;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lio/appium/android/apis/view/List9;->mRemoveWindow:Lio/appium/android/apis/view/List9$RemoveWindow;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 126
    iget-object v1, p0, Lio/appium/android/apis/view/List9;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lio/appium/android/apis/view/List9;->mRemoveWindow:Lio/appium/android/apis/view/List9$RemoveWindow;

    const-wide/16 v3, 0xbb8

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 127
    iput-char v0, p0, Lio/appium/android/apis/view/List9;->mPrevLetter:C

    .line 129
    .end local v0    # "firstLetter":C
    :cond_1
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .line 133
    return-void
.end method
