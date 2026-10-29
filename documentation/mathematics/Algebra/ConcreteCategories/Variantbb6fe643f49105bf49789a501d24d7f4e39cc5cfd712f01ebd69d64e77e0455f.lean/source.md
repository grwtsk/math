# Complete source: GRWTSK.Algebra.ConcreteCategories.Variantbb6fe643f49105bf49789a501d24d7f4e39cc5cfd712f01ebd69d64e77e0455f

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c45c958057bf249cbc01f980309de262af8882e2` · SHA-256 `37d8c6599998f3e6d0c0d6ee3d07b1dbd7b8a28698d9325c4b88009712018c13`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.SourceUnit.Variant91d504d7dcee323b20e7a375326913a5e1ca6dfa58978cdf4432ad434e2d5c26","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"91d504d7dcee323b20e7a375326913a5e1ca6dfa58978cdf4432ad434e2d5c26","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.RingsAndFields.SourceCorpus.SourceUnit.Variant91d504d7dcee323b20e7a375326913a5e1ca6dfa58978cdf4432ad434e2d5c26","mathematical_subject":"Algebra.RingsAndFields","original_sha256":"91d504d7dcee323b20e7a375326913a5e1ca6dfa58978cdf4432ad434e2d5c26","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/MathlibTest/Delab/ConcreteCategories.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib


namespace GRWTSK.Algebra.SourceUnit.Variant91d504d7dcee323b20e7a375326913a5e1ca6dfa58978cdf4432ad434e2d5c26

universe u

variable (R : Type u) [Semiring R]
/-- info: ↧R : SemiRingCat -/
#guard_msgs in
#check SemiRingCat.of R

variable (R : Type u) [CommSemiring R]
/-- info: ↧R : CommSemiRingCat -/
#guard_msgs in
#check CommSemiRingCat.of R

variable (R : Type u) [Ring R] in
/-- info: ↧R : RingCat -/
#guard_msgs in
#check RingCat.of R

variable (R : Type u) [CommRing R] in
/-- info: ↧R : CommRingCat -/
#guard_msgs in
#check CommRingCat.of R

variable (X : Type u) [TopologicalSpace X] in
/-- info: ↧X : TopCat -/
#guard_msgs in
#check TopCat.of X

variable (X : Type u) [TopologicalSpace X] in
/-- info: ↧X : TopCat -/
#guard_msgs in
#check TopCat.of X

variable (X : Type u) [Fintype X] in
/-- info: ↧X : FintypeCat -/
#guard_msgs in
#check FintypeCat.of X

variable (R : Type u) [TopologicalSpace R] [CommRing R] [IsTopologicalRing R] in
/-- info: ↧R : TopCommRingCat -/
#guard_msgs in
#check TopCommRingCat.of R
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=2e7bda0bbb750a7de0447e372106f5571f0ba4b0f521ea34dfe1643569898252 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/ConcreteCategories/Variantbb6fe643f49105bf49789a501d24d7f4e39cc5cfd712f01ebd69d64e77e0455f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
