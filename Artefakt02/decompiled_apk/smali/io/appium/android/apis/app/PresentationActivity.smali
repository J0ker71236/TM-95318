.class public Lio/appium/android/apis/app/PresentationActivity;
.super Landroid/app/Activity;
.source "PresentationActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/appium/android/apis/app/PresentationActivity$PresentationContents;,
        Lio/appium/android/apis/app/PresentationActivity$DemoPresentation;,
        Lio/appium/android/apis/app/PresentationActivity$DisplayListAdapter;
    }
.end annotation


# static fields
.field private static final PHOTOS:[I

.field private static final PRESENTATION_KEY:Ljava/lang/String; = "presentation"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private final mActivePresentations:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lio/appium/android/apis/app/PresentationActivity$DemoPresentation;",
            ">;"
        }
    .end annotation
.end field

.field private mDisplayListAdapter:Lio/appium/android/apis/app/PresentationActivity$DisplayListAdapter;

.field private final mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

.field private mDisplayManager:Landroid/hardware/display/DisplayManager;

.field private mListView:Landroid/widget/ListView;

.field private mNextImageNumber:I

.field private final mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

.field private mSavedPresentationContents:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lio/appium/android/apis/app/PresentationActivity$PresentationContents;",
            ">;"
        }
    .end annotation
.end field

