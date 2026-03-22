.class Lio/appium/android/apis/view/CustomPicker1$1;
.super Ljava/lang/Object;
.source "CustomPicker1.java"

# interfaces
.implements Landroid/widget/NumberPicker$OnValueChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/appium/android/apis/view/CustomPicker1;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/appium/android/apis/view/CustomPicker1;

.field final synthetic val$values:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lio/appium/android/apis/view/CustomPicker1;[Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lio/appium/android/apis/view/CustomPicker1;

    .line 45
    iput-object p1, p0, Lio/appium/android/apis/view/CustomPicker1$1;->this$0:Lio/appium/android/apis/view/CustomPicker1;

    iput-object p2, p0, Lio/appium/android/apis/view/CustomPicker1$1;->val$values:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onValueChange(Landroid/widget/NumberPicker;II)V
    .locals 3
    .param p1, "picker"    # Landroid/widget/NumberPicker;
    .param p2, "oldVal"    # I
    .param p3, "newVal"    # I

    .line 48
    iget-object v0, p0, Lio/appium/android/apis/view/CustomPicker1$1;->this$0:Lio/appium/android/apis/view/CustomPicker1;

    invoke-static {v0}, Lio/appium/android/apis/view/CustomPicker1;->access$000(Lio/appium/android/apis/view/CustomPicker1;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lio/appium/android/apis/view/CustomPicker1$1;->val$values:[Ljava/lang/String;

    aget-object v2, v2, p3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 49
    return-void
.end method
