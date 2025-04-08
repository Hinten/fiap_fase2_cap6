def makeRed(text:str) -> str:
    return "\033[91m" + text + "\033[0m"

def makeMagenta(text:str) -> str:
    return "\033[95m" + text + "\033[0m"

def makeGreen(text:str) -> str:
    return "\033[92m" + text + "\033[0m"

def makeYellow(text:str) -> str:
    return "\033[93m" + text + "\033[0m"

def makeBlue(text:str) -> str:
    return "\033[94m" + text + "\033[0m"

def makeCyan(text:str) -> str:
    return "\033[96m" + text + "\033[0m"

def makeOrange(text:str) -> str:
    return "\033[38;5;208m" + text + "\033[0m"