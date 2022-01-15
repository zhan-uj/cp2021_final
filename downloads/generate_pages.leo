<?xml version="1.0" encoding="utf-8"?>
<!-- Created by Leo: http://leoeditor.com/leo_toc.html -->
<leo_file xmlns:leo="http://leoeditor.com/namespaces/leo-python-editor/1.1" >
<leo_header file_format="2"/>
<globals/>
<preferences/>
<find_panel_settings/>
<vnodes>
<v t="leo.20220115202417.1"><vh>@settings</vh>
<v t="leo.20220115202417.2"><vh>@data qt-gui-plugin-style-sheet</vh></v>
<v t="leo.20220115202417.3"><vh>@string initial_split_orientation = horizontal</vh></v>
</v>
<v t="leo.20220115202759.1"><vh>About</vh></v>
<v t="leo.20220115202348.1"><vh>importer</vh></v>
<v t="leo.20220115202516.1"><vh>imported files</vh>
<v t="leo.20220115202516.2"><vh>@clean generate_pages.py</vh>
<v t="leo.20220115202516.3"><vh>Declarations</vh></v>
<v t="leo.20220115202516.4"><vh>class Init(object)</vh></v>
<v t="leo.20220115202516.6"><vh>file_get_contents</vh></v>
<v t="leo.20220115202516.7"><vh>_remove_h123_attrs</vh></v>
<v t="leo.20220115202516.8"><vh>parse_content</vh></v>
<v t="leo.20220115202516.10"><vh>render_menu2</vh></v>
<v t="leo.20220115202516.11"><vh>render_menu3</vh></v>
<v t="leo.20220115202516.12"><vh>search_content</vh></v>
<v t="leo.20220115202516.13"><vh>sitemap2</vh></v>
<v t="leo.20220115202516.14"><vh>syntaxhighlight</vh></v>
<v t="leo.20220115202516.15"><vh>syntaxhighlight2</vh></v>
<v t="leo.20220115202516.17"><vh>set_css2</vh></v>
<v t="leo.20220115202516.18"><vh>checkMath</vh></v>
<v t="leo.20220115202516.19"><vh>get_page2</vh></v>
<v t="leo.20220115202516.20"><vh>generate_pages</vh></v>
</v>
</v>
</vnodes>
<tnodes>
<t tx="leo.20220115202348.1">'''Recursively import all python files in a directory and clean the result.'''
 
c.recursiveImport(
    dir_ = r'./generate_pages.py',
    kind = '@clean', # The new best practice.
    safe_at_file = False,
    theTypes = ['.py'] # Same as ['.py']
)</t>
<t tx="leo.20220115202417.1"></t>
<t tx="leo.20220115202417.2">QSplitter::handle {
    background-color: #CAE1FF; /* lightSteelBlue1 */
}

QStackedWidget {
    /* background-color:lightpink; */
    border-color: red;
    padding: 0px;
    /* border-width: 0px; */
    /* background-color: yellow; */
}

QSplitter {
    border-color: white;
    background-color: white;
    border-style: solid;
}

QTreeWidget {
    /* These apply to the selected item, but not to editing items.*/
    background-color: #ffffec; /* Leo's traditional tree color */
    selection-color: black; /* was white */
    selection-background-color: lightgrey;
    /* font-family: SansSerif; */
    /*font-family: DejaVu Sans Mono;*/
    font-family:YaHei Mono;
    /* 標題字型大小設定 */
    font-size: 22px;
    font-weight: normal; /* normal,bold,100,..,900 */
    font-style: normal; /* normal, italic,oblique */
 }

/* Headline edit widgets */
QTreeWidget QLineEdit {
    background-color: cornsilk;
    selection-color: white;
    selection-background-color: blue;
    /*font-family: DejaVu Sans Mono;*/    
    font-family:YaHei Mono;
    /* 沒有特別對應字型大小 */
    font-size: 22px;
    font-weight: normal; /* normal,bold,100,..,900 */
    font-style: normal; /* normal, italic,oblique */
}

/* The log panes */
QTextEdit {
    background-color: #f2fdff;
    selection-color: red;
    selection-background-color: blue;
    /* font-family: Courier New; */
    font-family:YaHei Mono;
    /* log font 大小 */
    font-size: 22px;
    font-weight: normal; /* normal,bold,100,..,900 */
    font-style: normal; /* normal, italic,oblique */
}

/* The body pane */
QTextEdit#richTextEdit {
    background-color: #fdf5f5; /* A kind of pink. */
    selection-color: white;
    selection-background-color: red;
    /*font-family: DejaVu Sans Mono;*/
    /* font-family: Courier New; */
    font-family:YaHei Mono;
    /* 內文字型大小 */
    font-size: 22px;
    font-weight: normal; /* normal,bold,100,..,900 */
    font-style: normal; /* normal,italic,oblique */
}

QLabel {
    font-family:YaHei Mono;
    /* 下方的 Minibuffer 標題字型大小 */
    font-size: 22px;
    font-weight: normal; /* normal,bold,100,..,900 */
    font-style: normal; /* normal,italic,oblique */
}

