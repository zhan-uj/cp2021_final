from bs4 import BeautifulSoup

# ref: https://stackoverflow.com/questions/15233340/getting-rid-of-n-when-using-readlines
# ref: https://stackoverflow.com/questions/3845423/remove-empty-strings-from-a-list-of-strings

# Global parameters setup
repo_path = "./../"
class_name = "1b"
group_file = repo_path + "/downloads/" + class_name + "_grouping.txt"
page_head = "h2"

# 寫入最原始的 content.htm
# origin_html
origin_html = """<h1>About</h1>
<p>Repository: <a href="https://github.com/mdecourse/cp2021_final">https://github.com/mdecourse/cp2021_final</a></p>
<p>Github Pages: <a href="https://mde.tw/cp2021_final">https://mde.tw/cp2021_final</a></p>
<p>Discussion: <a href="https://github.com/mdecourse/cp2021_final/discussions">https://github.com/mdecourse/cp2021_final/discussions</a></p>
<p>課程網站: <a href="https://mde.tw/cp2021">https://mde.tw/cp2021</a></p>
<p>作業網站: <a href="https://mde.tw/cp2021_hw">https://mde.tw/cp2021_hw</a></p>
<p><a href="https://mde.tw/cp2021/content/run.html?src=https://gist.githubusercontent.com/mdecourse/040036c57b1d81cc1c0608fe66316651/raw/42746c1e3d22aefbf0bd78fec4945d1c54243930/cp2021_1a_random_select.py">1a 抽點 10 位學員</a>查驗其作業倉儲與網站 (<a href="https://mde.tw/cp2021/content/run.html?src=https://gist.githubusercontent.com/mdecourse/040036c57b1d81cc1c0608fe66316651/raw/e7aa175bdf9d43d47ed521ab84bf6018054fe28e/cp2021_1a_list.py">1a 學員倉儲與網站</a>).</p>
<p><a href="https://mde.tw/cp2021/content/run.html?src=https://gist.githubusercontent.com/mdecourse/040036c57b1d81cc1c0608fe66316651/raw/42746c1e3d22aefbf0bd78fec4945d1c54243930/cp2021_1b_random_select.py">1b 抽點 10 位學員</a>查驗其作業倉儲與網站 (<a href="https://mde.tw/cp2021/content/run.html?src=https://gist.githubusercontent.com/mdecourse/040036c57b1d81cc1c0608fe66316651/raw/42746c1e3d22aefbf0bd78fec4945d1c54243930/cp2021_1b_list.py">1b 學員倉儲與網站</a>).</p>
<h2>Programming</h2>
<p>以下為各組長所提供的學員名單格式，其中以各組組序標題開頭，然後逐一列出各組員學號:</p>
<pre class="brush:js;auto-links:false;toolbar:false" contenteditable="false">1ag1
41023146
41023143
41023147
41023113
41023116
41023111
41023145
1ag2
41023104
41023103
41023105
41023106
41023107
41023109
1ag3
41023125
41023119
41023120
41023124
41023118
41023122
41023130
1ag4
40923129
41023135
41023150
41023151
41023152
40923115
41023132
1ag5
41023114
41023126
41023101
41023110
41023108
40823214
1ag6
41023121
41023140
41023133
41023112
41023153
41023134
41023138
40832244
1ag7
41023142
41023137
41023129
41023131
41023127
41023141
1ag8
40823227
41023154
41023128
41023136
41023144
41023149</pre>
<p>接著希望能夠透過 Python 程式讀出各組組序標題與組員名單，之後將要利用此一資料從 downloads 目錄取出各組員的動態網頁內容，並將資料按照組序放入 config/content.htm 檔案中。</p>
<p>以下為初步完成的程式編寫:</p>
<pre class="brush:py;auto-links:false;toolbar:false" contenteditable="false">'''設法讀出各班各組學員學號資料
'''
repo_path = "Y:/tmp/cp2021_final"
class_name = "1a"
group_file = repo_path + "/downloads/" + class_name + "_grouping.txt"

with open(group_file, encoding="utf-8") as f:
    data = f.read().splitlines()
data = list(filter(None, data))
#print(data)
grp_count = 0
grp_title = []
grp_mem = []
grp_big = []
for i in data:
    if class_name in i:
        mem_count = 0
        grp_count += 1
        grp = i
        # 納入各組組序標題
        grp_title.append(i)
        # 若 grp_mem 有值, 表示已經讀完各組學員名單
        # 就可以將該組全員名單納入 grp_big 數列中
        # 然後 grp_mem 重新設為空數列, 準備納入下一組員名單
        if len(grp_mem) &gt; 1:
            grp_big.append(grp_mem)
            grp_mem = []
        #print("組別:", grp_count, grp)
    else:
        # 讀完各組組序標題後, 將逐一將組員名單納入 grp_mem 數列中
        grp_mem.append(i)
        mem_count += 1
        student_id = i
        #print("學員:", mem_count, student_id)
# 離開組序標題後, 必須納入最後一組學員名單
grp_big.append(grp_mem)
# 查驗是否正確讀入各班組員名單
#print(grp_title, grp_big)
for i in range(len(grp_title)):
    # 分別讀出各組組序與排序後的組員學號
    print(grp_title[i], sorted(grp_big[i]))</pre>
<p></p>
<h2>Final</h2>
<p>假如希望利用 Brython 讀取 <a href="http://mde.tw/cp2021_final/downloads/1a_grouping.txt">http://mde.tw/cp2021_final/downloads/1a_grouping.txt</a>, 初步讀取各班的程式編寫為: <a href="https://gist.githubusercontent.com/mdecourse/2f56974a40da7a218dbaef376a5b4ca4/raw/41df2412bfd277c5b8e1fe52b0fe47d4fc0fbacb/cp2021_final.py">https://gist.githubusercontent.com/mdecourse/2f56974a40da7a218dbaef376a5b4ca4/raw/41df2412bfd277c5b8e1fe52b0fe47d4fc0fbacb/cp2021_final.py</a></p>
<p>BSnake 是從 <a href="https://hawstein.com/2013/04/15/snake-ai/">https://hawstein.com/2013/04/15/snake-ai/</a> (<a href="/downloads/BSnake_ref_blog.pdf">pdf</a>)修改為能夠在 Brython 網際程式環境中執行的版本.</p>
<!-- 導入 brython 程式庫 -->
<script src="/static/brython.js"></script>
<script src="/static/brython_stdlib.js"></script>
<!-- 啟動 Brython -->
<script>
window.onload=function(){
brython({debug:1, pythonpath:['/static/','./../downloads/py/']});
}
</script>
<p><!-- 導入 FileSaver 與 filereader --></p>
<p>
<script src="/static/ace/FileSaver.min.js" type="text/javascript"></script>
<script src="/static/ace/filereader.js" type="text/javascript"></script>
</p>
<p><!-- 導入 ace --></p>
<p>
<script src="/static/ace/ace.js" type="text/javascript"></script>
<script src="/static/ace/ext-language_tools.js" type="text/javascript"></script>
<script src="/static/ace/mode-python3.js" type="text/javascript"></script>
<script src="/static/ace/snippets/python.js" type="text/javascript"></script>
</p>
<p><!-- 請注意, 這裡使用 Javascript 將 localStorage["py_src"] 中存在近端瀏覽器的程式碼, 由使用者決定存檔名稱--></p>
<p>
<script type="text/javascript">
function doSave(storage_id, filename){
    var blob = new Blob([localStorage[storage_id]], {type: "text/plain;charset=utf-8"});
    filename = document.getElementById(filename).value
    saveAs(blob, filename+".py");
}
</script>
</p>
<p><!-- 導入 gearUtils-0.9.js Cango 齒輪繪圖程式庫 -->
<script src="https://mde.tw/cp2021/cmsimde/static/Cango-24v03-min.js"></script>
<script src="https://mde.tw/cp2021/cmsimde/static/gearUtils-09.js"></script>
<script src="https://mde.tw/cp2021/cmsimde/static/SVGpathUtils-6v03-min.js"></script>
<script src="https://mde.tw/cp2021/cmsimde/static/sylvester.js"></script>
<script src="https://mde.tw/cp2021/cmsimde/static/PrairieDraw.js"></script>
</p>
<p><button id="add1to100">add 1 to 100</button><button id="p261">p261</button><button id="rocflag">ROC flag</button><button id="snake">Snake</button><button id="bsnake">BSnake</button><button id="final">Final</button></p>
<p><!-- ######################  editor1 開始 ###################### --></p>
<p><!-- 用來顯示程式碼的 editor 區域 --></p>
<div id="kw_editor1" style="width: 600px; height: 300px;"></div>
<p><!-- 以下的表單與按鈕與前面的 Javascript doSave 函式以及 FileSaver.min.js 互相配合 --></p>
<p><!-- 存擋表單開始 --></p>
<form><label>Filename: <input id="kw_filename" placeholder="input file name" type="text"/>.py</label> <input onclick="doSave('kw_py_src1', 'kw_filename1');" type="submit" value="Save"/></form>
<p><!-- 存擋表單結束 --></p>
<p></p>
<p><!-- 執行與清除按鈕開始 --></p>
<p><button id="kw_run1">Run</button> <button id="kw_show_console1">Output</button> <button id="kw_clear_console1">清除輸出區</button><button id="clear_bd1">清除繪圖區</button><button onclick="window.location.reload()">Reload</button></p>
<p><!-- 執行與清除按鈕結束 --></p>
<p></p>
<p><!-- 程式執行 ouput 區 --></p>
<div style="width: 100%; height: 100%;"><textarea autocomplete="off" id="kw_console1"></textarea></div>
<p><!-- Brython 程式執行的結果, 都以 brython_div 作為切入位置 --></p>
<!-- 這裡的畫布 id 為 brython_div -->
<div id="brython_div"></div>
<p><!-- ######################  editor1 結束 ###################### --></p>
<!-- 以下可以開始利用 editor1 的設定編寫對應 Brython 程式 -->
<script type="text/python3">
from browser import document as doc
import ace

# 清除畫布
def clear_bd1(ev):
    # 注意這裡清除的畫布 id 為 brython_div
    bd = doc["brython_div"]
    bd.clear()
Ace1 = ace.Editor(editor_id="kw_editor1", console_id="kw_console1", container_id="kw__container1", storage_id="kw_py_src1" )
# 從 gist 取出程式碼後, 放入 editor 作為 default 程式
def run1():
    # 利用 get 取下 src 變數值
    try:
        url = doc.query["src"]
    except:
        #url = "https://gist.githubusercontent.com/mdecourse/0229a8a017091476a79700b8a190f185/raw/c3a6deaf717f8f2739a4b1392a5ab10936e9693a/from_1_add_to_10_1.py"
        url = "https://gist.githubusercontent.com/mdecourse/2a8f213b6858a40481d17556c8a2fe86/raw/0a4a824493865dc7cf56977d03c9438d002b4268/kmlo_snakey.py"
    prog = open(url).read()

    # 將程式載入編輯區
    Ace1.editor.setValue(prog)
    Ace1.editor.scrollToRow(0)
    Ace1.editor.gotoLine(0)
    # 直接執行程式
    #ns = {'__name__':'__main__'}
    #exec(prog, ns)
    # 按下 run 按鈕
    Ace1.run()

# 執行程式, 顯示輸出結果與清除輸出結果及對應按鈕綁定
doc['kw_run1'].bind('click', Ace1.run)
doc['kw_show_console1'].bind('click', Ace1.show_console)
doc['kw_clear_console1'].bind('click', Ace1.clear_console)
doc['clear_bd1'].bind('click', clear_bd1)
# 呼叫函式執行
run1()
</script>
<!-- 以上為內建程式, 頁面可透過 ?src=gist_url 執行 -->
<p><!-- add 1 to 100 開始 -->
<script type="text/python3">
from browser import document as doc
import ace

# 清除畫布
def clear_bd1(ev):
    bd = doc["brython_div1"]
    bd.clear()

# 利用 ace 中的 Editor 建立 Ace 物件, 其中的輸入變數分別對應到頁面中的編輯區物件
Ace2 = ace.Editor(editor_id="kw_editor1", console_id="kw_console1", container_id="kw__container1", storage_id="kw_py_src1" )

class button2:
    def __init__(self, url):
        self.url = url

    # 記得加入 event 輸入變數
    def do(self,ev):
        Ace2.editor.setValue(open(self.url).read())
        Ace2.editor.scrollToRow(0)
        Ace2.editor.gotoLine(0)
        Ace2.run()

add1to100_url = "https://gist.githubusercontent.com/mdecourse/0229a8a017091476a79700b8a190f185/raw/c48e37714f055c3a0027cbfef59e442a6ef659b9/from_1_add_to_100_1.py"
add1to100 = button2(add1to100_url)
doc["add1to100"].bind('click', add1to100.do)
################################# p261 start 
p261_url = "https://gist.githubusercontent.com/mdecourse/2f56974a40da7a218dbaef376a5b4ca4/raw/980606effcd29635307d6474718cd4a7ef016747/p261.py"
p261 = button2(p261_url)
doc["p261"].bind('click', p261.do)
################################## p261 end
################################## rocflag start
rocflag_url = "https://gist.githubusercontent.com/mdecourse/2f56974a40da7a218dbaef376a5b4ca4/raw/0e2ca81d5c2539c4b6c86071c8cf9de0b1251b9c/roc_flag.py"
rocflag = button2(rocflag_url)
doc["rocflag"].bind("click", rocflag.do)
################################## rocflag end
################################## snake start
snake_url = "https://gist.githubusercontent.com/mdecourse/d55158478f4f8fcbfedd455f8be8c7b6/raw/f29309745a98687ed5c41cf90d28ef25a1e48dd4/snake_brython_div.py"
snake = button2(snake_url)
doc["snake"].bind("click", snake.do)
################################## snake end
################################## bsnake start
bsnake_url = "https://gist.githubusercontent.com/mdecourse/2a8f213b6858a40481d17556c8a2fe86/raw/0a4a824493865dc7cf56977d03c9438d002b4268/kmlo_snakey.py"
bsnake = button2(bsnake_url)
doc["bsnake"].bind("click", bsnake.do)
################################## bsnake end
################################## final start
final_url = "https://gist.githubusercontent.com/mdecourse/2f56974a40da7a218dbaef376a5b4ca4/raw/41df2412bfd277c5b8e1fe52b0fe47d4fc0fbacb/cp2021_final.py"
final = button2(final_url)
doc["final"].bind("click", final.do)
################################## final end
</script>
</p><h1>Final Project</h1>
<h4 dir="auto">cp2021 Final Project</h4>
<h4 dir="auto">計算機程式期末學習驗證與評分網站</h4>
<p><a href="https://mde.tw/cp2021_final">https://mde.tw/cp2021_final</a></p>
<p dir="auto">倉儲: <a href="https://github.com/mdecourse/cp2021_final">https://github.com/mdecourse/cp2021_final</a></p>
<p dir="auto">本網站自 2021.12.27 起收集各班各分組成員在本學期各項作業與期末專案所完成的成果, 並藉此進行學員的課程學期成績評分.</p>
<h4 dir="auto">cp2021 Final Project</h4>
<h4 dir="auto">計算機程式期末學習驗證與評分網站</h4>
<p dir="auto"><a href="http://mde.tw/cp2021_final" rel="nofollow">http://mde.tw/cp2021_final</a></p>
<p dir="auto">本網站自 2021.12.27 起收集各班各分組成員在本學期各項作業與期末專案所完成的成果, 請根據下列規劃流程, 將個人在本學期所寫過的程式, 以網際按鈕形式呈現在個人所分配的 H3 頁面中, 並藉此進行學員的課程學期成績評分.</p>
<p dir="auto"><a href="https://mde.tw/cp2021/content/run.html?src=https://gist.githubusercontent.com/mdecourse/9297ec10e8a151207e7e76373b78ad64/raw/a7a527b6d268f0e61f562c51db69ba3f4de6b2da/cp1a_count_num_of_stud.py" rel="nofollow">1a 修課人數</a>為 64 人, 64 = 7*9 + 1, 分為 9 組. H1 標題為 1a, H2 為 1ag1 ~ 1ag9, 各組員以學號為標題, 依學號遞減排列, 設為 H3 頁面, 各學員則將課程學習成果呈現在各自的 H3 頁面中, 並以 Pull Requests 方式提出拉回合併之請求.</p>
<p dir="auto"><a href="https://mde.tw/cp2021/content/run.html?src=https://gist.githubusercontent.com/mdecourse/9297ec10e8a151207e7e76373b78ad64/raw/a7a527b6d268f0e61f562c51db69ba3f4de6b2da/cp1b_count_num_of_stud.py" rel="nofollow">1b 修課人數</a>為 55 人, 55 = 7*8 - 1, 分為 8 組. H1 標題為 1b, H2 為 1bg1 ~ 1bg8, 各組員以學號為標題, 依學號遞減排列, 設為 H3 頁面, 各學員則將課程學習成果呈現在各自的 H3 頁面中, 並以 Pull Requests 方式提出拉回合併之請求.</p>
<h1>Notice</h1>
<p>各組必須先自願或推舉出一位組長與一位副組長負責成為 <a href="https://github.com/mdecourse/cp2021_final">https://github.com/mdecourse/cp2021_final</a> 倉儲的管理雙人組, 組長將設為期末倉儲的管理協同者, 擁有合併或拒絕 Pull Requests 的權限, 各組推選出兩位管理學員後, 請將學號登錄至 <a href="https://github.com/mdecourse/cp2021_final/discussions/1">https://github.com/mdecourse/cp2021_final/discussions/1</a></p>
<p>各學員利用 Pull Requests 將個人的期末評分內容放入本網站的流程:</p>
<ol>
<li>登入自己的 Github 帳號.</li>
<li>fork <a href="https://github.com/mdecourse/cp2021_final">https://github.com/mdecourse/cp2021_final</a> 倉儲到自己的帳號下</li>
<li>將自己帳號下的 cp2021_final 倉儲以 git clone --recurse-submodules url 到近端進行改版.</li>
<li>改版後, 在自己帳號下對 cp2021_final 倉儲提交並推送新版本後, 必須在自季的 cp2021_final 倉儲處建立 Pull Request 後, 請組長與副組長查驗合併後內容無誤後, 且合併至主倉儲與 <a href="https://mde.tw/cp2021_final">https://mde.tw/cp2021_final</a> 網頁中.</li>
<li>若各組員進行 fork 後, <a href="https://github.com/mdecourse/cp2021_final">https://github.com/mdecourse/cp2021_final</a> 倉儲已經被其他組員多次改版, 則該組員必須採用反向 Pull Requests, 將自己帳號下的 cp2021_final 倉儲的版本儘量接近之後處理 Pull Requests 時的 cp2021_final 倉儲版本, 以降低各組組員最後進行 Pull Requests 合併時處理衝突的難度.</li>
<li>各組組長與副組長接到組員已經完成特定階段新增的 Pull Requests 後, 必須設法將其版本內容合併至期末評分網站中.</li>
</ol>
<h1>1a</h1>
<h2>1ademo</h2>
<h2>1ag1</h2>
<h2>1ag2</h2>
<h2>1ag3</h2>
<h2>1ag4</h2>
<h2>1ag5</h2>
<h2>1ag6</h2>
<h2>1ag7</h2>
<h2>1ag8</h2>
<h1>1b</h1>
<h2>1bg1</h2>
<h2>1bg2</h2>
<h2>1bg3</h2>
<h2>1bg4</h2>
<h2>1bg5</h2>
<h2>1bg6</h2>
<h2>1bg7</h2>
<h2>1bg8</h2>
"""
'''
# 處理 1b 資料時必須蓋掉
file_location = repo_path + "/config/content.htm"
# 將動態網頁檔案內容讀出, 存入 data 變數區
with open(file_location, "w", encoding="utf-8") as f:
    f.write(origin_html)
'''

