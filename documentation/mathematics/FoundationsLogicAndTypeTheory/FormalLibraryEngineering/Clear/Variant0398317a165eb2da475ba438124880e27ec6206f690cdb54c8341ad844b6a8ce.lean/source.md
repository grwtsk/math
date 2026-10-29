# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Clear.Variant0398317a165eb2da475ba438124880e27ec6206f690cdb54c8341ad844b6a8ce

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `bb0c4ef38bace96a73ce0de24e1a2ef5f46387e2` · SHA-256 `d6e6a39641e2def7d65888b0cae512a2eb66ec14d0d4d74364bd9b6c163c4280`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ClearExclamation.Variant6d37f798c332f745f2d680b1fb12c634cb3f911b2d9291a40e4d0c4d67820933","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"6d37f798c332f745f2d680b1fb12c634cb3f911b2d9291a40e4d0c4d67820933","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.ClearExclamation.Variant6d37f798c332f745f2d680b1fb12c634cb3f911b2d9291a40e4d0c4d67820933","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"6d37f798c332f745f2d680b1fb12c634cb3f911b2d9291a40e4d0c4d67820933","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/MathlibTest/Clear!.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.Tactic.ClearExclamation


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ClearExclamation.Variant6d37f798c332f745f2d680b1fb12c634cb3f911b2d9291a40e4d0c4d67820933

set_option linter.unusedVariables false

-- Most basic test
example (delete_this : Nat) (_delete_this_dep : delete_this = delete_this) : Nat := by
  clear! delete_this
  fail_if_success assumption
  exact 0

-- Confirms clear! deletes class instances
example [delete_this : Inhabited Nat] : Inhabited Nat := by
  clear! delete_this
  fail_if_success assumption
  infer_instance

-- Confirms clear! can clear the dependencies of multiple hypotheses
example (delete_this : Nat) (delete_this2 : Nat) (_delete_this_dep : delete_this = delete_this2) :
    Nat := by
  clear! delete_this delete_this2
  fail_if_success assumption
  exact 0

-- Confirms that clear! does not delete independent hypotheses
example (delete_this : Nat) (dont_delete_this : Int) : Nat := by
  clear! delete_this
  fail_if_success assumption
  exact dont_delete_this.toNat

-- Confirms that clear! only deletes dependencies in the right direction
example (dont_delete_this : Nat) (delete_this : dont_delete_this = dont_delete_this) : Nat := by
  clear! delete_this
  assumption
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e5d4ed466899385a367ecf3c0d21677175438ea311dccdb97357342e0b665e03 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Clear/Variant0398317a165eb2da475ba438124880e27ec6206f690cdb54c8341ad844b6a8ce.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
