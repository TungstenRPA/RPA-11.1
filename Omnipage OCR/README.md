# 👓OmniPage OCR
[Kofax OmniPage](https://www.kofax.com/Products/omnipage) OCR engine has been integrate into [Intelligent Screen Automation](https://docshield.kofax.com/RPA/en_US/11.1.0_vwsnqu4c9o/help/kap_help/designstudio/c_dastreemodes.html#c_dastreemodes) and [Extract Text from Image](https://docshield.kofax.com/RPA/en_US/11.1.0_vwsnqu4c9o/help/kap_help/designstudio/c_dasextracttextfromimagestep.html?h=extract%20text%20from%20image) step in Desktop Automation.  

OmniPage OCR is **not** guaranteed to produce perfect text when reading from the screen. Make sure your solution does not rely on OCR being perfect. Use the clipboard or Print2PDF to copy values instead of trusting OCR.

Google’s open source [Tesseract OCR](https://github.com/tesseract-ocr/tesseract#tesseract-ocr) engine is still the default OCR engine for Kofax RPA 11.1. 
To enable Kofax Omnipage OCR you will need to edit 
>**C:\Program Files\Kofax RPA 11.1\nativelib\hub\windows-x32\23\lib\ocr.cfg**
```properties
# The OCR engine type. May be 'tesseract' (default) or 'omnipage'  
# engine_type = tesseract  
engine_type = omnipage

# Default OCR languages using ISO 639-3 B codes.  
default_language = tur+eng
```


See [ISO 639-3](https://en.wikipedia.org/wiki/Wikipedia:WikiProject_Languages/List_of_ISO_639-3_language_codes_(2019)) for valid language codes.  

Multiple languages can be added. Performance may decrease with mulitple languages, and errors may increase.  
A robot cannot choose the language dynamically.   The following languages are included (but this list is not complete) 

*Arabic, Baltic, Chinese, Cyrillic, Dutch, Finnish, French, German, Greek, Hungarian, Italian, Japanese, Korean, Norsk, Polish, Portuguese, Sami, Slovenian, Spanish , Swedish, Turkish.*  