/* Editor labels */
QLineEdit#editorLabel {
    background-color: #ffffec;
    font-family:YaHei Mono;
    /* 沒有直接對應字型大小 */
    font-size: 22px;
    font-weight: normal; /* normal,bold,100,..,900 */
    font-style: normal; /* normal,italic,oblique */
    border: 2px;
    margin: 2px;
}</t>
<t tx="leo.20220115202417.3">horizontal: body pane to the left
vertical: body pane on the botton</t>
<t tx="leo.20220115202516.1"></t>
<t tx="leo.20220115202516.10">def render_menu2(head, level, page, sitemap=0):
    
    """Render menu for static site
    """

    directory = '''
    &lt;div class="site-wrap"&gt;

    &lt;div class="site-mobile-menu"&gt;
      &lt;div class="site-mobile-menu-header"&gt;
        &lt;div class="site-mobile-menu-close mt-3"&gt;
          &lt;span class="icon-close2 js-menu-toggle"&gt;&lt;/span&gt;
        &lt;/div&gt;
      &lt;/div&gt;
      &lt;div class="site-mobile-menu-body"&gt;&lt;/div&gt;
    &lt;/div&gt;
    
            &lt;header class="site-navbar py-4 bg-white" role="banner"&gt;
              &lt;div class="container-fluid"&gt;
                &lt;div class="row align-items-center"&gt;
                &lt;h1&gt;''' + Init.site_title + '''&lt;/h1&gt;
                &lt;div class="pl-4"&gt;
                    &lt;form&gt;
                    &lt;input type="text" placeholder="Search" name="q" id="tipue_search_input" pattern=".{2,}" title="At least 2 characters" required&gt;
                    &lt;/form&gt;
                &lt;/div&gt;
                  &lt;!-- &lt;div class="col-11 col-xl-2"&gt;
                    &lt;h1 class="mb-0 site-logo"&gt;&lt;a href="index.html" class="text-black h2 mb-0"&gt;''' + Init.site_title + '''&lt;/a&gt;&lt;/h1&gt; 
                  &lt;/div&gt;
                  --&gt;
                  &lt;div class="col-12 col-md-10 d-none d-xl-block"&gt;
                    &lt;nav class="site-navigation position-relative text-right" role="navigation"&gt;
    '''
    
    # 從 level 數列第一個元素作為開端, 第一個一定非 level 1 不可
    current_level = level[0]
    # 若是 sitemap 則僅列出樹狀架構而沒有套用 css3menu 架構
    if sitemap:
        directory += '''&lt;ul&gt;
&lt;li&gt;
&lt;form&gt;
&lt;div class="tipue_search_group"&gt;
&lt;input type="text" name="q" id="tipue_search_input" pattern=".{2,}" title="At least 2 characters" required&gt;&lt;button type="submit" class="tipue_search_button"&gt;&lt;div class="tipue_search_icon"&gt;&amp;#9906;&lt;/div&gt;&lt;/button&gt;
&lt;/div&gt;
&lt;/form&gt;
&lt;/li&gt;
        '''
    else:
        directory += '''&lt;ul class='site-menu js-clone-nav mr-auto d-none d-lg-block'&gt;'''
    # 納入主頁與表單
    directory += '''
                        &lt;li class="active has-children"&gt;&lt;a href="index.html"&gt;Home&lt;/a&gt;
                        &lt;ul class="dropdown"&gt;
                            &lt;li&gt;&lt;a href="sitemap.html"&gt;Site Map&lt;/a&gt;&lt;/li&gt;
                            &lt;li&gt;&lt;a href="./../reveal/index.html"&gt;reveal&lt;/a&gt;&lt;/li&gt;
                            &lt;li&gt;&lt;a href="./../blog/index.html"&gt;blog&lt;/a&gt;&lt;/li&gt;
                        &lt;/ul&gt;
                      &lt;/li&gt;
                     '''
    # 逐一配合 level 數列中的各標題階次, 一一建立對應的表單或 sitemap
    for index in range(len(head)):
        # 用 this_level 取出迴圈中逐一處理的頁面對應層級, 注意取出值為 str
        this_level = level[index]
        # 若處理中的層級比上一層級高超過一層, 則將處理層級升級 (處理 h1 後直接接 h3 情況)
        if (int(this_level) - int(current_level)) &gt; 1:
            #this_level = str(int(this_level) - 1)
            # 考慮若納入 h4 也作為標題標註, 相鄰層級可能大於一層, 因此直接用上一層級 + 1
            this_level = str(int(current_level) + 1)
        # 若處理的階次比目前已經處理的階次大, 表示位階較低
        # 其實當 level[0] 完全不會報告此一區塊
        # 從正在處理的標題階次與前一個元素比對, 若階次低, 則要加入另一區段的 unordered list 標頭
        # 兩者皆為 str 會轉為整數後比較
        # 目前的位階在上一個標題之後
        if this_level &gt; current_level:
            directory += "&lt;ul class='dropdown'&gt;"
            # 是否加上 class=has-children, 視下一個而定
            # 目前處理的標題, 並不是最後一個, 因此有下一個標題待處理
            if index &lt; (len(head)-1):
                next_level = level[index+1]
                if this_level &lt; next_level:
                    # 表示要加上 class=dropdown
                    directory += "&lt;li class='has-children'&gt;&lt;a href='" + head[index] + ".html'&gt;" + head[index] + "&lt;/a&gt;"
                else:
                    directory += "&lt;li&gt;&lt;a href='" + head[index] + ".html'&gt;" + head[index] + "&lt;/a&gt;"
            else:
                #表示為最後一個
                directory += "&lt;li&gt;&lt;a href='" + head[index] + ".html'&gt;" + head[index] + "&lt;/a&gt;"
        # 假如正在處理的標題與前一個元素同位階, 則必須再判定是否為另一個 h1 的樹狀頭
        # 目前標題與上一個標題相同
        elif this_level == current_level:
            # 是否加上 class=has-children, 視下一個而定
            # 目前處理的標題, 並不是最後一個, 因此有下一個標題待處理
            if index &lt; (len(head)-1):
                next_level = level[index+1]
                if this_level &lt; next_level:
                    # 表示要加上 class=dropdown
                    directory += "&lt;li class='has-children'&gt;&lt;a href='" + head[index] + ".html'&gt;" + head[index] + "&lt;/a&gt;"
                else:
                    directory += "&lt;li&gt;&lt;a href='" + head[index] + ".html'&gt;" + head[index] + "&lt;/a&gt;"
            else:
                #表示為最後一個
                directory += "&lt;li&gt;&lt;a href='" + head[index] + ".html'&gt;" + head[index] + "&lt;/a&gt;"
        # 假如正處理的元素比上一個元素位階更高, 必須要先關掉前面的低位階區段
        else:
            directory += "&lt;/li&gt;"*(int(current_level) - int(level[index]))
            directory += "&lt;/ul&gt;"*(int(current_level) - int(level[index]))
            if index &lt; (len(head)-1):
                next_level = level[index+1]
                if this_level &lt; next_level:
                    # 表示要加上 class=dropdown
                    directory += "&lt;li class='has-children'&gt;&lt;a href='" + head[index] + ".html'&gt;" + head[index] + "&lt;/a&gt;"
                else:
                    directory += "&lt;li&gt;&lt;a href='" + head[index] + ".html'&gt;" + head[index] + "&lt;/a&gt;"
            else:
                #表示為最後一個
                directory += "&lt;li&gt;&lt;a href='" + head[index] + ".html'&gt;" + head[index] + "&lt;/a&gt;"
        current_level = this_level
    directory += '''&lt;/li&gt;
                      &lt;/ul&gt;
                &lt;/nav&gt;
              &lt;/div&gt;
              &lt;div class="d-inline-block d-xl-none ml-md-0 mr-auto py-3" style="position: relative; top: 3px;"&gt;&lt;a href="#" class="site-menu-toggle js-menu-toggle text-black"&gt;&lt;span class="icon-menu h3"&gt;&lt;/span&gt;&lt;/a&gt;&lt;/div&gt;
              &lt;/div&gt;

            &lt;/div&gt;
          &lt;/div&gt;
          
        &lt;/header&gt;
    '''
    return directory


