# Verification target: Finite Rank Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ec7d645ebb0fc21393a5e2a855223139229282c9",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Rank/Variant31c517655f7bb17985796f1b19d434963c5244b873f329435e95a11b95c9fbab.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteRankNamespaced.lean/index.md) · [Full source](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteRankNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ec7d645ebb0fc21393a5e2a855223139229282c9`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Rank/Variant31c517655f7bb17985796f1b19d434963c5244b873f329435e95a11b95c9fbab.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Rank/Variant31c517655f7bb17985796f1b19d434963c5244b873f329435e95a11b95c9fbab.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.Finrank` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.FreeModule.Rank` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.FreeModule.Finite.Basic` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [Submodule.finrank_map_subtype_eq](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteRankNamespaced.lean/declarations/submodule-finrank-map-subtype-eq.md) | 51 | `result-track:73f4cc740487dbc2970a101b51a0bfb08c03f08ffe208a5fd9360b7666fc9749` |
| 2 | `theorem` | [rank_lt_aleph0](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteRankNamespaced.lean/declarations/rank-lt-aleph0.md) | 67 | `result-track:06c5ad4fba6b2b43d7b17af49d1b728acc4a8f9ca3a9259686acf186ee396878` |
| 3 | `theorem` | [finrank_eq_rank](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteRankNamespaced.lean/declarations/finrank-eq-rank.md) | 78 | `result-track:003a92263004c6d463c9c4e147d90a777ddedecbbdea7a0231f0da195e814db2` |
| 4 | `theorem` | [finrank_eq_card_chooseBasisIndex](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteRankNamespaced.lean/declarations/finrank-eq-card-choosebasisindex.md) | 93 | `result-track:1f001038a145c05ec1a997c53942f9e8a59c3646c06227266da7913185bda880` |
| 5 | `theorem` | [finrank_finsupp](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteRankNamespaced.lean/declarations/finrank-finsupp.md) | 100 | `result-track:99eb548b8a7f3632993ccdae37e8f6bf0801a00d522bc9d5027961a8c82dbb3a` |
| 6 | `theorem` | [finrank_pi](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteRankNamespaced.lean/declarations/finrank-pi.md) | 105 | `result-track:e7d3c5e480612ba530de0d8211bf1a24a05df17cfef672a64bad3e6ddd4d2a6b` |
| 7 | `theorem` | [finrank_directSum](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteRankNamespaced.lean/declarations/finrank-directsum.md) | 111 | `result-track:30d83b8359d33c2df2186a0163027f5956f9af7cd44493057c3a1be7648267e6` |
| 8 | `theorem` | [finrank_prod](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteRankNamespaced.lean/declarations/finrank-prod.md) | 121 | `result-track:e224bea770b195f563c9732b8df2a5832610fad4a06f41794ff93704b6a97c0d` |
| 9 | `theorem` | [finrank_pi_fintype](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteRankNamespaced.lean/declarations/finrank-pi-fintype.md) | 127 | `result-track:57c5f2c49171407a12ea639e10d605936251738e06bd8acecfc97a96c24ddb09` |
| 10 | `theorem` | [finrank_matrix](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteRankNamespaced.lean/declarations/finrank-matrix.md) | 137 | `result-track:21cdc475e0f8a52ecb68cb6426b6d4420e05cb9ecb3c1d21640db0b21954d7eb` |
| 11 | `theorem` | [nonempty_linearEquiv_of_finrank_eq](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteRankNamespaced.lean/declarations/nonempty-linearequiv-of-finrank-eq.md) | 144 | `result-track:32f2208136d21b558f5f173a528b8d12e87b7ad3e5df85004035733d40ef8a29` |
| 12 | `theorem` | [nonempty_linearEquiv_iff_finrank_eq](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteRankNamespaced.lean/declarations/nonempty-linearequiv-iff-finrank-eq.md) | 150 | `result-track:bbe3c4b90d27ef6b4b20c442e8963375c25373ec202df1effdd7967fda71eb24` |
| 13 | `def` | [Finite Rank Namespaced](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteRankNamespaced.lean/declarations/offinrankeq.md) | 157 | `declaration-track:b58b961c5219e5902697642a5d25b03a484f6bd8f9ab09da1c133ba5369b8efe` |
| 14 | `theorem` | [finrank_tensorProduct](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteRankNamespaced.lean/declarations/finrank-tensorproduct.md) | 173 | `result-track:9c17148563fc7d23b11e8111bb8e6af60bd281b132b0c07daa739e5cccc25a1f` |
| 15 | `theorem` | [LinearMap.finrank_le_finrank_of_injective](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteRankNamespaced.lean/declarations/linearmap-finrank-le-finrank-of-injective.md) | 194 | `result-track:643f5f08c4dd3aadf6390960bf805c3a1e44a94b0c3e78a26050ebd8de0a6eee` |
| 16 | `theorem` | [LinearMap.finrank_range_le](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteRankNamespaced.lean/declarations/linearmap-finrank-range-le.md) | 199 | `result-track:fb8d59974f0ab6f24bb524642d1655cd204f0370bda4352617f9d6f389eb635c` |
| 17 | `theorem` | [Submodule.finrank_le](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteRankNamespaced.lean/declarations/submodule-finrank-le.md) | 205 | `result-track:32f6124b63810b4edca3a0521b6638f8d3dfa19a529714abd032cbc862db14b7` |
| 18 | `theorem` | [Submodule.finrank_quotient_le](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteRankNamespaced.lean/declarations/submodule-finrank-quotient-le.md) | 212 | `result-track:5a17be82726013c09175445cde5d45eb7e6f1ff4d02ac8537f95984ba17f4f79` |
| 19 | `theorem` | [Submodule.finrank_map_le](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteRankNamespaced.lean/declarations/submodule-finrank-map-le.md) | 220 | `result-track:6478c82421c600e100bd110625c11a2df6c0cc2052a134d3079fb47a41b78ba4` |
| 20 | `theorem` | [Submodule.finrank_le_finrank_of_le](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FiniteRankNamespaced.lean/declarations/submodule-finrank-le-finrank-of-le.md) | 225 | `result-track:f20f58a7cf87a80ea0be25ce81b877f27509e29fa7290e4eaa2818165b109aa2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=7e82480b0620e5fdf2f8db395ce98ad4b866905feaa0a7fe164ec611fd83359b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Rank/Variant31c517655f7bb17985796f1b19d434963c5244b873f329435e95a11b95c9fbab.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/Rank/Variant31c517655f7bb17985796f1b19d434963c5244b873f329435e95a11b95c9fbab.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
