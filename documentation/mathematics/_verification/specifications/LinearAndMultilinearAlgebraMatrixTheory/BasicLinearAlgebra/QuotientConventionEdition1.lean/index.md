# Verification target: Quotient Convention Edition1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8bfd9a547e3aa919f8e9134a066c1dd6c8249a6a",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/QuotientConvention/Variant8fae0625c1d603bfa1779eda1bbafad07c6d4630154ce55bbb1e7737b625e0dc.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuotientConventionEdition1.lean/index.md) · [Full source](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuotientConventionEdition1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8bfd9a547e3aa919f8e9134a066c1dd6c8249a6a`.

Source path: `GRWTSK/Algebra/LinearAlgebra/QuotientConvention/Variant8fae0625c1d603bfa1779eda1bbafad07c6d4630154ce55bbb1e7737b625e0dc.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/QuotientConvention/Variant8fae0625c1d603bfa1779eda1bbafad07c6d4630154ce55bbb1e7737b625e0dc.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.PositiveAtlas.Grassmannian.IntrinsicGrassmannian` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Dimension.RankNullity` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Grassmannian` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [QuotientPlane](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuotientConventionEdition1.lean/declarations/quotientplane.md) | 22 | `declaration-track:1a8f258c9203ade42a06c93a45a806c50c5ee675d2291efe40328febfac70f4b` |
| 2 | `theorem` | [intrinsicPlane_quotient_finrank](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuotientConventionEdition1.lean/declarations/intrinsicplane-quotient-finrank.md) | 25 | `result-track:565e76d209fd2be2d7d75e8015f79224c680f8a4c2ac6b60d405d4ee5c496ddc` |
| 3 | `theorem` | [quotientPlane_finrank](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuotientConventionEdition1.lean/declarations/quotientplane-finrank.md) | 33 | `result-track:a34a03764b8920927cac9cc092de4449f43dfd4953d42c9e0ad75104f7c894ba` |
| 4 | `theorem` | [quotientPlane_dimension_sum](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuotientConventionEdition1.lean/declarations/quotientplane-dimension-sum.md) | 39 | `result-track:9c338ed03c2aa0bfbb5f5e617e27a9881d0d9d5d02926d1a006936cc3f4923fc` |
| 5 | `theorem` | [quotientPlane_rank_le](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuotientConventionEdition1.lean/declarations/quotientplane-rank-le.md) | 46 | `result-track:2b1b0fc65c0d1ea1c66834728e04261601559d2b4048baa2911cd695e2de33b7` |
| 6 | `def` | [intrinsicToQuotientConvention](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuotientConventionEdition1.lean/declarations/intrinsictoquotientconvention.md) | 51 | `declaration-track:9d2bc401594d7e43889cb40e285a72bd41827cb5f12676fd2ff1aec5695593d5` |
| 7 | `theorem` | [intrinsicToQuotientConvention_submodule](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuotientConventionEdition1.lean/declarations/intrinsictoquotientconvention-submodule.md) | 60 | `result-track:aaa1e053d62b1b1a998f27a50dc9f6396f0c2d88e4e6174a9f1bbf469d0320e5` |
| 8 | `def` | [quotientConventionToIntrinsic](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuotientConventionEdition1.lean/declarations/quotientconventiontointrinsic.md) | 64 | `declaration-track:9cbb8a4f67590a812353607ff7ac6f340e6e1a02d553c0b593c811cd3ddc12ba` |
| 9 | `theorem` | [quotientConventionToIntrinsic_submodule](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuotientConventionEdition1.lean/declarations/quotientconventiontointrinsic-submodule.md) | 71 | `result-track:de9688278ebc6259e69ce3f863ceaa5c02b1c49beb398c9e171bd64b6a91f6e5` |
| 10 | `def` | [intrinsicEquivQuotientConvention](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuotientConventionEdition1.lean/declarations/intrinsicequivquotientconvention.md) | 76 | `declaration-track:4ae581f6bc3565faeaf2c2825c82f759c75a3f9625156ba440d87dd0f8371e7f` |
| 11 | `theorem` | [quotientConvention_roundTrip_intrinsic](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuotientConventionEdition1.lean/declarations/quotientconvention-roundtrip-intrinsic.md) | 84 | `result-track:32f2fbe1ba4b7a582852e5736c3b56ea645cb3800a1821f830c5cd820169321a` |
| 12 | `theorem` | [quotientConvention_roundTrip_mathlib](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuotientConventionEdition1.lean/declarations/quotientconvention-roundtrip-mathlib.md) | 90 | `result-track:8bdf5d6320e82b718ca49773b3c792204f2fa75ea5b4da5fc24ea8f339a54854` |
| 13 | `def` | [frameQuotientEquivMathlib](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuotientConventionEdition1.lean/declarations/framequotientequivmathlib.md) | 96 | `declaration-track:6f0a35ebdabe1b20052f75cff1f3f285260bfda0aad9bc1059c92dca82b84d03` |
| 14 | `def` | [frameToQuotientConvention](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuotientConventionEdition1.lean/declarations/frametoquotientconvention.md) | 101 | `declaration-track:48954418fb306e66682c02b1c7e3a83505faab518e625a1c5dc4fdca18018e20` |
| 15 | `theorem` | [frameToQuotientConvention_eq_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuotientConventionEdition1.lean/declarations/frametoquotientconvention-eq-iff.md) | 105 | `result-track:acf7e91c703d0b1e3aa8a4853ef617a8ec574066a41656130fb2338b4844583b` |
| 16 | `theorem` | [frameToQuotientConvention_eq_iff_minors](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuotientConventionEdition1.lean/declarations/frametoquotientconvention-eq-iff-minors.md) | 115 | `result-track:6bea0de081fa2ed10875564c8af6d92153207de1856942edcdd7cc4ffce99f73` |
| 17 | `def` | [QuotientConventionNonnegative](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuotientConventionEdition1.lean/declarations/quotientconventionnonnegative.md) | 123 | `declaration-track:2e7a95b6caba2937fe2b9026c9e150d06816d660685c65e3d8b747c1c9371525` |
| 18 | `def` | [QuotientConventionPositive](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuotientConventionEdition1.lean/declarations/quotientconventionpositive.md) | 128 | `declaration-track:da0bfccd4f0f529c6ffde8215dc00392f9b0f62610b9514eeabf847db57d23da` |
| 19 | `theorem` | [intrinsicNonnegative_iff_quotientConvention](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuotientConventionEdition1.lean/declarations/intrinsicnonnegative-iff-quotientconvention.md) | 133 | `result-track:0581133660c67aee6029c74afd2fd0a36eb99c7e2150b05e7b26214abefd4bb8` |
| 20 | `theorem` | [intrinsicPositive_iff_quotientConvention](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuotientConventionEdition1.lean/declarations/intrinsicpositive-iff-quotientconvention.md) | 144 | `result-track:05b59dffc08c34e811573c59f7cd1978408cfcf321d190976990ff0ecd79b2fd` |
| 21 | `def` | [wholeSpaceQuotientPoint](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuotientConventionEdition1.lean/declarations/wholespacequotientpoint.md) | 155 | `declaration-track:f36a896f358e489bd382f0a7f847e70dbd3bc4fbb230ed4e27a7b959f46a8d65` |
| 22 | `theorem` | [quotientConvention_dimension_guard](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuotientConventionEdition1.lean/declarations/quotientconvention-dimension-guard.md) | 162 | `result-track:f16bc71b95fbf3594fe5916f8ce90c5e004c044c90be876925cc8405413ac487` |
| 23 | `theorem` | [line_in_three_quotient_rank](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuotientConventionEdition1.lean/declarations/line-in-three-quotient-rank.md) | 171 | `result-track:f3fe217ad2970c32e14a099e8559cb611f343ec679712c3954623149e675f8a6` |
| 24 | `theorem` | [line_in_three_not_quotient_rank_one](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuotientConventionEdition1.lean/declarations/line-in-three-not-quotient-rank-one.md) | 176 | `result-track:0de72b3929bf7ccad320aecbc0f508c365346a8606363431b28f4f101040e71d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e5218676c162753cd63be100f24c3822125be0c60619865627fcf1a2648bfc52 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/QuotientConvention/Variant8fae0625c1d603bfa1779eda1bbafad07c6d4630154ce55bbb1e7737b625e0dc.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/QuotientConvention/Variant8fae0625c1d603bfa1779eda1bbafad07c6d4630154ce55bbb1e7737b625e0dc.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
