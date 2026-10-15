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

class AreaIndexControls(unittest.TestCase):
    """Frozen tiny inventory: two areas, one guide, one intake record, no catalog families."""
    def setUp(self):
        self.fixture=LayoutControls('test_positive');self.fixture.setUp()
        self.addCleanup(self.fixture.doCleanups)
        self.root=self.fixture.root;self.layout=self.fixture.layout
        self.census_patch=mock.patch.object(checker.census,'count_sources',side_effect=self.fixture_census)
        self.census_patch.start();self.addCleanup(self.census_patch.stop)
        self.fixture.write('GRWTSK/Algebra/Unexplained.lean',SOURCE)
        self.fixture.write('docs/reference/results.json',json.dumps({'schema':'docs-record/1','records':[]}))
        self.fixture.write('evidence/source-intake.json',json.dumps({'schema':'mathematical-source-intake-v1',
            'sources':[{'path':'GRWTSK/Analysis/Test.lean'}]}))
        self.fixture.write('lean-toolchain','leanprover/lean4:v4.33.0\n')
        self.fixture.write('lake-manifest.json',json.dumps({'packages':[{'name':'mathlib','rev':'b'*40}]}))
        for path in ('docs/reference/library-pages.md','docs/reference/source-intake.md'):
            self.layout['pages'][path]={'title':'Fixture reference','category':'reference'}
            self.fixture.write(path,'# Fixture reference\n\n## Count definitions\n')
        self.layout['navigation']={'schema':'subject-index-navigation-v1','summary':checker.indexes.SUMMARY_PATH}
        for area in ('Algebra','Analysis'):
            self.layout['pages']['docs/mathematics/'+area+'/index.md']={
                'title':checker.indexes.area_title(area),'category':'navigation','area':area}
        self.generate()
    def sources(self):return {p.relative_to(self.root).as_posix() for p in (self.root/'GRWTSK').rglob('*.lean')}
    def fixture_census(self,root,source_bytes):
        """Finite source oracle, independent of the native parser and renderers."""
        self.assertEqual(root,self.root)
        known={SOURCE.encode():(1,1),
               (SOURCE+'-- Same declarations, different source bytes.\n').encode():(1,1),
               (SOURCE+'def extra : Nat := 1\n').encode():(2,1)}
        result={}
        for name,raw in source_bytes.items():
            self.assertIsInstance(raw,bytes)
            entry={'sha256':hashlib.sha256(raw).hexdigest(),'status':'unparsed'}
            if raw in known:
                declarations,theorems=known[raw]
                entry.update(status='parsed',counts={'declarations':declarations,'theorems':theorems})
            result[name]=entry
        return result
    def source_census(self):
        return self.fixture_census(self.root,{name:(self.root/name).read_bytes() for name in self.sources()})
    def generate(self):
        raw=json.dumps(self.layout);self.fixture.write('docs/reference/documentation-layout.json',raw)
        self.summary=checker.build_navigation_summary(self.root,self.layout,self.sources())
        self.fixture.write(checker.indexes.SUMMARY_PATH,json.dumps(self.summary))
        self.fixture.write('docs/index.md',checker.render_navigation(self.layout,self.summary))
        for area in self.summary['areas']:
            self.fixture.write('docs/mathematics/'+area+'/index.md',checker.indexes.render_area(self.layout,self.summary,area))
        for name in checker.indexes.articles(self.layout):
            text=(self.root/name).read_text()
            block=checker.indexes.render_article_totals(self.layout,self.summary,name)
            self.fixture.write(name,checker.indexes.update_article_totals(text,block))
    def validate(self):
        checker.validate(self.root,self.layout,self.fixture.inv,self.fixture.history,set(self.layout['pages']),
                         source_names=self.sources(),source_census=self.source_census())
    def reject(self,reason):
        with self.assertRaisesRegex(checker.LayoutError,re.escape(reason)):self.validate()
    def test_fixed_independent_count_oracle(self):
        self.assertEqual(self.summary['counts'],{'areas':2,'object_guides':1,'documented_objects':1,
            'primary_sources':1,'lean_modules':2,'intake_records':1,'selected_families':0,'maintained_pages':14})
        self.assertEqual(self.summary['areas']['Algebra']['object_guides'],0)
        self.assertEqual(self.summary['areas']['Analysis']['lean_modules'],1)
        self.assertEqual(self.summary['declaration_totals'],{
            'declarations':2,'theorems':2,'parsed_modules':2,'unparsed_modules':0})
        self.assertEqual(self.summary['areas']['Algebra']['declaration_totals'],{
            'declarations':1,'theorems':1,'parsed_modules':1,'unparsed_modules':0})
        self.assertEqual(self.summary['areas']['Analysis']['declaration_totals'],{
            'declarations':1,'theorems':1,'parsed_modules':1,'unparsed_modules':0})
        self.assertEqual(self.summary['source_census']['GRWTSK/Analysis/Test.lean'],{
            'sha256':sha(SOURCE),'status':'parsed','counts':{'declarations':1,'theorems':1}})
        self.validate()
    def test_inventory_table_totals_and_guide_source_scope(self):
        overview=(self.root/'docs/index.md').read_text()
        self.assertIn('| **Total (2 areas)** | **1** | **1** | **2** | **1** | **0** |',overview)
        self.assertIn('| **Total object guides** | **1** |',overview)
        self.assertIn('2 source declaration commands, including 2 theorem/lemma commands',overview)
        article=(self.root/PAGE).read_text()
        self.assertIn('| Object guide | 1 |',article)
        self.assertIn('| Linked primary source file | 1 |',article)
        self.assertIn('| Source declaration commands | 1 |',article)
        self.assertIn('| Theorem/lemma commands | 1 |',article)
        self.assertIn('GRWTSK/Analysis/Test.lean',article)
        self.assertNotIn('GRWTSK/Algebra/Unexplained.lean',article)
        self.assertTrue(article.startswith('# Object\n\n[Object](#object)\n'))
    def test_multiple_guides_do_not_duplicate_primary_source_declarations(self):
        page='docs/mathematics/Analysis/Test/second.md'
        self.layout['pages'][page]={**self.layout['pages'][PAGE],'title':'Second'}
        self.fixture.write(page,'# Second\n\nA separate exact statement.\n');self.generate()
        self.assertEqual(self.summary['counts']['object_guides'],2)
        self.assertEqual(self.summary['counts']['primary_sources'],1)
        self.assertEqual(self.summary['declaration_totals']['declarations'],2)
        self.assertEqual(self.summary['areas']['Analysis']['declaration_totals']['theorems'],1)
        self.assertIn('2 object guides · 1 distinct linked primary source file.',
                      (self.root/'docs/mathematics/Analysis/index.md').read_text())
        for path in (PAGE,page):
            self.assertIn('| Source declaration commands | 1 |',(self.root/path).read_text())
        self.validate()
    def test_unparsed_source_is_explicitly_unavailable(self):
        source='GRWTSK/Analysis/Test.lean';raw='unsupported fixture command\n'
        self.fixture.write(source,raw);self.layout['pages'][PAGE]['source_sha256']=sha(raw);self.generate()
        self.assertEqual(self.summary['declaration_totals'],{
            'declarations':1,'theorems':1,'parsed_modules':1,'unparsed_modules':1})
        self.assertEqual(self.summary['areas']['Analysis']['declaration_totals'],{
            'declarations':0,'theorems':0,'parsed_modules':0,'unparsed_modules':1})
        article=(self.root/PAGE).read_text()
        self.assertIn('| Source declaration commands | Unavailable |',article)
        self.assertIn('| Theorem/lemma commands | Unavailable |',article)
        self.assertNotIn('| Source declaration commands | 0 |',article)
        self.assertIn('totals are lower bounds',(self.root/'docs/index.md').read_text())
        self.validate()
    def test_missing_guide_totals_are_rejected(self):
        self.fixture.write(PAGE,'# Object\n\n[Object](#object)\n');self.reject('mathematics totals')
    def test_duplicate_guide_totals_are_rejected(self):
        block=checker.indexes.render_article_totals(self.layout,self.summary,PAGE)
        self.fixture.write(PAGE,(self.root/PAGE).read_text()+'\n'+block+'\n');self.reject('mathematics totals')
    def test_tampered_guide_totals_are_rejected(self):
        text=(self.root/PAGE).read_text().replace('| Theorem/lemma commands | 1 |',
                                                '| Theorem/lemma commands | 999 |')
        self.fixture.write(PAGE,text);self.reject('mathematics totals')
    def test_undocumented_source_byte_drift_invalidates_totals(self):
        self.fixture.write('GRWTSK/Algebra/Unexplained.lean',SOURCE+'-- Same declarations, different source bytes.\n')
        self.reject('stale documentation inventory')
    def test_undocumented_source_declaration_drift_invalidates_totals(self):
        self.fixture.write('GRWTSK/Algebra/Unexplained.lean',SOURCE+'def extra : Nat := 1\n')
        self.reject('stale documentation inventory')
    def test_missing_area(self):
        del self.layout['pages']['docs/mathematics/Algebra/index.md'];self.generate()
        self.reject('missing/extra area index')
    def test_extra_area(self):
        p='docs/mathematics/Logic/index.md';self.layout['pages'][p]={'title':'Logic','category':'navigation','area':'Logic'}
        self.fixture.write(p,'# Logic\n');self.generate();self.reject('missing/extra area index')
    def test_wrong_index_path(self):
        p='docs/mathematics/Analysis/elsewhere.md';self.layout['pages'][p]=self.layout['pages'].pop('docs/mathematics/Analysis/index.md')
        self.fixture.write(p,'# Analysis\n');self.reject('area index path mismatch')
    def test_area_index_cannot_gain_proof_fields(self):
        for key,value in [('status','fresh-selected'),('primary_source','GRWTSK/Analysis/Test.lean'),('source_sha256','0'*64),('subject','Analysis')]:
            with self.subTest(key=key):
                p=self.layout['pages']['docs/mathematics/Analysis/index.md'];p[key]=value
                try:self.reject('area index carries claim metadata')
                finally:del p[key]
    def test_area_navigation_does_not_promote_article_evidence(self):
        original=checker.indexes.render_area(self.layout,self.summary,'Analysis')
        changed=copy.deepcopy(self.layout)
        changed['pages'][PAGE]['status']='unsupported-proof-claim'
        changed['pages'][PAGE]['source_sha256']='f'*64
        self.assertEqual(checker.indexes.render_area(changed,self.summary,'Analysis'),original)
        self.assertNotIn('`historical`',original)
    def test_wrong_index_category(self):
        self.layout['pages']['docs/mathematics/Analysis/index.md']['category']='reference';self.reject('area index carries claim metadata')
    def test_legacy_section_cannot_move_to_index(self):
        self.layout['dispositions']['old:0']['target']='docs/mathematics/Analysis/index.md'
        self.reject('legacy section targets navigation')
    def test_stale_or_inflated_count(self):
        self.summary['counts']['lean_modules']=999
        self.fixture.write(checker.indexes.SUMMARY_PATH,json.dumps(self.summary));self.reject('stale documentation inventory')
    def test_source_added_invalidates_counts(self):
        self.fixture.write('GRWTSK/Analysis/Extra.lean',SOURCE);self.reject('stale documentation inventory')
    def test_source_removed_invalidates_counts(self):
        (self.root/'GRWTSK/Algebra/Unexplained.lean').unlink();self.reject('stale documentation inventory')
    def test_wrong_area_link(self):
        p='docs/mathematics/Analysis/index.md';text=(self.root/p).read_text().replace('(Test/object.md)','(../Algebra/index.md)')
        self.fixture.write(p,text);self.reject('stale area index: Analysis')
    def test_missing_or_duplicate_guide(self):
        p='docs/mathematics/Analysis/index.md';original=(self.root/p).read_text();line=next(x for x in original.splitlines(True) if '[Object]' in x)
        for text in (original.replace(line,''),original+line):
            with self.subTest(text=text):self.fixture.write(p,text);self.reject('stale area index: Analysis')
    def test_article_binding_remains_enforced(self):
        self.fixture.write('GRWTSK/Analysis/Test.lean',SOURCE+'changed\n');self.reject('source identity drift')
    def test_navigation_cannot_suppress_old_status_check(self):
        self.layout['pages'][PAGE]['status']='accepted';self.reject('unrecognized evidence status')
    def test_intake_cannot_count_absent_source(self):
        self.fixture.write('evidence/source-intake.json',json.dumps({'schema':'mathematical-source-intake-v1',
            'sources':[{'path':'GRWTSK/Analysis/Absent.lean'}]}));self.reject('intake inventory source missing')
    def test_catalog_cannot_mislabel_area(self):
        self.fixture.write('docs/reference/results.json',json.dumps({'schema':'docs-record/1','records':[
            {'id':'wrong','page':PAGE,'subject':'Algebra/Test','verification':'historical'}]}))
        self.reject('catalog inventory subject mismatch')
    def test_navigation_schema_cannot_be_removed(self):
        del self.layout['navigation'];self.reject('area index without navigation schema')
    def test_concurrent_output_edit_during_render_is_preserved(self):
        import check_documentation as catalog
        real=checker.build_navigation_summary;changed=False
        def racing_summary(*args,**kwargs):
            nonlocal changed
            if not changed:
                self.fixture.write('docs/index.md','# Concurrent human edit\n');changed=True
            return real(*args,**kwargs)
        with mock.patch.object(catalog,'ROOT',self.root),mock.patch.object(checker,'visible_source_inventory',return_value=self.sources()),mock.patch.object(checker,'build_navigation_summary',side_effect=racing_summary):
            with self.assertRaisesRegex(checker.LayoutError,'generated output changed during render: docs/index.md'):
                catalog.render_indexes()
        self.assertEqual((self.root/'docs/index.md').read_text(),'# Concurrent human edit\n')
    def test_concurrent_guide_edit_during_render_is_preserved(self):
        import check_documentation as catalog
        real=checker.build_navigation_summary;changed=False
        def racing_summary(*args,**kwargs):
            nonlocal changed
            if not changed:
                self.fixture.write(PAGE,'# Object\n\nConcurrent human statement.\n');changed=True
            return real(*args,**kwargs)
        with mock.patch.object(catalog,'ROOT',self.root),mock.patch.object(checker,'visible_source_inventory',return_value=self.sources()),mock.patch.object(checker,'build_navigation_summary',side_effect=racing_summary):
            with self.assertRaisesRegex(checker.LayoutError,'generated output changed during render: '+re.escape(PAGE)):
                catalog.render_indexes()
        self.assertEqual((self.root/PAGE).read_text(),'# Object\n\nConcurrent human statement.\n')
    def test_unchanged_projection_cannot_hide_concurrent_output_edit(self):
        import check_documentation as catalog
        self.fixture.write('docs/index.md','# Concurrent human edit\n');archive=self.root/'.local/preimage'
        with mock.patch.object(catalog,'ROOT',self.root):
            with self.assertRaisesRegex(checker.LayoutError,'generated output changed before write: docs/index.md'):
                catalog.write_projection('docs/index.md',b'old projection',b'old projection',archive)
        self.assertEqual((self.root/'docs/index.md').read_text(),'# Concurrent human edit\n')
        self.assertFalse(archive.exists())
    def test_unregistered_existing_area_is_not_overwritten(self):
        import check_documentation as catalog
        del self.layout['pages']['docs/mathematics/Algebra/index.md']
        self.fixture.write('docs/reference/documentation-layout.json',json.dumps(self.layout))
        original=(self.root/'docs/mathematics/Algebra/index.md').read_bytes()
        with mock.patch.object(catalog,'ROOT',self.root),mock.patch.object(checker,'visible_source_inventory',return_value=self.sources()):
            with self.assertRaisesRegex(checker.LayoutError,'unregistered existing area output'):
                catalog.render_indexes()
        self.assertEqual((self.root/'docs/mathematics/Algebra/index.md').read_bytes(),original)
    def test_changed_source_inventory_blocks_render(self):
        import check_documentation as catalog
        before=self.sources();after=before|{'GRWTSK/Analysis/Later.lean'}
        with mock.patch.object(catalog,'ROOT',self.root),mock.patch.object(checker,'visible_source_inventory',side_effect=[before,after]):
            with self.assertRaisesRegex(checker.LayoutError,'source inventory changed during render'):
                catalog.render_indexes()

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
