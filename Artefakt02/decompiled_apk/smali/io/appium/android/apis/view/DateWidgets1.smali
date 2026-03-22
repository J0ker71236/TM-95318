.class public Lio/appium/android/apis/view/DateWidgets1;
.super Landroid/app/Activity;
.source "DateWidgets1.java"


# static fields
.field static final DATE_DIALOG_ID:I = 0x1

.field static final TIME_DIALOG_ID:I = 0x0

.field static final TIME_DIALOG_SPINNER_ID:I = 0x2


# instance fields
.field private mDateDisplay:Landroid/widget/TextView;

.field private mDateSetListener:Landroid/app/DatePickerDialog$OnDateSetListener;

.field private mDay:I

.field private mHour:I

.field private mMinute:I

.field private mMonth:I

.field private mTimeSetListener:Landroid/app/TimePickerDialog$OnTimeSetListener;

.field private mYear:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 42
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 143
    new-instance v0, Lio/appium/android/apis/view/DateWidgets1$4;

    invoke-direct {v0, p0}, Lio/appium/android/apis/view/DateWidgets1$4;-><init>(Lio/appium/android/apis/view/DateWidgets1;)V

    iput-object v0, p0, Lio/appium/android/apis/view/DateWidgets1;->mDateSetListener:Landroid/app/DatePickerDialog$OnDateSetListener;

    .line 155
    new-instance v0, Lio/appium/android/apis/view/DateWidgets1$5;

    invoke-direct {v0, p0}, Lio/appium/android/apis/view/DateWidgets1$5;-><init>(Lio/appium/android/apis/view/DateWidgets1;)V

    iput-object v0, p0, Lio/appium/android/apis/view/DateWidgets1;->mTimeSetListener:Landroid/app/TimePickerDialog$OnTimeSetListener;

    return-void
.end method

.method static synthetic access$002(Lio/appium/android/apis/view/DateWidgets1;I)I
    .locals 0
    .param p0, "x0"    # Lio/appium/android/apis/view/DateWidgets1;
    .param p1, "x1"    # I

    .line 42
    iput p1, p0, Lio/appium/android/apis/view/DateWidgets1;->mYear:I

    return p1
.end method

.method static synthetic access$102(Lio/appium/android/apis/view/DateWidgets1;I)I
    .locals 0
    .param p0, "x0"    # Lio/appium/android/apis/view/DateWidgets1;
    .param p1, "x1"    # I

    .line 42
    iput p1, p0, Lio/appium/android/apis/view/DateWidgets1;->mMonth:I

    return p1
.end method

.method static synthetic access$202(Lio/appium/android/apis/view/DateWidgets1;I)I
    .locals 0
    .param p0, "x0"    # Lio/appium/android/apis/view/DateWidgets1;
    .param p1, "x1"    # I

    .line 42
    iput p1, p0, Lio/appium/android/apis/view/DateWidgets1;->mDay:I

    return p1
.end method

.method static synthetic access$300(Lio/appium/android/apis/view/DateWidgets1;)V
    .locals 0
    .param p0, "x0"    # Lio/appium/android/apis/view/DateWidgets1;

    .line 42
    invoke-direct {p0}, Lio/appium/android/apis/view/DateWidgets1;->updateDisplay()V

    return-void
.end method

.method static synthetic access$402(Lio/appium/android/apis/view/DateWidgets1;I)I
    .locals 0
    .param p0, "x0"    # Lio/appium/android/apis/view/DateWidgets1;
    .param p1, "x1"    # I

    .line 42
    iput p1, p0, Lio/appium/android/apis/view/DateWidgets1;->mHour:I

    return p1
.end method

.method static synthetic access$502(Lio/appium/android/apis/view/DateWidgets1;I)I
    .locals 0
    .param p0, "x0"    # Lio/appium/android/apis/view/DateWidgets1;
    .param p1, "x1"    # I

    .line 42
    iput p1, p0, Lio/appium/android/apis/view/DateWidgets1;->mMinute:I

    return p1