</t>
<t tx="leo.20220115202516.11">def render_menu3(head, level, page, sitemap=0):
    
    """Render menu for static sitemap
    """
    
    directory = ""
    current_level = level[0]
    if sitemap:
        directory += "&lt;ul&gt;"
    else:
        # before add tipue search function
        #directory += "&lt;ul id='css3menu1' class='topmenu'&gt;"
        directory += "&lt;ul id='css3menu1' class='topmenu'&gt;&lt;div class=\"tipue_search_group\"&gt;&lt;input style=\"width: 6vw;\" type=\"text\" name=\"q\" id=\"tipue_search_input\" pattern=\".{2,}\" title=\"Press enter key to search\" required&gt;&lt;/div&gt;"
    for index in range(len(head)):
        this_level = level[index]
        # 若處理中的層級比上一層級高超過一層, 則將處理層級升級 (處理 h1 後直接接 h3 情況)
        if (int(this_level) - int(current_level)) &gt; 1:
            #this_level = str(int(this_level) - 1)
            this_level = str(int(current_level) + 1)
        if this_level &gt; current_level:
            directory += "&lt;ul&gt;"
            #directory += "&lt;li&gt;&lt;a href='/get_page/"+head[index]+"'&gt;"+head[index]+"&lt;/a&gt;"
            # 改為連結到 content/標題.html
            directory += "&lt;li&gt;&lt;a href='" + head[index] + ".html'&gt;" + head[index] + "&lt;/a&gt;"
        elif this_level == current_level:
            if this_level == 1:
                if sitemap:
                    # 改為連結到 content/標題.html
                    #directory += "&lt;li&gt;&lt;a href='/get_page/"+head[index]+"'&gt;"+head[index]+"&lt;/a&gt;"
                    directory += "&lt;li&gt;&lt;a href='" + head[index] + ".html'&gt;" + head[index] + "&lt;/a&gt;"
                else:
                    #directory += "&lt;li class='topmenu'&gt;&lt;a href='/get_page/"+head[index]+"'&gt;"+head[index]+"&lt;/a&gt;"
                    directory += "&lt;li class='topmenu'&gt;&lt;a href='content/" + head[index] + ".html'&gt;" + head[index] + "&lt;/a&gt;"
            else:
                #directory += "&lt;li&gt;&lt;a href='/get_page/"+head[index]+"'&gt;"+head[index]+"&lt;/a&gt;"
                directory += "&lt;li&gt;&lt;a href='" + head[index] + ".html'&gt;" + head[index] + "&lt;/a&gt;"
        else:
            directory += "&lt;/li&gt;"*(int(current_level) - int(level[index]))
            directory += "&lt;/ul&gt;"*(int(current_level) - int(level[index]))
            if this_level == 1:
                if sitemap:
                    #directory += "&lt;li&gt;&lt;a href='/get_page/"+head[index]+"'&gt;"+head[index]+"&lt;/a&gt;"
                    directory += "&lt;li&gt;&lt;a href='" + head[index] + ".html'&gt;" + head[index] + "&lt;/a&gt;"
                else:
                    #directory += "&lt;li class='topmenu'&gt;&lt;a href='/get_page/"+head[index]+"'&gt;"+head[index]+"&lt;/a&gt;"
                    directory += "&lt;li class='topmenu'&gt;&lt;a href='" + head[index] + ".html'&gt;" + head[index] + "&lt;/a&gt;"
            else:
                #directory += "&lt;li&gt;&lt;a href='/get_page/"+head[index]+"'&gt;"+head[index]+"&lt;/a&gt;"
                directory += "&lt;li&gt;&lt;a href='" + head[index] + ".html'&gt;" + head[index] + "&lt;/a&gt;"
        current_level = this_level
    directory += "&lt;/li&gt;&lt;/ul&gt;"
    return directory


</t>
<t tx="leo.20220115202516.12">def search_content(head, page, search):
    
    """Search content
    """

    find = lambda searchList, elem: [[i for i, x in enumerate(searchList) if x == e] for e in elem]
    search_result = find(head, [search])[0]
    page_order = []
    page_content = []
    for i in range(len(search_result)):
        # 印出次序
        page_order.append(search_result[i])
        # 標題為 head[search_result[i]]
        #  頁面內容則為 page[search_result[i]]
        page_content.append(page[search_result[i]])
        # 從 page[次序] 印出頁面內容
    # 準備傳回 page_order 與 page_content 等兩個數列
    return page_order, page_content


