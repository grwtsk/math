# Verification target: Fixed Points

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6806dcbb64df9e2bf9dc80feb7fc43690ff020b9",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/FixedPoints/Variantefde9d6e22af827bc0c4fd42a668c4c5c0698f9f68f49339835c1548f450a30f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/FixedPoints.lean/index.md) · [Full source](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/FixedPoints.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6806dcbb64df9e2bf9dc80feb7fc43690ff020b9`.

Source path: `GRWTSK/Algebra/GroupTheory/FixedPoints/Variantefde9d6e22af827bc0c4fd42a668c4c5c0698f9f68f49339835c1548f450a30f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/FixedPoints/Variantefde9d6e22af827bc0c4fd42a668c4c5c0698f9f68f49339835c1548f450a30f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Action.Pointwise.Set.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Commute.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Dynamics.PeriodicPts.Defs` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.GroupAction.Defs` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [fixedBy_inv](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/FixedPoints.lean/declarations/fixedby-inv.md) | 60 | `result-track:af87afa9ce7e9c18ca94148685d0e7e1a95fd11ccea481a246469d9f393696e0` |
| 2 | `theorem` | [smul_mem_fixedBy_iff_mem_fixedBy](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/FixedPoints.lean/declarations/smul-mem-fixedby-iff-mem-fixedby.md) | 65 | `result-track:2cb56ac26b584db81e56a177281086f82a4ce713e7fdb653be7f59af39095b30` |
| 3 | `theorem` | [smul_inv_mem_fixedBy_iff_mem_fixedBy](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/FixedPoints.lean/declarations/smul-inv-mem-fixedby-iff-mem-fixedby.md) | 71 | `result-track:c356b8802fa89871c3e57717831de05d1f8d7217ec01adb44e0aa3f8894d5730` |
| 4 | `theorem` | [minimalPeriod_eq_one_iff_fixedBy](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/FixedPoints.lean/declarations/minimalperiod-eq-one-iff-fixedby.md) | 76 | `result-track:eb0a45c2551d89ff195ec83f076f4900e6db2fa8e90ff499b949488759f1473a` |
| 5 | `theorem` | [fixedBy_subset_fixedBy_zpow](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/FixedPoints.lean/declarations/fixedby-subset-fixedby-zpow.md) | 82 | `result-track:f470be583303c133f2f37b146eed56bc6a98f79e97abae2c3700cb932d2ae908` |
| 6 | `theorem` | [fixedBy_one_eq_univ](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/FixedPoints.lean/declarations/fixedby-one-eq-univ.md) | 91 | `result-track:8d8905899111ceb3251b5666f6c2d352b25b322e667b2ea373ad41fb6f3a49ff` |
| 7 | `theorem` | [fixedBy_mul](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/FixedPoints.lean/declarations/fixedby-mul.md) | 96 | `result-track:3c2eacbb59350ab057030d0322ead80cebf26d8046f2d59ce876996589a10455` |
| 8 | `theorem` | [smul_fixedBy](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/FixedPoints.lean/declarations/smul-fixedby.md) | 102 | `result-track:593c2ec7355f7dfd9e5450cd45f2228f51777d721a0b858fdfd6253cfea1ef95` |
| 9 | `theorem` | [set_mem_fixedBy_iff](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/FixedPoints.lean/declarations/set-mem-fixedby-iff.md) | 124 | `result-track:6fb64feeaa35affed5beb644b2dea017fdc53c6185885742ea1e18b81a48572f` |
| 10 | `theorem` | [smul_mem_of_set_mem_fixedBy](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/FixedPoints.lean/declarations/smul-mem-of-set-mem-fixedby.md) | 129 | `result-track:df7eac207273c6fd272ddb574b142095d98fe4fdfdad0244941ee190443df0be` |
| 11 | `theorem` | [set_mem_fixedBy_of_subset_fixedBy](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/FixedPoints.lean/declarations/set-mem-fixedby-of-subset-fixedby.md) | 142 | `result-track:ef5d0db69b3a2ff9a25ee5ab587f4d8283ea820ddcb4c55688aff6f553f2d1bf` |
| 12 | `theorem` | [smul_subset_of_set_mem_fixedBy](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/FixedPoints.lean/declarations/smul-subset-of-set-mem-fixedby.md) | 151 | `result-track:bd543ef9816ffc8c1afa15c24f60d4c758a31186121e1a1c40229832d5ed67d7` |
| 13 | `theorem` | [set_mem_fixedBy_of_movedBy_subset](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/FixedPoints.lean/declarations/set-mem-fixedby-of-movedby-subset.md) | 162 | `result-track:35762a3e1aac2669edcc471a4e57e3ea79acaf373841a361f2f166bf14cc6333` |
| 14 | `theorem` | [fixedBy_mem_fixedBy_of_commute](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/FixedPoints.lean/declarations/fixedby-mem-fixedby-of-commute.md) | 196 | `result-track:95d251b365dc90f61206edfb1768ea0e251c94989eba320fbb51370b314388e4` |
| 15 | `theorem` | [smul_zpow_fixedBy_eq_of_commute](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/FixedPoints.lean/declarations/smul-zpow-fixedby-eq-of-commute.md) | 206 | `result-track:5b5f1e7e0667a876176e3cbc7e80240c6ec4afe370b131fe128763bf43fd6544` |
| 16 | `theorem` | [movedBy_mem_fixedBy_of_commute](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/FixedPoints.lean/declarations/movedby-mem-fixedby-of-commute.md) | 216 | `result-track:2c0acc906201dcce98aa4f994df2f7bb4cd10dabd0d68c4ab637ecc2ef4db11e` |
| 17 | `theorem` | [smul_zpow_movedBy_eq_of_commute](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/FixedPoints.lean/declarations/smul-zpow-movedby-eq-of-commute.md) | 224 | `result-track:c5a6654b5466c2b7138a28388a5c0de9bae1606452a7315b514f6f75c330c6f2` |
| 18 | `theorem` | [fixedBy_eq_univ_iff_eq_one](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/FixedPoints.lean/declarations/fixedby-eq-univ-iff-eq-one.md) | 239 | `result-track:73e975bafa96b3b1c6568ba5f2785bdcf859d8b4e6eb0a14cb3fe0473f29d144` |
| 19 | `theorem` | [not_commute_of_disjoint_movedBy_preimage](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/FixedPoints.lean/declarations/not-commute-of-disjoint-movedby-preimage.md) | 249 | `result-track:8e0862c241447598960096f3a51e59df7e74da3526a5c4b7cd8131d5fa7f3351` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=4322035475e85316248f3e6182270b58cbffc171437fb3f52f984dd729b16e12 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/FixedPoints/Variantefde9d6e22af827bc0c4fd42a668c4c5c0698f9f68f49339835c1548f450a30f.lean","GRWTSK/_verification/specifications/Algebra/GroupTheory/FixedPoints/Variantefde9d6e22af827bc0c4fd42a668c4c5c0698f9f68f49339835c1548f450a30f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