.end method

.method private static pad(I)Ljava/lang/String;
    .locals 2
    .param p0, "c"    # I

    .line 166
    const/16 v0, 0xa

    if-lt p0, v0, :cond_0

    .line 167
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 169
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private updateDisplay()V
    .locals 3

    .line 133
    iget-object v0, p0, Lio/appium/android/apis/view/DateWidgets1;->mDateDisplay:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lio/appium/android/apis/view/DateWidgets1;->mMonth:I

    add-int/lit8 v2, v2, 0x1

    .line 136
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lio/appium/android/apis/view/DateWidgets1;->mDay:I

    .line 137
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lio/appium/android/apis/view/DateWidgets1;->mYear:I

    .line 138
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lio/appium/android/apis/view/DateWidgets1;->mHour:I

    .line 139
    invoke-static {v2}, Lio/appium/android/apis/view/DateWidgets1;->pad(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lio/appium/android/apis/view/DateWidgets1;->mMinute:I

    .line 140
    invoke-static {v2}, Lio/appium/android/apis/view/DateWidgets1;->pad(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 141
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 60
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 62
    const v0, 0x7f0b0054

    invoke-virtual {p0, v0}, Lio/appium/android/apis/view/DateWidgets1;->setContentView(I)V

    .line 64
    const v0, 0x7f090085

    invoke-virtual {p0, v0}, Lio/appium/android/apis/view/DateWidgets1;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lio/appium/android/apis/view/DateWidgets1;->mDateDisplay:Landroid/widget/TextView;

    .line 66
    const v0, 0x7f09015f

    invoke-virtual {p0, v0}, Lio/appium/android/apis/view/DateWidgets1;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 67
    .local v0, "pickDate":Landroid/widget/Button;
    new-instance v1, Lio/appium/android/apis/view/DateWidgets1$1;

    invoke-direct {v1, p0}, Lio/appium/android/apis/view/DateWidgets1$1;-><init>(Lio/appium/android/apis/view/DateWidgets1;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74
    const v1, 0x7f090160

    invoke-virtual {p0, v1}, Lio/appium/android/apis/view/DateWidgets1;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 75
    .local v1, "pickTime":Landroid/widget/Button;
    new-instance v2, Lio/appium/android/apis/view/DateWidgets1$2;

    invoke-direct {v2, p0}, Lio/appium/android/apis/view/DateWidgets1$2;-><init>(Lio/appium/android/apis/view/DateWidgets1;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 82
    const v2, 0x7f090161

    invoke-virtual {p0, v2}, Lio/appium/android/apis/view/DateWidgets1;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 83
    .local v2, "pickTimeSpinner":Landroid/widget/Button;
    new-instance v3, Lio/appium/android/apis/view/DateWidgets1$3;

    invoke-direct {v3, p0}, Lio/appium/android/apis/view/DateWidgets1$3;-><init>(Lio/appium/android/apis/view/DateWidgets1;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 90
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    .line 91
    .local v3, "c":Ljava/util/Calendar;
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v5

    iput v5, p0, Lio/appium/android/apis/view/DateWidgets1;->mYear:I

    .line 92
    const/4 v5, 0x2

    invoke-virtual {v3, v5}, Ljava/util/Calendar;->get(I)I

    move-result v6

    iput v6, p0, Lio/appium/android/apis/view/DateWidgets1;->mMonth:I

    .line 93
    const/4 v6, 0x5

    invoke-virtual {v3, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    iput v6, p0, Lio/appium/android/apis/view/DateWidgets1;->mDay:I

    .line 94
    iput v4, p0, Lio/appium/android/apis/view/DateWidgets1;->mHour:I

    .line 95
    iput v5, p0, Lio/appium/android/apis/view/DateWidgets1;->mMinute:I

    .line 97
    invoke-direct {p0}, Lio/appium/android/apis/view/DateWidgets1;->updateDisplay()V

    .line 98
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 14
    .param p1, "id"    # I

    .line 102
    packed-switch p1, :pswitch_data_0

    .line 114
    const/4 v0, 0x0

    return-object v0

    .line 107
    :pswitch_0
    new-instance v7, Landroid/app/TimePickerDialog;

    const v2, 0x1030071

    iget-object v3, p0, Lio/appium/android/apis/view/DateWidgets1;->mTimeSetListener:Landroid/app/TimePickerDialog$OnTimeSetListener;

    iget v4, p0, Lio/appium/android/apis/view/DateWidgets1;->mHour:I

    iget v5, p0, Lio/appium/android/apis/view/DateWidgets1;->mMinute:I

    const/4 v6, 0x0

    move-object v0, v7

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Landroid/app/TimePickerDialog;-><init>(Landroid/content/Context;ILandroid/app/TimePickerDialog$OnTimeSetListener;IIZ)V

    return-object v7

    .line 110
    :pswitch_1
    new-instance v0, Landroid/app/DatePickerDialog;

    iget-object v10, p0, Lio/appium/android/apis/view/DateWidgets1;->mDateSetListener:Landroid/app/DatePickerDialog$OnDateSetListener;

    iget v11, p0, Lio/appium/android/apis/view/DateWidgets1;->mYear:I

    iget v12, p0, Lio/appium/android/apis/view/DateWidgets1;->mMonth:I

    iget v13, p0, Lio/appium/android/apis/view/DateWidgets1;->mDay:I

    move-object v8, v0

    move-object v9, p0

    invoke-direct/range {v8 .. v13}, Landroid/app/DatePickerDialog;-><init>(Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V

    return-object v0

    .line 104
    :pswitch_2
    new-instance v0, Landroid/app/TimePickerDialog;

    iget-object v3, p0, Lio/appium/android/apis/view/DateWidgets1;->mTimeSetListener:Landroid/app/TimePickerDialog$OnTimeSetListener;

    iget v4, p0, Lio/appium/android/apis/view/DateWidgets1;->mHour:I

    iget v5, p0, Lio/appium/android/apis/view/DateWidgets1;->mMinute:I

    const/4 v6, 0x0

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Landroid/app/TimePickerDialog;-><init>(Landroid/content/Context;Landroid/app/TimePickerDialog$OnTimeSetListener;IIZ)V

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 4
    .param p1, "id"    # I
    .param p2, "dialog"    # Landroid/app/Dialog;

    .line 119
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 124
    :pswitch_0
    move-object v0, p2

    check-cast v0, Landroid/app/TimePickerDialog;

    iget v1, p0, Lio/appium/android/apis/view/DateWidgets1;->mHour:I

    iget v2, p0, Lio/appium/android/apis/view/DateWidgets1;->mMinute:I

    invoke-virtual {v0, v1, v2}, Landroid/app/TimePickerDialog;->updateTime(II)V

    .line 125
    goto :goto_0

    .line 127
    :pswitch_1
    move-object v0, p2

    check-cast v0, Landroid/app/DatePickerDialog;

    iget v1, p0, Lio/appium/android/apis/view/DateWidgets1;->mYear:I

    iget v2, p0, Lio/appium/android/apis/view/DateWidgets1;->mMonth:I

    iget v3, p0, Lio/appium/android/apis/view/DateWidgets1;->mDay:I

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/DatePickerDialog;->updateDate(III)V

    goto :goto_0

    .line 121
    :pswitch_2
    move-object v0, p2

    check-cast v0, Landroid/app/TimePickerDialog;

    iget v1, p0, Lio/appium/android/apis/view/DateWidgets1;->mHour:I

    iget v2, p0, Lio/appium/android/apis/view/DateWidgets1;->mMinute:I

    invoke-virtual {v0, v1, v2}, Landroid/app/TimePickerDialog;->updateTime(II)V

    .line 122
    nop

    .line 130
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
