.class public Lio/appium/android/apis/view/OverscanActivity;
.super Landroid/app/Activity;
.source "OverscanActivity.java"

# interfaces
.implements Landroid/widget/SearchView$OnQueryTextListener;
.implements Landroid/app/ActionBar$TabListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/appium/android/apis/view/OverscanActivity$IV;
    }
.end annotation


# static fields
.field static TOAST_LENGTH:I


# instance fields
.field mCheckControls:[Landroid/widget/CheckBox;

.field mCheckFlags:[I

.field mImage:Lio/appium/android/apis/view/OverscanActivity$IV;

.field mMetricsText:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 142
    const/16 v0, 0x1f4

    sput v0, Lio/appium/android/apis/view/OverscanActivity;->TOAST_LENGTH:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 152
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 144
    const/4 v0, 0x6

    new-array v1, v0, [Landroid/widget/CheckBox;

    iput-object v1, p0, Lio/appium/android/apis/view/OverscanActivity;->mCheckControls:[Landroid/widget/CheckBox;

    .line 145
    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lio/appium/android/apis/view/OverscanActivity;->mCheckFlags:[I

    .line 153
    return-void

    :array_0
    .array-data 4
        0x1
        0x4
        0x2
        0x100
        0x400
        0x200
    .end array-data
.end method

.method static synthetic access$300(Lio/appium/android/apis/view/OverscanActivity;Z)V
    .locals 0
    .param p0, "x0"    # Lio/appium/android/apis/view/OverscanActivity;
    .param p1, "x1"    # Z

    .line 54
    invoke-direct {p0, p1}, Lio/appium/android/apis/view/OverscanActivity;->setFullscreen(Z)V

    return-void
.end method

.method private getDisplaySize()Ljava/lang/String;
    .locals 5

    .line 130
    invoke-virtual {p0}, Lio/appium/android/apis/view/OverscanActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 131
    .local v0, "dm":Landroid/util/DisplayMetrics;
    const-string v1, "DisplayMetrics = (%d x %d)"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget v3, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    iget v3, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getViewSize()Ljava/lang/String;
    .locals 4

    .line 134
    const-string v0, "View = (%d,%d - %d,%d)"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lio/appium/android/apis/view/OverscanActivity;->mImage:Lio/appium/android/apis/view/OverscanActivity$IV;

    .line 135
    invoke-virtual {v2}, Lio/appium/android/apis/view/OverscanActivity$IV;->getLeft()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lio/appium/android/apis/view/OverscanActivity;->mImage:Lio/appium/android/apis/view/OverscanActivity$IV;

    invoke-virtual {v2}, Lio/appium/android/apis/view/OverscanActivity$IV;->getTop()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    iget-object v2, p0, Lio/appium/android/apis/view/OverscanActivity;->mImage:Lio/appium/android/apis/view/OverscanActivity$IV;

    .line 136
    invoke-virtual {v2}, Lio/appium/android/apis/view/OverscanActivity$IV;->getRight()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    iget-object v2, p0, Lio/appium/android/apis/view/OverscanActivity;->mImage:Lio/appium/android/apis/view/OverscanActivity$IV;

    invoke-virtual {v2}, Lio/appium/android/apis/view/OverscanActivity$IV;->getBottom()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v1, v3

    .line 134
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private setFullscreen(Z)V
    .locals 4
    .param p1, "on"    # Z

    .line 118
    invoke-virtual {p0}, Lio/appium/android/apis/view/OverscanActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 119
    .local v0, "win":Landroid/view/Window;
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 120
    .local v1, "winParams":Landroid/view/WindowManager$LayoutParams;
    const/16 v2, 0x400

    .line 121
    .local v2, "bits":I
    if-eqz p1, :cond_0

    .line 122
    iget v3, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v3, v3, 0x400

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_0

    .line 124
    :cond_0
    iget v3, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v3, v3, -0x401

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 126
    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 127
    return-void
.end method


# virtual methods
.method public clearActionMode()V
    .locals 2

    .line 305
    const v0, 0x7f09024c

    invoke-virtual {p0, v0}, Lio/appium/android/apis/view/OverscanActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 306
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 0

    .line 238
    invoke-virtual {p0}, Lio/appium/android/apis/view/OverscanActivity;->updateCheckControls()V

    .line 239
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 157
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 159
    invoke-virtual {p0}, Lio/appium/android/apis/view/OverscanActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/view/Window;->requestFeature(I)Z

    .line 161
    const v0, 0x7f0b00b8

    invoke-virtual {p0, v0}, Lio/appium/android/apis/view/OverscanActivity;->setContentView(I)V

    .line 162
    const v0, 0x7f0900f2

    invoke-virtual {p0, v0}, Lio/appium/android/apis/view/OverscanActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lio/appium/android/apis/view/OverscanActivity$IV;

    iput-object v0, p0, Lio/appium/android/apis/view/OverscanActivity;->mImage:Lio/appium/android/apis/view/OverscanActivity$IV;

    .line 163
    iget-object v0, p0, Lio/appium/android/apis/view/OverscanActivity;->mImage:Lio/appium/android/apis/view/OverscanActivity$IV;

    invoke-virtual {v0, p0}, Lio/appium/android/apis/view/OverscanActivity$IV;->setActivity(Lio/appium/android/apis/view/OverscanActivity;)V

    .line 165
    new-instance v0, Lio/appium/android/apis/view/OverscanActivity$1;

    invoke-direct {v0, p0}, Lio/appium/android/apis/view/OverscanActivity$1;-><init>(Lio/appium/android/apis/view/OverscanActivity;)V

    .line 171
    .local v0, "checkChangeListener":Landroid/widget/CompoundButton$OnCheckedChangeListener;
    iget-object v1, p0, Lio/appium/android/apis/view/OverscanActivity;->mCheckControls:[Landroid/widget/CheckBox;

    const v2, 0x7f090131

    invoke-virtual {p0, v2}, Lio/appium/android/apis/view/OverscanActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 172
    iget-object v1, p0, Lio/appium/android/apis/view/OverscanActivity;->mCheckControls:[Landroid/widget/CheckBox;

    const v2, 0x7f09012f

    invoke-virtual {p0, v2}, Lio/appium/android/apis/view/OverscanActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 173
    iget-object v1, p0, Lio/appium/android/apis/view/OverscanActivity;->mCheckControls:[Landroid/widget/CheckBox;

    const v2, 0x7f090130

    invoke-virtual {p0, v2}, Lio/appium/android/apis/view/OverscanActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    const/4 v3, 0x2

    aput-object v2, v1, v3

    .line 174
    iget-object v1, p0, Lio/appium/android/apis/view/OverscanActivity;->mCheckControls:[Landroid/widget/CheckBox;

    const v2, 0x7f09010a

    invoke-virtual {p0, v2}, Lio/appium/android/apis/view/OverscanActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    const/4 v3, 0x3

    aput-object v2, v1, v3

    .line 175
    iget-object v1, p0, Lio/appium/android/apis/view/OverscanActivity;->mCheckControls:[Landroid/widget/CheckBox;

    const v2, 0x7f090108

    invoke-virtual {p0, v2}, Lio/appium/android/apis/view/OverscanActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    const/4 v3, 0x4

    aput-object v2, v1, v3

    .line 176
    iget-object v1, p0, Lio/appium/android/apis/view/OverscanActivity;->mCheckControls:[Landroid/widget/CheckBox;

    const v2, 0x7f090109

    invoke-virtual {p0, v2}, Lio/appium/android/apis/view/OverscanActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    const/4 v3, 0x5

    aput-object v2, v1, v3

    .line 177
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lio/appium/android/apis/view/OverscanActivity;->mCheckControls:[Landroid/widget/CheckBox;

    array-length v3, v2

    if-ge v1, v3, :cond_0

    .line 178
    aget-object v2, v2, v1

    invoke-virtual {v2, v0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 177
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 180
    .end local v1    # "i":I
    :cond_0
    const v1, 0x7f09024d

    invoke-virtual {p0, v1}, Lio/appium/android/apis/view/OverscanActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    new-instance v2, Lio/appium/android/apis/view/OverscanActivity$2;

    invoke-direct {v2, p0}, Lio/appium/android/apis/view/OverscanActivity$2;-><init>(Lio/appium/android/apis/view/OverscanActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 188
    const v1, 0x7f09024e

    invoke-virtual {p0, v1}, Lio/appium/android/apis/view/OverscanActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    new-instance v2, Lio/appium/android/apis/view/OverscanActivity$3;

    invoke-direct {v2, p0}, Lio/appium/android/apis/view/OverscanActivity$3;-><init>(Lio/appium/android/apis/view/OverscanActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 200
    const v1, 0x7f09024c

    invoke-virtual {p0, v1}, Lio/appium/android/apis/view/OverscanActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    new-instance v2, Lio/appium/android/apis/view/OverscanActivity$4;

    invoke-direct {v2, p0}, Lio/appium/android/apis/view/OverscanActivity$4;-><init>(Lio/appium/android/apis/view/OverscanActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 212
    const v1, 0x7f09012b

    invoke-virtual {p0, v1}, Lio/appium/android/apis/view/OverscanActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lio/appium/android/apis/view/OverscanActivity;->mMetricsText:Landroid/widget/TextView;

    .line 213
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 7
    .param p1, "menu"    # Landroid/view/Menu;

    .line 217
    invoke-virtual {p0}, Lio/appium/android/apis/view/OverscanActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 218
    .local v0, "inflater":Landroid/view/MenuInflater;
    const v1, 0x7f0c0006

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 219
    const v1, 0x7f09001a

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/SearchView;

    .line 220
    .local v1, "searchView":Landroid/widget/SearchView;
    invoke-virtual {v1, p0}, Landroid/widget/SearchView;->setOnQueryTextListener(Landroid/widget/SearchView$OnQueryTextListener;)V

    .line 223
    const v2, 0x7f090127

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 224
    .local v2, "actionItem":Landroid/view/MenuItem;
    invoke-interface {v2}, Landroid/view/MenuItem;->getActionProvider()Landroid/view/ActionProvider;

    move-result-object v3

    check-cast v3, Landroid/widget/ShareActionProvider;

    .line 225
    .local v3, "actionProvider":Landroid/widget/ShareActionProvider;
    const-string v4, "share_history.xml"

    invoke-virtual {v3, v4}, Landroid/widget/ShareActionProvider;->setShareHistoryFileName(Ljava/lang/String;)V

    .line 228
    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.intent.action.SEND"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 229
    .local v4, "shareIntent":Landroid/content/Intent;
    const-string v5, "image/*"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 230
    const-string v5, "shared.png"

    invoke-virtual {p0, v5}, Lio/appium/android/apis/view/OverscanActivity;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v5

    .line 231
    .local v5, "uri":Landroid/net/Uri;
    const-string v6, "android.intent.extra.STREAM"

    invoke-virtual {v4, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 232
    invoke-virtual {v3, v4}, Landroid/widget/ShareActionProvider;->setShareIntent(Landroid/content/Intent;)V

    .line 233
    const/4 v6, 0x1

    return v6
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .param p1, "item"    # Landroid/view/MenuItem;

    .line 262
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f0900e8

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v1, :cond_1

    const v1, 0x7f0901ce

    if-eq v0, v1, :cond_0

    .line 272
    return v2

    .line 264
    :cond_0
    invoke-virtual {p0}, Lio/appium/android/apis/view/OverscanActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setNavigationMode(I)V

    .line 265
    invoke-interface {p1, v3}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 266
    return v3

    .line 268
    :cond_1
    invoke-virtual {p0}, Lio/appium/android/apis/view/OverscanActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setNavigationMode(I)V

    .line 269
    invoke-interface {p1, v3}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 270
    return v3
.end method

.method public onQueryTextChange(Ljava/lang/String;)Z
    .locals 1
    .param p1, "newText"    # Ljava/lang/String;

    .line 251
    const/4 v0, 0x1

    return v0
.end method

.method public onQueryTextSubmit(Ljava/lang/String;)Z
    .locals 2
    .param p1, "query"    # Ljava/lang/String;

    .line 256
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Searching for: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 257
    const/4 v0, 0x1

    return v0
.end method

.method protected onResume()V
    .locals 0

    .line 243
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 244
    return-void
.end method

.method public onSort(Landroid/view/MenuItem;)V
    .locals 0
    .param p1, "item"    # Landroid/view/MenuItem;

    .line 247
    return-void
.end method

.method public onTabReselected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V
    .locals 0
    .param p1, "tab"    # Landroid/app/ActionBar$Tab;
    .param p2, "ft"    # Landroid/app/FragmentTransaction;

    .line 285
    return-void
.end method

.method public onTabSelected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V
    .locals 0
    .param p1, "tab"    # Landroid/app/ActionBar$Tab;
    .param p2, "ft"    # Landroid/app/FragmentTransaction;

    .line 277
    return-void
.end method

.method public onTabUnselected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V
    .locals 0
    .param p1, "tab"    # Landroid/app/ActionBar$Tab;
    .param p2, "ft"    # Landroid/app/FragmentTransaction;

    .line 281
    return-void
.end method

.method refreshSizes()V
    .locals 3

    .line 139
    iget-object v0, p0, Lio/appium/android/apis/view/OverscanActivity;->mMetricsText:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lio/appium/android/apis/view/OverscanActivity;->getDisplaySize()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lio/appium/android/apis/view/OverscanActivity;->getViewSize()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 140
    return-void
.end method

.method public updateCheckControls()V
    .locals 4

    .line 288
    iget-object v0, p0, Lio/appium/android/apis/view/OverscanActivity;->mImage:Lio/appium/android/apis/view/OverscanActivity$IV;

    invoke-virtual {v0}, Lio/appium/android/apis/view/OverscanActivity$IV;->getSystemUiVisibility()I

    move-result v0

    .line 289
    .local v0, "visibility":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lio/appium/android/apis/view/OverscanActivity;->mCheckControls:[Landroid/widget/CheckBox;

    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 290
    aget-object v2, v2, v1

    iget-object v3, p0, Lio/appium/android/apis/view/OverscanActivity;->mCheckFlags:[I

    aget v3, v3, v1

    and-int/2addr v3, v0

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    :goto_1
    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 289
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 292
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method public updateSystemUi()V
    .locals 4

    .line 295
    const/4 v0, 0x0

    .line 296
    .local v0, "visibility":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lio/appium/android/apis/view/OverscanActivity;->mCheckControls:[Landroid/widget/CheckBox;

    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 297
    aget-object v2, v2, v1

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 298
    iget-object v2, p0, Lio/appium/android/apis/view/OverscanActivity;->mCheckFlags:[I

    aget v2, v2, v1

    or-int/2addr v0, v2

    .line 296
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 301
    .end local v1    # "i":I
    :cond_1
    iget-object v1, p0, Lio/appium/android/apis/view/OverscanActivity;->mImage:Lio/appium/android/apis/view/OverscanActivity$IV;

    invoke-virtual {v1, v0}, Lio/appium/android/apis/view/OverscanActivity$IV;->setSystemUiVisibility(I)V

    .line 302
    return-void
.end method
