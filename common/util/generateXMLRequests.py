import json
import sys


f = open('/home/mohammed/github/robotframework-soap-python/TestData/json/DATASOURCE_INT.json')

data = json.load(f)
print(data.values())



# TODO: use list instead of many args
def generate_string_CalculateRequest(number1: any, number2: any):
    return f"""
    <soapenv:Envelope xmlns:soapenv="http://schemas.xmlsoap.org/soap/envelope/"
                  xmlns:gs="http://tempuri.org/">
        <soapenv:Header/>
        <soapenv:Body>
            <gs:Add>
                <gs:intA>{number1}</gs:intA>
                <gs:intB>{number2}</gs:intB>
            </gs:Add>
        </soapenv:Body>
    </soapenv:Envelope>
    """
    