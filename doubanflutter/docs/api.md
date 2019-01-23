豆瓣官方公开的api文档：https://developers.douban.com/wiki/?title=movie_v2

# 1、获取正在热映的电影：
```
接口：https://api.douban.com/v2/movie/in_theaters

访问参数：
start : 数据的开始项
count：单页条数
city：城市

如：获取 广州热映电影 第一页 10条数据：
https://api.douban.com/v2/movie/in_theaters?city=广州&start=0&count=10

返回数据格式：（这里只列出app需要的字段）

key	类型	描述
count	int	单页条数
start	int	
数据的开始项
total	int	数据总条数
subjects	json数组	电影列表
— id
	string	电影id
— title	string	电影名中文名
— images
	json对象	存放各种大小的电影图
—— small／large／medium
	string	电影图url
— genres
	json数组	电影类型
— rating
	json对象	评分信息
—— average
	float	电影评分
— directors	json数组	导演列表
—— name
	string	导演名
— casts
	json数组	主演列表
—— name
	string	主演名
— year
	int	年份
```


# 2、获取电影Top250：

```
接口：https://api.douban.com/v2/movie/top250

访问参数：
start : 数据的开始项
count：单页条数

如：获取电影Top250 第一页 10条数据：
https://api.douban.com/v2/movie/top250?start=0&count=10

返回数据格式：同上

```

# 3、电影搜索
```
接口：https://api.douban.com/v2/movie/search

访问参数：
start : 数据的开始项
count：单页条数
q：要搜索的电影关键字
tag：要搜索的电影的标签

如：
搜索电影《神秘巨星》：
https://api.douban.com/v2/movie/search?q=神秘巨星&start=0&count=10
搜索喜剧类型的电影：
https://api.douban.com/v2/movie/search?tag=喜剧&start=0&count=10

返回数据格式：同上
```

# 4、电影详情

```
接口：https://api.douban.com/v2/movie/subject/:id

访问参数：电影id

如：电影《神秘巨星》的电影id为：26942674，搜索此电影的详细信息：
https://api.douban.com/v2/movie/subject/26942674

返回数据格式：
key
	
类型
	
描述
id
	
string
	
电影id
title
	
string
	
电影名中文名
original_title
	string	电影原名
images
	
json对象
	
存放各种大小的电影图
— small／large／medium
	
string
	
电影图url
genres
	
json数组
	
电影类型
rating
	
json对象
	
评分信息
— average
	
float
	
电影评分
ratings_count
	int	评分人数
directors
	
json数组
	
导演列表
— name
	
string
	
导演名
—avatars
	json对象	各种大小的影人头像图
— small／large／medium
	
string
	
头像图url
casts
	
json数组
	
主演列表
— name
	
string
	
主演名
—avatars
	
json对象
	
各种大小的影人头像图
— small／large／medium
	
string
	
头像图url
year
	
int
	
年份
countries
	json数组	
制片国家/地区
summary
	string	简介

```