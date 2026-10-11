"""Mathematical documentation structure and provenance; never proof admission.

Explicit checks remain effective with Python optimization enabled.
"""
from pathlib import Path
import hashlib,json,re,subprocess,sys,unicodedata
from urllib.parse import unquote,urlsplit

ROOT=Path(__file__).resolve().parents[1]
STATUSES={'historical-source-description','written-argument','literature-and-historical-source-description','literature-only','historical','fresh-selected'}
FORBIDDEN={'ccc','conversation','proofhorizon','corkscrewchambercap','hadwigernelson','waveform','spectralunification','campaign'}

class LayoutError(ValueError): pass
def require(condition,message):
    if not condition: raise LayoutError(message)
def digest(data): return hashlib.sha256(data).hexdigest()
def load_json(raw):
    def unique(pairs):
        result={}
        for key,value in pairs:
            require(key not in result,'duplicate JSON field: '+key);result[key]=value
        return result
    return json.loads(raw,object_pairs_hook=unique)
def safe(root,name):
    require(isinstance(name,str) and name and not Path(name).is_absolute(),'absolute/empty path')
    base=root.resolve(strict=True);p=base/name
    require(p.resolve().is_relative_to(base),'escaped path: '+name)
    require(p.exists(),'missing path: '+name)
    resolved=p.resolve(strict=True)
    require('.git' not in p.parts and '.git' not in resolved.relative_to(base).parts,'Git metadata path: '+name)
    current=base
    for part in Path(name).parts:
        current=current/part
        require(not current.is_symlink(),'symlink component: '+name)
    return resolved
def slugs(text):
    text=re.sub(r'(?ms)^```.*?^```[^\n]*','',text)
    used={};result=set()
    for line in text.splitlines():
        m=re.match(r'^#{1,6}\s+(.+?)\s*#*$',line)
        if not m:continue
        title=re.sub(r'\[([^\]]+)\]\([^)]*\)',r'\1',m[1]).lower()
        title=''.join(c for c in title if c.isalnum() or c in ' _-')
        base=title.replace(' ','-');n=used.get(base,0);used[base]=n+1
        result.add(base+('-'+str(n) if n else ''))
    return result
def visible_markdown(root):
    result=subprocess.run(['git','ls-files','--cached','--others','--exclude-standard','--','docs','README.md'],cwd=root,text=True,capture_output=True)
    require(result.returncode==0,'Git-visible documentation inventory unavailable')
    return {p for p in result.stdout.splitlines() if p.endswith('.md') and (root/p).is_file()}
def render_navigation(layout):
    text='# Mathematical documentation\n\nBrowse by mathematical subject and object, matching the Lean source organization. Start with [the least-prime example](start/least-prime.md), [verification](how-to/verify.md), or the [selected result catalog](reference/results.md).\n'
    for subject in sorted({p['subject'] for p in layout['pages'].values() if 'subject' in p}):
        text+='\n## '+subject+'\n\n'
        for path,p in sorted(layout['pages'].items(),key=lambda x:(x[1].get('object',''),x[1]['title'])):
            if p.get('subject')==subject:text+='- ['+p['title']+']('+str(Path(path).relative_to('docs'))+')\n'
    text+='\n## Reading and verification\n\n[Evidence roles](explanation/evidence.md) · [Documentation standard](explanation/documentation.md) · [Source layout](reference/source-layout.md) · [Verification interfaces](reference/verification-interfaces.md) · [Provenance and historical limits](reference/documentation-history.md).\n\nThis is a page index, not a complete theorem catalog or a proof of the documented claims.\n'
    return text
def check_links(root,pages):
    for name in pages:
        text=safe(root,name).read_text()
        # Fenced command/code samples are not Markdown links or headings.
        prose=re.sub(r'(?ms)^```.*?^```[^\n]*','',text)
        require(not re.search(r'/Users/|grwtsk/noeaaeue|gate1-',text),'private provenance: '+name)
        require(not any(ord(c)<32 and c not in '\n\t\r' for c in prose),'control character: '+name)
        require(not re.search(r'(?m)^ {0,3}\[[^\]\n]+\]:\s*',prose),'unsupported reference-link definition: '+name)
        require(not re.search(r'\[[^\]\n]+\]\s*\[[^\]\n]*\]',prose),'unsupported reference-style link: '+name)
        require(not re.search(r'<[A-Za-z][^>]*\b(?:href|src)\s*=',prose,re.I),'unsupported HTML link: '+name)
        for link in re.findall(r'\]\(([^)\n]+)\)',prose):
            link=link.strip().strip('<>');parsed=urlsplit(link)
            if parsed.scheme:
                require(parsed.scheme in ('https','http','mailto'),'unsupported link scheme: '+link);continue
            require(not parsed.netloc and not parsed.query,'unsupported local link: '+link)
            path=unquote(parsed.path)
            require(not Path(path).is_absolute(),'absolute local link: '+link)
            target=(root/name).parent/path if path else root/name
            require(target.resolve().is_relative_to(root.resolve()),'escaped local link: '+link)
            require(target.exists(),'broken link: '+name+' -> '+link)
            target=safe(root,str(target.relative_to(root)))
            if parsed.fragment:
                require(target.is_file() and target.suffix=='.md','fragment without Markdown target: '+link)
                require(unquote(parsed.fragment) in slugs(target.read_text()),'broken fragment: '+name+' -> '+link)
