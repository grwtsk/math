# Verification target: Set Family LYMLYMNamespaced Source Edition1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0d4bdaf3c71ff1099b428491e8a4953c340dedb8",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/ExtremalCombinatorics/LYM/Variant29fc9950af677855addab1ee80416be709975663d75ce7c8f94449441e210aed.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../Combinatorics/SetFamilyLYMLYMNamespacedSourceEdition1.lean/index.md) · [Full source](../../../../Combinatorics/SetFamilyLYMLYMNamespacedSourceEdition1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0d4bdaf3c71ff1099b428491e8a4953c340dedb8`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/ExtremalCombinatorics/LYM/Variant29fc9950af677855addab1ee80416be709975663d75ce7c8f94449441e210aed.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/ExtremalCombinatorics/LYM/Variant29fc9950af677855addab1ee80416be709975663d75ce7c8f94449441e210aed.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Field.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Field.Rat` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Combinatorics.Enumerative.DoubleCounting` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Combinatorics.SetFamily.Shadow` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Data.NNRat.Order` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Cast.Order.Ring` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [local_lubell_yamamoto_meshalkin_inequality_mul](../../../../Combinatorics/SetFamilyLYMLYMNamespacedSourceEdition1.lean/declarations/local-lubell-yamamoto-meshalkin-inequality-mul.md) | 70 | `result-track:9ab47180d34ff4a7e1850a3cf3aa2fc6eb9cea81da8cbbbe188cc7d3efd1b1b1` |
| 2 | `theorem` | [local_lubell_yamamoto_meshalkin_inequality_div](../../../../Combinatorics/SetFamilyLYMLYMNamespacedSourceEdition1.lean/declarations/local-lubell-yamamoto-meshalkin-inequality-div.md) | 97 | `result-track:e500ca70b1d64f2896586ce74de29f59a8133ec7732a3d93fe45ad13be6b17c9` |
| 3 | `def` | [falling](../../../../Combinatorics/SetFamilyLYMLYMNamespacedSourceEdition1.lean/declarations/falling.md) | 130 | `declaration-track:3d42518ad53504edc5cff6cd0d0b9ecfccf85d17675c7495bab7218978cb51a0` |
| 4 | `theorem` | [mem_falling](../../../../Combinatorics/SetFamilyLYMLYMNamespacedSourceEdition1.lean/declarations/mem-falling.md) | 135 | `result-track:10231bb923e11912ba85054b20f5a67a062b6e71db10ede3e20bbcd2b7bcedbe` |
| 5 | `theorem` | [sized_falling](../../../../Combinatorics/SetFamilyLYMLYMNamespacedSourceEdition1.lean/declarations/sized-falling.md) | 141 | `result-track:f73d16b2b1ff0c2b3444cc9557e88d74edeeba66a9293fb4d41680b72775a6eb` |
| 6 | `theorem` | [slice_subset_falling](../../../../Combinatorics/SetFamilyLYMLYMNamespacedSourceEdition1.lean/declarations/slice-subset-falling.md) | 143 | `result-track:ce984f802b6afd821ea58c6ce398bfd06a1bba25eb5cc42916d5ca3a3bf313cf` |
| 7 | `theorem` | [falling_zero_subset](../../../../Combinatorics/SetFamilyLYMLYMNamespacedSourceEdition1.lean/declarations/falling-zero-subset.md) | 146 | `result-track:f02f29740caadce96ca453e29e5c29d4dc67d67233303e49bce9ae06bc303543` |
| 8 | `theorem` | [slice_union_shadow_falling_succ](../../../../Combinatorics/SetFamilyLYMLYMNamespacedSourceEdition1.lean/declarations/slice-union-shadow-falling-succ.md) | 149 | `result-track:17df0158040b323e77d2a2488cae04a220b086cc46012ee3cd9840685522bb2b` |
| 9 | `theorem` | [IsAntichain.disjoint_slice_shadow_falling](../../../../Combinatorics/SetFamilyLYMLYMNamespacedSourceEdition1.lean/declarations/isantichain-disjoint-slice-shadow-falling.md) | 169 | `result-track:902dc346355afc8af56651c1e0c791e90e9f9ce8899e78ef78028e463afc8f4a` |
| 10 | `theorem` | [le_card_falling_div_choose](../../../../Combinatorics/SetFamilyLYMLYMNamespacedSourceEdition1.lean/declarations/le-card-falling-div-choose.md) | 179 | `result-track:c2f0e0e5647369776d5d57890db2971101073165e98e4ca2e70fc225fd4c2d09` |
| 11 | `theorem` | [lubell_yamamoto_meshalkin_inequality_sum_card_div_choose](../../../../Combinatorics/SetFamilyLYMLYMNamespacedSourceEdition1.lean/declarations/lubell-yamamoto-meshalkin-inequality-sum-card-div-choose.md) | 207 | `result-track:52dfa3f78347634d03779959513f91b76d513ee52fcd9d63dc2f52c18339bbc8` |
| 12 | `theorem` | [lubell_yamamoto_meshalkin_inequality_sum_inv_choose](../../../../Combinatorics/SetFamilyLYMLYMNamespacedSourceEdition1.lean/declarations/lubell-yamamoto-meshalkin-inequality-sum-inv-choose.md) | 225 | `result-track:8cd134d459114663cbf4a6f38b9c253cc3ac8e5770e1db127e55f2ac5817b176` |
| 13 | `theorem` | [Set Family LYMLYMNamespaced Source Edition1](../../../../Combinatorics/SetFamilyLYMLYMNamespacedSourceEdition1.lean/declarations/root-grwtsk-combinatoricsanddiscretemathematics-extremalcombinatorics-lo.md) | 239 | `result-track:8c3aa31650984812bd85317d634133401e6bf7e5401bdd1c4460ab3f9d7cc173` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=602b1e41d8c2326a9e275c05a16d31f530f122f759c8df2903d7fa74bcde22be -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/ExtremalCombinatorics/LYM/Variant29fc9950af677855addab1ee80416be709975663d75ce7c8f94449441e210aed.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/ExtremalCombinatorics/LYM/Variant29fc9950af677855addab1ee80416be709975663d75ce7c8f94449441e210aed.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
