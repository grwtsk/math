# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Rfl.Variantdbfef9e8c913a038e41c3146007fd2ed311ddad24b2c46eadd3282e08a554ecd

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `64bf2e3d208c3f22ba5e7be13ddc0c358d73c643` · SHA-256 `92b3617051ca672c4d15036411b730341557dfdda4f58690d92889df3636f88e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Foo.Variante88c1d47e5e6b3457a71aa34b54f30cab10fd84ef2d7b03909cfd909c1901c9d","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"e88c1d47e5e6b3457a71aa34b54f30cab10fd84ef2d7b03909cfd909c1901c9d","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Foo.Variante88c1d47e5e6b3457a71aa34b54f30cab10fd84ef2d7b03909cfd909c1901c9d","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"e88c1d47e5e6b3457a71aa34b54f30cab10fd84ef2d7b03909cfd909c1901c9d","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/restored-inputs/packages/batteries/BatteriesTest/rfl.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Lean.Elab.Tactic.Rfl
-- Adaptation note: we should be able to remove this import after nightly-2024-03-19


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Foo.Variante88c1d47e5e6b3457a71aa34b54f30cab10fd84ef2d7b03909cfd909c1901c9d

set_option linter.missingDocs false

example (a : Nat) : a = a := rfl

example (a : Nat) : a = a := by rfl

open Setoid

universe u
variable {α : Sort u} [Setoid α]

@[refl] theorem iseqv_refl (a : α) : a ≈ a :=
  iseqv.refl a

example (a : α) : a ≈ a := by rfl

example (a : Nat) : a ≤ a := by (fail_if_success rfl); apply Nat.le_refl

attribute [refl] Nat.le_refl

example (a : Nat) : a ≤ a := by rfl

structure Foo

def Foo.le (_ _ : Foo) := Unit → True
instance : LE Foo := ⟨Foo.le⟩

@[refl] theorem Foo.le_refl (a : Foo) : a ≤ a := fun _ => trivial

example (a : Foo) : a ≤ a := by apply Foo.le_refl
example (a : Foo) : a ≤ a := by rfl

example (x : Nat) : x ≤ x := by
  show _
  rfl
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=fb1952a35d44bb66dc40b8f77c380e8d4af2c787eeaf36dcf48368dc90376733 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rfl/Variantdbfef9e8c913a038e41c3146007fd2ed311ddad24b2c46eadd3282e08a554ecd.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
