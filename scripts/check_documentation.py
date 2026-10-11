"""Selected catalog and whole maintained-page structure; not proof admission."""
import argparse,copy,hashlib,json,pathlib,re
import check_documentation_layout as layout
ROOT=pathlib.Path(__file__).resolve().parents[1]
def sha_bytes(raw):return hashlib.sha256(raw).hexdigest()
def record_input_names(data):
 return {'docs/reference/results.json',*(r[k] for r in data['records'] for k in ('source','page','evidence'))}
def validate(data,bound=None):
 ids=set()
 for r in data['records']:
  layout.require(r['id'] not in ids,'duplicate ID');ids.add(r['id'])
  layout.require(r['premises'],'missing premises')
  record={k:(layout.local_bytes(ROOT,r[k],bound)) for k in ['source','page','evidence']}
  layout.require(sha_bytes(record['source'])==r['sha256'],'source invalidated')
  layout.require(r['verification'] in ('historical','fresh-selected'),'unsupported status')
  if r['verification']=='fresh-selected':
   try:receipt=layout.load_json(record['evidence'].decode())
   except UnicodeDecodeError as error:raise layout.LayoutError('non-UTF8 selected evidence') from error
   layout.require(receipt.get('outcome')=='passed','missing passed receipt')
   layout.require(receipt.get('source_hashes',{}).get(r['source'])==r['sha256'],'receipt not current')
   checks=receipt.get('selected_checks',{})
   layout.require(checks and all(x=='passed' for x in checks.values()),'absent/failed check')
  layout.require(not re.search(r'/Users/|noeaaeue|gate1-|worktree',json.dumps(r)),'private provenance')
def render(data):
 return '# Selected result catalog\n\n'+data['coverage']+'. Records are candidate documentation. Verification labels refer to the bound source, not operational authority. Priority is editorial architectural relevance.\n\n| Priority | Family | Verification |\n|---|---|---|\n'+''.join('| '+str(r['priority'])+' | ['+r['title']+'](../../'+r['page']+') | '+r['verification']+' |\n' for r in sorted(data['records'],key=lambda r:r['priority']))+'\n[Structured records](results.json) · [Mathematical page inventory](library-pages.md)\n'
def main():
 p=argparse.ArgumentParser();p.add_argument('--render',action='store_true');a=p.parse_args()
 catalog_raw,catalog_observation=layout.read_safe(ROOT,'docs/reference/results.json',with_observation=True)
 try:d=layout.load_json(catalog_raw.decode())
 except UnicodeDecodeError as error:raise layout.LayoutError('non-UTF8 selected result catalog') from error
 names=record_input_names(d);bound,observations=layout.observe_inputs(ROOT,names,{
  'docs/reference/results.json':(catalog_raw,catalog_observation)})
 validate(d,bound)
 for mutation in ['duplicate','premise','source','receipt','private']:
  bad=copy.deepcopy(d)
  if mutation=='duplicate':bad['records'].append(copy.deepcopy(bad['records'][0]))
  if mutation=='premise':bad['records'][0]['premises']=''
  if mutation=='source':bad['records'][0]['sha256']='0'*64
  if mutation=='receipt':bad['records'][1]['verification']='fresh-selected'
  if mutation=='private':bad['records'][0]['contribution']='/Users/hidden'
  try:validate(bad,bound)
  except layout.LayoutError:pass
  else:raise layout.LayoutError('hostile input accepted: '+mutation)
 target=ROOT/'docs/reference/results.md';expected=render(d)
 if a.render:
  target.write_text(expected)
  x=json.loads((ROOT/'docs/reference/documentation-layout.json').read_text())
  (ROOT/'docs/index.md').write_text(layout.render_navigation(x))
 else:
  try:actual=layout.read_safe(ROOT,'docs/reference/results.md').decode()
  except UnicodeDecodeError as error:raise layout.LayoutError('non-UTF8 selected result catalog rendering') from error
  layout.require(actual==expected,'generated catalog stale')
 n,s=layout.check()
 unused,terminal_observations=layout.observe_inputs(ROOT,names)
 layout.require(terminal_observations==observations,'selected result catalog input changed during check')
 print(f'{n} maintained pages; {s} legacy dispositions; selected catalog and five hostile record controls passed')
if __name__=='__main__':main()
