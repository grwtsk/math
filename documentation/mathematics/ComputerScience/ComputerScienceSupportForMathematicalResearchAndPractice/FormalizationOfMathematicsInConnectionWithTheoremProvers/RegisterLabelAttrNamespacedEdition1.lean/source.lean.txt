-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.F.Variantd0763cd6a5c90a55629ee94e3c4f58ee394132b17364b4828580f682da057d0f","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"d0763cd6a5c90a55629ee94e3c4f58ee394132b17364b4828580f682da057d0f","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.F.Variantd0763cd6a5c90a55629ee94e3c4f58ee394132b17364b4828580f682da057d0f","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"d0763cd6a5c90a55629ee94e3c4f58ee394132b17364b4828580f682da057d0f","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/restored-inputs/packages/batteries/BatteriesTest/register_label_attr.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import BatteriesTest.Internal.DummyLabelAttr
import Lean.LabelAttribute


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.F.Variantd0763cd6a5c90a55629ee94e3c4f58ee394132b17364b4828580f682da057d0f

set_option linter.missingDocs false

open Lean

def f := 0

/-- info: #[] -/ #guard_msgs in #eval labelled `dummy_label_attr

attribute [dummy_label_attr] f

/-- info: #[`f] -/ #guard_msgs in #eval labelled `dummy_label_attr

section

attribute [-dummy_label_attr] f

/-- info: #[] -/ #guard_msgs in #eval labelled `dummy_label_attr

end

/-- info: #[`f] -/ #guard_msgs in #eval labelled `dummy_label_attr

-- Adding the label again is a no-op
attribute [dummy_label_attr] f

/-- info: #[`f] -/ #guard_msgs in #eval labelled `dummy_label_attr
