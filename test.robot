*** Settings ***
Library  Selenium2Library
Suite Setup	Go to homepage
Suite Teardown	Close All Browsers

*** Variables ***
${homepage}	https://www.google.com
${BROWSER}	chrome
${HREF}		https://www.ruckuswireless.com


*** Test Cases ***
Google devops and find eficode
	Google and check results	ruckus	Ruckus Wireless
	Go Link

*** Keywords ***
Google and check results
	[Arguments]	${searchkey}	${result}
	Input Text	id=lst-ib	${searchkey}
	Press Key 	id=lst-ib 	\\13	
	Wait Until Page Contains	${result}
Go to homepage
	Open Browser	${homepage}	${BROWSER}
Go Link
	Go to	${HREF}
	Capture Page Screenshot
