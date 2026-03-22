.class public Lio/appium/android/apis/app/MenuInflateFromXml;
.super Landroid/app/Activity;
.source "MenuInflateFromXml.java"


# static fields
.field private static final sMenuExampleNames:[Ljava/lang/String;

.field private static final sMenuExampleResources:[I


# instance fields
.field private mInstructionsText:Landroid/widget/TextView;

.field private mMenu:Landroid/view/Menu;

.field private mSpinner:Landroid/widget/Spinner;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 44
    const/16 v0, 0xa

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    sput-object v1, Lio/appium/android/apis/app/MenuInflateFromXml;->sMenuExampleResources:[I

    .line 53
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Title only"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "Title and Icon"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "Submenu"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, "Groups"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string v1, "Checkable"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-string v1, "Shortcuts"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string v1, "Order"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string v1, "Category and Order"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const-string v1, "Visible"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    const-string v1, "Disabled"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    sput-object v0, Lio/appium/android/apis/app/MenuInflateFromXml;->sMenuExampleNames:[Ljava/lang/String;

    return-void

    :array_0
    .array-data 4
        0x7f0c0012
        0x7f0c0011
        0x7f0c0010
        0x7f0c0009
        0x7f0c0005
        0x7f0c000f
        0x7f0c000b
        0x7f0c0004
        0x7f0c0013
        0x7f0c0007
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 76
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 79
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 80
    .local v0, "layout":Landroid/widget/LinearLayout;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 83
    new-instance v1, Landroid/widget/ArrayAdapter;

    sget-object v2, Lio/appium/android/apis/app/MenuInflateFromXml;->sMenuExampleNames:[Ljava/lang/String;

    const v3, 0x1090008

    invoke-direct {v1, p0, v3, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 85
    .local v1, "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    const v2, 0x1090009

    invoke-virtual {v1, v2}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 86
    new-instance v2, Landroid/widget/Spinner;

    invoke-direct {v2, p0}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lio/appium/android/apis/app/MenuInflateFromXml;->mSpinner:Landroid/widget/Spinner;

    .line 89
    iget-object v2, p0, Lio/appium/android/apis/app/MenuInflateFromXml;->mSpinner:Landroid/widget/Spinner;

    const v3, 0x7f0901da

    invoke-virtual {v2, v3}, Landroid/widget/Spinner;->setId(I)V

    .line 90
    iget-object v2, p0, Lio/appium/android/apis/app/MenuInflateFromXml;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 91
    iget-object v2, p0, Lio/appium/android/apis/app/MenuInflateFromXml;->mSpinner:Landroid/widget/Spinner;

    new-instance v3, Lio/appium/android/apis/app/MenuInflateFromXml$1;

    invoke-direct {v3, p0}, Lio/appium/android/apis/app/MenuInflateFromXml$1;-><init>(Lio/appium/android/apis/app/MenuInflateFromXml;)V

    invoke-virtual {v2, v3}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 102
    iget-object v2, p0, Lio/appium/android/apis/app/MenuInflateFromXml;->mSpinner:Landroid/widget/Spinner;

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x2

    const/4 v5, -0x1

    invoke-direct {v3, v5, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 108
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lio/appium/android/apis/app/MenuInflateFromXml;->mInstructionsText:Landroid/widget/TextView;

    .line 109
    iget-object v2, p0, Lio/appium/android/apis/app/MenuInflateFromXml;->mInstructionsText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lio/appium/android/apis/app/MenuInflateFromXml;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v6, 0x7f0e020f

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 113
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v5, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 116
    .local v2, "lp":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v3, 0xa

    invoke-virtual {v2, v3, v3, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 117
    iget-object v3, p0, Lio/appium/android/apis/app/MenuInflateFromXml;->mInstructionsText:Landroid/widget/TextView;

    invoke-virtual {v0, v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 120
    invoke-virtual {p0, v0}, Lio/appium/android/apis/app/MenuInflateFromXml;->setContentView(Landroid/view/View;)V

    .line 121
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;

    .line 126
    iput-object p1, p0, Lio/appium/android/apis/app/MenuInflateFromXml;->mMenu:Landroid/view/Menu;

    .line 129
    invoke-virtual {p0}, Lio/appium/android/apis/app/MenuInflateFromXml;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 130
    .local v0, "inflater":Landroid/view/MenuInflater;
    sget-object v1, Lio/appium/android/apis/app/MenuInflateFromXml;->sMenuExampleResources:[I

    iget-object v2, p0, Lio/appium/android/apis/app/MenuInflateFromXml;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v2

    aget v1, v1, v2

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 133
    iget-object v1, p0, Lio/appium/android/apis/app/MenuInflateFromXml;->mInstructionsText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lio/appium/android/apis/app/MenuInflateFromXml;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e020e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 136
    const/4 v1, 0x1

    return v1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .param p1, "item"    # Landroid/view/MenuItem;

    .line 141
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f090041

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v1, :cond_3

    const v1, 0x7f09009a

    if-eq v0, v1, :cond_2

    const v1, 0x7f0900ab

    if-eq v0, v1, :cond_1

    const v1, 0x7f090100

    if-eq v0, v1, :cond_0

    .line 170
    invoke-interface {p1}, Landroid/view/MenuItem;->hasSubMenu()Z

    move-result v0

    if-nez v0, :cond_4

    .line 171
    invoke-interface {p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 172
    return v3

    .line 145
    :cond_0
    const-string v0, "Jump up in the air!"

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 146
    invoke-virtual {p0}, Lio/appium/android/apis/app/MenuInflateFromXml;->invalidateOptionsMenu()V

    .line 147
    return v3

    .line 163
    :cond_1
    iget-object v0, p0, Lio/appium/android/apis/app/MenuInflateFromXml;->mMenu:Landroid/view/Menu;

    const v1, 0x7f090184

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/MenuItem;->isVisible()Z

    move-result v0

    xor-int/2addr v0, v3

    .line 164
    .local v0, "shouldShowEmail":Z
    iget-object v1, p0, Lio/appium/android/apis/app/MenuInflateFromXml;->mMenu:Landroid/view/Menu;

    const v3, 0x7f0900aa

    invoke-interface {v1, v3, v0}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 165
    goto :goto_0

    .line 150
    .end local v0    # "shouldShowEmail":Z
    :cond_2
    const-string v0, "Dive into the water!"

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 151
    return v3

    .line 157
    :cond_3
    iget-object v0, p0, Lio/appium/android/apis/app/MenuInflateFromXml;->mMenu:Landroid/view/Menu;

    const v1, 0x7f09017b

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/MenuItem;->isVisible()Z

    move-result v0

    xor-int/2addr v0, v3

    .line 158
    .local v0, "shouldShowBrowser":Z
    iget-object v1, p0, Lio/appium/android/apis/app/MenuInflateFromXml;->mMenu:Landroid/view/Menu;

    const v3, 0x7f090040

    invoke-interface {v1, v3, v0}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 159
    nop

    .line 177
    .end local v0    # "shouldShowBrowser":Z
    :cond_4
    :goto_0
    return v2
.end method
