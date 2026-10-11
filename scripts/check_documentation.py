"""Selected catalog and whole maintained-page structure; not proof admission."""
import argparse,copy,hashlib,json,pathlib,re
import check_documentation_layout as layout
ROOT=pathlib.Path(__file__).resolve().parents[1]
def sha(p):return hashlib.sha256(p.read_bytes()).hexdigest()
def validate(data):
 ids=set()
 for r in data['records']:
  layout.require(r['id'] not in ids,'duplicate ID');ids.add(r['id'])
  layout.require(r['premises'],'missing premises')
  for k in ['source','page','evidence']:layout.safe(ROOT,r[k])
  layout.require(sha(ROOT/r['source'])==r['sha256'],'source invalidated')
  layout.require(r['verification'] in ('historical','fresh-selected'),'unsupported status')
  if r['verification']=='fresh-selected':
   receipt=layout.load_json((ROOT/r['evidence']).read_text())
   layout.require(receipt.get('outcome')=='passed','missing passed receipt')
   layout.require(receipt.get('source_hashes',{}).get(r['source'])==r['sha256'],'receipt not current')
   checks=receipt.get('selected_checks',{})
   layout.require(checks and all(x=='passed' for x in checks.values()),'absent/failed check')
  layout.require(not re.search(r'/Users/|noeaaeue|gate1-|worktree',json.dumps(r)),'private provenance')
def render(data):
 return '# Selected result catalog\n\n'+data['coverage']+'. Records are candidate documentation. Verification labels refer to the bound source, not operational authority. Priority is editorial architectural relevance.\n\n| Priority | Family | Verification |\n|---|---|---|\n'+''.join('| '+str(r['priority'])+' | ['+r['title']+'](../../'+r['page']+') | '+r['verification']+' |\n' for r in sorted(data['records'],key=lambda r:r['priority']))+'\n[Structured records](results.json) · [Mathematical page inventory](library-pages.md)\n'
def main():
 p=argparse.ArgumentParser();p.add_argument('--render',action='store_true');a=p.parse_args()
 d=layout.load_json((ROOT/'docs/reference/results.json').read_text());validate(d)
 for mutation in ['duplicate','premise','source','receipt','private']:
  bad=copy.deepcopy(d)
  if mutation=='duplicate':bad['records'].append(copy.deepcopy(bad['records'][0]))
  if mutation=='premise':bad['records'][0]['premises']=''
  if mutation=='source':bad['records'][0]['sha256']='0'*64
  if mutation=='receipt':bad['records'][1]['verification']='fresh-selected'
  if mutation=='private':bad['records'][0]['contribution']='/Users/hidden'
  try:validate(bad)
  except layout.LayoutError:pass
  else:raise layout.LayoutError('hostile input accepted: '+mutation)
 target=ROOT/'docs/reference/results.md';expected=render(d)
 if a.render:
  target.write_text(expected)
  x=json.loads((ROOT/'docs/reference/documentation-layout.json').read_text())
  (ROOT/'docs/index.md').write_text(layout.render_navigation(x))
 else:layout.require(target.read_text()==expected,'generated catalog stale')
 n,s=layout.check()
 print(f'{n} maintained pages; {s} legacy dispositions; selected catalog and five hostile record controls passed')
if __name__=='__main__':main()
