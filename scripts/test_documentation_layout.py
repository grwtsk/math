"""Independent, finite hostile layout fixtures; not mathematical truth tests."""
import copy,hashlib,json,tempfile,unittest,re,os,types
from unittest import mock
from pathlib import Path
import check_documentation_layout as checker

TEXT='A precise historical statement.\n'
SOURCE='theorem fixed : True := True.intro\n'
PAGE='docs/mathematics/Analysis/Test/object.md'
def sha(text):return hashlib.sha256(text.encode()).hexdigest()

class LayoutControls(unittest.TestCase):
    def setUp(self):
        self.tmp=tempfile.TemporaryDirectory();self.addCleanup(self.tmp.cleanup);self.root=Path(self.tmp.name)
        self.history={'docs/old.md':TEXT}
        self.inv={'schema':'legacy-documentation-sections-v1','origin_commit':'a'*40,'sources':{'docs/old.md':{'sha256':sha(TEXT),'characters':len(TEXT)}},'sections':[{'id':'old:0','source':'docs/old.md','start':0,'end':len(TEXT),'sha256':sha(TEXT)}]}
        self.layout={'schema':'mathematical-documentation-layout-v1','pages':{PAGE:{'title':'Object','subject':'Analysis','object':'Test','primary_source':'GRWTSK/Analysis/Test.lean','source_sha256':sha(SOURCE),'status':'historical'},'docs/index.md':{'title':'Mathematical documentation','category':'navigation'}},'dispositions':{'old:0':{'kind':'mathematics','target':PAGE}}}
        for path in ['docs/start/least-prime.md','docs/how-to/verify.md','docs/reference/results.md','docs/explanation/evidence.md','docs/explanation/documentation.md','docs/reference/source-layout.md','docs/reference/verification-interfaces.md','docs/reference/documentation-history.md']:
            self.layout['pages'][path]={'title':'Fixture reference','category':Path(path).parts[1]}
            self.write(path,'# Fixture reference\n')
        self.write('GRWTSK/Analysis/Test.lean',SOURCE);self.write(PAGE,'# Object\n\n[Object](#object)\n');self.navigation()
        self.bindings={'schema':'documentation-object-bindings-v1','bindings':{'Analysis/Test':['GRWTSK/Analysis/Test.lean']}}
        self.registry()
    def write(self,path,text):
        p=self.root/path;p.parent.mkdir(parents=True,exist_ok=True);p.write_text(text)
    def navigation(self):self.write('docs/index.md',checker.render_navigation(self.layout))
    def registry(self):
        raw=json.dumps(self.bindings);self.write('docs/reference/bindings.json',raw)
        self.layout['object_binding_registry']='docs/reference/bindings.json';self.layout['object_binding_registry_sha256']=sha(raw)
    def validate(self):checker.validate(self.root,self.layout,self.inv,self.history,set(self.layout['pages']))
    def reject(self,reason):
        with self.assertRaisesRegex(checker.LayoutError,re.escape(reason)):self.validate()
    def test_positive(self):self.validate()
    def test_missing_section(self):self.layout['dispositions'].clear();self.reject('missing/extra section disposition')
    def test_duplicate_frozen_section(self):self.inv['sections'].append(copy.deepcopy(self.inv['sections'][0]));self.reject('duplicate frozen section')
    def test_duplicate_destination(self):self.layout['dispositions']['old:0']['secondary_targets']=[PAGE];self.reject('duplicate section destination')
    def test_missing_destination(self):self.layout['dispositions']['old:0']['target']='docs/missing.md';self.reject('missing destination')
    def test_omitted_tail(self):self.inv['sections'][0]['end']-=1;self.reject('section byte drift')
    def test_history_bytes_changed(self):self.history['docs/old.md']=TEXT+'different';self.reject('historical source drift')
    def test_section_digest_changed(self):self.inv['sections'][0]['sha256']='0'*64;self.reject('section byte drift')
    def test_campaign_directory(self):
        p='docs/mathematics/Analysis/CCC/object.md';self.layout['pages'][p]=self.layout['pages'].pop(PAGE);self.write(p,'# Object\n');self.reject('campaign/conversation path')
    def test_subject_mismatch(self):self.layout['pages'][PAGE]['subject']='Algebra';self.reject('subject/object path mismatch')
    def test_object_mismatch(self):self.layout['pages'][PAGE]['object']='Different';self.reject('subject/object path mismatch')
    def test_source_subject_mismatch(self):
        self.write('GRWTSK/Algebra/Test.lean',SOURCE);self.layout['pages'][PAGE]['primary_source']='GRWTSK/Algebra/Test.lean';self.reject('source subject mismatch')
    def test_source_object_mismatch(self):
        self.write('GRWTSK/Analysis/Other.lean',SOURCE);self.layout['pages'][PAGE]['primary_source']='GRWTSK/Analysis/Other.lean';self.reject('source object mismatch')
    def test_reference_link_escape(self):self.write(PAGE,'# Object\n\n[bad][id]\n\n[id]: ../../outside\n');self.reject('unsupported reference-link definition')
    def test_html_link_escape(self):self.write(PAGE,'# Object\n\n<a href="../../outside">bad</a>\n');self.reject('unsupported HTML link')
    def test_mutable_origin(self):self.inv['origin_commit']='main';self.reject('mutable historical origin')
    def test_duplicate_json_field(self):
        with self.assertRaisesRegex(checker.LayoutError,'duplicate JSON field'):checker.load_json('{"same":1,"same":2}')
    def test_source_digest_changed(self):self.write('GRWTSK/Analysis/Test.lean',SOURCE+'\n');self.reject('source identity drift')
    def test_broken_fragment(self):self.write(PAGE,'# Object\n\n[bad](#absent)\n');self.reject('broken fragment')
    def test_fenced_phantom_fragment(self):
        for fence in ['~~~',' ```']:
            with self.subTest(fence=fence):
                self.write(PAGE,'# Object\n\n[bad](#phantom)\n\n'+fence+'\n# Phantom\n'+fence.strip()+'\n')
                self.reject('broken fragment')
    def test_nested_parenthesis_destination(self):
        self.write('docs/mathematics/Analysis/Test/decoy(real','# decoy\n')
        self.write(PAGE,'# Object\n\n[bad](decoy(real).md)\n');self.reject('broken link')
    def test_link_title_is_not_destination(self):
        self.write('docs/mathematics/Analysis/Test/missing.md "title"','# decoy\n')
        self.write(PAGE,'# Object\n\n[bad](missing.md "title")\n');self.reject('broken link')
    def test_commonmark_encoded_scheme_is_rejected(self):
        for destination in ['javascript\\:evil','javascript&colon;evil']:
            with self.subTest(destination=destination):
                self.write('docs/mathematics/Analysis/Test/'+destination,'# decoy\n')
                self.write(PAGE,'# Object\n\n[unsafe]('+destination+')\n')
                self.reject('unsupported link scheme')
    def test_escaped_link(self):self.write(PAGE,'# Object\n\n[bad](../../../../../../outside)\n');self.reject('escaped local link')
    def test_escaped_source(self):self.layout['pages'][PAGE]['primary_source']='../outside';self.reject('noncanonical path')
    def test_private_provenance(self):self.write(PAGE,'# Object\n\n/Users/private/source\n');self.reject('private provenance')
    def test_private_repository_identity(self):self.write(PAGE,'# Object\n\nhttps://github.com/grwtsk/formal-research\n');self.reject('private provenance')
    def test_private_provenance_in_code(self):self.write(PAGE,'# Object\n\n```text\n/Users/private/source\n```\n');self.reject('private provenance')
    def test_procedure_in_mathematical_page(self):self.write(PAGE,'# Object\n\nRun `python3 scripts/check.py`.\n');self.reject('procedure embedded')
    def test_symlink_escape(self):
        with tempfile.TemporaryDirectory() as external:
            p=Path(external)/'source.lean';p.write_text(SOURCE)
            (self.root/'GRWTSK/Analysis/Test.lean').unlink();(self.root/'GRWTSK/Analysis/Test.lean').symlink_to(p);self.reject('symlink component')
    def test_symlink_to_git(self):
        p=self.root/'.git/objects/source.lean';p.parent.mkdir(parents=True);p.write_text(SOURCE)
        original=self.root/'GRWTSK/Analysis/Test.lean';original.unlink();original.symlink_to(p)
        self.reject('symlink component')
    def test_symlink_to_in_root_source(self):
        p=self.root/'GRWTSK/Analysis/Other.lean';p.write_text(SOURCE)
        original=self.root/'GRWTSK/Analysis/Test.lean';original.unlink();original.symlink_to(p)
        self.reject('symlink component')
    def test_registry_string_confusion(self):
        self.bindings['bindings']['Analysis/Test']='prefix GRWTSK/Analysis/Test.lean suffix';self.registry();self.reject('unique path lists')
    def test_git_case_alias(self):
        self.write('.GIT/bindings.json',json.dumps(self.bindings));self.layout['object_binding_registry']='.GIT/bindings.json';self.reject('Git metadata path')
    def test_noncanonical_source_alias(self):
        self.layout['pages'][PAGE]['primary_source']='GRWTSK/Analysis/../Analysis/Test.lean';self.reject('noncanonical path')
    def test_hardlinked_input(self):
        os.link(self.root/'GRWTSK/Analysis/Test.lean',self.root/'GRWTSK/Analysis/alias.lean');self.reject('hardlink input')
    def test_ancestor_swap_during_read(self):
        parent=self.root/'GRWTSK/Analysis';replacement=self.root/'replacement';replacement.mkdir()
        self.write('replacement/Test.lean',SOURCE);old=self.root/'old-analysis';real_read=checker.os.read;swapped=False
        def racing_read(fd,size):
            nonlocal swapped
            data=real_read(fd,size)
            if not swapped:
                parent.rename(old);replacement.rename(parent);swapped=True
            return data
        with mock.patch.object(checker.os,'read',side_effect=racing_read):
            with self.assertRaisesRegex(checker.LayoutError,'path changed while read'):
                checker.read_safe(self.root,'GRWTSK/Analysis/Test.lean')
    def test_root_swap_after_final_name_observation(self):
        replacement=Path(str(self.root)+'-replacement');replacement.mkdir()
        self.addCleanup(lambda: replacement.exists() and replacement.rename(Path(str(self.root)+'-cleanup')))
        target='GRWTSK/Analysis/Test.lean';new=b'NEW\n'
        p=replacement/target;p.parent.mkdir(parents=True);p.write_bytes(new)
        old=Path(str(self.root)+'-old');real_stat=checker.os.stat;root_name=self.root.name;swapped=False
        def racing_stat(path,*args,**kwargs):
            nonlocal swapped
            result=real_stat(path,*args,**kwargs)
            if (not swapped and path==root_name and kwargs.get('dir_fd') is not None
                    and kwargs.get('follow_symlinks') is False):
                # The third root-name observation is the first post-read pass.
                racing_stat.seen+=1
                if racing_stat.seen==3:
                    self.root.rename(old);replacement.rename(self.root);swapped=True
            return result
        racing_stat.seen=0
        try:
            with mock.patch.object(checker.os,'stat',side_effect=racing_stat):
                with self.assertRaisesRegex(checker.LayoutError,'path changed while read'):
                    checker.read_safe(self.root,target)
        finally:
            if swapped:
                self.root.rename(replacement);old.rename(self.root)
            if replacement.exists():
                for child in sorted(replacement.rglob('*'),reverse=True):
                    child.unlink() if child.is_file() else child.rmdir()
                replacement.rmdir()
    def test_terminal_observation_detects_live_source_replacement(self):
        name='GRWTSK/Analysis/Test.lean';bound,before=checker.observe_inputs(self.root,{name})
        replacement=self.root/'replacement.lean';replacement.write_bytes(bound[name]);os.replace(replacement,self.root/name)
        unused,after=checker.observe_inputs(self.root,{name})
        self.assertNotEqual(after,before)
    def test_container_procedures(self):
        for prefix in ['- Run','1. run','> - rUn']:
            with self.subTest(prefix=prefix):
                self.write(PAGE,'# Object\n\n'+prefix+' `python3 scripts/check.py`.\n');self.reject('procedure embedded')
    def test_container_reference_definitions(self):
        for prefix in ['> ','- ','1. ', '> - ']:
            with self.subTest(prefix=prefix):
                self.write(PAGE,'# Object\n\n'+prefix+'[id]: ../../outside\n');self.reject('unsupported reference-link definition')
    def test_historical_upgrade(self):
        self.write('docs/reference/old-check.json',json.dumps({'outcome':'passed','source_hashes':{'GRWTSK/Analysis/Test.lean':'0'*64},'selected_checks':{'replay':'passed'}}))
        self.layout['pages'][PAGE]['status']='fresh-selected';self.layout['pages'][PAGE]['evidence']='docs/reference/old-check.json';self.reject('unsupported current verification')
    def test_stale_index(self):self.write('docs/index.md','# Mathematical documentation\n');self.reject('stale mathematical navigation')
    def test_omitted_visible_page(self):
        self.write('docs/reference/new.md','# New\n')
        with self.assertRaisesRegex(checker.LayoutError,'omitted or stale page inventory'):checker.validate(self.root,self.layout,self.inv,self.history,set(self.layout['pages'])|{'docs/reference/new.md'})
    def test_link_to_unregistered_page(self):
        self.write('docs/hidden.md','# Hidden\n');self.write(PAGE,'# Object\n\n[hidden](../../../hidden.md)\n')
        self.reject('unregistered Markdown target')
    def test_navigation_target_must_be_registered(self):
        del self.layout['pages']['docs/start/least-prime.md'];self.reject('unregistered Markdown target')
    def test_valid_split(self):
        p='docs/mathematics/Analysis/Test/second.md';self.write(p,'# Second\n');self.layout['pages'][p]={**self.layout['pages'][PAGE],'title':'Second'}
        self.layout['dispositions']['old:0']['secondary_targets']=[p];self.navigation();self.validate()
    def test_valid_history(self):self.layout['dispositions']['old:0']={'kind':'history','reason':'execution history retained'};self.validate()
    def test_valid_cross_subject_link(self):
        p='docs/mathematics/Algebra/Group/action.md';source='GRWTSK/Algebra/Group.lean'
        self.write(source,SOURCE);self.write(p,'# Action\n');self.write(PAGE,'# Object\n\n[Action](../../Algebra/Group/action.md)\n')
        self.layout['pages'][p]={'title':'Action','subject':'Algebra','object':'Group','primary_source':source,'source_sha256':sha(SOURCE),'status':'historical'}
        self.bindings['bindings']['Algebra/Group']=[source];self.registry()
        self.navigation();self.validate()
    def test_allowed_autolinks(self):
        self.write(PAGE,'# Object\n\n<https://example.com/path> <mailto:reader@example.com> <reader@example.com>\n')
        self.validate()
    def test_unsafe_autolinks(self):
        for value in ['javascript:alert(1)','file:///tmp/secret','data:text/html,bad']:
            with self.subTest(value=value):
                self.write(PAGE,'# Object\n\n<'+value+'>\n');self.reject('unsupported autolink scheme')

