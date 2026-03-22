.class public Lio/appium/android/apis/app/SearchInvoke;
.super Landroid/app/Activity;
.source "SearchInvoke.java"


# static fields
.field static final MENUMODE_DISABLED:I = 0x3

.field static final MENUMODE_MENU_ITEM:I = 0x1

.field static final MENUMODE_SEARCH_KEY:I = 0x0

.field static final MENUMODE_TYPE_TO_SEARCH:I = 0x2


# instance fields
.field mMenuMode:Landroid/widget/Spinner;

.field mQueryAppData:Landroid/widget/EditText;

.field mQueryPrefill:Landroid/widget/EditText;

.field mStartSearch:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private clearSearchHistory()V
    .locals 3

    .line 236
    new-instance v0, Landroid/provider/SearchRecentSuggestions;

    const-string v1, "io.appium.android.apis.SuggestionProvider"

    const/4 v2, 0x1

    invoke-direct {v0, p0, v1, v2}, Landroid/provider/SearchRecentSuggestions;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    .line 238
    .local v0, "suggestions":Landroid/provider/SearchRecentSuggestions;
    invoke-virtual {v0}, Landroid/provider/SearchRecentSuggestions;->clearHistory()V

    .line 239
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 60
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 63
    const v0, 0x7f0b00e8

    invoke-virtual {p0, v0}, Lio/appium/android/apis/app/SearchInvoke;->setContentView(I)V

    .line 66
    const v0, 0x7f090046

    invoke-virtual {p0, v0}, Lio/appium/android/apis/app/SearchInvoke;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lio/appium/android/apis/app/SearchInvoke;->mStartSearch:Landroid/widget/Button;

    .line 67
    const v0, 0x7f0901dd

    invoke-virtual {p0, v0}, Lio/appium/android/apis/app/SearchInvoke;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lio/appium/android/apis/app/SearchInvoke;->mMenuMode:Landroid/widget/Spinner;

    .line 68
    const v0, 0x7f090235

    invoke-virtual {p0, v0}, Lio/appium/android/apis/app/SearchInvoke;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lio/appium/android/apis/app/SearchInvoke;->mQueryPrefill:Landroid/widget/EditText;

    .line 69
    const v0, 0x7f090234

    invoke-virtual {p0, v0}, Lio/appium/android/apis/app/SearchInvoke;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lio/appium/android/apis/app/SearchInvoke;->mQueryAppData:Landroid/widget/EditText;

    .line 72
    const v0, 0x7f030008

    const v1, 0x1090008

    invoke-static {p0, v0, v1}, Landroid/widget/ArrayAdapter;->createFromResource(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;

    move-result-object v0

    .line 74
    .local v0, "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    const v1, 0x1090009

    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 75
    iget-object v1, p0, Lio/appium/android/apis/app/SearchInvoke;->mMenuMode:Landroid/widget/Spinner;

    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 80
    iget-object v1, p0, Lio/appium/android/apis/app/SearchInvoke;->mMenuMode:Landroid/widget/Spinner;

    new-instance v2, Lio/appium/android/apis/app/SearchInvoke$1;

    invoke-direct {v2, p0}, Lio/appium/android/apis/app/SearchInvoke$1;-><init>(Lio/appium/android/apis/app/SearchInvoke;)V

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 97
    iget-object v1, p0, Lio/appium/android/apis/app/SearchInvoke;->mStartSearch:Landroid/widget/Button;

    new-instance v2, Lio/appium/android/apis/app/SearchInvoke$2;

    invoke-direct {v2, p0}, Lio/appium/android/apis/app/SearchInvoke$2;-><init>(Lio/appium/android/apis/app/SearchInvoke;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 103
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .line 145
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    .line 176
    :pswitch_0
    invoke-direct {p0}, Lio/appium/android/apis/app/SearchInvoke;->clearSearchHistory()V

    goto :goto_1

    .line 147
    :pswitch_1
    iget-object v0, p0, Lio/appium/android/apis/app/SearchInvoke;->mMenuMode:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_1

    goto :goto_0

    .line 168
    :pswitch_2
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v2, "You have disabled search."

    .line 169
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v2, "OK"

    .line 170
    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 171
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    .line 161
    :pswitch_3
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v2, "To invoke search, dismiss this dialog and start typing."

    .line 162
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v2, "OK"

    .line 163
    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 164
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 165
    goto :goto_0

    .line 157
    :pswitch_4
    invoke-virtual {p0}, Lio/appium/android/apis/app/SearchInvoke;->onSearchRequested()Z

    .line 158
    goto :goto_0

    .line 149
    :pswitch_5
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v2, "To invoke search, dismiss this dialog and press the search key (F5 on the simulator)."

    .line 150
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v2, "OK"

    .line 152
    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 153
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 154
    nop

    .line 174
    :goto_0
    nop

    .line 180
    :goto_1
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;

    .line 110
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 114
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/view/Menu;->removeItem(I)V

    .line 115
    const/4 v1, 0x1

    invoke-interface {p1, v1}, Landroid/view/Menu;->removeItem(I)V

    .line 118
    iget-object v2, p0, Lio/appium/android/apis/app/SearchInvoke;->mMenuMode:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 134
    :pswitch_0
    const-string v2, "(Disabled)"

    invoke-interface {p1, v0, v0, v0, v2}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    goto :goto_0

    .line 130
    :pswitch_1
    const-string v2, "(Type-To-Search)"

    invoke-interface {p1, v0, v0, v0, v2}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v2

    .line 131
    .local v2, "item":Landroid/view/MenuItem;
    goto :goto_0

    .line 125
    .end local v2    # "item":Landroid/view/MenuItem;
    :pswitch_2
    const-string v2, "Search"

    invoke-interface {p1, v0, v0, v0, v2}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v2

    .line 126
    .restart local v2    # "item":Landroid/view/MenuItem;
    const/16 v3, 0x73

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    .line 127
    goto :goto_0

    .line 121
    .end local v2    # "item":Landroid/view/MenuItem;
    :pswitch_3
    const-string v2, "(Search Key)"

    invoke-interface {p1, v0, v0, v0, v2}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v2

    .line 122
    .restart local v2    # "item":Landroid/view/MenuItem;
    nop

    .line 138
    .end local v2    # "item":Landroid/view/MenuItem;
    :goto_0
    const-string v2, "Clear History"

    invoke-interface {p1, v0, v1, v0, v2}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    .line 139
    .local v0, "item":Landroid/view/MenuItem;
    return v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onSearchRequested()Z
    .locals 5

    .line 193
    iget-object v0, p0, Lio/appium/android/apis/app/SearchInvoke;->mMenuMode:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    .line 194
    return v1

    .line 201
    :cond_0
    iget-object v0, p0, Lio/appium/android/apis/app/SearchInvoke;->mQueryPrefill:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 208
    .local v0, "queryPrefill":Ljava/lang/String;
    const/4 v2, 0x0

    .line 209
    .local v2, "appDataBundle":Landroid/os/Bundle;
    iget-object v3, p0, Lio/appium/android/apis/app/SearchInvoke;->mQueryAppData:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 210
    .local v3, "queryAppDataString":Ljava/lang/String;
    if-eqz v3, :cond_1

    .line 211
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    move-object v2, v4

    .line 212
    const-string v4, "demo_key"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    :cond_1
    invoke-virtual {p0, v0, v1, v2, v1}, Lio/appium/android/apis/app/SearchInvoke;->startSearch(Ljava/lang/String;ZLandroid/os/Bundle;Z)V

    .line 219
    const/4 v1, 0x1

    return v1
.end method
