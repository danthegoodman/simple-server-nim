import jester, asyncdispatch, json, logging

routes:
  get "/stress":
    var obj = newJObject()
    for k, v in request.params:
      obj[k] = %v
    resp($obj, "application/json")

runForever()