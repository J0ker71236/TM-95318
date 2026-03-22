.class public Lio/appium/android/apis/app/FragmentDialogOrActivity$MyDialogFragment;
.super Landroid/app/DialogFragment;
.source "FragmentDialogOrActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/appium/android/apis/app/FragmentDialogOrActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MyDialogFragment"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 67
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method static newInstance()Lio/appium/android/apis/app/FragmentDialogOrActivity$MyDialogFragment;
    .locals 1

    .line 69
    new-instance v0, Lio/appium/android/apis/app/FragmentDialogOrActivity$MyDialogFragment;

    invoke-direct {v0}, Lio/appium/android/apis/app/FragmentDialogOrActivity$MyDialogFragment;-><init>()V

    return-object v0
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .line 75
    const v0, 0x7f0b0079

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 76
    .local v0, "v":Landroid/view/View;
    const v1, 0x7f09020c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 77
    .local v1, "tv":Landroid/view/View;
    move-object v2, v1

    check-cast v2, Landroid/widget/TextView;

    const-string v3, "This is an instance of MyDialogFragment"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 78
    return-object v0
.end method
