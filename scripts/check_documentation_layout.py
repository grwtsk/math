"""Mathematical documentation structure and provenance; never proof admission.

Explicit checks remain effective with Python optimization enabled.
"""
from pathlib import Path
import hashlib,html,json,re,subprocess,sys,unicodedata,stat,os
import documentation_indexes as indexes
from urllib.parse import unquote,urlsplit

ROOT=Path(__file__).resolve().parents[1]
STATUSES={'historical-source-description','written-argument','literature-and-historical-source-description','literature-only','historical','fresh-selected'}
FORBIDDEN={'ccc','conversation','proofhorizon','corkscrewchambercap','hadwigernelson','waveform','spectralunification','campaign'}
GIT=Path('/Applications/Xcode.app/Contents/Developer/usr/bin/git')
GIT_SHA256='9a1c8fc68dc75e1b3c0cd8e5ad9d13ac9bc92cb53c9578b3cff4beaf2e9b1e70'
GIT_TIMEOUT_SECONDS=30

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
def canonical_name(name):
    return (isinstance(name,str) and bool(name) and not Path(name).is_absolute()
            and name==Path(name).as_posix() and not any(p in ('.','..') for p in name.split('/'))
            and unicodedata.normalize('NFC',name)==name and '\\' not in name)
def identity(info):
    return (info.st_dev,info.st_ino,info.st_size,stat.S_IMODE(info.st_mode),
            info.st_mtime_ns,info.st_ctime_ns,info.st_nlink)
def component_identity(info,strict):
    return identity(info) if strict else (info.st_dev,info.st_ino,stat.S_IFMT(info.st_mode),stat.S_IMODE(info.st_mode))
def read_safe(root,name,with_observation=False):
    """Read one canonical file while retaining and revalidating its descriptor chain."""
    require(canonical_name(name),'noncanonical path: '+str(name))
    base=root.resolve(strict=True);target=base/name
    require(target.is_relative_to(base),'escaped path: '+name)
    fds=[];edges=[]
    try:
        fd=os.open('/',os.O_RDONLY|os.O_DIRECTORY|os.O_NOFOLLOW);fds.append(fd)
        parts=target.relative_to('/').parts
        base_edge=max(0,len(base.relative_to('/').parts)-1)
        for index,part in enumerate(parts):
            require(part.casefold()!='.git','Git metadata path: '+name)
            visible_before=os.stat(part,dir_fd=fd,follow_symlinks=False)
            require(not stat.S_ISLNK(visible_before.st_mode),'symlink component: '+name)
            flags=os.O_RDONLY|os.O_NOFOLLOW
            if index+1<len(parts):flags|=os.O_DIRECTORY
            child=os.open(part,flags,dir_fd=fd);opened=os.fstat(child);is_leaf=index+1==len(parts)
            strict=is_leaf or index>=base_edge
            expected=component_identity(opened,strict)
            visible_after=os.stat(part,dir_fd=fd,follow_symlinks=False)
            require(component_identity(visible_before,strict)==expected
                    ==component_identity(visible_after,strict),'path changed while opened: '+name)
            fds.append(child);edges.append((fd,part,expected,child,strict));fd=child
        before=os.fstat(fd)
        require(stat.S_ISREG(before.st_mode),'nonregular input: '+name)
        require(before.st_nlink==1,'hardlink input: '+name)
        chunks=[]
        while True:
            block=os.read(fd,1048576)
            if not block:break
            chunks.append(block)
        after=os.fstat(fd)
        require(identity(before)==identity(after),'input changed while read: '+name)
        raw=b''.join(chunks)
        for edge_order in (edges,reversed(edges)):
            for parent,part,expected,child,strict in edge_order:
                visible_before=os.stat(part,dir_fd=parent,follow_symlinks=False)
                opened=os.fstat(child)
                visible_after=os.stat(part,dir_fd=parent,follow_symlinks=False)
                require(not stat.S_ISLNK(visible_before.st_mode)
                        and not stat.S_ISLNK(visible_after.st_mode)
                        and component_identity(visible_before,strict)==expected
                        ==component_identity(opened,strict)
                        ==component_identity(visible_after,strict),
                        'path changed while read: '+name)
        for parent,part,expected,child,strict in edges:
            require(component_identity(os.fstat(child),strict)==expected,
                    'path changed while read: '+name)
        observation={'sha256':digest(raw),'bytes':len(raw),'identity':identity(after)}
        return (raw,observation) if with_observation else raw
    except LayoutError:raise
    except (OSError,ValueError) as error:
        raise LayoutError('unreadable path: '+name+' ('+type(error).__name__+')') from error
    finally:
        for descriptor in reversed(fds):
            try:os.close(descriptor)
            except OSError:pass
