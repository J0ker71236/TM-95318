.class final Lio/appium/android/apis/app/PresentationActivity$DemoPresentation;
.super Landroid/app/Presentation;
.source "PresentationActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/appium/android/apis/app/PresentationActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DemoPresentation"
.end annotation


# instance fields
.field final mContents:Lio/appium/android/apis/app/PresentationActivity$PresentationContents;

.field final synthetic this$0:Lio/appium/android/apis/app/PresentationActivity;


# direct methods
.method public constructor <init>(Lio/appium/android/apis/app/PresentationActivity;Landroid/content/Context;Landroid/view/Display;Lio/appium/android/apis/app/PresentationActivity$PresentationContents;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "display"    # Landroid/view/Display;
    .param p4, "contents"    # Lio/appium/android/apis/app/PresentationActivity$PresentationContents;

    .line 399
    iput-object p1, p0, Lio/appium/android/apis/app/PresentationActivity$DemoPresentation;->this$0:Lio/appium/android/apis/app/PresentationActivity;

    .line 400
    invoke-direct {p0, p2, p3}, Landroid/app/Presentation;-><init>(Landroid/content/Context;Landroid/view/Display;)V

    .line 401
    iput-object p4, p0, Lio/appium/android/apis/app/PresentationActivity$DemoPresentation;->mContents:Lio/appium/android/apis/app/PresentationActivity$PresentationContents;

    .line 402
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 11
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 407
    invoke-super {p0, p1}, Landroid/app/Presentation;->onCreate(Landroid/os/Bundle;)V

    .line 411
    invoke-virtual {p0}, Lio/appium/android/apis/app/PresentationActivity$DemoPresentation;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 414
    .local v0, "r":Landroid/content/res/Resources;
    const v1, 0x7f0b00bd

    invoke-virtual {p0, v1}, Lio/appium/android/apis/app/PresentationActivity$DemoPresentation;->setContentView(I)V

    .line 416
    invoke-virtual {p0}, Lio/appium/android/apis/app/PresentationActivity$DemoPresentation;->getDisplay()Landroid/view/Display;

    move-result-object v1

    .line 417
    .local v1, "display":Landroid/view/Display;
    invoke-virtual {v1}, Landroid/view/Display;->getDisplayId()I

    move-result v2

    .line 418
    .local v2, "displayId":I
    iget-object v3, p0, Lio/appium/android/apis/app/PresentationActivity$DemoPresentation;->mContents:Lio/appium/android/apis/app/PresentationActivity$PresentationContents;

    iget v3, v3, Lio/appium/android/apis/app/PresentationActivity$PresentationContents;->photo:I

    .line 421
    .local v3, "photo":I
    const v4, 0x7f09020c

    invoke-virtual {p0, v4}, Lio/appium/android/apis/app/PresentationActivity$DemoPresentation;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 422
    .local v4, "text":Landroid/widget/TextView;
    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    .line 423
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v8, 0x1

    aput-object v6, v5, v8

    invoke-virtual {v1}, Landroid/view/Display;->getName()Ljava/lang/String;

    move-result-object v6

    const/4 v9, 0x2

    aput-object v6, v5, v9

    .line 422
    const v6, 0x7f0e0252

    invoke-virtual {v0, v6, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 426
    const v5, 0x7f0900f2

    invoke-virtual {p0, v5}, Lio/appium/android/apis/app/PresentationActivity$DemoPresentation;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    .line 427
    .local v5, "image":Landroid/widget/ImageView;
    invoke-static {}, Lio/appium/android/apis/app/PresentationActivity;->access$500()[I

    move-result-object v6

    aget v6, v6, v3

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 429
    new-instance v6, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v6}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 430
    .local v6, "drawable":Landroid/graphics/drawable/GradientDrawable;
    invoke-virtual {v6, v7}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 431
    invoke-virtual {v6, v8}, Landroid/graphics/drawable/GradientDrawable;->setGradientType(I)V

    .line 434
    new-instance v7, Landroid/graphics/Point;

    invoke-direct {v7}, Landroid/graphics/Point;-><init>()V

    .line 435
    .local v7, "p":Landroid/graphics/Point;
    invoke-virtual {p0}, Lio/appium/android/apis/app/PresentationActivity$DemoPresentation;->getDisplay()Landroid/view/Display;

    move-result-object v8

    invoke-virtual {v8, v7}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 436
    iget v8, v7, Landroid/graphics/Point;->x:I

    iget v10, v7, Landroid/graphics/Point;->y:I

    invoke-static {v8, v10}, Ljava/lang/Math;->max(II)I

    move-result v8

    div-int/2addr v8, v9

    int-to-float v8, v8

    invoke-virtual {v6, v8}, Landroid/graphics/drawable/GradientDrawable;->setGradientRadius(F)V

    .line 437
    iget-object v8, p0, Lio/appium/android/apis/app/PresentationActivity$DemoPresentation;->mContents:Lio/appium/android/apis/app/PresentationActivity$PresentationContents;

    iget-object v8, v8, Lio/appium/android/apis/app/PresentationActivity$PresentationContents;->colors:[I

    invoke-virtual {v6, v8}, Landroid/graphics/drawable/GradientDrawable;->setColors([I)V

    .line 438
    const v8, 0x1020002

    invoke-virtual {p0, v8}, Lio/appium/android/apis/app/PresentationActivity$DemoPresentation;->findViewById(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8, v6}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 439
    return-void
.end method