</t>
<t tx="leo.20220115202516.13">def sitemap2(head):
    
    """Sitemap for static content generation
    """
    
    edit = 0
    not_used_head, level, page = parse_content()
    directory = render_menu2(head, level, page)
    # 先改為使用 render_menu3 而非 render_menu2
    sitemap = render_menu3(head, level, page, sitemap=1)
    # add tipue search id
    return set_css2() + "&lt;div class='container-fluid'&gt;&lt;nav&gt;" + directory + \
             "&lt;/nav&gt;&lt;section&gt;&lt;h1&gt;Site Map&lt;/h1&gt;&lt;div id=\"tipue_search_content\"&gt;&lt;/div&gt;" + sitemap + \
             "&lt;/section&gt;&lt;/div&gt;&lt;/body&gt;&lt;/html&gt;"


</t>
<t tx="leo.20220115202516.14">def syntaxhighlight():
    
    """Return syntaxhighlight needed scripts
    """
    
    return '''
&lt;script type="text/javascript" src="/static/syntaxhighlighter/shCore.js"&gt;&lt;/script&gt;
&lt;script type="text/javascript" src="/static/syntaxhighlighter/shBrushBash.js"&gt;&lt;/script&gt;
&lt;script type="text/javascript" src="/static/syntaxhighlighter/shBrushDiff.js"&gt;&lt;/script&gt;
&lt;script type="text/javascript" src="/static/syntaxhighlighter/shBrushJScript.js"&gt;&lt;/script&gt;
&lt;script type="text/javascript" src="/static/syntaxhighlighter/shBrushJava.js"&gt;&lt;/script&gt;
&lt;script type="text/javascript" src="/static/syntaxhighlighter/shBrushPython.js"&gt;&lt;/script&gt;
&lt;script type="text/javascript" src="/static/syntaxhighlighter/shBrushSql.js"&gt;&lt;/script&gt;
&lt;script type="text/javascript" src="/static/syntaxhighlighter/shBrushHaxe.js"&gt;&lt;/script&gt;
&lt;script type="text/javascript" src="/static/syntaxhighlighter/shBrushXml.js"&gt;&lt;/script&gt;
&lt;script type="text/javascript" src="/static/syntaxhighlighter/shBrushPhp.js"&gt;&lt;/script&gt;
&lt;script type="text/javascript" src="/static/syntaxhighlighter/shBrushPowerShell.js"&gt;&lt;/script&gt;
&lt;script type="text/javascript" src="/static/syntaxhighlighter/shBrushLua.js"&gt;&lt;/script&gt;
&lt;script type="text/javascript" src="/static/syntaxhighlighter/shBrushCpp.js"&gt;&lt;/script&gt;
&lt;script type="text/javascript" src="/static/syntaxhighlighter/shBrushCss.js"&gt;&lt;/script&gt;
&lt;script type="text/javascript" src="/static/syntaxhighlighter/shBrushCSharp.js"&gt;&lt;/script&gt;
&lt;script type="text/javascript" src="/static/syntaxhighlighter/shBrushDart.js"&gt;&lt;/script&gt;
&lt;script type="text/javascript" src="/static/syntaxhighlighter/shBrushRust.js"&gt;&lt;/script&gt;
&lt;link type="text/css" rel="stylesheet" href="/static/syntaxhighlighter/css/shCoreDefault.css"/&gt;
&lt;script type="text/javascript"&gt;SyntaxHighlighter.all();&lt;/script&gt;
&lt;!-- 暫時不用
&lt;script src="/static/fengari-web.js"&gt;&lt;/script&gt;
&lt;script type="text/javascript" src="/static/Cango-13v08-min.js"&gt;&lt;/script&gt;
&lt;script type="text/javascript" src="/static/CangoAxes-4v01-min.js"&gt;&lt;/script&gt;
&lt;script type="text/javascript" src="/static/gearUtils-05.js"&gt;&lt;/script&gt;
--&gt;
&lt;!-- for Brython 暫時不用
&lt;script src="https://scrum-3.github.io/web/brython/brython.js"&gt;&lt;/script&gt;
&lt;script src="https://scrum-3.github.io/web/brython/brython_stdlib.js"&gt;&lt;/script&gt;
--&gt;
&lt;style&gt;
img.add_border {
    border: 3px solid blue;
}
&lt;/style&gt;
'''


