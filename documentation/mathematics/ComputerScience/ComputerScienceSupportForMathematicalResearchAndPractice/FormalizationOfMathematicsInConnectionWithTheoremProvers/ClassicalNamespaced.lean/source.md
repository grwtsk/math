# Classical Namespaced — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c8a66c5f6b1dc2fd8bc60bc1880bbfa7bc86e480` · SHA-256 `9940a1b3cc17438f5a2ad75bf667f8e0dcaca67e114f38f1f13657a826735192`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Foo.Variant06419a2c55167172257307f872ea61c474fefb08b88b448901fc121f72a14712","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"06419a2c55167172257307f872ea61c474fefb08b88b448901fc121f72a14712","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.Foo.Variant06419a2c55167172257307f872ea61c474fefb08b88b448901fc121f72a14712","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"06419a2c55167172257307f872ea61c474fefb08b88b448901fc121f72a14712","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/FEATURES/.lake/packages/mathlib/test/classical.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.Tactic.Classical
import Mathlib.Tactic.PermuteGoals
import Std.Tactic.GuardExpr


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Foo.Variant06419a2c55167172257307f872ea61c474fefb08b88b448901fc121f72a14712

noncomputable def foo : Bool := by
  fail_if_success have := ∀ p, decide p -- no classical in scope
  classical!
  have := ∀ p, decide p -- uses the classical instance
  -- uses the classical instance even though `0 < 1` is decidable
  guard_expr decide (0 < 1) = @decide (0 < 1) (‹(a : Prop) → Decidable a› _)
  exact decide (0 < 1)

def bar : Bool := by
  fail_if_success have := ∀ p, decide p -- no classical in scope
  classical
  have := ∀ p, decide p -- uses the classical instance
  guard_expr decide (0 < 1) = @decide (0 < 1) (Nat.decLt 0 1)
  exact decide (0 < 1) -- uses the decidable instance

-- double check no leakage
def bar' : Bool := by
  fail_if_success have := ∀ p, decide p -- no classical in scope
  exact decide (0 < 1) -- uses the decidable instance

-- check that classical respects tactic blocks
def bar'' : Bool := by
  fail_if_success have := ∀ p, decide p -- no classical in scope
  on_goal 1 =>
    classical
    have := ∀ p, decide p -- uses the classical instance
  fail_if_success have := ∀ p, decide p -- no classical in scope again
  exact decide (0 < 1) -- uses the decidable instance
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6c5256809689224473349d950b7f281bab2fc89bdbf7ada81bbb6c1b4002c56d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Classical/Variant979fa6cd998a9e083f143d435dbff7488fcf3c144c634c2b9f6adafcc7e71b24.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
