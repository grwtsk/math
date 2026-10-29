# Verification target: Mul Equiv Haar Char Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d1f836ed59e9882a4f3e41441e71b777ec97c93f",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/MulEquivHaarChar/Variantaeca1cf5da0905c083a396d07ca239005a884553c55281dd1db39370ff379056.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MulEquivHaarCharNamespacedPublic.lean/index.md) · [Full source](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MulEquivHaarCharNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d1f836ed59e9882a4f3e41441e71b777ec97c93f`.

Source path: `GRWTSK/Analysis/MeasureTheory/MulEquivHaarChar/Variantaeca1cf5da0905c083a396d07ca239005a884553c55281dd1db39370ff379056.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/MulEquivHaarChar/Variantaeca1cf5da0905c083a396d07ca239005a884553c55281dd1db39370ff379056.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [mulEquivHaarChar](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MulEquivHaarCharNamespacedPublic.lean/declarations/mulequivhaarchar.md) | 48 | `declaration-track:d083ee313655867a02241598433770f58cbdcb6ef12998d3c2337481637febb7` |
| 2 | `lemma` | [mulEquivHaarChar_pos](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MulEquivHaarCharNamespacedPublic.lean/declarations/mulequivhaarchar-pos.md) | 52 | `result-track:92a4ebf5dbe6d95e28b3b72fa64b1291bf8fcacaae6942d1fa86cb4e95797101` |
| 3 | `lemma` | [mulEquivHaarChar_eq](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MulEquivHaarCharNamespacedPublic.lean/declarations/mulequivhaarchar-eq.md) | 56 | `result-track:f8ae1b7113f5746183f79d32d1a11fe63214d50acc266deb1e76701a6dabe3bd` |
| 4 | `lemma` | [mulEquivHaarChar_smul_map](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MulEquivHaarCharNamespacedPublic.lean/declarations/mulequivhaarchar-smul-map.md) | 71 | `result-track:68dde439f4f174abb6f3fae96d3d03980eb874a02f9ccf2c8ec24e01591eee9f` |
| 5 | `lemma` | [mulEquivHaarChar_smul_eq_comap](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MulEquivHaarCharNamespacedPublic.lean/declarations/mulequivhaarchar-smul-eq-comap.md) | 79 | `result-track:902f3b7ef3aa1ed3a0078548feae529219ef87db67c38552eb7ca1fb5bf27e5e` |
| 6 | `lemma` | [mulEquivHaarChar_smul_integral_map](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MulEquivHaarCharNamespacedPublic.lean/declarations/mulequivhaarchar-smul-integral-map.md) | 91 | `result-track:20047896b9824df018f64617998392778dd0e42750bf88ad9485067186fa9a78` |
| 7 | `lemma` | [integral_comap_eq_mulEquivHaarChar_smul](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MulEquivHaarCharNamespacedPublic.lean/declarations/integral-comap-eq-mulequivhaarchar-smul.md) | 98 | `result-track:bb861cf51e42faf867d5998502187f8ffb76de8e428b6e24a3943221a5220bcf` |
| 8 | `lemma` | [mulEquivHaarChar_smul_preimage](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MulEquivHaarCharNamespacedPublic.lean/declarations/mulequivhaarchar-smul-preimage.md) | 112 | `result-track:4e4a91b744a71de1cc4cc7b039ba3e6a192d45c69d2c4ec65c36b3eb5e1bf0db` |
| 9 | `lemma` | [mulEquivHaarChar_refl](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MulEquivHaarCharNamespacedPublic.lean/declarations/mulequivhaarchar-refl.md) | 120 | `result-track:41189f633aa80fba4a310ef289bcdacaf4537642f21da5074a360b73db82a014` |
| 10 | `lemma` | [mulEquivHaarChar_trans](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MulEquivHaarCharNamespacedPublic.lean/declarations/mulequivhaarchar-trans.md) | 125 | `result-track:66e7b2ad437192c0388bb36a77a9a70d5d8053177ae7c32907d7cafe61ca5940` |
| 11 | `lemma` | [mulEquivHaarChar_symm](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MulEquivHaarCharNamespacedPublic.lean/declarations/mulequivhaarchar-symm.md) | 136 | `result-track:90f8a2bb868a1d9a1ec23ccea677e2f549ed34733dd31bf54f508222ebfad586` |
| 12 | `lemma` | [mulEquivHaarChar_eq_one_of_compactSpace](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MulEquivHaarCharNamespacedPublic.lean/declarations/mulequivhaarchar-eq-one-of-compactspace.md) | 144 | `result-track:9dda8435461105bc5fd8ab266727e8e6f62dd6ba6bd24cd23ce8dd3a0b7d9550` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=4ec07c144c0197cf59da467183c670c8baef374ce0d58b82ed31cd30ca569a96 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/MeasureTheory/MulEquivHaarChar/Variantaeca1cf5da0905c083a396d07ca239005a884553c55281dd1db39370ff379056.lean","GRWTSK/_verification/specifications/Analysis/MeasureTheory/MulEquivHaarChar/Variantaeca1cf5da0905c083a396d07ca239005a884553c55281dd1db39370ff379056.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