</t>
<t tx="leo.20220115202516.15">def syntaxhighlight2():
    
    """Return syntaxhighlight for static pages
    """
    
    return '''
&lt;script type="text/javascript" src="./../cmsimde/static/syntaxhighlighter/shCore.js"&gt;&lt;/script&gt;
&lt;script type="text/javascript" src="./../cmsimde/static/syntaxhighlighter/shBrushBash.js"&gt;&lt;/script&gt;
&lt;script type="text/javascript" src="./../cmsimde/static/syntaxhighlighter/shBrushDiff.js"&gt;&lt;/script&gt;
&lt;script type="text/javascript" src="./../cmsimde/static/syntaxhighlighter/shBrushJScript.js"&gt;&lt;/script&gt;
&lt;script type="text/javascript" src="./../cmsimde/static/syntaxhighlighter/shBrushJava.js"&gt;&lt;/script&gt;
&lt;script type="text/javascript" src="./../cmsimde/static/syntaxhighlighter/shBrushPython.js"&gt;&lt;/script&gt;
&lt;script type="text/javascript" src="./../cmsimde/static/syntaxhighlighter/shBrushSql.js"&gt;&lt;/script&gt;
&lt;script type="text/javascript" src="./../cmsimde/static/syntaxhighlighter/shBrushHaxe.js"&gt;&lt;/script&gt;
&lt;script type="text/javascript" src="./../cmsimde/static/syntaxhighlighter/shBrushXml.js"&gt;&lt;/script&gt;
&lt;script type="text/javascript" src="./../cmsimde/static/syntaxhighlighter/shBrushPhp.js"&gt;&lt;/script&gt;
&lt;script type="text/javascript" src="./../cmsimde/static/syntaxhighlighter/shBrushPowerShell.js"&gt;&lt;/script&gt;
&lt;script type="text/javascript" src="./../cmsimde/static/syntaxhighlighter/shBrushLua.js"&gt;&lt;/script&gt;
&lt;script type="text/javascript" src="./../cmsimde/static/syntaxhighlighter/shBrushCpp.js"&gt;&lt;/script&gt;
&lt;script type="text/javascript" src="./../cmsimde/static/syntaxhighlighter/shBrushCss.js"&gt;&lt;/script&gt;
&lt;script type="text/javascript" src="./../cmsimde/static/syntaxhighlighter/shBrushCSharp.js"&gt;&lt;/script&gt;
&lt;script type="text/javascript" src="./../cmsimde/static/syntaxhighlighter/shBrushDart.js"&gt;&lt;/script&gt;
&lt;script type="text/javascript" src="./../cmsimde/static/syntaxhighlighter/shBrushRust.js"&gt;&lt;/script&gt;
&lt;link type="text/css" rel="stylesheet" href="./../cmsimde/static/syntaxhighlighter/css/shCoreDefault.css"/&gt;
&lt;script type="text/javascript"&gt;SyntaxHighlighter.all();&lt;/script&gt;
&lt;!-- 暫時不用
&lt;script src="./../cmsimde/static/fengari-web.js"&gt;&lt;/script&gt;
&lt;script type="text/javascript" src="./../cmsimde/static/Cango-13v08-min.js"&gt;&lt;/script&gt;
&lt;script type="text/javascript" src="./../cmsimde/static/CangoAxes-4v01-min.js"&gt;&lt;/script&gt;
&lt;script type="text/javascript" src="./../cmsimde/static/gearUtils-05.js"&gt;&lt;/script&gt;
--&gt;
&lt;!-- for Brython 暫時不用
&lt;script src="https://scrum-3.github.io/web/brython/brython.js"&gt;&lt;/script&gt;
&lt;script src="https://scrum-3.github.io/web/brython/brython_stdlib.js"&gt;&lt;/script&gt;
--&gt;
&lt;style&gt;
img.add_border {
    border: 3px solid blue;
}
&lt;/style&gt;
'''


</t>
<t tx="leo.20220115202516.17">def set_css2():
    
    """Set css for static site
    """
    
    static_head = '''
        &lt;head&gt;
        &lt;title&gt;''' + Init.site_title + '''&lt;/title&gt;
        &lt;meta charset="utf-8"&gt;
        &lt;meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"&gt;
        &lt;link href="https://fonts.googleapis.com/css?family=Quicksand:300,400,500,700,900" rel="stylesheet"&gt;
        &lt;link rel="stylesheet" href="./../cmsimde/static/chimper/fonts/icomoon/style.css"&gt;
        &lt;link rel="stylesheet" href="./../cmsimde/static/chimper/css/bootstrap.min.css"&gt;
        &lt;link rel="stylesheet" href="./../cmsimde/static/chimper/css/magnific-popup.css"&gt;
        &lt;link rel="stylesheet" href="./../cmsimde/static/chimper/css/jquery-ui.css"&gt;
        &lt;link rel="stylesheet" href="./../cmsimde/static/chimper/css/owl.carousel.min.css"&gt;
        &lt;link rel="stylesheet" href="./../cmsimde/static/chimper/css/owl.theme.default.min.css"&gt;
        &lt;link rel="stylesheet" href="./../cmsimde/static/chimper/css/bootstrap-datepicker.css"&gt;
        &lt;link rel="stylesheet" href="./../cmsimde/static/chimper/fonts/flaticon/font/flaticon.css"&gt;
        &lt;link rel="stylesheet" href="./../cmsimde/static/chimper/css/aos.css"&gt;
        &lt;link rel="stylesheet" href="./../cmsimde/static/chimper/css/style.css"&gt;
        &lt;link rel="shortcut icon" href="./../cmsimde/static/favicons.png"&gt;
        
        &lt;style type='text/css'&gt;
            .site-section {
            background-color: #FFFF;
            padding: 40px 40px;
            }
            body &gt; div &gt; div.dropdown.open {
                display: block;
            }
        &lt;/style&gt;
    '''
    outstring = '''&lt;!DOCTYPE html&gt;&lt;html&gt;''' + static_head + '''
        &lt;!-- &lt;script src="./../cmsimde/static/jquery.js"&gt;&lt;/script&gt; --&gt;
        &lt;!-- &lt;script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"&gt;&lt;/script&gt; --&gt;
        &lt;script src="../cmsimde/static/chimper/js/jquery-3.3.1.min.js"&gt;&lt;/script&gt;
        &lt;link rel="stylesheet" href="./../cmsimde/static/tipuesearch/css/normalize.min.css"&gt;
        &lt;script src="./../cmsimde/static/tipuesearch/tipuesearch_set.js"&gt;&lt;/script&gt;
        &lt;script src="tipuesearch_content.js"&gt;&lt;/script&gt;
        &lt;link rel="stylesheet" href="./../cmsimde/static/tipuesearch/css/tipuesearch.css"&gt;
        &lt;script src="./../cmsimde/static/tipuesearch/tipuesearch.js"&gt;&lt;/script&gt;
        &lt;!-- for Wink3 --&gt;
        &lt;link rel="stylesheet" type="text/css" href="./../cmsimde/static/winkPlayer.css" /&gt;
        &lt;script type="text/javascript" src="./../cmsimde/static/winkPlayer.js"&gt;&lt;/script&gt;
        &lt;script&gt;
            /* original tipuesearch
            $(document).ready(function() {
                 $('#tipue_search_input').tipuesearch();
            });
            */
            // customed doSearch
            function doSearch() {
                $('#tipue_search_input').tipuesearch({
                    newWindow: true, 
                    minimumLength: 2,
                    wholeWords: false, // for search 中文
                });
            }
            $(document).ready(doSearch);
        &lt;/script&gt;
        ''' + syntaxhighlight2()

    outstring += '''
&lt;/head&gt;
&lt;body&gt;
'''
    return outstring