def validate(root,layout,inventory,historical,visible):
    require(layout.get('schema')=='mathematical-documentation-layout-v1','layout schema')
    require(inventory.get('schema')=='legacy-documentation-sections-v1','inventory schema')
    require(re.fullmatch('[0-9a-f]{40}',inventory.get('origin_commit','')) is not None,'mutable historical origin')
    raw=safe(root,layout.get('object_binding_registry','')).read_bytes()
    require(digest(raw)==layout.get('object_binding_registry_sha256'),'object binding registry invalidated')
    registry=load_json(raw)
    require(registry.get('schema')=='documentation-object-bindings-v1','object binding schema')
    frozen={};by_source={}
    for z in inventory['sections']:
        require(z['id'] not in frozen,'duplicate frozen section')
        frozen[z['id']]=z;by_source.setdefault(z['source'],[]).append(z)
    require(set(by_source)==set(inventory['sources'])==set(historical),'legacy source coverage')
    for source,records in by_source.items():
        text=historical[source];meta=inventory['sources'][source]
        require(digest(text.encode())==meta['sha256'] and len(text)==meta['characters'],'historical source drift')
        end=0
        for z in sorted(records,key=lambda z:z['start']):
            require(z['start']==end and z['end']>end,'section gap/overlap')
            require(digest(text[z['start']:z['end']].encode())==z['sha256'],'section byte drift')
            end=z['end']
        require(end==len(text),'omitted legacy tail')
    require(set(layout['dispositions'])==set(frozen),'missing/extra section disposition')
    pages=layout['pages']
    require(set(pages)==set(visible),'omitted or stale page inventory')
    for name,p in pages.items():
        path=safe(root,name)
        require(path.read_text().splitlines()[0]=='# '+p['title'],'page title mismatch: '+name)
        require(not any(x.lower() in FORBIDDEN for x in Path(name).parts),'campaign/conversation path: '+name)
        if name.startswith('docs/mathematics/'):
            parts=Path(name).parts
            require(len(parts)>=5,'missing mathematical subject/object')
            require(p.get('subject')==parts[2] and p.get('object')=='/'.join(parts[3:-1]),'subject/object path mismatch')
            source=p['primary_source'];sp=safe(root,source);s=Path(source).parts
            require(len(s)>=3 and s[0]=='GRWTSK' and sp.suffix=='.lean','not a Lean source binding')
            require(s[1]==p['subject'],'source subject mismatch')
            require(source in registry['bindings'].get(p['subject']+'/'+p['object'],[]),'source object mismatch')
            require(digest(sp.read_bytes())==p['source_sha256'],'source identity drift')
            require(p['status'] in STATUSES,'unrecognized evidence status')
            require(not re.search(r'(?m)^(?:Run `.*(?:scripts/|lake )|With project outputs built)',path.read_text()),'procedure embedded in mathematical page')
            if p['status']=='fresh-selected':
                receipt=load_json(safe(root,p.get('evidence','')).read_text())
                require(receipt.get('outcome')=='passed' and receipt.get('source_hashes',{}).get(source)==p['source_sha256'],'unsupported current verification')
                checks=receipt.get('selected_checks',{})
                require(checks and all(v=='passed' for v in checks.values()),'current checks absent/failed')
        else:
            require(name=='README.md' or name=='docs/index.md' or len(Path(name).parts)>=3,'flat legacy Markdown page')
            require(p.get('category') in ('landing','navigation','reference','explanation','how-to','start'),'unclassified nonmathematical page')
    for identifier,d in layout['dispositions'].items():
        require(d.get('kind') in ('mathematics','reference','history'),'disposition type')
        if d['kind']=='history':
            require(d.get('reason'),'history without reason');continue
        targets=[d.get('target'),*d.get('secondary_targets',[])]
        require(len(set(targets))==len(targets),'duplicate section destination')
        for target in targets:
            require(target in pages,'missing destination')
            require((target.startswith('docs/mathematics/'))==(d['kind']=='mathematics'),'destination category mismatch')
        require(all(z in frozen for z in d.get('consolidated_with',[])),'unknown consolidation reference')
    require(safe(root,'docs/index.md').read_text()==render_navigation(layout),'stale mathematical navigation')
    check_links(root,pages)
def check(root=ROOT):
    layout=load_json((root/'docs/reference/documentation-layout.json').read_text())
    raw=safe(root,layout['legacy_inventory']).read_bytes()
    require(digest(raw)==layout['legacy_inventory_sha256'],'frozen inventory invalidated')
    inventory=load_json(raw);historical={}
    require(re.fullmatch('[0-9a-f]{40}',inventory.get('origin_commit','')) is not None,'mutable historical origin')
    kind=subprocess.run(['git','cat-file','-t',inventory['origin_commit']],cwd=root,capture_output=True,text=True)
    require(kind.returncode==0 and kind.stdout.strip()=='commit','historical origin is not an available commit')
    for name in inventory['sources']:
        p=subprocess.run(['git','show',inventory['origin_commit']+':'+name],cwd=root,capture_output=True)
        require(p.returncode==0,'required historical source unavailable: '+name)
        historical[name]=p.stdout.decode()
    validate(root,layout,inventory,historical,visible_markdown(root))
    return len(layout['pages']),len(inventory['sections'])
if __name__=='__main__':
    try:
        n,s=check();print(f'{n} pages; {s} exact legacy section dispositions; source, navigation, link and disclosure checks passed')
    except (LayoutError,KeyError,json.JSONDecodeError) as e:
        print('blocked-on-documentation: '+str(e),file=sys.stderr);sys.exit(1)