def safe(root,name,link=False):
    require(isinstance(name,str) and name and not Path(name).is_absolute(),'absolute/empty path')
    require(link or canonical_name(name),'noncanonical path: '+name)
    base=root.resolve(strict=True);p=base/name
    require(p.resolve().is_relative_to(base),'escaped path: '+name)
    require(p.exists(),'missing path: '+name)
    resolved=p.resolve(strict=True)
    require(not any(x.casefold()=='.git' for x in [*p.parts,*resolved.relative_to(base).parts]),'Git metadata path: '+name)
    current=base
    for part in Path(name).parts:
        current=current/part
        require(not current.is_symlink(),'symlink component: '+name)
    metadata=resolved.stat()
    require(link or stat.S_ISREG(metadata.st_mode),'nonregular input: '+name)
    if stat.S_ISREG(metadata.st_mode):require(metadata.st_nlink==1,'hardlink input: '+name)
    return resolved
def strip_containers(line):
    while True:
        new=re.sub(r'^ {0,3}(?:> ?|[-+*] +|[0-9]{1,9}[.)] +)','',line)
        if new==line:return line
        line=new
def prose_lines(text):
    """Return non-fenced lines after bounded CommonMark container prefixes."""
    result=[];fence=None
    for raw in text.splitlines():
        line=strip_containers(raw)
        marker=re.match(r'^ {0,3}(`{3,}|~{3,})(.*)$',line)
        if fence is not None:
            if marker and marker[1][0]==fence[0] and len(marker[1])>=fence[1] and not marker[2].strip():fence=None
            continue
        if marker:
            if marker[1][0]=='`':require('`' not in marker[2],'unsupported fenced-code info string')
            fence=(marker[1][0],len(marker[1]));continue
        result.append(line)
    return result
def container_text(text):return '\n'.join(prose_lines(text))
def mask_inline_code(text):
    chars=list(text);index=0
    while index<len(chars):
        if chars[index]!='`':index+=1;continue
        end=index
        while end<len(chars) and chars[end]=='`':end+=1
        width=end-index;close=text.find('`'*width,end)
        if close<0:index=end;continue
        chars[index:close+width]=' '*(close+width-index);index=close+width
    return ''.join(chars)
COMMONMARK_ESCAPABLE=set('!"#$%&\x27()*+,-./:;<=>?@[\\]^_`{|}~')
def normalize_link_destination(destination,label):
    result=[];index=0
    while index<len(destination):
        if destination[index]=='\\' and index+1<len(destination) and destination[index+1] in COMMONMARK_ESCAPABLE:
            result.append(destination[index+1]);index+=2
        else:
            result.append(destination[index]);index+=1
    normalized=html.unescape(''.join(result))
    require('\\' not in normalized and normalized
            and not any(ord(char)<32 or ord(char)==127 for char in normalized),
            'invalid inline-link destination: '+label)
    return normalized
