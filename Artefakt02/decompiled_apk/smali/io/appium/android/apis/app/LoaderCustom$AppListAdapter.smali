.class public Lio/appium/android/apis/app/LoaderCustom$AppListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "LoaderCustom.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/appium/android/apis/app/LoaderCustom;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AppListAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Lio/appium/android/apis/app/LoaderCustom$AppEntry;",
        ">;"
    }
.end annotation


# instance fields
.field private final mInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 368
    const v0, 0x1090004

    invoke-direct {p0, p1, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 369
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lio/appium/android/apis/app/LoaderCustom$AppListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 370
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .line 385
    if-nez p2, :cond_0

    .line 386
    iget-object v0, p0, Lio/appium/android/apis/app/LoaderCustom$AppListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f0b00a4

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 388
    :cond_0
    move-object v0, p2

    .line 391
    .local v0, "view":Landroid/view/View;
    :goto_0
    invoke-virtual {p0, p1}, Lio/appium/android/apis/app/LoaderCustom$AppListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/appium/android/apis/app/LoaderCustom$AppEntry;

    .line 392
    .local v1, "item":Lio/appium/android/apis/app/LoaderCustom$AppEntry;
    const v2, 0x7f0900ef

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    invoke-virtual {v1}, Lio/appium/android/apis/app/LoaderCustom$AppEntry;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 393
    const v2, 0x7f09020c

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v1}, Lio/appium/android/apis/app/LoaderCustom$AppEntry;->getLabel()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 395
    return-object v0
.end method

.method public setData(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/appium/android/apis/app/LoaderCustom$AppEntry;",
            ">;)V"
        }
    .end annotation

    .line 373
    .local p1, "data":Ljava/util/List;, "Ljava/util/List<Lio/appium/android/apis/app/LoaderCustom$AppEntry;>;"
    invoke-virtual {p0}, Lio/appium/android/apis/app/LoaderCustom$AppListAdapter;->clear()V

    .line 374
    if-eqz p1, :cond_0

    .line 375
    invoke-virtual {p0, p1}, Lio/appium/android/apis/app/LoaderCustom$AppListAdapter;->addAll(Ljava/util/Collection;)V

    .line 377
    :cond_0
    return-void
.end method
