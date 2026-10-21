import re

BASE = "BASE_LOCATION_ID"
PER_PAGE = 100
SECTION = ""   # set to e.g. "Chest" if you add a named section; "" keeps your trailing slash

pattern = re.compile(r"""['"]Catch - (.+?)['"]\s*:\s*(\d+)""")

with open("catch_list.txt", encoding="utf-8") as f:
    entries = pattern.findall(f.read())

lines = []
for i, (name, offset) in enumerate(entries):
    page = i // PER_PAGE + 1
    lines.append(
        f'    [{BASE} + {offset}] = {{ {{ "@Catches/Page {page}/Catch {name}/{SECTION}" }} }},'
    )

with open("catch_mapping.lua", "w", encoding="utf-8") as f:
    f.write("\n".join(lines) + "\n")

print(f"{len(entries)} entries written; pages: {(len(entries) - 1) // PER_PAGE + 1}")