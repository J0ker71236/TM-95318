.class public Lio/appium/android/apis/app/FragmentLayout$TitlesFragment;
.super Landroid/app/ListFragment;
.source "FragmentLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/appium/android/apis/app/FragmentLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TitlesFragment"
.end annotation


# instance fields
.field mCurCheckPosition:I

.field mDualPane:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 89
    invoke-direct {p0}, Landroid/app/ListFragment;-><init>()V

    .line 91
    const/4 v0, 0x0

    iput v0, p0, Lio/appium/android/apis/app/FragmentLayout$TitlesFragment;->mCurCheckPosition:I

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 95
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 98
    new-instance v0, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lio/appium/android/apis/app/FragmentLayout$TitlesFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    sget-object v2, Lio/appium/android/apis/Shakespeare;->TITLES:[Ljava/lang/String;

    const v3, 0x1090016

    invoke-direct {v0, v1, v3, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lio/appium/android/apis/app/FragmentLayout$TitlesFragment;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 103
    invoke-virtual {p0}, Lio/appium/android/apis/app/FragmentLayout$TitlesFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f090090

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 104
    .local v0, "detailsFrame":Landroid/view/View;
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    iput-boolean v3, p0, Lio/appium/android/apis/app/FragmentLayout$TitlesFragment;->mDualPane:Z

    .line 106
    if-eqz p1, :cond_1

    .line 108
    const-string v3, "curChoice"

    invoke-virtual {p1, v3, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lio/appium/android/apis/app/FragmentLayout$TitlesFragment;->mCurCheckPosition:I

    .line 111
    :cond_1
    iget-boolean v2, p0, Lio/appium/android/apis/app/FragmentLayout$TitlesFragment;->mDualPane:Z

    if-eqz v2, :cond_2

    .line 113
    invoke-virtual {p0}, Lio/appium/android/apis/app/FragmentLayout$TitlesFragment;->getListView()Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 115
    iget v1, p0, Lio/appium/android/apis/app/FragmentLayout$TitlesFragment;->mCurCheckPosition:I

    invoke-virtual {p0, v1}, Lio/appium/android/apis/app/FragmentLayout$TitlesFragment;->showDetails(I)V

    .line 117
    :cond_2
    return-void
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 0
    .param p1, "l"    # Landroid/widget/ListView;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J

    .line 127
    invoke-virtual {p0, p3}, Lio/appium/android/apis/app/FragmentLayout$TitlesFragment;->showDetails(I)V

    .line 128
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .line 121
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 122
    const-string v0, "curChoice"

    iget v1, p0, Lio/appium/android/apis/app/FragmentLayout$TitlesFragment;->mCurCheckPosition:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 123
    return-void
.end method

.method showDetails(I)V
    .locals 3
    .param p1, "index"    # I

    .line 136
    iput p1, p0, Lio/appium/android/apis/app/FragmentLayout$TitlesFragment;->mCurCheckPosition:I

    .line 138
    iget-boolean v0, p0, Lio/appium/android/apis/app/FragmentLayout$TitlesFragment;->mDualPane:Z

    if-eqz v0, :cond_3

    .line 141
    invoke-virtual {p0}, Lio/appium/android/apis/app/FragmentLayout$TitlesFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 144
    nop

    .line 145
    invoke-virtual {p0}, Lio/appium/android/apis/app/FragmentLayout$TitlesFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const v1, 0x7f090090

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lio/appium/android/apis/app/FragmentLayout$DetailsFragment;

    .line 146
    .local v0, "details":Lio/appium/android/apis/app/FragmentLayout$DetailsFragment;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lio/appium/android/apis/app/FragmentLayout$DetailsFragment;->getShownIndex()I

    move-result v2

    if-eq v2, p1, :cond_2

    .line 148
    :cond_0
    invoke-static {p1}, Lio/appium/android/apis/app/FragmentLayout$DetailsFragment;->newInstance(I)Lio/appium/android/apis/app/FragmentLayout$DetailsFragment;

    move-result-object v0

    .line 152
    invoke-virtual {p0}, Lio/appium/android/apis/app/FragmentLayout$TitlesFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v2

    .line 153
    .local v2, "ft":Landroid/app/FragmentTransaction;
    if-nez p1, :cond_1

    .line 154
    invoke-virtual {v2, v1, v0}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    goto :goto_0

    .line 156
    :cond_1
    const v1, 0x7f090007

    invoke-virtual {v2, v1, v0}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 158
    :goto_0
    const/16 v1, 0x1003

    invoke-virtual {v2, v1}, Landroid/app/FragmentTransaction;->setTransition(I)Landroid/app/FragmentTransaction;

    .line 159
    invoke-virtual {v2}, Landroid/app/FragmentTransaction;->commit()I

    .line 162
    .end local v0    # "details":Lio/appium/android/apis/app/FragmentLayout$DetailsFragment;
    .end local v2    # "ft":Landroid/app/FragmentTransaction;
    :cond_2
    goto :goto_1

    .line 165
    :cond_3
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 166
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lio/appium/android/apis/app/FragmentLayout$TitlesFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lio/appium/android/apis/app/FragmentLayout$DetailsActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 167
    const-string v1, "index"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 168
    invoke-virtual {p0, v0}, Lio/appium/android/apis/app/FragmentLayout$TitlesFragment;->startActivity(Landroid/content/Intent;)V

    .line 170
    .end local v0    # "intent":Landroid/content/Intent;
    :goto_1
    return-void
.end method