def inline_links(text,label):
    """Parse bounded direct inline links, including nesting and optional titles."""
    text=mask_inline_code(text);result=[];index=0
    while True:
        start=text.find('](',index)
        if start<0:return result
        cursor=start+2;depth=0;escaped=False
        while cursor<len(text):
            char=text[cursor]
            if char=='\n':raise LayoutError('multiline/unterminated inline link: '+label)
            if escaped:escaped=False
            elif char=='\\':escaped=True
            elif char=='(':depth+=1
            elif char==')':
                if depth==0:break
                depth-=1
            cursor+=1
        require(cursor<len(text),'unterminated inline link: '+label)
        content=text[start+2:cursor].strip();require(content,'empty inline link: '+label)
        if content.startswith('<'):
            escaped=False;end=None
            for position,char in enumerate(content[1:],1):
                if escaped:escaped=False
                elif char=='\\':escaped=True
                elif char=='>':end=position;break
            require(end is not None,'unterminated angle link: '+label)
            destination=content[1:end];tail=content[end+1:].strip()
        else:
            depth=0;escaped=False;split=len(content)
            for position,char in enumerate(content):
                if escaped:escaped=False
                elif char=='\\':escaped=True
                elif char=='(':depth+=1
                elif char==')':depth-=1
                elif char.isspace() and depth==0:split=position;break
            destination=content[:split];tail=content[split:].strip()
        destination=normalize_link_destination(destination,label)
        if tail:
            quoted=(len(tail)>=2 and tail[0] in ('\"',"'") and tail[-1]==tail[0])
            parenthesized=len(tail)>=2 and tail[0]=='(' and tail[-1]==')'
            require(quoted or parenthesized,'unsupported inline-link title: '+label)
        result.append(destination);index=cursor+1
def slugs(text):
    used={};result=set()
    for line in prose_lines(text):
        m=re.match(r'^ {0,3}#{1,6}\s+(.+?)\s*#*$',line)
        if not m:continue
        title=re.sub(r'\[([^\]]+)\]\([^)]*\)',r'\1',m[1]).lower()
        title=''.join(c for c in title if c.isalnum() or c in ' _-')
        base=title.replace(' ','-');n=used.get(base,0);used[base]=n+1
        result.add(base+('-'+str(n) if n else ''))
    return result
def git_environment():
    return {'PATH':'/usr/bin:/bin','HOME':'/var/empty','LANG':'C','LC_ALL':'C',
            'GIT_CONFIG_NOSYSTEM':'1','GIT_CONFIG_GLOBAL':'/dev/null',
            'GIT_CONFIG_SYSTEM':'/dev/null','GIT_TERMINAL_PROMPT':'0','GIT_OPTIONAL_LOCKS':'0',
            'GIT_NO_REPLACE_OBJECTS':'1'}
def git_arguments_allowed(arguments):
    fixed=(['rev-parse','--show-toplevel'],
           ['ls-files','-z','--cached','--others','--exclude-standard','--','docs','README.md'],
           ['ls-files','-z','--deleted','--','docs','README.md'],
           ['ls-files','-z','--cached','--others','--exclude-standard','--','GRWTSK'],
           ['ls-files','-z','--deleted','--','GRWTSK'])
    if arguments in fixed:return True
    if len(arguments)==3 and arguments[:2]==['cat-file','-t']:
        return re.fullmatch('[0-9a-f]{40}',arguments[2]) is not None
    if len(arguments)==3 and arguments[:2]==['cat-file','blob']:
        commit,separator,name=arguments[2].partition(':')
        return (separator==':' and re.fullmatch('[0-9a-f]{40}',commit) is not None
                and ':' not in name and canonical_name(name)
                and not any(part.casefold()=='.git' for part in Path(name).parts))
    return False
def git_bytes(root,arguments,runner=subprocess.run):
    require(type(arguments) is list and all(type(item) is str for item in arguments)
            and git_arguments_allowed(arguments),'unsupported pinned Git command')
    require(GIT.is_absolute() and GIT.is_file() and not GIT.is_symlink(),'pinned Git unavailable')
    require(digest(read_safe(Path('/'),GIT.relative_to('/').as_posix()))==GIT_SHA256,'pinned Git executable bytes drifted')
    argv=[str(GIT),'--no-optional-locks','--no-replace-objects','--literal-pathspecs','-c','core.fsmonitor=false',
          '-c','core.untrackedCache=false','-c','core.excludesFile=/dev/null',*arguments]
    try:result=runner(argv,cwd=root,env=git_environment(),stdin=subprocess.DEVNULL,
                      stdout=subprocess.PIPE,stderr=subprocess.PIPE,timeout=GIT_TIMEOUT_SECONDS)
    except (OSError,subprocess.SubprocessError) as error:
        raise LayoutError('pinned Git observation failed: '+type(error).__name__) from error
    require(type(result.stdout) is bytes and type(result.stderr) is bytes,'pinned Git returned nonbytes')
    require(type(result.returncode) is int and result.returncode==0,'pinned Git command failed')
    return result.stdout
