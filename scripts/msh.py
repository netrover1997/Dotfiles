import subprocess

def grep(command, line_word, header):
    result = subprocess.run(command, capture_output=True, text=True)
    print(header)
    for line in result.stdout.splitlines():
        if line_word in line:
            print(line)

grep(['free', '-h'], 'Mem:', '=== Memory Status ===' )
grep(['sensors'], 'Package id 0:', '=== CPU Status ===')
grep(['nvidia-smi'], 'Default', '=== GPU Status ===')