class GitControls(unittest.TestCase):
    def test_unsafe_visible_page_cannot_be_omitted(self):
        with tempfile.TemporaryDirectory() as temporary:
            root=Path(temporary);target=root/'docs/reference/unsafe.md';target.parent.mkdir(parents=True)
            other=root/'other.md';other.write_text('# Other\n');target.symlink_to(other)
            def inventory(_root,arguments):
                return b'' if '--deleted' in arguments else b'docs/reference/unsafe.md\0'
            with mock.patch.object(checker,'git_bytes',side_effect=inventory):
                with self.assertRaisesRegex(checker.LayoutError,'symlink component'):checker.visible_markdown(root)
    def test_absent_tracked_deletion_is_excluded(self):
        with tempfile.TemporaryDirectory() as temporary:
            with mock.patch.object(checker,'git_bytes',return_value=b'docs/removed.md\0'):
                self.assertEqual(checker.visible_markdown(Path(temporary)),set())
    def test_original_catalog_validates_before_hostile_mutations(self):
        import check_documentation as catalog
        raw=b'{"records":[]}'
        observation={'sha256':hashlib.sha256(raw).hexdigest(),'bytes':len(raw),'identity':(1,2,3)}
        with mock.patch.object(catalog.layout,'read_safe',return_value=(raw,observation)),mock.patch.object(catalog,'validate',side_effect=checker.LayoutError('original catalog rejected')),mock.patch('sys.argv',['documentation-check']):
            with self.assertRaisesRegex(checker.LayoutError,'original catalog rejected'):catalog.main()
    def test_nonzero_git_fails(self):
        result=types.SimpleNamespace(stdout=b'',stderr=b'failed',returncode=1)
        with self.assertRaisesRegex(checker.LayoutError,'pinned Git command failed'):
            checker.git_bytes(Path('/tmp'),['rev-parse','--show-toplevel'],runner=lambda *a,**k:result)
    def test_nonbytes_git_fails(self):
        result=types.SimpleNamespace(stdout='',stderr='',returncode=0)
        with self.assertRaisesRegex(checker.LayoutError,'pinned Git returned nonbytes'):
            checker.git_bytes(Path('/tmp'),['rev-parse','--show-toplevel'],runner=lambda *a,**k:result)
    def test_git_invocation_is_absolute_and_sanitized(self):
        seen={}
        def runner(argv,**kwargs):
            seen.update(argv=argv,kwargs=kwargs)
            return types.SimpleNamespace(stdout=b'/tmp\n',stderr=b'',returncode=0)
        checker.git_bytes(Path('/tmp'),['rev-parse','--show-toplevel'],runner=runner)
        self.assertEqual(seen['argv'][0],str(checker.GIT))
        self.assertIn('--literal-pathspecs',seen['argv'])
        self.assertEqual(seen['kwargs']['env'],checker.git_environment())
        self.assertNotIn('GIT_DIR',seen['kwargs']['env'])
        self.assertEqual(seen['kwargs']['stdin'],checker.subprocess.DEVNULL)
    def test_unlisted_git_command_is_rejected(self):
        with self.assertRaisesRegex(checker.LayoutError,'unsupported pinned Git command'):
            checker.git_bytes(Path('/tmp'),['status'],runner=lambda *a,**k:None)
    def test_nul_inventory_rejects_control_name(self):
        with mock.patch.object(checker,'git_bytes',return_value=b'docs/good.md\0docs/bad\nname.md\0'):
            with self.assertRaisesRegex(checker.LayoutError,'noncanonical Git-visible path|control character'):
                checker.visible_markdown(Path('/tmp'))