def get_html(grp_title, student_id):
    
    '''根據學號, 從 downloads 目錄取出該學員的期末報告網頁 
    '''
    # repo_path from config setup
    # grp_title and student_id as input paramenters
    html_location = repo_path + "/downloads/" + student_id + "_html.txt"
    # consider no file on html_location
    try:
        with open(html_location, "r", encoding="utf-8") as f:
            student_html = f.read()
        # get student_html
        #print(student_html)
        # 動態網頁檔案所在路徑
        file_location = repo_path + "/config/content.htm"
        # 將動態網頁檔案內容讀出, 存入 data 變數區
        with open(file_location, "r", encoding="utf-8") as f:
            data = f.read()
        # get current content.htm data
        #print(data)
        # 利用 data 建立 soup
        soup = BeautifulSoup(data, "lxml")
        # 利用 student_html 建立 soup
        soup2 = BeautifulSoup(student_html, "lxml")
        # 插入的 student_html 會多出 <html><body></body></html>
        # 最後存檔前必須移除
        for i in soup.find_all(page_head):
            if i.text == grp_title:
                # 取 soup2 中的 tag
                for j in soup2:
                # 在 soup 中對應 <h2>1ag1</h2> tag 之後插入 j tag
                    i.insert_after(j)
        output = str(soup)
        #print(output)
        output = output.replace("<html><body>", "")
        output = output.replace("</body></html>", "")
        output = output.replace("// <![CDATA[", "")
        output = output.replace("// ]]>", "")
        #output = output.replace("&gt;", "")
        output = output.replace("<p></p>", "")
        return output
    except:
        #print("no file found for " + str(student_id))
        return ""

