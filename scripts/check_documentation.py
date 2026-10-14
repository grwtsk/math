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
  layout.require(re.fullmatch(r'[0-9a-f]{64}',r['sha256']) is not None,'invalid retained source hash')
  layout.require(r['verification'] in ('historical','fresh-selected','historical-source-changed'),'unsupported status')
  current=sha_bytes(record['source'])
  if r['verification']=='historical-source-changed':
   # Retain the old binding without treating current bytes as replayed evidence.
   layout.require(r.get('observed_source_sha256')==current,'current observation invalidated')
   layout.require(r['sha256']!=current,'changed-source label without changed source')
   layout.require(r.get('current_verification')=='not-run','unsupported current verification')
   layout.require(r.get('evidence_limit'),'missing historical evidence limit')
  else:
   layout.require(current==r['sha256'],'source invalidated')
   layout.require('observed_source_sha256' not in r,'changed-source metadata under verified status')
   layout.require('current_verification' not in r,'unverified metadata under verified status')
  if r['verification']=='fresh-selected':
   try:receipt=layout.load_json(record['evidence'].decode())
   except UnicodeDecodeError as error:raise layout.LayoutError('non-UTF8 selected evidence') from error
   layout.require(receipt.get('outcome')=='passed','missing passed receipt')
   layout.require(receipt.get('source_hashes',{}).get(r['source'])==r['sha256'],'receipt not current')
   checks=receipt.get('selected_checks',{})
   layout.require(checks and all(x=='passed' for x in checks.values()),'absent/failed check')
  layout.require(not re.search(r'/Users/|noeaaeue|gate1-|worktree',json.dumps(r)),'private provenance')
def verification_label(record):
 return ('historical; current source changed, replay pending'
         if record['verification']=='historical-source-changed' else record['verification'])
def render(data):
 return '# Selected result catalog\n\n'+data['coverage']+'. Records are candidate documentation. Verification labels refer to the bound source, not operational authority. A changed-source label preserves historical evidence and reports current replay as pending. Priority is editorial architectural relevance.\n\n| Priority | Family | Verification |\n|---|---|---|\n'+''.join('| '+str(r['priority'])+' | ['+r['title']+'](../../'+r['page']+') | '+verification_label(r)+' |\n' for r in sorted(data['records'],key=lambda r:r['priority']))+'\n[Structured records](results.json) · [Mathematical page inventory](library-pages.md)\n'
def main():
 p=argparse.ArgumentParser();p.add_argument('--render',action='store_true');a=p.parse_args()
 catalog_raw,catalog_observation=layout.read_safe(ROOT,'docs/reference/results.json',with_observation=True)
 try:d=layout.load_json(catalog_raw.decode())
 except UnicodeDecodeError as error:raise layout.LayoutError('non-UTF8 selected result catalog') from error
 names=record_input_names(d);bound,observations=layout.observe_inputs(ROOT,names,{
  'docs/reference/results.json':(catalog_raw,catalog_observation)})
 validate(d,bound)
 control_count=0
 for mutation in ['duplicate','premise','source','receipt','private']:
  bad=copy.deepcopy(d)
  if mutation=='duplicate':bad['records'].append(copy.deepcopy(bad['records'][0]))
  if mutation=='premise':bad['records'][0]['premises']=''
  if mutation=='source':bad['records'][0]['sha256']='0'*64
  if mutation=='receipt':bad['records'][1]['verification']='fresh-selected'
  if mutation=='private':bad['records'][0]['contribution']='/Users/hidden'
  try:validate(bad,bound)
  except layout.LayoutError:control_count+=1
  else:raise layout.LayoutError('hostile input accepted: '+mutation)
 changed=next((r for r in d['records'] if r['verification']=='historical-source-changed'),None)
 if changed:
  for mutation in ['stale-observation','erase-history','old-receipt-promoted','undeclared-drift','invent-current-pass','omit-evidence-limit']:
   bad=copy.deepcopy(d);r=next(x for x in bad['records'] if x['id']==changed['id'])
   if mutation=='stale-observation':r['observed_source_sha256']='0'*64
   if mutation=='erase-history':r['sha256']=r['observed_source_sha256']
   if mutation=='old-receipt-promoted':
    r['verification']='fresh-selected';r['sha256']=r.pop('observed_source_sha256');r.pop('current_verification')
   if mutation=='undeclared-drift':
    r['verification']='historical';r.pop('observed_source_sha256');r.pop('current_verification')
   if mutation=='invent-current-pass':r['current_verification']='passed'
   if mutation=='omit-evidence-limit':r.pop('evidence_limit')
   try:validate(bad,bound)
   except layout.LayoutError:control_count+=1
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
 print(f'{n} maintained pages; {s} legacy dispositions; selected catalog and {control_count} hostile record controls passed')
if __name__=='__main__':main()