.field private mShowAllDisplaysCheckbox:Landroid/widget/CheckBox;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 84
    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lio/appium/android/apis/app/PresentationActivity;->PHOTOS:[I

    return-void

    :array_0
    .array-data 4
        0x7f080067
        0x7f080094
        0x7f080095
        0x7f080096
        0x7f080097
        0x7f080098
        0x7f080099
        0x7f0800a5
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .line 76
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 78
    const-string v0, "PresentationActivity"

    iput-object v0, p0, Lio/appium/android/apis/app/PresentationActivity;->TAG:Ljava/lang/String;

    .line 103
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lio/appium/android/apis/app/PresentationActivity;->mActivePresentations:Landroid/util/SparseArray;

    .line 287
    new-instance v0, Lio/appium/android/apis/app/PresentationActivity$2;

    invoke-direct {v0, p0}, Lio/appium/android/apis/app/PresentationActivity$2;-><init>(Lio/appium/android/apis/app/PresentationActivity;)V

    iput-object v0, p0, Lio/appium/android/apis/app/PresentationActivity;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    .line 311
    new-instance v0, Lio/appium/android/apis/app/PresentationActivity$3;

    invoke-direct {v0, p0}, Lio/appium/android/apis/app/PresentationActivity$3;-><init>(Lio/appium/android/apis/app/PresentationActivity;)V

    iput-object v0, p0, Lio/appium/android/apis/app/PresentationActivity;->mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    return-void
.end method

.method static synthetic access$000(Lio/appium/android/apis/app/PresentationActivity;)Lio/appium/android/apis/app/PresentationActivity$DisplayListAdapter;
    .locals 1
    .param p0, "x0"    # Lio/appium/android/apis/app/PresentationActivity;

    .line 76
    iget-object v0, p0, Lio/appium/android/apis/app/PresentationActivity;->mDisplayListAdapter:Lio/appium/android/apis/app/PresentationActivity$DisplayListAdapter;

    return-object v0
.end method

.method static synthetic access$100(Lio/appium/android/apis/app/PresentationActivity;)Landroid/util/SparseArray;
    .locals 1
    .param p0, "x0"    # Lio/appium/android/apis/app/PresentationActivity;

    .line 76
    iget-object v0, p0, Lio/appium/android/apis/app/PresentationActivity;->mActivePresentations:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$200(Lio/appium/android/apis/app/PresentationActivity;)Landroid/util/SparseArray;
    .locals 1
    .param p0, "x0"    # Lio/appium/android/apis/app/PresentationActivity;

    .line 76
    iget-object v0, p0, Lio/appium/android/apis/app/PresentationActivity;->mSavedPresentationContents:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$300(Lio/appium/android/apis/app/PresentationActivity;)Landroid/hardware/display/DisplayManager;
    .locals 1
    .param p0, "x0"    # Lio/appium/android/apis/app/PresentationActivity;

    .line 76
    iget-object v0, p0, Lio/appium/android/apis/app/PresentationActivity;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    return-object v0
.end method

.method static synthetic access$400(Lio/appium/android/apis/app/PresentationActivity;)Landroid/widget/CheckBox;
    .locals 1
    .param p0, "x0"    # Lio/appium/android/apis/app/PresentationActivity;

    .line 76
    iget-object v0, p0, Lio/appium/android/apis/app/PresentationActivity;->mShowAllDisplaysCheckbox:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$500()[I
    .locals 1

    .line 76
    sget-object v0, Lio/appium/android/apis/app/PresentationActivity;->PHOTOS:[I

    return-object v0
.end method

.method private getNextPhoto()I
    .locals 3

    .line 227
    iget v0, p0, Lio/appium/android/apis/app/PresentationActivity;->mNextImageNumber:I

    .line 228
    .local v0, "photo":I
    iget v1, p0, Lio/appium/android/apis/app/PresentationActivity;->mNextImageNumber:I

    add-int/lit8 v1, v1, 0x1

    sget-object v2, Lio/appium/android/apis/app/PresentationActivity;->PHOTOS:[I

    array-length v2, v2

    rem-int/2addr v1, v2

    iput v1, p0, Lio/appium/android/apis/app/PresentationActivity;->mNextImageNumber:I

    .line 229
    return v0
.end method

.method private hidePresentation(Landroid/view/Display;)V
    .locals 5
    .param p1, "display"    # Landroid/view/Display;

    .line 214
    invoke-virtual {p1}, Landroid/view/Display;->getDisplayId()I

    move-result v0

    .line 215
    .local v0, "displayId":I
    iget-object v1, p0, Lio/appium/android/apis/app/PresentationActivity;->mActivePresentations:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/appium/android/apis/app/PresentationActivity$DemoPresentation;

    .line 216
    .local v1, "presentation":Lio/appium/android/apis/app/PresentationActivity$DemoPresentation;
    if-nez v1, :cond_0

    .line 217
    return-void

    .line 220
    :cond_0
    const-string v2, "PresentationActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Dismissing presentation on display #"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    invoke-virtual {v1}, Lio/appium/android/apis/app/PresentationActivity$DemoPresentation;->dismiss()V

    .line 223
    iget-object v2, p0, Lio/appium/android/apis/app/PresentationActivity;->mActivePresentations:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->delete(I)V

    .line 224
    return-void
.end method

.method private showPresentation(Landroid/view/Display;Lio/appium/android/apis/app/PresentationActivity$PresentationContents;)V
    .locals 4
    .param p1, "display"    # Landroid/view/Display;
    .param p2, "contents"    # Lio/appium/android/apis/app/PresentationActivity$PresentationContents;

    .line 196
    invoke-virtual {p1}, Landroid/view/Display;->getDisplayId()I

    move-result v0

    .line 197
    .local v0, "displayId":I
    iget-object v1, p0, Lio/appium/android/apis/app/PresentationActivity;->mActivePresentations:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 198
    return-void

    .line 201
    :cond_0
    const-string v1, "PresentationActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Showing presentation photo #"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p2, Lio/appium/android/apis/app/PresentationActivity$PresentationContents;->photo:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " on display #"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    new-instance v1, Lio/appium/android/apis/app/PresentationActivity$DemoPresentation;

    invoke-direct {v1, p0, p0, p1, p2}, Lio/appium/android/apis/app/PresentationActivity$DemoPresentation;-><init>(Lio/appium/android/apis/app/PresentationActivity;Landroid/content/Context;Landroid/view/Display;Lio/appium/android/apis/app/PresentationActivity$PresentationContents;)V

    .line 205
    .local v1, "presentation":Lio/appium/android/apis/app/PresentationActivity$DemoPresentation;
    invoke-virtual {v1}, Lio/appium/android/apis/app/PresentationActivity$DemoPresentation;->show()V

    .line 206
    iget-object v2, p0, Lio/appium/android/apis/app/PresentationActivity;->mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {v1, v2}, Lio/appium/android/apis/app/PresentationActivity$DemoPresentation;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 207
    iget-object v2, p0, Lio/appium/android/apis/app/PresentationActivity;->mActivePresentations:Landroid/util/SparseArray;

    invoke-virtual {v2, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 208
    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .line 238
    iget-object v0, p0, Lio/appium/android/apis/app/PresentationActivity;->mShowAllDisplaysCheckbox:Landroid/widget/CheckBox;

    if-ne p1, v0, :cond_0

    .line 240
    iget-object v0, p0, Lio/appium/android/apis/app/PresentationActivity;->mDisplayListAdapter:Lio/appium/android/apis/app/PresentationActivity$DisplayListAdapter;

    invoke-virtual {v0}, Lio/appium/android/apis/app/PresentationActivity$DisplayListAdapter;->updateContents()V

    goto :goto_0

    .line 243
    :cond_0
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/Display;

    .line 244
    .local v0, "display":Landroid/view/Display;
    if-eqz p2, :cond_1

    .line 245
    new-instance v1, Lio/appium/android/apis/app/PresentationActivity$PresentationContents;

    invoke-direct {p0}, Lio/appium/android/apis/app/PresentationActivity;->getNextPhoto()I

    move-result v2

    invoke-direct {v1, v2}, Lio/appium/android/apis/app/PresentationActivity$PresentationContents;-><init>(I)V

    .line 246
    .local v1, "contents":Lio/appium/android/apis/app/PresentationActivity$PresentationContents;
    invoke-direct {p0, v0, v1}, Lio/appium/android/apis/app/PresentationActivity;->showPresentation(Landroid/view/Display;Lio/appium/android/apis/app/PresentationActivity$PresentationContents;)V

    .line 247
    .end local v1    # "contents":Lio/appium/android/apis/app/PresentationActivity$PresentationContents;
    goto :goto_0

    .line 248
    :cond_1
    invoke-direct {p0, v0}, Lio/appium/android/apis/app/PresentationActivity;->hidePresentation(Landroid/view/Display;)V

    .line 251
    .end local v0    # "display":Landroid/view/Display;
    :goto_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .line 259
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 260
    .local v0, "context":Landroid/content/Context;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 261
    .local v1, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/Display;

    .line 262
    .local v2, "display":Landroid/view/Display;
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 263
    .local v3, "r":Landroid/content/res/Resources;
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    .line 265
    invoke-virtual {v2}, Landroid/view/Display;->getDisplayId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    .line 264
    const v5, 0x7f0e024f

    invoke-virtual {v3, v5, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 266
    invoke-virtual {v2}, Landroid/view/Display;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    new-instance v5, Lio/appium/android/apis/app/PresentationActivity$1;

    invoke-direct {v5, p0}, Lio/appium/android/apis/app/PresentationActivity$1;-><init>(Lio/appium/android/apis/app/PresentationActivity;)V

    .line 267
    const v6, 0x7f0e024e

    invoke-virtual {v4, v6, v5}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 274
    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    .line 275
    .local v4, "alert":Landroid/app/AlertDialog;
    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    .line 276
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 114
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 117
    if-eqz p1, :cond_0

    .line 118
    const-string v0, "presentation"

    .line 119
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v0

    iput-object v0, p0, Lio/appium/android/apis/app/PresentationActivity;->mSavedPresentationContents:Landroid/util/SparseArray;

    goto :goto_0

    .line 121
    :cond_0
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lio/appium/android/apis/app/PresentationActivity;->mSavedPresentationContents:Landroid/util/SparseArray;

    .line 125
    :goto_0
    const-string v0, "display"

    invoke-virtual {p0, v0}, Lio/appium/android/apis/app/PresentationActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    iput-object v0, p0, Lio/appium/android/apis/app/PresentationActivity;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 130
    const v0, 0x7f0b00bc

    invoke-virtual {p0, v0}, Lio/appium/android/apis/app/PresentationActivity;->setContentView(I)V

    .line 133
    const v0, 0x7f0901cc

    invoke-virtual {p0, v0}, Lio/appium/android/apis/app/PresentationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lio/appium/android/apis/app/PresentationActivity;->mShowAllDisplaysCheckbox:Landroid/widget/CheckBox;

    .line 134
    iget-object v0, p0, Lio/appium/android/apis/app/PresentationActivity;->mShowAllDisplaysCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 137
    new-instance v0, Lio/appium/android/apis/app/PresentationActivity$DisplayListAdapter;

    invoke-direct {v0, p0, p0}, Lio/appium/android/apis/app/PresentationActivity$DisplayListAdapter;-><init>(Lio/appium/android/apis/app/PresentationActivity;Landroid/content/Context;)V

    iput-object v0, p0, Lio/appium/android/apis/app/PresentationActivity;->mDisplayListAdapter:Lio/appium/android/apis/app/PresentationActivity$DisplayListAdapter;

    .line 138
    const v0, 0x7f090099

    invoke-virtual {p0, v0}, Lio/appium/android/apis/app/PresentationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lio/appium/android/apis/app/PresentationActivity;->mListView:Landroid/widget/ListView;

    .line 139
    iget-object v0, p0, Lio/appium/android/apis/app/PresentationActivity;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lio/appium/android/apis/app/PresentationActivity;->mDisplayListAdapter:Lio/appium/android/apis/app/PresentationActivity$DisplayListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 140
    return-void
.end method

.method protected onPause()V
    .locals 5

    .line 169
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 172
    iget-object v0, p0, Lio/appium/android/apis/app/PresentationActivity;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    iget-object v1, p0, Lio/appium/android/apis/app/PresentationActivity;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManager;->unregisterDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;)V

    .line 175
    const-string v0, "PresentationActivity"

    const-string v1, "Activity is being paused.  Dismissing all active presentation."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lio/appium/android/apis/app/PresentationActivity;->mActivePresentations:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 177
    iget-object v1, p0, Lio/appium/android/apis/app/PresentationActivity;->mActivePresentations:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/appium/android/apis/app/PresentationActivity$DemoPresentation;

    .line 178
    .local v1, "presentation":Lio/appium/android/apis/app/PresentationActivity$DemoPresentation;
    iget-object v2, p0, Lio/appium/android/apis/app/PresentationActivity;->mActivePresentations:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 179
    .local v2, "displayId":I
    iget-object v3, p0, Lio/appium/android/apis/app/PresentationActivity;->mSavedPresentationContents:Landroid/util/SparseArray;

    iget-object v4, v1, Lio/appium/android/apis/app/PresentationActivity$DemoPresentation;->mContents:Lio/appium/android/apis/app/PresentationActivity$PresentationContents;

    invoke-virtual {v3, v2, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 180
    invoke-virtual {v1}, Lio/appium/android/apis/app/PresentationActivity$DemoPresentation;->dismiss()V

    .line 176
    .end local v1    # "presentation":Lio/appium/android/apis/app/PresentationActivity$DemoPresentation;
    .end local v2    # "displayId":I
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 182
    .end local v0    # "i":I
    :cond_0
    iget-object v0, p0, Lio/appium/android/apis/app/PresentationActivity;->mActivePresentations:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 183
    return-void
.end method

.method protected onResume()V
    .locals 5

    .line 145
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 148
    iget-object v0, p0, Lio/appium/android/apis/app/PresentationActivity;->mDisplayListAdapter:Lio/appium/android/apis/app/PresentationActivity$DisplayListAdapter;

    invoke-virtual {v0}, Lio/appium/android/apis/app/PresentationActivity$DisplayListAdapter;->updateContents()V

    .line 151
    iget-object v0, p0, Lio/appium/android/apis/app/PresentationActivity;->mDisplayListAdapter:Lio/appium/android/apis/app/PresentationActivity$DisplayListAdapter;

    invoke-virtual {v0}, Lio/appium/android/apis/app/PresentationActivity$DisplayListAdapter;->getCount()I

    move-result v0

    .line 152
    .local v0, "numDisplays":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 153
    iget-object v2, p0, Lio/appium/android/apis/app/PresentationActivity;->mDisplayListAdapter:Lio/appium/android/apis/app/PresentationActivity$DisplayListAdapter;

    invoke-virtual {v2, v1}, Lio/appium/android/apis/app/PresentationActivity$DisplayListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/Display;

    .line 154
    .local v2, "display":Landroid/view/Display;
    iget-object v3, p0, Lio/appium/android/apis/app/PresentationActivity;->mSavedPresentationContents:Landroid/util/SparseArray;

    .line 155
    invoke-virtual {v2}, Landroid/view/Display;->getDisplayId()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/appium/android/apis/app/PresentationActivity$PresentationContents;

    .line 156
    .local v3, "contents":Lio/appium/android/apis/app/PresentationActivity$PresentationContents;
    if-eqz v3, :cond_0

    .line 157
    invoke-direct {p0, v2, v3}, Lio/appium/android/apis/app/PresentationActivity;->showPresentation(Landroid/view/Display;Lio/appium/android/apis/app/PresentationActivity$PresentationContents;)V

    .line 152
    .end local v2    # "display":Landroid/view/Display;
    .end local v3    # "contents":Lio/appium/android/apis/app/PresentationActivity$PresentationContents;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 160
    .end local v1    # "i":I
    :cond_1
    iget-object v1, p0, Lio/appium/android/apis/app/PresentationActivity;->mSavedPresentationContents:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 163
    iget-object v1, p0, Lio/appium/android/apis/app/PresentationActivity;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    iget-object v2, p0, Lio/appium/android/apis/app/PresentationActivity;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    .line 164
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .line 188
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 189
    const-string v0, "presentation"

    iget-object v1, p0, Lio/appium/android/apis/app/PresentationActivity;->mSavedPresentationContents:Landroid/util/SparseArray;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    .line 190
    return-void
.end method
