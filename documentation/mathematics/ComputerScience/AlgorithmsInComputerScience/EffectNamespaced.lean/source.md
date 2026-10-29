# Effect Namespaced — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `dfd529875ec66abbae360ba3ad88d26ff1002d67` · SHA-256 `412896f9d969a33871dcf58f84d2a621abd40c6876d03a822f571f18743b373d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Effect.Variant63b9e763be0a4bb680e91ba886b489fc58f0343e70452b61a7d7fb3d99993542","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"63b9e763be0a4bb680e91ba886b489fc58f0343e70452b61a7d7fb3d99993542","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.Effect.Variant63b9e763be0a4bb680e91ba886b489fc58f0343e70452b61a7d7fb3d99993542","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"63b9e763be0a4bb680e91ba886b489fc58f0343e70452b61a7d7fb3d99993542","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/Capability/Effect.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.Data.Set.Basic

/-!
# Independent operational effects

Effects are independent coordinates.  In particular, observing an element
does not imply permission to retain, transmit, train on, transform, or execute
it.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Effect.Variant63b9e763be0a4bb680e91ba886b489fc58f0343e70452b61a7d7fb3d99993542

namespace Mathematics.Capability

inductive Effect
  | observe
  | retain
  | transmit
  | transform
  | train
  | execute
  deriving DecidableEq, Repr

structure EffectProfile where
  admits : Set Effect

def EffectProfile.Refines
    (child parent : EffectProfile) : Prop :=
  child.admits ⊆ parent.admits

instance : LE EffectProfile :=
  ⟨EffectProfile.Refines⟩

namespace EffectProfile

@[refl] theorem le_refl (profile : EffectProfile) :
    profile ≤ profile :=
  Set.Subset.rfl

theorem le_trans
    {first second third : EffectProfile}
    (first_le_second : first ≤ second)
    (second_le_third : second ≤ third) :
    first ≤ third :=
  Set.Subset.trans first_le_second second_le_third

def meet (left right : EffectProfile) : EffectProfile where
  admits := left.admits ∩ right.admits

theorem meet_le_left (left right : EffectProfile) :
    meet left right ≤ left :=
  Set.inter_subset_left

theorem meet_le_right (left right : EffectProfile) :
    meet left right ≤ right :=
  Set.inter_subset_right

end EffectProfile

end Mathematics.Capability
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=7142eadb038e04a7f962bd6dbffabcda16735919c4f4ac0870ff1c64a55f4cd1 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Effect/Variant7d97ec889587ab720ef37f150d960503c6353f67e9f57eddcfe04719dd328cf1.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
