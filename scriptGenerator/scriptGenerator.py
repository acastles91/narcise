import os, re, sys, datetime 
from decimal import *
from numpy import interp

getcontext().prec = 2
repeatBool = bool(sys.argv[1])
timeInterval = sys.argv[2]
maxOpacity = int(sys.argv[3])
script = open("script", "r")
text = script.readlines()
numberRegex = re.compile(r'\d{1,3}')
finalLines = []
lastTimeStamp = list(numberRegex.findall(text[-1]))[0] + ':' + list(numberRegex.findall(text[-1]))[1] + ':' + list(numberRegex.findall(text[-1]))[2] + '.' + list(numberRegex.findall(text[-1]))[3]

lastTimeStampList = []
layersStrange = []
layer1 = []
layer2 = []
layer3 = []
layer4 = []
layer5 = []
layer6 = []
layer7 = []
layer8 = []
layer9 = []
layer10 = []
layersStrange.append(layer1)
layersStrange.append(layer2)
layersStrange.append(layer3)
layersStrange.append(layer4)
layersStrange.append(layer5)
layersStrange.append(layer6)
layersStrange.append(layer7)
layersStrange.append(layer8)
layersStrange.append(layer9)
layersStrange.append(layer10)

for i in range(0,4):
    lastTimeStampList.append(numberRegex.findall(text[-1])[i])

print('Last TimeStampList ')
print(lastTimeStampList)
def opacities():
    for i in range(1, len(text)):
        line = {}
        listNumbers = numberRegex.findall(text[i])
        print("Line number " + str(i) + ": " + str(listNumbers))
        listOpacities = [] 
        timeStamp = []
        for a in range(0,4):
            timeStamp.append(listNumbers[a])
        for e in range(4, len(listNumbers)):
            listOpacities.append(listNumbers[e])
        line['timeStamp'] = timeStamp
        line['timeStampMilliseconds'] = int(timeStamp[3]) + (int(timeStamp[2]) * 1000) + (int(timeStamp[1]) * 1000 * 60) + (int(timeStamp[0]) * 1000 * 60 * 60)
        line['opacities'] = listOpacities
        finalLines.append(line)
        print(len(finalLines))

def generateTimeStamps():
    lastTimeStampMilliseconds = int(lastTimeStampList[3]) + (int(lastTimeStampList[2]) * 1000) + (int(lastTimeStampList[1]) * 1000 * 60) + (int(lastTimeStampList[1]) * 1000 * 60 * 60)
    numberPeriods = int(lastTimeStampMilliseconds) / int(timeInterval)
    periodsBetweenKeyframes = []
    layerDifferenceList = []
    finalLinesFile = [] 
    finalLayerValues = []
    finalDictionary = {}
    print(len(finalLines) - 1)
    for i in range(0, len(finalLines) - 1):
        periodsBetweenKeyframes.append((finalLines[i + 1]['timeStampMilliseconds'] - finalLines[i]['timeStampMilliseconds']) / int(timeInterval))
    for i in range(0, len(finalLines) - 1): 
        layerDifferenceLine = []
        for e in range(0, len(layersStrange)):
            layerValues = []
            layerDifference = int(finalLines[i + 1]['opacities'][e]) - int(finalLines[i]['opacities'][e])
            layerDifferenceLine.append(layerDifference)
            for a in range(0, int(periodsBetweenKeyframes[i])):
                layerValue = round(layerDifference / periodsBetweenKeyframes[i] * a) + int(finalLines[i]['opacities'][e])
                #print(layerValue) This is the important value
                #layerValues.append(layerValue)
                layersStrange[e].append(layerValue)
            finalLayerValues.append(layerValues)
        layerDifferenceList.append(layerDifferenceLine)  
    
    '''print('Out of the loop difference: ' + str(layerDifferenceList))
    print('Len: ' + str(len(layerDifferenceList)))
    print("Type :" + str(type(layerDifferenceList)))
    print("Periods between keyframes: " + str(periodsBetweenKeyframes))
    print("Layer Values: " + str(layerValues))
    print(str(len(layerValues)))
    print("Final layer values: ")
    print(str(len(finalLayerValues[25])))
    '''
    '''for e in range(0, 10):
        multiplier = len(finalLayerValues) / e + 1
        '''
    finalLength = int(len(layersStrange[4]))
    print(finalLength)
    #print(finalLength)
    #print(len(layersStrange))
    #print(len(layersStrange[4]))
    return(layerDifferenceList)

