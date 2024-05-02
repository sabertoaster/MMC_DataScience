import os
import numpy as np
PATH = "Data Files/"
LEN_RESPONSE = 26
answer_key = "B,A,D,D,C,B,D,A,C,C,D,B,A,B,A,C,B,D,A,C,A,A,B,D,D"
ANSWER_KEY = np.array(answer_key.split(','), dtype='object')
# Task 1
def get_filename(filename):
    if filename.endswith('.txt') and os.path.exists(PATH + filename):
        print(f"File found. {PATH + filename}")
        data = np.array(read_file(PATH + filename))
        grades, eval_data = grade_exam(data)
        with open(f"{PATH + filename.split('.')[0]}_grades.txt", 'w') as f:
            for line in grades:
                f.write(f"{line[0]},{line[1]}\n")
        visualize_eval(data[:, 1:], eval_data)
        return filename
    else:
        print("File not found. Please try again.")
        return None

# Task 2
def read_file(path):
    # Read data
    data = [np.array(''.join(line.splitlines()).split(','), dtype='object') for line in open(path)]
    print(f"Số dòng đọc được là: {len(data)}")
    print(f"Số dòng lỗi là: {len([(line, len(line)) for line in data if '' in line or len(line) != LEN_RESPONSE])}")

    # Preprocess data
    for index, line in enumerate(data):
        if '' in line:
            if len(line) != LEN_RESPONSE:
                print(f"Dòng {index + 1} có số lượng đáp án sai")
                print(data.pop(index))
            else:
                print(f"Dòng {index + 1} có đáp án bị thiếu")

    return data

# Task 3
def visualize_eval(data, diction: dict):
    print(f"High score num: {diction['high_score_num']}")
    print(f"Average score: {diction['average_score']}")
    print(f"Highest score: {diction['highest_score']}")
    print(f"Lowest score: {diction['lowest_score']}")
    print(f"Range score: {diction['range_score']}")
    print(f"Median score: {diction['median_score']}")
    print(f"Most pass question: {diction['most_pass_question']} - {data[:, diction['most_pass_question'][0]].tolist().count('')} - {data[:, diction['most_pass_question'][0]].tolist().count('') / len(data) * 100}%")
    print(f"Most fail question: {diction['most_fail_question']} - {data[:, diction['most_fail_question'][0]].tolist().count('')} - {data[:, diction['most_fail_question'][0]].tolist().count('') / len(data) * 100}%")
    return

def grade_exam(data):
    responses = data[:, 1:]
    eval_data = dict({"high_score_num" : 0, "average_score" : 0, "highest_score" : 0, "lowest_score" : 0, "range_score" : 0, "median_score" : 0, "most_pass_question": 0, "most_fail_question": 0})
    # Grade exam
    scores = []
    for line in responses:
        score = 0
        for index, elem in enumerate(line):
            score += ((elem == ANSWER_KEY[index])*4 - (elem != ANSWER_KEY[index] and elem != ''))
        scores.append(score)

    eval_data["high_score_num"] = len([score for score in scores if score > 80])
    eval_data["average_score"] = np.mean(scores)
    eval_data["highest_score"] = np.max(scores)
    eval_data["lowest_score"] = np.min(scores)
    eval_data["range_score"] = eval_data["highest_score"] - eval_data["lowest_score"]
    eval_data["median_score"] = np.median(scores)
    listy = [(responses[:, index] == np.array([''])).tolist().count(True) for index in range(25)]
    eval_data["most_pass_question"] = (np.argwhere(listy == np.amax(listy)).flatten() + 1).tolist()
    listy = [((responses[:, index] != np.array([ANSWER_KEY[index]])) == (responses[:, index] != np.array(['']))).tolist().count(True) for index in range(25)]
    eval_data["most_fail_question"] = (np.argwhere(listy == np.amax(listy)).flatten() + 1).tolist()

    return np.concatenate( [np.array(data[:, 0]).reshape(-1, 1), np.array(scores).reshape(-1, 1)], axis=1), eval_data


filename = input("Give me your name: ")
if '.txt' not in filename:
    get_filename(f"{filename}.txt")
else:
    get_filename(filename)