def verify_git_root(root):
    raw=git_bytes(root,['rev-parse','--show-toplevel'])
    try:top=Path(os.fsdecode(raw.rstrip(b'\n'))).resolve(strict=True)
    except (OSError,ValueError) as error:raise LayoutError('invalid Git top level') from error
    require(top==root.resolve(strict=True),'Git top level differs from documentation root')
def git_visible_names(raw,label):
    names=[]
    for item in raw.split(b'\0'):
        if not item:continue
        name=os.fsdecode(item);require(canonical_name(name),'noncanonical Git-visible path')
        require(not any(ord(char)<32 or ord(char)==127 for char in name),'control character in Git-visible path')
        names.append(name)
    require(len(names)==len(set(names)),'duplicate '+label+' path')
    return set(names)
def visible_markdown_inventory(root):
    deleted=git_visible_names(git_bytes(root,['ls-files','-z','--deleted','--','docs','README.md']),'Git-deleted documentation')
    visible=git_visible_names(git_bytes(root,['ls-files','-z','--cached','--others','--exclude-standard','--','docs','README.md']),'Git-visible documentation')
    require(deleted<=visible,'Git-deleted documentation is outside visible inventory')
    names=set()
    for name in sorted(visible):
        if not name.endswith('.md'):continue
        if name in deleted:
            require(not os.path.lexists(root/name),'Git-deleted documentation path exists: '+name)
            continue
        names.add(name)
    return names
def visible_source_inventory(root):
    deleted=git_visible_names(git_bytes(root,['ls-files','-z','--deleted','--','GRWTSK']),'Git-deleted sources')
    visible=git_visible_names(git_bytes(root,['ls-files','-z','--cached','--others','--exclude-standard','--','GRWTSK']),'Git-visible sources')
    require(deleted<=visible,'Git-deleted source is outside visible inventory')
    names=set()
    for name in sorted(visible):
        if not name.endswith('.lean'):continue
        if name in deleted:
            require(not os.path.lexists(root/name),'Git-deleted source path exists: '+name);continue
        require(safe(root,name).is_file(),'nonregular inventory source: '+name)
        names.add(name)
    return names
def observe_inputs(root,names,seed=None):
    raw_by_name={};observations={}
    for name,(raw,observation) in (seed or {}).items():
        raw_by_name[name]=raw;observations[name]=observation
    for name in sorted(set(names)-set(raw_by_name)):
        raw,observation=read_safe(root,name,with_observation=True)
        raw_by_name[name]=raw;observations[name]=observation
    require(set(raw_by_name)==set(names),'live input observation map differs')
    return raw_by_name,observations
def visible_markdown(root,with_digests=False):
    names=visible_markdown_inventory(root);raw,observations=observe_inputs(root,names)
    return {name:value['sha256'] for name,value in observations.items()} if with_digests else set(raw)
def local_bytes(root,name,bound):
    if bound is None:return read_safe(root,name)
    require(name in bound,'unbound live input: '+str(name));return bound[name]
def live_input_names(layout):
    names={'docs/reference/documentation-layout.json',layout.get('legacy_inventory',''),
           layout.get('object_binding_registry',''),*layout.get('pages',{})}
    for page in layout.get('pages',{}).values():
        if isinstance(page,dict) and 'primary_source' in page:names.add(page['primary_source'])
        if isinstance(page,dict) and page.get('status')=='fresh-selected':names.add(page.get('evidence',''))
    if 'navigation' in layout:names.update({indexes.SUMMARY_PATH,*indexes.INPUT_PATHS})
    require(all(canonical_name(name) for name in names),'noncanonical live input path')
    return names
