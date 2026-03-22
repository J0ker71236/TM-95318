.class Lio/appium/android/apis/view/TextFields$1;
.super Ljava/lang/Object;
.source "TextFields.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/appium/android/apis/view/TextFields;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/appium/android/apis/view/TextFields;

.field final synthetic val$passwordOutput:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lio/appium/android/apis/view/TextFields;Landroid/widget/TextView;)V
    .locals 0
    .param p1, "this$0"    # Lio/appium/android/apis/view/TextFields;

    .line 45
    iput-object p1, p0, Lio/appium/android/apis/view/TextFields$1;->this$0:Lio/appium/android/apis/view/TextFields;

    iput-object p2, p0, Lio/appium/android/apis/view/TextFields$1;->val$passwordOutput:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .param p1, "s"    # Landroid/text/Editable;

    .line 47
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .line 50
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .line 56
    iget-object v0, p0, Lio/appium/android/apis/view/TextFields$1;->val$passwordOutput:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 57
    return-void
.end method
