-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.TreeNoLeaf.Variant992180a07358485885e6e74be7d4a82e4b9e691dcfc3bd19a224d7eeb1b9b714","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"992180a07358485885e6e74be7d4a82e4b9e691dcfc3bd19a224d7eeb1b9b714","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.TreeNoLeaf.Variant992180a07358485885e6e74be7d4a82e4b9e691dcfc3bd19a224d7eeb1b9b714","mathematical_subject":"Foundations.Unclassified","original_sha256":"992180a07358485885e6e74be7d4a82e4b9e691dcfc3bd19a224d7eeb1b9b714","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/restored-inputs/packages/plausible/PlausibleTest/DeriveArbitrary/MissingNonRecursiveConstructorTest.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Plausible.Arbitrary
import Plausible.DeriveArbitrary
import Plausible.Attr


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.TreeNoLeaf.Variant992180a07358485885e6e74be7d4a82e4b9e691dcfc3bd19a224d7eeb1b9b714

open Plausible

/-- A variant of a binary tree datatype where the
    non-recursive `Leaf` constructor is missing.

    We are unable to derive a generator for this type,
    since it is impossible to construct an inhabitant of this type.

    The test below checks that an appropriate error message is emitted
    by the deriving handler. -/
inductive TreeNoLeaf where
  | Node : Nat → TreeNoLeaf → TreeNoLeaf → TreeNoLeaf

set_option trace.plausible.deriving.arbitrary true in
/-- error: derive Arbitrary failed, TreeNoLeaf has no non-recursive constructors -/
#guard_msgs in
deriving instance Arbitrary for TreeNoLeaf
