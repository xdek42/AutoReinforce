from xml.dom import minidom
class xml:
    def __init__(self, filepath):
        self.doc = minidom.parse(filepath)
        self.filepath = filepath
    def add_application(self, app_name):
        root = self.doc.documentElement
        for app in root.getElementsByTagName("application"):
            app.setAttribute("android:name", app_name)
    def save(self):
        with open(self.filepath,'w') as fh:
            self.doc.writexml(fh, encoding="utf-8") 
