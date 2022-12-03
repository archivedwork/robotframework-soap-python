*** Settings ***
Library           SoapLibrary
Library           OperatingSystem
Library    XML
Variables  /home/mohammed/github/robotframework-soap-python/common/util/variables.py


*** Variables ***

*** Test Cases ***
TC01_TBS-123_DemoTestCase
    [Tags]  TC01_TBS-123
    Create Soap Client  ${CALCULATOR_URL}
    ${response}    Call SOAP Method With XML    ${CURDIR}/SOAPRequests//CalculatorRequest.xml
    ${text}    Get Data From XML By Tag    ${response}    AddResult
    Log    ${text}
    # Save XML To File    ${response}    ${CURDIR}    response_test


TC02_TBS-223_TempConvert
    [Tags]  TC02_TBS-223
    Create Soap Client    ${TEMPCONVERT_URL}
    ${response}    Call SOAP Method With XML    ${CURDIR}/SOAPRequests/FahrenheitToCelsuisRequest.xml
    ${text}    Get Data From XML By Tag    ${response}    FahrenheitToCelsiusResult
    Log    ${text}
    # Save XML To File    ${response}    ${CURDIR}    response_test