'''設法讀出各班各組學員學號資料
'''
with open(group_file, encoding="utf-8") as f:
    data = f.read().splitlines()
data = list(filter(None, data))
#print(data)
grp_count = 0
grp_title = []
grp_mem = []
grp_big = []
for i in data:
    if class_name in i:
        mem_count = 0
        grp_count += 1
        grp = i
        # 納入各組組序標題
        grp_title.append(i)
        # 若 grp_mem 有值, 表示已經讀完各組學員名單
        # 就可以將該組全員名單納入 grp_big 數列中
        # 然後 grp_mem 重新設為空數列, 準備納入下一組員名單
        if len(grp_mem) > 1:
            grp_big.append(grp_mem)
            grp_mem = []
        #print("組別:", grp_count, grp)
    else:
        # 讀完各組組序標題後, 將逐一將組員名單納入 grp_mem 數列中
        grp_mem.append(i)
        mem_count += 1
        student_id = i
        #print("學員:", mem_count, student_id)
# 離開組序標題後, 必須納入最後一組學員名單
grp_big.append(grp_mem)
# 查驗是否正確讀入各班組員名單
#print(grp_title, grp_big)
for i in range(len(grp_title)):
    # 分別讀出各組組序與排序後的組員學號
    #print(grp_title[i], sorted(grp_big[i]))
    stud_list = sorted(grp_big[i])
    # j is student id for each member
    for j in stud_list:
        content = get_html(grp_title[i], j)
        content = content.replace("<p></p>", "")
        content = content.replace("&gt;", "")
        if content != "":
            print(j)
            #print(content)
            file_location = repo_path + "/config/content.htm"
            with open(file_location, "w", encoding="utf-8") as f:
                f.write(content)




    