def render_navigation(layout,summary=None):
    if 'navigation' in layout:
        require(summary is not None,'missing navigation inventory')
        return indexes.render_overview(summary)
    text='# Mathematical documentation\n\nBrowse by mathematical subject and object, matching the Lean source organization. Start with [the least-prime example](start/least-prime.md), [verification](how-to/verify.md), or the [selected result catalog](reference/results.md).\n'
    for subject in sorted({p['subject'] for p in layout['pages'].values() if 'subject' in p}):
        text+='\n## '+subject+'\n\n'
        for path,p in sorted(layout['pages'].items(),key=lambda x:(x[1].get('object',''),x[1]['title'])):
            if p.get('subject')==subject:text+='- ['+p['title']+']('+str(Path(path).relative_to('docs'))+')\n'
    text+='\n## Reading and verification\n\n[Evidence roles](explanation/evidence.md) · [Documentation standard](explanation/documentation.md) · [Source layout](reference/source-layout.md) · [Verification interfaces](reference/verification-interfaces.md) · [Provenance and historical limits](reference/documentation-history.md).\n\nThis is a page index, not a complete theorem catalog or a proof of the documented claims.\n'
    return text
def build_navigation_summary(root,layout,source_names,bound=None,layout_raw=None):
    require(layout.get('navigation')=={'schema':'subject-index-navigation-v1','summary':indexes.SUMMARY_PATH},'navigation schema')
    raw={name:local_bytes(root,name,bound) for name in indexes.INPUT_PATHS}
    raw['docs/reference/documentation-layout.json']=(layout_raw if layout_raw is not None
        else local_bytes(root,'docs/reference/documentation-layout.json',bound))
    try:
        catalog=load_json(raw[indexes.INPUT_PATHS[0]])
        intake=load_json(raw[indexes.INPUT_PATHS[1]])
        toolchain=raw['lean-toolchain'].decode().strip()
        lake=load_json(raw['lake-manifest.json'])
    except (UnicodeDecodeError,KeyError,TypeError) as error:raise LayoutError('invalid navigation inventory input') from error
    return indexes.build_summary(layout,source_names,catalog,intake,toolchain,lake,
        {name:digest(value) for name,value in raw.items()},require)
def check_links(root,pages,bound=None):
    for name in pages:
        try:text=local_bytes(root,name,bound).decode()
        except UnicodeDecodeError as error:raise LayoutError('non-UTF8 page: '+name) from error
        prose=container_text(text)
        require(not re.search(r'/Users/|grwtsk/(?:noeaaeue|formal-research)|gate1-',text),'private provenance: '+name)
        require(not any(ord(c)<32 and c not in '\n\t\r' for c in prose),'control character: '+name)
        require(not re.search(r'(?m)^ {0,3}\[[^\]\n]+\]:\s*',prose),'unsupported reference-link definition: '+name)
        require(not re.search(r'\[[^\]\n]+\]\s*\[[^\]\n]*\]',prose),'unsupported reference-style link: '+name)
        require(not re.search(r'<[A-Za-z][^>]*\b(?:href|src)\s*=',prose,re.I),'unsupported HTML link: '+name)
        for match in re.finditer(r'<([^<>\s]+)>',mask_inline_code(prose)):
            value=normalize_link_destination(match[1],name)
            email=re.fullmatch(r'[A-Za-z0-9.!#$%&\x27*+/=?^_`{|}~-]+@[A-Za-z0-9.-]+',value)
            scheme='mailto' if email else urlsplit(value).scheme.lower()
            if scheme:require(scheme in ('https','http','mailto'),'unsupported autolink scheme: '+value)
        for link in inline_links(prose,name):
            parsed=urlsplit(link)
            if parsed.scheme:
                require(parsed.scheme in ('https','http','mailto'),'unsupported link scheme: '+link);continue
            require(not parsed.netloc and not parsed.query,'unsupported local link: '+link)
            path=unquote(parsed.path)
            require(not Path(path).is_absolute(),'absolute local link: '+link)
            target=(root/name).parent/path if path else root/name
            require(target.resolve().is_relative_to(root.resolve()),'escaped local link: '+link)
            require(target.exists(),'broken link: '+name+' -> '+link)
            target=safe(root,str(target.relative_to(root)),link=True)
            target_name=target.relative_to(root.resolve()).as_posix()
            if target.suffix=='.md':require(target_name in pages,'unregistered Markdown target: '+name+' -> '+link)
            if parsed.fragment:
                require(target.is_file() and target.suffix=='.md','fragment without Markdown target: '+link)
                try:target_text=local_bytes(root,target_name,bound).decode()
                except UnicodeDecodeError as error:raise LayoutError('non-UTF8 page: '+target_name) from error
                require(unquote(parsed.fragment) in slugs(target_text),'broken fragment: '+name+' -> '+link)
