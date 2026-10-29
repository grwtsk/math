-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.DummyLibraryNote.Variantc3db2b7e2c9fc0eea006ec3f1942138bd1f3cf43d98e5204f616da859107da26","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"c3db2b7e2c9fc0eea006ec3f1942138bd1f3cf43d98e5204f616da859107da26","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.DummyLibraryNote.Variantc3db2b7e2c9fc0eea006ec3f1942138bd1f3cf43d98e5204f616da859107da26","mathematical_subject":"Foundations.Unclassified","original_sha256":"c3db2b7e2c9fc0eea006ec3f1942138bd1f3cf43d98e5204f616da859107da26","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/restored-inputs/packages/batteries/BatteriesTest/Internal/DummyLibraryNote2.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import BatteriesTest.Internal.DummyLibraryNote


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.DummyLibraryNote.Variantc3db2b7e2c9fc0eea006ec3f1942138bd1f3cf43d98e5204f616da859107da26

library_note «test3» /--
3: this is a note in a different file importing the above testnotes,
but still imported by the actual testfile.
-/

library_note «Test» /--
1: this is a testnote with a label starting with "Te"
-/

library_note «Other» /--
1: this is a testnote with a label not starting with "te",
so it shouldn't appear when looking for notes with label starting with "te".
-/
