from flask import Flask, request, jsonify
import datetime

app = Flask(__name__)

founding_year = 1912

def get_minguo_year(year):
    minguo_year = year - (founding_year - 1)
    minguo_year_result = {"minguo_year": minguo_year} 
    return minguo_year_result    


@app.get("/minguo")
def get_current_minguo_year():
    current_year = datetime.datetime.now().year
    minguo_year_result = get_minguo_year(current_year)
    return jsonify(minguo_year_result)


@app.post("/minguo")
def get_minguo_year_request():
    if request.is_json:
        year = request.get_json()["year"]
        return jsonify(get_minguo_year(year)), 200
    else:
        return {"Unsupported media type": "Body of POST request must be in JSON"}, 415


@app.post("/weather")
def get_weather():
    return ""