</t>
<t tx="leo.20220115202516.18">def checkMath():

    """Use LaTeX Equation rendering
    """
    outstring = '''
&lt;!-- 啟用 LaTeX equations 編輯 --&gt;
  &lt;!-- &lt;script&gt;
  MathJax = {
    tex: {inlineMath: [['$', '$'], ['\\(', '\\)']]}
  };
  &lt;/script&gt;
  &lt;script id="MathJax-script" async src="https://cdn.jsdelivr.net/npm/mathjax@3/es5/tex-chtml.js"&gt;&lt;/script&gt;--&gt;
    '''
    return outstring
    

</t>
<t tx="leo.20220115202516.19">def get_page2(heading, head, edit, get_page_content = None):
    
    """Get page content and replace certain string for static site
    """
    
    not_used_head, level, page = parse_content()
    # 直接在此將 /images/ 換為 ./../images/, /downloads/ 換為 ./../downloads/, 以 content 為基準的相對目錄設定

    page = [w.replace('src="/images/', 'src="./../images/') for w in page]
    page = [w.replace('href="/downloads/', 'href="./../downloads/') for w in page]
    # 假如有 src="/static/ace/ 則換為 src="./../static/ace/
    page = [w.replace('src="/static/', 'src="./../cmsimde/static/') for w in page]
    # 假如有 src=/downloads 則換為 src=./../../downloads
    page = [w.replace('src="/downloads', 'src="./../downloads') for w in page]
    # 假如有 pythonpath:['/static/' 則換為 ./../cmsimde/static/
    page = [w.replace("pythonpath:['/static/'", "pythonpath:['./../cmsimde/static/'") for w in page]
    # 針對 wink3 假如有 data-dirname="/static" 換為 data-dirname="./../cmsimde/static"
    page = [w.replace("data-dirname=\"/static\"", "data-dirname=\"./../cmsimde/static\"") for w in page]
    # 假如有 /get_page 則需額外使用 regex 進行字串代換, 表示要在靜態網頁直接取網頁 (尚未完成)
    #page = [w.replace('/get_page', '') for w in page]

    directory = render_menu2(head, level, page)
    if heading is None:
        heading = head[0]
    # 因為同一 heading 可能有多頁, 因此不可使用 head.index(heading) 搜尋 page_order
    page_order_list, page_content_list = search_content(head, page, heading)
    if get_page_content != None:
        get_page_content.extend(page_content_list)
    return_content = ""
    pagedata = ""
    outstring = ""
    outstring_duplicate = ""
    pagedata_duplicate = ""
    outstring_list = []
    for i in range(len(page_order_list)):
        page_order = page_order_list[i]
        if page_order == 0:
            last_page = ""
        else:
            #last_page = head[page_order-1]+ " &lt;&lt; &lt;a href='/get_page/" + head[page_order-1] + "'&gt;Previous&lt;/a&gt;"
            last_page = head[page_order-1] + " &lt;&lt; &lt;a href='"+head[page_order-1] + ".html'&gt;Previous&lt;/a&gt;"
        if page_order == len(head) - 1:
            # no next page
            next_page = ""
        else:
            #next_page = "&lt;a href='/get_page/"+head[page_order+1] + "'&gt;Next&lt;/a&gt; &gt;&gt; " + head[page_order+1]
            next_page = "&lt;a href='" + head[page_order+1] + ".html'&gt;Next&lt;/a&gt; &gt;&gt; " + head[page_order+1]
        if len(page_order_list) &gt; 1:
            return_content += last_page + " " + next_page + "&lt;br /&gt;&lt;h1&gt;" + \
                                      heading + "&lt;/h1&gt;" + page_content_list[i] + \
                                      "&lt;br /&gt;" + last_page + " "+ next_page + "&lt;br /&gt;&lt;hr&gt;"
            pagedata_duplicate = "&lt;h"+level[page_order] + "&gt;" + heading + "&lt;/h" + level[page_order]+"&gt;"+page_content_list[i]
        else:
            return_content += last_page + " " + next_page + "&lt;br /&gt;&lt;h1&gt;" + \
                                      heading + "&lt;/h1&gt;" + page_content_list[i] + \
                                      "&lt;br /&gt;" + last_page + " " + next_page

        pagedata += "&lt;h" + level[page_order] + "&gt;" + heading + \
                          "&lt;/h" + level[page_order] + "&gt;" + page_content_list[i]
    
    # edit=0 for viewpage
    if edit == 0:
        return set_css2() + '''&lt;div class='container-fluid'&gt;&lt;nav&gt;
        '''+ \
        directory + "&lt;div id=\"tipue_search_content\"&gt;" + return_content + \
        '''&lt;/div&gt;
        
    &lt;!-- footer --&gt;
      &lt;div class="container"&gt;
        &lt;div class="row pt-3 mx-auto"&gt;
            &lt;p&gt;
            &lt;!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. --&gt;
            Copyright &amp;copy;&lt;script&gt;document.write(new Date().getFullYear());&lt;/script&gt; All rights reserved | This template is made with &lt;i class="icon-heart" aria-hidden="true"&gt;&lt;/i&gt; by &lt;a href="https://colorlib.com" target="_blank" &gt;Colorlib&lt;/a&gt;
            &lt;!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. --&gt;
            &lt;/p&gt;
        &lt;/div&gt;
      &lt;/div&gt;
    &lt;!-- for footer --&gt;
    
        &lt;/div&gt; &lt;!-- for site wrap --&gt;
            &lt;!-- &lt;script src="../cmsimde/static/chimper/js/jquery-3.3.1.min.js"&gt;&lt;/script&gt; --&gt;
            &lt;script src="../cmsimde/static/chimper/js/jquery-migrate-3.0.1.min.js"&gt;&lt;/script&gt;
            &lt;script src="../cmsimde/static/chimper/js/jquery-ui.js"&gt;&lt;/script&gt;
            &lt;script src="../cmsimde/static/chimper/js/popper.min.js"&gt;&lt;/script&gt;
            &lt;script src="../cmsimde/static/chimper/js/bootstrap.min.js"&gt;&lt;/script&gt;
            &lt;script src="../cmsimde/static/chimper/js/owl.carousel.min.js"&gt;&lt;/script&gt;
            &lt;script src="../cmsimde/static/chimper/js/jquery.stellar.min.js"&gt;&lt;/script&gt;
            &lt;script src="../cmsimde/static/chimper/js/jquery.countdown.min.js"&gt;&lt;/script&gt;
            &lt;script src="../cmsimde/static/chimper/js/jquery.magnific-popup.min.js"&gt;&lt;/script&gt;
            &lt;script src="../cmsimde/static/chimper/js/bootstrap-datepicker.min.js"&gt;&lt;/script&gt;
            &lt;script src="../cmsimde/static/chimper/js/aos.js"&gt;&lt;/script&gt;
            &lt;!--
            &lt;script src="../cmsimde/static/chimper/js/typed.js"&gt;&lt;/script&gt;
                    &lt;script&gt;
                    var typed = new Typed('.typed-words', {
                    strings: ["Web Apps"," WordPress"," Mobile Apps"],
                    typeSpeed: 80,
                    backSpeed: 80,
                    backDelay: 4000,
                    startDelay: 1000,
                    loop: true,
                    showCursor: true
                    });
                    &lt;/script&gt;
            --&gt;
            &lt;script src="../cmsimde/static/chimper/js/main.js"&gt;&lt;/script&gt;
        ''' + checkMath() + '''&lt;/body&gt;&lt;/html&gt;
        '''

                
