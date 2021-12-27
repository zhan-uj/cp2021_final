from bs4 import BeautifulSoup

repo_path = "Y:/tmp/cp2021_final"
class_name = "1b"
group_file = repo_path + "/" + class_name + "_group.txt"
student_id = "scrum-1"

with open(group_file) as f:
    # 讀進數列且去除 \n
    group_data = f.read().splitlines()

for i in group_data:
    if "1bg" in i:
        count = 0
        print(i)
    else:
        count += 1
        print("member " + str(count) + " : " + str(i))

'''

# git pull 拉回各組組長直接在 github web 介面同意直接合併的各學員
# 位於 downloads 目錄下的 "學號_html.txt"
html_location = repo_path + "/downloads/" + student_id + "_html.txt"
with open(html_location, encoding="utf-8") as f:
    student_html = f.read()

# 動態網頁檔案所在路徑
file_location = repo_path + "/config/content.htm"
# 將動態網頁檔案內容讀出, 存入 data 變數區
with open(file_location, encoding="utf-8") as f:
    data = f.read()

# 利用 data 建立 soup
soup = BeautifulSoup(data)
# 利用 print() 可以列出 soup 超文件檔案內容
#print(soup)

for article in soup.find_all('h2'):
    #print(article)
    
    # create a new tag
    new_tag = soup.new_tag(student_id)
    new_tag.append(student_html)

    # insert the new tag after the current tag
    article.insert_after(new_tag)
    
print(soup)
'''
