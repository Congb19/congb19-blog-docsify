# Congb19-top API 文档

---

## Public

> 获取日期

<details>
<summary>获取当前的日期信息</summary>

- url

`GET` /public/getDate

- Parameters

```javascript
{
  "isLogin": true //是否登录
}
```

- Responses

  - Code: 200

  - Description: Get the current date

  - Example Value:

```javascript
{
  "title": "date",
  "code": 200,
  "data": {
    "year": 2020,
    "month": 11,
    "date": 3,
    "day": 2
  }
}
```

</details>

> 获取幸运数字

<details>
<summary>获取一个 0~100 之间的随机数。</summary>

- url

`GET` /public/getLuckyNumber

- Parameters

```javascript
{
}
```

- Responses

  - Code: 200

  - Description: Get a lucky number

  - Example Value:

```javascript
{
  "title": "luckyNumber",
  "code": 200,
  "data": {
    "luckyNumber": 2
  }
}
```

</details>

> 营销号文章生成器

<details>
<summary>营销号文章生成器</summary>

- url

`POST` /public/createTrashArticle

- Parameters

```javascript
{
  "main": "橘子",
  "event": "很好吃",
  "anotherEvent": "橘子酸酸甜甜的"
}
```

- Responses

  - Code: 200

  - Description: Create a Trash Article

  - Example Value:

```javascript
{
  "title": "trashArticle__橘子很好吃",
  "code": 200,
  "data": {
    "res": "橘子很好吃是怎么回事呢?橘子相信大家都很熟悉，但是橘子很好吃是怎么回事呢，下面就让小编带大家一起了解吧。\n    橘子很好吃，其实就是橘子酸酸甜甜的，大家可能会很惊讶橘子怎么会很好吃呢?但事实就是这样，小编也感到非常惊讶。\n    这就是关于橘子很好吃的事情了，大家有什么想法呢，欢迎在评论区告诉小编一起讨论哦!"
  }
}
```

</details>

---

## User

---

## Blog

---

## Kbn

> 获取幸福列表

<details>
<summary>获取要展示（type==0 && show==true）的幸福列表</summary>

- url

`GET` /kbn/getKbnList

- json

```javascript
{
  --
}
```

- Responses

  - Code: 200

  - Example Value:

```json
{
  "title": "getKbnList",
  "code": 200,
  "data": {
    happinessList: [
      {
        floor: 1,
        show: true,
        author_name: "lyc",
        contact_info: "qq123456",
        content: "今天吃了咖喱！",
      }
      ,
      ...
    ]
  }
}
```

</details>

> 发送幸福/烦恼

<details>
<summary>发送幸福/烦恼</summary>

- url

`POST` /kbn/postKbnInfo

- Parameters

```json
{
  "query": {
    //id、floor、created_time 后台自生成
    "type": 0, //0: happiness, 1: worry
    "content": "今天和喜欢的人出去玩了！",
    "contact_info": "qq123456",
    "author_name": "lyc"
  }
}
```

- Responses

  - Code: 200

  - Example Value:

```json
{
  "title": "postKbnInfo",
  "code": 200,
  "data": {
    "success": true
  }
}
```

</details>

## Wall

## Admin