</t>
<t tx="leo.20220115202516.2">@others
@language python
@tabwidth -4
</t>
<t tx="leo.20220115202516.20">def generate_pages():
    
    """Convert content.htm to static html files in  content directory
    """
    # 必須決定如何處理重複標題頁面的轉檔
    # 確定程式檔案所在目錄, 在 Windows 有最後的反斜線
    #_curdir = os.path.join(os.getcwd(), os.path.dirname(__file__))
    #_curdir is now repo_path
    # 根據 content.htm 內容, 逐一產生各頁面檔案
    # 在此也要同時配合 render_menu2, 產生對應的 anchor 連結
    head, level, page = parse_content()
    # 處理重複標題 head 數列， 重複標題則按照次序加上 1, 2, 3...
    newhead = []
    for i, v in enumerate(head):
        # 各重複標題總數
        totalcount = head.count(v)
        # 目前重複標題出現總數
        count = head[:i].count(v)
        # 針對重複標題者, 附加目前重複標題出現數 +1, 未重複採原標題
        newhead.append(v + "-" + str(count + 1) if totalcount &gt; 1 else v)
    # 刪除 content 目錄中所有 html 檔案
    filelist = [ f for f in os.listdir(repo_path + "/content/") if f.endswith(".html") ]
    for f in filelist:
        os.remove(os.path.join(repo_path + "/content/", f))
    # 這裡需要建立專門寫出 html 的 write_page
    # index.html
    with open(repo_path + "/content/index.html", "w", encoding="utf-8") as f:
        f.write(get_page2(None, newhead, 0))
    # sitemap
    with open(repo_path + "/content/sitemap.html", "w", encoding="utf-8") as f:
        # 為了修改為動態與靜態網頁雙向轉檔, 這裡需要 newhead pickle
        # sitemap2 需要 newhead
        f.write(sitemap2(newhead))
    # 以下轉檔, 改用 newhead 數列

    def visible(element):
        if element.parent.name in ['style', 'script', '[document]', 'head', 'title']:
            return False
        elif re.match('&lt;!--.*--&gt;', str(element.encode('utf-8'))):
            return False
        return True

    search_content = []
    for i in range(len(newhead)):
        # 在此必須要將頁面中的 /images/ 字串換為 images/, /downloads/ 換為 downloads/
        # 因為 Flask 中靠 /images/ 取檔案, 但是一般 html 則採相對目錄取檔案
        # 此一字串置換在 get_page2 中進行
        # 加入 tipue search 模式
        get_page_content = []
        html_doc = get_page2(newhead[i], newhead, 0, get_page_content)
        """
        # html = "&lt;meta property='head' content='H1'&gt;"
        soup = BeautifulSoup(html)
        title = soup.find("meta", property="head")
        print(title["content"])
        """
        html_doc = html_doc.replace('&lt;meta charset="utf-8"&gt;', '&lt;meta charset="utf-8"&gt;\n&lt;meta property="head" content="H'+str(level[i])+'"&gt;')
        soup = BeautifulSoup(" ".join(get_page_content), "lxml")
        search_content.append({"title": newhead[i], "text": " ".join(filter(visible, soup.findAll(text=True))), "tags": "", "url": newhead[i] + ".html"})
        with open(repo_path + "/content/" + newhead[i] + ".html", "w", encoding="utf-8") as f:
            # 增加以 newhead 作為輸入
            f.write(html_doc)
    # GENERATE js file
    with open(repo_path + "/content/tipuesearch_content.js", "w", encoding="utf-8") as f:
        f.write("var tipuesearch = {\"pages\": " + str(search_content) + "};")
    # generate each page html under content directory
    return "已經將網站轉為靜態網頁. &lt;a href='/'&gt;Home&lt;/a&gt;"
