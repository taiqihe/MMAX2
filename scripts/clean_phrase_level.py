
import sys
from pathlib import Path

from bs4 import BeautifulSoup as bs

# Hard code which attributes to keep and which to unmark
preserve_attributes = {'id', 'span', 'min_words', 'min_ids', 'mmax_level'}
unmark_attributes = {'reference', 'number', 'gram_fnc', 'gender', 'person'}

def find_anno_files(root):
	files = Path(root).glob('**/*_phrase_level.xml')
	return files


def clean_phrase_level(file):
	with open(file) as fin:
		soup = bs(fin.read(), 'lxml')
		for mkb in soup.find_all('markable'):
			adl = []
			for att in mkb.attrs:
				if att in unmark_attributes:
					mkb[att] = 'unmarked'
				elif att not in preserve_attributes:
					adl.append(att)
			for att in adl:
				del mkb[att]
		cleaned = soup.prettify()

	with open(file, 'w') as fout:
		fout.write(cleaned)


if __name__ == '__main__':
	files = find_anno_files(sys.argv[1])

	for f in files:
		clean_phrase_level(f)