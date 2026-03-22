.class final Lio/appium/android/apis/app/PresentationActivity$DisplayListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "PresentationActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/appium/android/apis/app/PresentationActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DisplayListAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Landroid/view/Display;",
        ">;"
    }
.end annotation


# instance fields
.field final mContext:Landroid/content/Context;

.field final synthetic this$0:Lio/appium/android/apis/app/PresentationActivity;


# direct methods
.method public constructor <init>(Lio/appium/android/apis/app/PresentationActivity;Landroid/content/Context;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;

    .line 330
    iput-object p1, p0, Lio/appium/android/apis/app/PresentationActivity$DisplayListAdapter;->this$0:Lio/appium/android/apis/app/PresentationActivity;

    .line 331
    const p1, 0x7f0b00be

    invoke-direct {p0, p2, p1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 332
    iput-object p2, p0, Lio/appium/android/apis/app/PresentationActivity$DisplayListAdapter;->mContext:Landroid/content/Context;

    .line 333
    return-void
.end method

.method private getDisplayCategory()Ljava/lang/String;
    .locals 1

    .line 383
    iget-object v0, p0, Lio/appium/android/apis/app/PresentationActivity$DisplayListAdapter;->this$0:Lio/appium/android/apis/app/PresentationActivity;

    invoke-static {v0}, Lio/appium/android/apis/app/PresentationActivity;->access$400(Lio/appium/android/apis/app/PresentationActivity;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const-string v0, "android.hardware.display.category.PRESENTATION"

    :goto_0
    return-object v0
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 11
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .line 338
    if-nez p2, :cond_0

    .line 339
    iget-object v0, p0, Lio/appium/android/apis/app/PresentationActivity$DisplayListAdapter;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0b00be

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 342
    :cond_0
    move-object v0, p2

    .line 345
    .local v0, "v":Landroid/view/View;
    :goto_0
    invoke-virtual {p0, p1}, Lio/appium/android/apis/app/PresentationActivity$DisplayListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/Display;

    .line 346
    .local v1, "display":Landroid/view/Display;
    invoke-virtual {v1}, Landroid/view/Display;->getDisplayId()I

    move-result v2

    .line 348
    .local v2, "displayId":I
    const v3, 0x7f090068

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    .line 349
    .local v3, "cb":Landroid/widget/CheckBox;
    invoke-virtual {v3, v1}, Landroid/widget/CheckBox;->setTag(Ljava/lang/Object;)V

    .line 350
    iget-object v4, p0, Lio/appium/android/apis/app/PresentationActivity$DisplayListAdapter;->this$0:Lio/appium/android/apis/app/PresentationActivity;

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 351
    iget-object v4, p0, Lio/appium/android/apis/app/PresentationActivity$DisplayListAdapter;->this$0:Lio/appium/android/apis/app/PresentationActivity;

    invoke-static {v4}, Lio/appium/android/apis/app/PresentationActivity;->access$100(Lio/appium/android/apis/app/PresentationActivity;)Landroid/util/SparseArray;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-gez v4, :cond_2

    iget-object v4, p0, Lio/appium/android/apis/app/PresentationActivity$DisplayListAdapter;->this$0:Lio/appium/android/apis/app/PresentationActivity;

    .line 352
    invoke-static {v4}, Lio/appium/android/apis/app/PresentationActivity;->access$200(Lio/appium/android/apis/app/PresentationActivity;)Landroid/util/SparseArray;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v4

    if-ltz v4, :cond_1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v4, 0x1

    .line 351
    :goto_2
    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 354
    const v4, 0x7f090098

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 355
    .local v4, "tv":Landroid/widget/TextView;
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0e0250

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    .line 356
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v5

    invoke-virtual {v1}, Landroid/view/Display;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v9, v6

    .line 355
    invoke-virtual {v7, v8, v9}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 358
    const v5, 0x7f0900f7

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    .line 359
    .local v5, "b":Landroid/widget/Button;
    invoke-virtual {v5, v1}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 360
    iget-object v6, p0, Lio/appium/android/apis/app/PresentationActivity$DisplayListAdapter;->this$0:Lio/appium/android/apis/app/PresentationActivity;

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 362
    return-object v0
.end method

.method public updateContents()V
    .locals 8

    .line 370
    invoke-virtual {p0}, Lio/appium/android/apis/app/PresentationActivity$DisplayListAdapter;->clear()V

    .line 372
    invoke-direct {p0}, Lio/appium/android/apis/app/PresentationActivity$DisplayListAdapter;->getDisplayCategory()Ljava/lang/String;

    move-result-object v0

    .line 373
    .local v0, "displayCategory":Ljava/lang/String;
    iget-object v1, p0, Lio/appium/android/apis/app/PresentationActivity$DisplayListAdapter;->this$0:Lio/appium/android/apis/app/PresentationActivity;

    invoke-static {v1}, Lio/appium/android/apis/app/PresentationActivity;->access$300(Lio/appium/android/apis/app/PresentationActivity;)Landroid/hardware/display/DisplayManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/hardware/display/DisplayManager;->getDisplays(Ljava/lang/String;)[Landroid/view/Display;

    move-result-object v1

    .line 374
    .local v1, "displays":[Landroid/view/Display;
    invoke-virtual {p0, v1}, Lio/appium/android/apis/app/PresentationActivity$DisplayListAdapter;->addAll([Ljava/lang/Object;)V

    .line 376
    const-string v2, "PresentationActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "There are currently "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " displays connected."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    .line 378
    .local v4, "display":Landroid/view/Display;
    const-string v5, "PresentationActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    .end local v4    # "display":Landroid/view/Display;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 380
    :cond_0
    return-void
.end method