# seperate page need heading and edit variables, if edit=1, system will enter edit mode
# single page edit will use ssavePage to save content, it means seperate save page

generate_pages()
</t>
<t tx="leo.20220115202516.3">import os
import re
from bs4 import BeautifulSoup

repo_path = "./../"
config_dir = repo_path + "/config/"
</t>
<t tx="leo.20220115202516.4">class Init(object):
    site_title = "Final Project"
    @others
</t>
<t tx="leo.20220115202516.6">def file_get_contents(filename):
    
    """Return filename content
    """
    
    # open file in utf-8 and return file content
    with open(filename, encoding="utf-8") as file:
        return file.read()

</t>
<t tx="leo.20220115202516.7">def _remove_h123_attrs(soup):
    
    """Remove h1-h3 tag attribute
    """
    
    tag_order = 0
    for tag in soup.find_all(['h1', 'h2', 'h3']):
        # 假如標註內容沒有字串
        #if len(tag.text) == 0:
        if len(tag.contents) ==0:
            # 且該標註為排序第一
            if tag_order == 0:
                tag.string = "First"
            else:
          # 若該標註非排序第一, 則移除無內容的標題標註
                tag.extract()
        # 針對單一元件的標題標註
        elif len(tag.contents) == 1:
            # 若內容非為純文字, 表示內容為其他標註物件
            if tag.get_text() == "":
                # 且該標註為排序第一
                if tag_order == 0:
                    # 在最前方插入標題
                    tag.insert_before(soup.new_tag('h1', 'First'))
                else:
                    # 移除 h1, h2 或 h3 標註, 只留下內容
                    tag.replaceWithChildren()
            # 表示單一元件的標題標註, 且標題為單一字串者
            else:
                # 判定若其排序第一, 則將 tag.name 為 h2 或 h3 者換為 h1
                if tag_order == 0:
                    tag.name = "h1"
            # 針對其餘單一字串內容的標註, 則保持原樣
        # 針對內容一個以上的標題標註
        #elif len(tag.contents) &gt; 1:
        else:
            # 假如該標註內容長度大於 1
            # 且該標註為排序第一
            if tag_order == 0:
                # 先移除 h1, h2 或 h3 標註, 只留下內容
                #tag.replaceWithChildren()
                # 在最前方插入標題
                tag.insert_before(soup.new_tag('h1', 'First'))
            else:
                # 只保留標題內容,  去除 h1, h2 或 h3 標註
                # 為了與前面的內文區隔, 先在最前面插入 br 標註
                tag.insert_before(soup.new_tag('br'))
                # 再移除非排序第一的 h1, h2 或 h3 標註, 只留下內容
                tag.replaceWithChildren()
        tag_order = tag_order + 1

    return soup


</t>
<t tx="leo.20220115202516.8">def parse_content():
    
    """Use bs4 and re module functions to parse content.htm
    """

    # if no content.htm, generate a head 1 and content 1 file
    if not os.path.isfile(config_dir+"content.htm"):
        return "Error: no content.htm"
        '''
        # create content.htm if there is no content.htm
        with open(config_dir + "content.htm", "w", encoding="utf-8") as f:
            f.write("&lt;h1&gt;head 1&lt;/h1&gt;content 1")
        '''
    subject = file_get_contents(config_dir+"content.htm")
    # deal with content without content
    if subject == "":
        return "Error: no data in content.htm"

    # initialize the return lists
    head_list = []
    level_list = []
    page_list = []
    # make the soup out of the html content
    soup = BeautifulSoup(subject, 'html.parser')
    # 嘗試解讀各種情況下的標題
    soup = _remove_h123_attrs(soup)
    # 改寫 content.htm 後重新取 subject
    with open(config_dir + "content.htm", "wb") as f:
        f.write(soup.encode("utf-8"))
    subject = file_get_contents(config_dir+"content.htm")
    # get all h1, h2, h3 tags into list
    htag= soup.find_all(['h1', 'h2', 'h3'])
    n = len(htag)
    # get the page content to split subject using each h tag
    temp_data = subject.split(str(htag[0]))
    if len(temp_data) &gt; 2:
        subject = str(htag[0]).join(temp_data[1:])
    else:
        subject = temp_data[1]
    if n &gt;1:
            # i from 1 to i-1
            for i in range(1, len(htag)):
                head_list.append(htag[i-1].text.strip())
                # use name attribute of h* tag to get h1, h2 or h3
                # the number of h1, h2 or h3 is the level of page menu
                level_list.append(htag[i-1].name[1])
                temp_data = subject.split(str(htag[i]))
                if len(temp_data) &gt; 2:
                    subject = str(htag[i]).join(temp_data[1:])
                else:
                    subject = temp_data[1]
                # cut the other page content out of htag from 1 to i-1
                cut = temp_data[0]
                # add the page content
                page_list.append(cut)
    # last i
    # add the last page title
    head_list.append(htag[n-1].text.strip())
    # add the last level
    level_list.append(htag[n-1].name[1])
    temp_data = subject.split(str(htag[n-1]))
    # the last subject
    subject = temp_data[0]
    # cut the last page content out
    cut = temp_data[0]
    # the last page content
    page_list.append(cut)
    return head_list, level_list, page_list


</t>
<t tx="leo.20220115202759.1">這是將 config/content.htm 動態網頁內容透過分頁轉為靜態網頁檔案的程式
希望能夠找到更快的轉檔流程

因為靜態網頁帶有所有內容的下拉式功能表, 所以必須要全部分頁完畢後才能建立此一功能表.

目前看不出該如何加快轉檔案的速度

參考:

https://stackoverflow.com/questions/4961589/speed-up-writing-to-files</t>
</tnodes>
</leo_file>