def generateFile(layerDifferenceList : list):
    with open('../narciseFromScratch/src/generatedScript.h', 'w') as header, open('../narciseFromScratch/src/codeFile', 'w') as codeFile: 
        date = datetime.datetime.now()
        openingLine = "//File generated on " + str(date)
        includeLine = "#include <iostream>\n#include <vector>"
        includeLineCpp = """#include "generatedScript.h"'\n'"""
        cppLines = []
        finalLength = int(len(layersStrange[4]))
        #print(str(layerDifferenceList))
        vectorDeclaration = "std::vector<std::vector<int>> finalLines;"
        intervalDeclaration = "int refreshRate = " + str(int(timeInterval)) + ";" 
        if (repeatBool == 1):
            boolDeclaration = "bool repeatBool {true};"
        else:
            boolDeclaration = "bool repreatBool {false};"
        header.write(openingLine + '\n')
        header.write('\n' + includeLine + '\n')
        header.write('\n' + vectorDeclaration + '\n' + boolDeclaration + '\n' + intervalDeclaration + '\n \n')
        #codeFile.write(includeLineCpp)
        for i in range(0, finalLength):
            #for e in range(0, 9):
            #print("Que pasa :" + "layer " + str(i) + " = " + str(len(layersStrange[i])))
            #print("hola" + str(layersStrange[4][50]))
            #variableDeclaration = "std::vector<int>    line_" + str(i) + "{ " + str(int(round(interp(layersStrange[0][i], [0, 100], [0, maxOpacity])))) + ', ' + str(int(round(interp(layersStrange[1][i], [0, 100], [0, maxOpacity])))) + ', ' + str(int(round(interp(layersStrange[2][i], [0, 100], [0, maxOpacity])))) + ', ' + str(int(round(interp(layersStrange[3][i], [0, 100], [0, maxOpacity])))) + ', ' + str(int(round(interp(layersStrange[4][i], [0, 100], [0, maxOpacity])))) + ', ' + str(int(round(interp(layersStrange[5][i], [0, 100], [0, maxOpacity])))) + ', ' + str(int(round(interp(layersStrange[6][i], [0, 100], [0, maxOpacity])))) + ', ' + str(int(round(interp(layersStrange[7][i], [0, 100], [0, maxOpacity])))) + ', ' + str(int(round(interp(layersStrange[8][i], [0, 100], [0, maxOpacity])))) + ', ' + str(int(round(interp(layersStrange[9][i], [0, 100], [0, maxOpacity])))) + ' };'
            variableDeclaration = "std::vector<int>    line_" + str(i) + " { " + str(int(round(interp(layersStrange[0][i], [0, 100], [0, maxOpacity])))) + ', ' + str(int(round(interp(layersStrange[1][i], [0, 100], [0, maxOpacity])))) + ', ' + str(int(round(interp(layersStrange[2][i], [0, 100], [0, maxOpacity])))) + ', ' + str(int(round(interp(layersStrange[3][i], [0, 100], [0, maxOpacity])))) + ', ' + str(int(round(interp(layersStrange[4][i], [0, 100], [0, maxOpacity])))) + ', ' + str(int(round(interp(layersStrange[5][i], [0, 100], [0, maxOpacity])))) + ', ' + str(int(round(interp(layersStrange[6][i], [0, 100], [0, maxOpacity])))) + ', ' + str(int(round(interp(layersStrange[7][i], [0, 100], [0, maxOpacity])))) + ', ' + str(int(round(interp(layersStrange[8][i], [0, 100], [0, maxOpacity])))) + ', ' + str(int(round(interp(layersStrange[9][i], [0, 100], [0, maxOpacity])))) + ' };'
            variablePushback = "finalLines.push_back(line_" + str(i) +");" + '\n' 
            #print(str(int(round(interp(layersStrange[0][i], [0, 100], [0, maxOpacity])))))
            #print(variablePushback)
            header.write(variableDeclaration + '\n')
            codeFile.write(variablePushback) 

    #print(str(int(layersStrange[1][900])))


opacities()
#generateTimeStamps()
generateFile(generateTimeStamps())
