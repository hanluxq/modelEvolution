import csv


def extract_text_and_convert_letter(line):
    start_quote = line.find("'") + 1
    end_quote = line.find("'", start_quote)
    text = line[start_quote:end_quote]

    last_char = line[-1]
    if last_char == 'F':
        converted_letter = '0'
    else:
        converted_letter = '1'

    return text, converted_letter


# 读取输入数据的文件名
input_file = 'expand.txt'

# 存储结果的CSV文件名
output_file = 'output.csv'

# 从文件读取输入数据
input_data = []
with open(input_file, 'r',encoding='utf-8') as file:
    for line in file:
        input_data.append(line.strip())

# 处理每一行数据，并将结果写入CSV文件
with open(output_file, 'w', newline='',encoding='utf-8') as csvfile:
    writer = csv.writer(csvfile)
    writer.writerow(['RequirementText', 'NFR'])  # 写入CSV文件的表头

    for line in input_data:
        text, converted_letter = extract_text_and_convert_letter(line)
        writer.writerow([text, converted_letter])  # 写入提取的文本和转换后的字母

print("结果已成功保存到", output_file)
