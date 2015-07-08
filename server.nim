import jester, asyncdispatch, json, logging

settings:
  port = Port(10000)

routes:
  get "/stress":
    var obj = newJObject()
    for k, v in request.params:
      obj[k] = %v
    resp($obj, "application/json")

runForever()
