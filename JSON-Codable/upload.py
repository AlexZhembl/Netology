from flask import Flask, render_template, request

app = Flask(__name__)
app.config['TESTING'] = True

@app.route('/uploader', methods = ['GET', 'POST'])
def upload_file():
   if request.method == 'POST':
      return str(request.values)
      #f = request.files['data']
      #f.save(f.filename)
      #return 'file uploaded successfully'
   else:
      return 'Only Post requests are allowed'

if __name__ == '__main__':
   app.testing = True
   app.run(debug = True)
