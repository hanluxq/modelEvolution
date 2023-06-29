from infer_softmax_ner import predict

from flask import Flask, request

app = Flask(__name__)


@app.route('/api/predict', methods=['POST'])
def main():
    if request and request.is_json:
        data = request.json
    else:
        data = [{'sent': 'Teacher Y asks student A to fill out a loan form and write down the following: information '
                         'about the teacher in the classroom, the reason for borrowing the classroom, and the time '
                         'for borrowing the classroom. '}]
    print(predict(data))


if __name__ == '__main__':
    main()
