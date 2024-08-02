# API 문서

```text
1. 게시글목록 (Get)
http://10.0.0.171:8080/api/post

2. 게시글상세 (Get)
http://10.0.0.171:8080/api/post/1

3. 게시글쓰기 (Post)
http://10.0.0.171:8080/api/post
application/json
{"title": "제목입니다", "content":"내용입니다"}

4. 게시글삭제 (Delete)
http://10.0.0.171:8080/api/post/1

5. 게시글수정 (Put)
http://10.0.0.171:8080/api/post/1
application/json
{"title": "제목입니다", "content":"내용입니다"}
```