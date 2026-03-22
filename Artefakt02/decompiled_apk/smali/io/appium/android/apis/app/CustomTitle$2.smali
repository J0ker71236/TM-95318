.class Lio/appium/android/apis/app/CustomTitle$2;
.super Ljava/lang/Object;
.source "CustomTitle.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/appium/android/apis/app/CustomTitle;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/appium/android/apis/app/CustomTitle;

.field final synthetic val$rightText:Landroid/widget/TextView;

.field final synthetic val$rightTextEdit:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lio/appium/android/apis/app/CustomTitle;Landroid/widget/TextView;Landroid/widget/EditText;)V
    .locals 0
    .param p1, "this$0"    # Lio/appium/android/apis/app/CustomTitle;

    .line 79
    iput-object p1, p0, Lio/appium/android/apis/app/CustomTitle$2;->this$0:Lio/appium/android/apis/app/CustomTitle;

    iput-object p2, p0, Lio/appium/android/apis/app/CustomTitle$2;->val$rightText:Landroid/widget/TextView;

    iput-object p3, p0, Lio/appium/android/apis/app/CustomTitle$2;->val$rightTextEdit:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .line 81
    iget-object v0, p0, Lio/appium/android/apis/app/CustomTitle$2;->val$rightText:Landroid/widget/TextView;

    iget-object v1, p0, Lio/appium/android/apis/app/CustomTitle$2;->val$rightTextEdit:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 82
    return-void
.end method