def validate(root,layout,inventory,historical,visible,bound=None,source_names=None):
    require(layout.get('schema')=='mathematical-documentation-layout-v1','layout schema')
    require(inventory.get('schema')=='legacy-documentation-sections-v1','inventory schema')
    require(re.fullmatch('[0-9a-f]{40}',inventory.get('origin_commit','')) is not None,'mutable historical origin')
    raw=local_bytes(root,layout.get('object_binding_registry',''),bound)
    require(digest(raw)==layout.get('object_binding_registry_sha256'),'object binding registry invalidated')
    registry=load_json(raw)
    require(registry.get('schema')=='documentation-object-bindings-v1','object binding schema')
    bindings=registry.get('bindings')
    require(isinstance(bindings,dict),'object bindings must be a dictionary')
    for key,value in bindings.items():
        require(canonical_name(key) and '/' in key,'noncanonical object binding key')
        require(isinstance(value,list) and value and all(canonical_name(p) for p in value)
                and len(set(value))==len(value),'object bindings require unique path lists')
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
        try:page_text=local_bytes(root,name,bound).decode()
        except UnicodeDecodeError as error:raise LayoutError('non-UTF8 page: '+name) from error
        require(page_text.splitlines()[0]=='# '+p['title'],'page title mismatch: '+name)
        require(not any(x.lower() in FORBIDDEN for x in Path(name).parts),'campaign/conversation path: '+name)
        if 'area' in p:
            area=p['area']
            require('navigation' in layout,'area index without navigation schema')
            require(set(p)=={'title','category','area'} and p['category']=='navigation','area index carries claim metadata')
            require(isinstance(area,str) and re.fullmatch('[A-Z][A-Za-z]*',area) is not None,'invalid mathematical area')
            require(name=='docs/mathematics/'+area+'/index.md','area index path mismatch')
            require(p['title']==indexes.area_title(area),'area index title mismatch')
        elif name.startswith('docs/mathematics/'):
            parts=Path(name).parts
            require(len(parts)>=5,'missing mathematical subject/object')
            require(p.get('subject')==parts[2] and p.get('object')=='/'.join(parts[3:-1]),'subject/object path mismatch')
            source=p['primary_source'];source_bytes=local_bytes(root,source,bound);s=Path(source).parts
            require(len(s)>=3 and s[0]=='GRWTSK' and Path(source).suffix=='.lean','not a Lean source binding')
            require(s[1]==p['subject'],'source subject mismatch')
            require(source in registry['bindings'].get(p['subject']+'/'+p['object'],[]),'source object mismatch')
            require(digest(source_bytes)==p['source_sha256'],'source identity drift')
            require(p['status'] in STATUSES,'unrecognized evidence status')
            require(not re.search(r'(?im)^(?:run\b|with project outputs built\b).*?(?:scripts/|lake\b)',container_text(page_text)),'procedure embedded in mathematical page')
            if p['status']=='fresh-selected':
                try:receipt=load_json(local_bytes(root,p.get('evidence',''),bound).decode())
                except UnicodeDecodeError as error:raise LayoutError('non-UTF8 evidence') from error
                require(receipt.get('outcome')=='passed' and receipt.get('source_hashes',{}).get(source)==p['source_sha256'],'unsupported current verification')
                checks=receipt.get('selected_checks',{})
                require(checks and all(v=='passed' for v in checks.values()),'current checks absent/failed')
        else:
            require(name=='README.md' or name=='docs/index.md' or len(Path(name).parts)>=3,'flat legacy Markdown page')
            require(p.get('category') in ('landing','navigation','reference','explanation','how-to','start'),'unclassified nonmathematical page')
    expected={}
    for p in pages.values():
        if 'subject' in p:expected.setdefault(p['subject']+'/'+p['object'],set()).add(p['primary_source'])
    require(bindings=={k:sorted(v) for k,v in expected.items()},'object registry does not exactly cover used sources')
    for identifier,d in layout['dispositions'].items():
        require(d.get('kind') in ('mathematics','reference','history'),'disposition type')
        if d['kind']=='history':
            require(d.get('reason'),'history without reason');continue
        targets=[d.get('target'),*d.get('secondary_targets',[])]
        require(len(set(targets))==len(targets),'duplicate section destination')
        for target in targets:
            require(target in pages,'missing destination')
            require((target.startswith('docs/mathematics/'))==(d['kind']=='mathematics'),'destination category mismatch')
            require('area' not in pages[target],'legacy section targets navigation')
        require(all(z in frozen for z in d.get('consolidated_with',[])),'unknown consolidation reference')
    try:index_text=local_bytes(root,'docs/index.md',bound).decode()
    except UnicodeDecodeError as error:raise LayoutError('non-UTF8 page: docs/index.md') from error
    summary=None
    if 'navigation' in layout:
        require(source_names is not None,'missing source inventory observation')
        summary=build_navigation_summary(root,layout,source_names,bound)
        require(load_json(local_bytes(root,indexes.SUMMARY_PATH,bound))==summary,'stale documentation inventory')
        actual={p['area']:name for name,p in pages.items() if 'area' in p}
        require(set(actual)==set(summary['areas']),'missing/extra area index')
        for area,name in actual.items():
            require(local_bytes(root,name,bound).decode()==indexes.render_area(layout,summary,area),'stale area index: '+area)
    require(index_text==render_navigation(layout,summary),'stale mathematical navigation')
    check_links(root,pages,bound)
