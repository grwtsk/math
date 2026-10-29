# Verification target: Finite Hamming Support Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b9a09f2e95c99da5dbb0203df7028259e5294845",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/FiniteHammingSupport/Variantfdd459e86f1cdb5b9e635e46269dfcc20285d5d1a7f1c7f460c75dfbd2f31057.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../Combinatorics/FiniteHammingSupportNamespaced.lean/index.md) · [Full source](../../../../Combinatorics/FiniteHammingSupportNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b9a09f2e95c99da5dbb0203df7028259e5294845`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/FiniteHammingSupport/Variantfdd459e86f1cdb5b9e635e46269dfcc20285d5d1a7f1c7f460c75dfbd2f31057.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/FiniteHammingSupport/Variantfdd459e86f1cdb5b9e635e46269dfcc20285d5d1a7f1c7f460c75dfbd2f31057.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Batteries.Data.BitVec.Lemmas` — import line 6; external provider; requires a separately pinned dependency.
- `Mathematics.Projection.ExactOverlap` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.BigOperators.Fin` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.BigOperators.Ring.Finset` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finset.Card` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [finiteSupport](../../../../Combinatorics/FiniteHammingSupportNamespaced.lean/declarations/finitesupport.md) | 25 | `declaration-track:74054bb3700f5f79a3d305e41ecb8eba02363186c84b5d50bf2194cf0676da72` |
| 2 | `def` | [incidenceOfSupport](../../../../Combinatorics/FiniteHammingSupportNamespaced.lean/declarations/incidenceofsupport.md) | 32 | `declaration-track:3457d92593b29df6b266c336c52cc68eff0c39bae8a925eed1289001065068e0` |
| 3 | `theorem` | [finiteSupport_incidenceOfSupport](../../../../Combinatorics/FiniteHammingSupportNamespaced.lean/declarations/finitesupport-incidenceofsupport.md) | 39 | `result-track:944e8ed182dd3ef4474ebfee9e15fe158966838301bbb359ca8aa07fe7fd855d` |
| 4 | `theorem` | [incidenceOfSupport_finiteSupport](../../../../Combinatorics/FiniteHammingSupportNamespaced.lean/declarations/incidenceofsupport-finitesupport.md) | 47 | `result-track:ae0d6ad6111eedf63d5ca45d3040228402dd8b837bbd76dde1d6cf98ece01d81` |
| 5 | `theorem` | [cpopNatRec_eq_sum_range](../../../../Combinatorics/FiniteHammingSupportNamespaced.lean/declarations/cpopnatrec-eq-sum-range.md) | 62 | `result-track:6f727ec1db8c559a972d072cf3b6766850bfb4b3a58db6c490e5120c82f5d00e` |
| 6 | `theorem` | [cpop_eq_finiteSupport_card](../../../../Combinatorics/FiniteHammingSupportNamespaced.lean/declarations/cpop-eq-finitesupport-card.md) | 78 | `result-track:f9c64d805fdbe031164cd869ab7780c1bab40f22587d5e3bdfe92a80b19505af` |
| 7 | `theorem` | [finiteHamming_eq_card_sdiff_union_sdiff](../../../../Combinatorics/FiniteHammingSupportNamespaced.lean/declarations/finitehamming-eq-card-sdiff-union-sdiff.md) | 95 | `result-track:20e564a7af69e62bfaa93a89ca4943420860714ba848274244d2c73db054c8ad` |
| 8 | `theorem` | [finiteHamming_comm](../../../../Combinatorics/FiniteHammingSupportNamespaced.lean/declarations/finitehamming-comm.md) | 116 | `result-track:37ae57323d6eaef7f8c58a850fce005a7c4904502c2db28566e921a7ccbd43bd` |
| 9 | `theorem` | [finiteHamming_incidenceOfSupport_of_subset](../../../../Combinatorics/FiniteHammingSupportNamespaced.lean/declarations/finitehamming-incidenceofsupport-of-subset.md) | 125 | `result-track:558ce4f21a8a4cf79a1c87419bd1f75f194921511e9955bba495406bf89ecd2c` |
| 10 | `theorem` | [finiteHamming_incidenceOfSupport_of_disjoint](../../../../Combinatorics/FiniteHammingSupportNamespaced.lean/declarations/finitehamming-incidenceofsupport-of-disjoint.md) | 139 | `result-track:0414afa2265a94dd3c240c32e4699e53215db7efb2c0f404c9d14e319eef9532` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=58ef7d2e40b831190da72ad09bb11be138806bf106fea2d3a85f1826e70dd673 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/FiniteHammingSupport/Variantfdd459e86f1cdb5b9e635e46269dfcc20285d5d1a7f1c7f460c75dfbd2f31057.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/FiniteHammingSupport/Variantfdd459e86f1cdb5b9e635e46269dfcc20285d5d1a7f1c7f460c75dfbd2f31057.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
