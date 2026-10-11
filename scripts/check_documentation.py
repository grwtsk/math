"""Structural checks for the selected documentation candidate; not proof admission."""
import argparse,copy,hashlib,json,pathlib,re
ROOT=pathlib.Path(__file__).resolve().parents[1]
def sha(p):return hashlib.sha256(p.read_bytes()).hexdigest()
def validate(data):
 ids=set()
 for r in data['records']:
  assert r['id'] not in ids,'duplicate ID';ids.add(r['id'])
  assert r['premises'],'missing premises'
  for k in ['source','page','evidence']:
   p=ROOT/r[k];assert p.is_file() and ROOT in p.resolve().parents,'missing/unsafe file'
  assert sha(ROOT/r['source'])==r['sha256'],'source invalidated'
  assert r['verification'] in ('historical','fresh-selected'),'unsupported status'
  if r['verification']=='fresh-selected':
   receipt=json.loads((ROOT/r['evidence']).read_text())
   assert receipt.get('outcome')=='passed','missing passed receipt'
   assert receipt.get('source_hashes',{}).get(r['source'])==r['sha256'],'receipt not current'
   assert all(x=='passed' for x in receipt['selected_checks'].values()),'failed check'
  assert not re.search(r'/Users/|noeaaeue|gate1-|worktree',json.dumps(r)),'private provenance'
def render(data):
 return '# Selected result catalog\n\n'+data['coverage']+'. Records are candidate documentation. Verification labels refer to the bound source, not operational authority. Priority is editorial architectural relevance.\n\n| Priority | Family | Verification |\n|---|---|---|\n'+''.join('| '+str(r['priority'])+' | ['+r['title']+'](../../'+r['page']+') | '+r['verification']+' |\n' for r in sorted(data['records'],key=lambda r:r['priority']))+'\n[Structured records](results.json) · [Existing family pages](library-pages.md)\n'
def main():
 p=argparse.ArgumentParser();p.add_argument('--render',action='store_true');a=p.parse_args()
 d=json.loads((ROOT/'docs/reference/results.json').read_text());validate(d)
 for mutation in ['duplicate','premise','source','receipt','private']:
  bad=copy.deepcopy(d)
  if mutation=='duplicate':bad['records'].append(copy.deepcopy(bad['records'][0]))
  if mutation=='premise':bad['records'][0]['premises']=''
  if mutation=='source':bad['records'][0]['sha256']='0'*64
  if mutation=='receipt':bad['records'][1]['verification']='fresh-selected'
  if mutation=='private':bad['records'][0]['contribution']='/Users/hidden'
  try:validate(bad)
  except AssertionError:pass
  else:raise AssertionError('hostile input accepted: '+mutation)
 target=ROOT/'docs/reference/results.md';expected=render(d)
 if a.render:target.write_text(expected)
 else:assert target.read_text()==expected,'generated index stale'
 pages=[ROOT/'README.md',*[(ROOT/'docs'/n) for n in ['index.md','start/least-prime.md','how-to/verify.md','explanation/evidence.md','explanation/documentation.md','reference/results.md','reference/library-pages.md']],*[ROOT/r['page'] for r in d['records']]]
 for page in pages:
  text=page.read_text();assert not re.search(r'/Users/|grwtsk/noeaaeue|gate1-',text),'private path'
  for link in re.findall(r'\]\(([^)]+)\)',text):
   if not link.startswith(('https://','http://','#')):assert (page.parent/link.split('#')[0]).exists(),('missing link',str(page.relative_to(ROOT)),link)
 for page in (ROOT/'docs').glob('*.md'):
  if page.name!='index.md':assert '(../'+page.name+')' in (ROOT/'docs/reference/library-pages.md').read_text(),'omitted family'
 print('selected record, source, navigation, disclosure and five hostile controls passed')
if __name__=='__main__':main()