def check(root=ROOT):
    verify_git_root(root)
    layout_raw,layout_observation=read_safe(root,'docs/reference/documentation-layout.json',with_observation=True)
    try:layout=load_json(layout_raw.decode())
    except UnicodeDecodeError as error:raise LayoutError('non-UTF8 documentation layout') from error
    require('navigation' in layout,'subject-index navigation required')
    inventory_raw,inventory_observation=read_safe(root,layout['legacy_inventory'],with_observation=True)
    require(digest(inventory_raw)==layout['legacy_inventory_sha256'],'frozen inventory invalidated')
    inventory=load_json(inventory_raw);historical={}
    visible=visible_markdown_inventory(root);names=live_input_names(layout)
    source_names=visible_source_inventory(root) if 'navigation' in layout else None
    bound,observations=observe_inputs(root,names,{
        'docs/reference/documentation-layout.json':(layout_raw,layout_observation),
        layout['legacy_inventory']:(inventory_raw,inventory_observation)})
    require(re.fullmatch('[0-9a-f]{40}',inventory.get('origin_commit','')) is not None,'mutable historical origin')
    kind=git_bytes(root,['cat-file','-t',inventory['origin_commit']])
    require(kind==b'commit\n','historical origin is not an available commit')
    for name in inventory['sources']:
        require(canonical_name(name),'noncanonical historical source path')
        raw_source=git_bytes(root,['cat-file','blob',inventory['origin_commit']+':'+name])
        try:historical[name]=raw_source.decode()
        except UnicodeDecodeError as error:raise LayoutError('non-UTF8 historical source: '+name) from error
    validate(root,layout,inventory,historical,visible,bound,source_names)
    require(visible_markdown_inventory(root)==visible,'Git-visible documentation changed during check')
    if source_names is not None:require(visible_source_inventory(root)==source_names,'source inventory changed during check')
    unused,terminal_observations=observe_inputs(root,names)
    require(terminal_observations==observations,'live documentation input changed during check')
    return len(layout['pages']),len(inventory['sections'])
if __name__=='__main__':
    try:
        n,s=check();print(f'{n} pages; {s} exact legacy section dispositions; source, navigation, link and disclosure checks passed')
    except (LayoutError,KeyError,json.JSONDecodeError) as e:
        print('blocked-on-documentation: '+str(e),file=sys.stderr);sys.exit(1)
