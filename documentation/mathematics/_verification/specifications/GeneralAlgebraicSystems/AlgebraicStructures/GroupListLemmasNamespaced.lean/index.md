# Verification target: Group List Lemmas Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5b8f9d318990eacedc89efb8b7e2ba85c4cebff5",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant3f75b062dbbaa8f328fc24fcc70e929879d71af0966370e5847580fa27009f54.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupListLemmasNamespaced.lean/index.md) · [Full source](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupListLemmasNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5b8f9d318990eacedc89efb8b7e2ba85c4cebff5`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant3f75b062dbbaa8f328fc24fcc70e929879d71af0966370e5847580fa27009f54.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant3f75b062dbbaa8f328fc24fcc70e929879d71af0966370e5847580fa27009f54.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.BigOperators.Group.List.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Divisibility.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Int.Units` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Data.List.Dedup` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Data.List.Flatten` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.Data.List.Pairwise` — import line 16; external provider; requires a separately pinned dependency.
- `Mathlib.Data.List.Perm.Basic` — import line 17; external provider; requires a separately pinned dependency.
- `Mathlib.Data.List.Range` — import line 18; external provider; requires a separately pinned dependency.
- `Mathlib.Data.List.Rotate` — import line 19; external provider; requires a separately pinned dependency.
- `Mathlib.Data.List.ProdSigma` — import line 20; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Opposite` — import line 21; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [prod_isUnit](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupListLemmasNamespaced.lean/declarations/prod-isunit.md) | 44 | `result-track:06eb4f8f39f13ddc14ec0bc56c2573a92ace3a8720f41450ea0a0683a3e66bb2` |
| 2 | `theorem` | [prod_isUnit_iff](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupListLemmasNamespaced.lean/declarations/prod-isunit-iff.md) | 51 | `result-track:89ff2f2856c557faee8d1602734134e2439a045885c25e5bfe72a97e022df8f3` |
| 3 | `lemma` | [Perm.prod_eq'](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupListLemmasNamespaced.lean/declarations/perm-prod-eq.md) | 64 | `result-track:2d74c18c4a345232ed87271c55056e8c6db2aa8e6d91042b3f0e4582703bc88b` |
| 4 | `lemma` | [prod_rotate_eq_one_of_prod_eq_one](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupListLemmasNamespaced.lean/declarations/prod-rotate-eq-one-of-prod-eq-one.md) | 80 | `result-track:6e5cd33452a3fb0b8bf6a854c9baf02d6904bec8a949e915e71517ebdd915727` |
| 5 | `theorem` | [sum_map_count_dedup_filter_eq_countP](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupListLemmasNamespaced.lean/declarations/sum-map-count-dedup-filter-eq-countp.md) | 94 | `result-track:e33f148137373f0d820dc20c044bcf8676a286c27c8557035db4985dc9eaba55` |
| 6 | `theorem` | [sum_map_count_dedup_eq_length](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupListLemmasNamespaced.lean/declarations/sum-map-count-dedup-eq-length.md) | 119 | `result-track:17fe0e1ff22c0f63aa7fc7265ef7c19e7d22492a53b159a67ed8efa6f13828ae` |
| 7 | `lemma` | [length_sigma](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupListLemmasNamespaced.lean/declarations/length-sigma.md) | 127 | `result-track:bf5645d1f40e2ac69383342c335e69e7601245c5b8640b8ba6bc881435739053` |
| 8 | `lemma` | [ranges_flatten](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupListLemmasNamespaced.lean/declarations/ranges-flatten.md) | 133 | `result-track:e889ae06102dfb2ab38bf7e691009b16092d1370e873e9c7670b08529ab8d5ba` |
| 9 | `theorem` | [ranges_nodup](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupListLemmasNamespaced.lean/declarations/ranges-nodup.md) | 138 | `result-track:3919f58b4fb5efdc2caa2f1a2c3276b55159192970ddedea0cfb94cd1cdf3aaa` |
| 10 | `lemma` | [mem_mem_ranges_iff_lt_sum](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupListLemmasNamespaced.lean/declarations/mem-mem-ranges-iff-lt-sum.md) | 142 | `result-track:890959fd81f298b5ea3dd2600d882ee73d26a1784030d38ea388ffce72bd9249` |
| 11 | `lemma` | [drop_take_succ_flatten_eq_getElem](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupListLemmasNamespaced.lean/declarations/drop-take-succ-flatten-eq-getelem.md) | 152 | `result-track:3272666eb1a4b929096e1dd9242ee7f6b2ab7c12438685f28c42a6b336fa8c15` |
| 12 | `theorem` | [neg_one_mem_of_prod_eq_neg_one](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupListLemmasNamespaced.lean/declarations/neg-one-mem-of-prod-eq-neg-one.md) | 165 | `result-track:6a01a775e7385cfeba2b1cb886c8fc985031f232920b999b282c18a3c8a4935e` |
| 13 | `theorem` | [dvd_prod](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupListLemmasNamespaced.lean/declarations/dvd-prod.md) | 171 | `result-track:2b5754ab2c7e3ad606a0e7074cebb4542ab0c8f2b5d950af617d1b86122a5023` |
| 14 | `theorem` | [Sublist.prod_dvd_prod](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupListLemmasNamespaced.lean/declarations/sublist-prod-dvd-prod.md) | 176 | `result-track:5b11be006c6f9d3fac2462f7d4441cbf2828206d5ed0a19c1635aab8994b12da` |
| 15 | `theorem` | [alternatingProd_append](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupListLemmasNamespaced.lean/declarations/alternatingprod-append.md) | 187 | `result-track:08a9b24e525ac509fe2ab73674c7d8869e42bfb5bebcd8dd008fd0332bdefbe6` |
| 16 | `theorem` | [alternatingProd_reverse](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupListLemmasNamespaced.lean/declarations/alternatingprod-reverse.md) | 196 | `result-track:5221fd0e5dcde29f17e586429cb32a40f4f2a1fc258c644326b0f654144b1ea1` |
| 17 | `lemma` | [op_list_prod](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupListLemmasNamespaced.lean/declarations/op-list-prod.md) | 214 | `result-track:2870570d78c1140021b9fb4388ef21342342526d3fa3242e6715ae9d2c0d3a43` |
| 18 | `lemma` | [unop_list_prod](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupListLemmasNamespaced.lean/declarations/unop-list-prod.md) | 220 | `result-track:a9bdf7f02e501c739ab2afc33b36efcb7ebedce51e164c065eeacd83bcb4fa44` |
| 19 | `lemma` | [unop_map_list_prod](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupListLemmasNamespaced.lean/declarations/unop-map-list-prod.md) | 230 | `result-track:7d30f97672b873a56f227160c9b32477e0c51fdafc0606cab504f31b43c9e2f6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=dc8c0dcb29fd14892bbabfab9c7adbecae8095e71857871f36437f8c9f40b4f6 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant3f75b062dbbaa8f328fc24fcc70e929879d71af0966370e5847580fa27009f54.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variant3f75b062dbbaa8f328fc24fcc70e929879d71af0966370e5847580fa27009f54.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
