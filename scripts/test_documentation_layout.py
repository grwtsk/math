"""Independent, finite hostile layout fixtures; not mathematical truth tests."""
import copy,hashlib,json,tempfile,unittest,re
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
    def test_escaped_link(self):self.write(PAGE,'# Object\n\n[bad](../../../../../../outside)\n');self.reject('escaped local link')
    def test_escaped_source(self):self.layout['pages'][PAGE]['primary_source']='../outside';self.reject('escaped path')
    def test_private_provenance(self):self.write(PAGE,'# Object\n\n/Users/private/source\n');self.reject('private provenance')
    def test_private_provenance_in_code(self):self.write(PAGE,'# Object\n\n```text\n/Users/private/source\n```\n');self.reject('private provenance')
    def test_procedure_in_mathematical_page(self):self.write(PAGE,'# Object\n\nRun `python3 scripts/check.py`.\n');self.reject('procedure embedded')
    def test_symlink_escape(self):
        with tempfile.TemporaryDirectory() as external:
            p=Path(external)/'source.lean';p.write_text(SOURCE)
            (self.root/'GRWTSK/Analysis/Test.lean').unlink();(self.root/'GRWTSK/Analysis/Test.lean').symlink_to(p);self.reject('escaped path')
    def test_symlink_to_git(self):
        p=self.root/'.git/objects/source.lean';p.parent.mkdir(parents=True);p.write_text(SOURCE)
        original=self.root/'GRWTSK/Analysis/Test.lean';original.unlink();original.symlink_to(p)
        self.reject('Git metadata path')
    def test_symlink_to_in_root_source(self):
        p=self.root/'GRWTSK/Analysis/Other.lean';p.write_text(SOURCE)
        original=self.root/'GRWTSK/Analysis/Test.lean';original.unlink();original.symlink_to(p)
        self.reject('symlink component')
    def test_historical_upgrade(self):
        self.write('docs/reference/old-check.json',json.dumps({'outcome':'passed','source_hashes':{'GRWTSK/Analysis/Test.lean':'0'*64},'selected_checks':{'replay':'passed'}}))
        self.layout['pages'][PAGE]['status']='fresh-selected';self.layout['pages'][PAGE]['evidence']='docs/reference/old-check.json';self.reject('unsupported current verification')
    def test_stale_index(self):self.write('docs/index.md','# Mathematical documentation\n');self.reject('stale mathematical navigation')
    def test_omitted_visible_page(self):
        self.write('docs/reference/new.md','# New\n')
        with self.assertRaisesRegex(checker.LayoutError,'omitted or stale page inventory'):checker.validate(self.root,self.layout,self.inv,self.history,set(self.layout['pages'])|{'docs/reference/new.md'})
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

if __name__=='__main__':unittest.main()
