.class public Lio/appium/android/apis/app/FragmentArguments$MyFragment;
.super Landroid/app/Fragment;
.source "FragmentArguments.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/appium/android/apis/app/FragmentArguments;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MyFragment"
.end annotation


# instance fields
.field mLabel:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 53
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method

.method static newInstance(Ljava/lang/CharSequence;)Lio/appium/android/apis/app/FragmentArguments$MyFragment;
    .locals 3
    .param p0, "label"    # Ljava/lang/CharSequence;

    .line 61
    new-instance v0, Lio/appium/android/apis/app/FragmentArguments$MyFragment;

    invoke-direct {v0}, Lio/appium/android/apis/app/FragmentArguments$MyFragment;-><init>()V

    .line 62
    .local v0, "f":Lio/appium/android/apis/app/FragmentArguments$MyFragment;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 63
    .local v1, "b":Landroid/os/Bundle;
    const-string v2, "label"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 64
    invoke-virtual {v0, v1}, Lio/appium/android/apis/app/FragmentArguments$MyFragment;->setArguments(Landroid/os/Bundle;)V

    .line 65
    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 87
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 89
    invoke-virtual {p0}, Lio/appium/android/apis/app/FragmentArguments$MyFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 90
    .local v0, "args":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 91
    const-string v1, "label"

    iget-object v2, p0, Lio/appium/android/apis/app/FragmentArguments$MyFragment;->mLabel:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lio/appium/android/apis/app/FragmentArguments$MyFragment;->mLabel:Ljava/lang/CharSequence;

    .line 93
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .line 100
    const v0, 0x7f0b0079

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 101
    .local v0, "v":Landroid/view/View;
    const v1, 0x7f09020c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 102
    .local v1, "tv":Landroid/view/View;
    move-object v2, v1

    check-cast v2, Landroid/widget/TextView;

    iget-object v3, p0, Lio/appium/android/apis/app/FragmentArguments$MyFragment;->mLabel:Ljava/lang/CharSequence;

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    const-string v3, "(no label)"

    :goto_0
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 103
    invoke-virtual {p0}, Lio/appium/android/apis/app/FragmentArguments$MyFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x108001c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 104
    return-object v0
.end method

.method public onInflate(Landroid/app/Activity;Landroid/util/AttributeSet;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .line 74
    invoke-super {p0, p1, p2, p3}, Landroid/app/Fragment;->onInflate(Landroid/app/Activity;Landroid/util/AttributeSet;Landroid/os/Bundle;)V

    .line 76
    sget-object v0, Lio/appium/android/apis/R$styleable;->FragmentArguments:[I

    invoke-virtual {p1, p2, v0}, Landroid/app/Activity;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 78
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lio/appium/android/apis/app/FragmentArguments$MyFragment;->mLabel:Ljava/lang/CharSequence;

    .line 79
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 80
    return-void
.end method
