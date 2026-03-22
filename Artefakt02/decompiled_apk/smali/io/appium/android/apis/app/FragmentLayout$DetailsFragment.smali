.class public Lio/appium/android/apis/app/FragmentLayout$DetailsFragment;
.super Landroid/app/Fragment;
.source "FragmentLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/appium/android/apis/app/FragmentLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DetailsFragment"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 179
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method

.method public static newInstance(I)Lio/appium/android/apis/app/FragmentLayout$DetailsFragment;
    .locals 3
    .param p0, "index"    # I

    .line 185
    new-instance v0, Lio/appium/android/apis/app/FragmentLayout$DetailsFragment;

    invoke-direct {v0}, Lio/appium/android/apis/app/FragmentLayout$DetailsFragment;-><init>()V

    .line 188
    .local v0, "f":Lio/appium/android/apis/app/FragmentLayout$DetailsFragment;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 189
    .local v1, "args":Landroid/os/Bundle;
    const-string v2, "index"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 190
    invoke-virtual {v0, v1}, Lio/appium/android/apis/app/FragmentLayout$DetailsFragment;->setArguments(Landroid/os/Bundle;)V

    .line 192
    return-object v0
.end method


# virtual methods
.method public getShownIndex()I
    .locals 3

    .line 196
    invoke-virtual {p0}, Lio/appium/android/apis/app/FragmentLayout$DetailsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "index"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .line 202
    if-nez p2, :cond_0

    .line 210
    const/4 v0, 0x0

    return-object v0

    .line 213
    :cond_0
    new-instance v0, Landroid/widget/ScrollView;

    invoke-virtual {p0}, Lio/appium/android/apis/app/FragmentLayout$DetailsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 214
    .local v0, "scroller":Landroid/widget/ScrollView;
    new-instance v1, Landroid/widget/TextView;

    invoke-virtual {p0}, Lio/appium/android/apis/app/FragmentLayout$DetailsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 215
    .local v1, "text":Landroid/widget/TextView;
    const/4 v2, 0x1

    const/high16 v3, 0x40800000    # 4.0f

    .line 216
    invoke-virtual {p0}, Lio/appium/android/apis/app/FragmentLayout$DetailsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    .line 215
    invoke-static {v2, v3, v4}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    float-to-int v2, v2

    .line 217
    .local v2, "padding":I
    invoke-virtual {v1, v2, v2, v2, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 218
    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 219
    sget-object v3, Lio/appium/android/apis/Shakespeare;->DIALOGUE:[Ljava/lang/String;

    invoke-virtual {p0}, Lio/appium/android/apis/app/FragmentLayout$DetailsFragment;->getShownIndex()I

    move-result v4

    aget-object v3, v3, v4

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 220
    return-object v0
.end method