class CatalogControls(unittest.TestCase):
    def setUp(self):
        import check_documentation as catalog
        self.catalog=catalog;self.current=b'theorem current : True := True.intro\n'
        self.data={'records':[{'id':'changed','premises':'Explicit premise retained',
            'source':'GRWTSK/Analysis/Test.lean','page':PAGE,'evidence':'evidence/old.json',
            'sha256':'0'*64,'verification':'historical-source-changed',
            'observed_source_sha256':hashlib.sha256(self.current).hexdigest(),
            'current_verification':'not-run','evidence_limit':'Historical receipt only'}]}
        self.bound={'GRWTSK/Analysis/Test.lean':self.current,PAGE:b'# Object\n',
                    'evidence/old.json':b'{}'}
    def test_changed_source_is_retained_without_current_acceptance(self):
        self.catalog.validate(self.data,self.bound)
    def test_changed_source_cannot_be_silently_promoted_or_rebound(self):
        for mutation in ['stale-observation','erase-history','old-receipt-promoted',
                         'undeclared-drift','invent-current-pass','omit-evidence-limit']:
            with self.subTest(mutation=mutation):
                bad=copy.deepcopy(self.data);record=bad['records'][0]
                if mutation=='stale-observation':record['observed_source_sha256']='1'*64
                if mutation=='erase-history':record['sha256']=record['observed_source_sha256']
                if mutation=='old-receipt-promoted':
                    record['verification']='fresh-selected'
                    record['sha256']=record.pop('observed_source_sha256')
                    record.pop('current_verification')
                if mutation=='undeclared-drift':
                    record['verification']='historical'
                    record.pop('observed_source_sha256');record.pop('current_verification')
                if mutation=='invent-current-pass':record['current_verification']='passed'
                if mutation=='omit-evidence-limit':record.pop('evidence_limit')
                with self.assertRaises(checker.LayoutError):
                    self.catalog.validate(bad,self.bound)

if __name__=='__main__':unittest.main()
