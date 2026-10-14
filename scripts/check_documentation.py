"""Structural checks for the selected documentation candidate; not proof admission."""
import argparse,copy,hashlib,json,pathlib,re
ROOT=pathlib.Path(__file__).resolve().parents[1]
def sha(p):return hashlib.sha256(p.read_bytes()).hexdigest()
def require(condition,message):
 if not condition:raise ValueError(message)
def validate(data):
 ids=set()
 for r in data['records']:
  require(r['id'] not in ids,'duplicate ID');ids.add(r['id'])
  require(r['premises'],'missing premises')
  for k in ['source','page','evidence']:
   p=ROOT/r[k];require(p.is_file() and not p.is_symlink() and ROOT in p.resolve().parents,'missing/unsafe file')
  require(re.fullmatch(r'[0-9a-f]{64}',r['sha256']),'invalid retained source hash')
  require(r['verification'] in ('historical','fresh-selected','historical-source-changed'),'unsupported status')
  current=sha(ROOT/r['source'])
  if r['verification']=='historical-source-changed':
   # Preserve the earlier documentary binding; this accepts no current proof.
   require(r.get('observed_source_sha256')==current,'current observation invalidated')
   require(r['sha256']!=current,'changed-source label without changed source')
   require(r.get('current_verification')=='not-run','unsupported current verification')
   require(r.get('evidence_limit'),'missing historical evidence limit')
  else:
   require(current==r['sha256'],'source invalidated')
   require('observed_source_sha256' not in r,'changed-source metadata under verified status')
   require('current_verification' not in r,'unverified metadata under verified status')
  if r['verification']=='fresh-selected':
   receipt=json.loads((ROOT/r['evidence']).read_text())
   require(receipt.get('outcome')=='passed','missing passed receipt')
   require(receipt.get('source_hashes',{}).get(r['source'])==r['sha256'],'receipt not current')
   require(all(x=='passed' for x in receipt['selected_checks'].values()),'failed check')
  require(not re.search(r'/Users/|noeaaeue|gate1-|worktree',json.dumps(r)),'private provenance')
def verification_label(record):
 return 'historical; current source changed, replay pending' if record['verification']=='historical-source-changed' else record['verification']
def render(data):
 return '# Selected result catalog\n\n'+data['coverage']+'. Records are candidate documentation. Verification labels refer to the bound source, not operational authority. A changed-source label preserves historical evidence and reports current replay as pending. Priority is editorial architectural relevance.\n\n| Priority | Family | Verification |\n|---|---|---|\n'+''.join('| '+str(r['priority'])+' | ['+r['title']+'](../../'+r['page']+') | '+verification_label(r)+' |\n' for r in sorted(data['records'],key=lambda r:r['priority']))+'\n[Structured records](results.json) · [Existing family pages](library-pages.md)\n'
def main():
 p=argparse.ArgumentParser();p.add_argument('--render',action='store_true');a=p.parse_args()
 d=json.loads((ROOT/'docs/reference/results.json').read_text());validate(d)
 control_count=0
 for mutation in ['duplicate','premise','source','receipt','private']:
  bad=copy.deepcopy(d)
  if mutation=='duplicate':bad['records'].append(copy.deepcopy(bad['records'][0]))
  if mutation=='premise':bad['records'][0]['premises']=''
  if mutation=='source':bad['records'][0]['sha256']='0'*64
  if mutation=='receipt':bad['records'][1]['verification']='fresh-selected'
  if mutation=='private':bad['records'][0]['contribution']='/Users/hidden'
  try:validate(bad)
  except ValueError:control_count+=1
  else:raise ValueError('hostile input accepted: '+mutation)
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
   try:validate(bad)
   except ValueError:control_count+=1
   else:raise ValueError('hostile input accepted: '+mutation)
 target=ROOT/'docs/reference/results.md';expected=render(d)
 if a.render:target.write_text(expected)
 else:require(target.read_text()==expected,'generated index stale')
 pages=[ROOT/'README.md',*[(ROOT/'docs'/n) for n in ['index.md','start/least-prime.md','how-to/verify.md','explanation/evidence.md','explanation/documentation.md','reference/results.md','reference/library-pages.md','mathematics/NumberTheory/Zeta/riemann-hypothesis-criteria.md']],*[ROOT/r['page'] for r in d['records']]]
 for page in pages:
  text=page.read_text();require(not re.search(r'/Users/|grwtsk/noeaaeue|gate1-',text),'private path')
  for link in re.findall(r'\]\(([^)]+)\)',text):
   if not link.startswith(('https://','http://','#')):require((page.parent/link.split('#')[0]).exists(),('missing link',str(page.relative_to(ROOT)),link))
 for page in (ROOT/'docs').glob('*.md'):
  if page.name!='index.md':require('(../'+page.name+')' in (ROOT/'docs/reference/library-pages.md').read_text(),'omitted family')
 print('selected record, source, navigation, disclosure and %d hostile controls passed'%control_count)
if __name__=='__main__':main()
