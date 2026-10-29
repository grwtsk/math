# Verification target: Fixed Cardinal Mk Alg Hom Aligned

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e3a524d4418f32a103b5dbd6a4f7626e3bba2d12",
  "lexical_observation_count": 35,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Fixed/Variant496ccbc63e0c5821f1047ea0f1883ec2392fbe845a69a7e8f6633995f5042507.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../FieldTheoryAndPolynomials/FixedCardinalMkAlgHomAligned.lean/index.md) · [Full source](../../../../FieldTheoryAndPolynomials/FixedCardinalMkAlgHomAligned.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e3a524d4418f32a103b5dbd6a4f7626e3bba2d12`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Fixed/Variant496ccbc63e0c5821f1047ea0f1883ec2392fbe845a69a7e8f6633995f5042507.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Fixed/Variant496ccbc63e0c5821f1047ea0f1883ec2392fbe845a69a7e8f6633995f5042507.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.GroupRingAction.Invariant` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Polynomial.GroupRingAction` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.FieldTheory.Normal` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.FieldTheory.Separable` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.FieldTheory.Tower` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [FixedBy.subfield](../../../../FieldTheoryAndPolynomials/FixedCardinalMkAlgHomAligned.lean/declarations/fixedby-subfield.md) | 47 | `declaration-track:ef6b7ac19021b60845711909214d505dc12fcff5c36992f92c6306ead2c3b070` |
| 2 | `class` | [IsInvariantSubfield](../../../../FieldTheoryAndPolynomials/FixedCardinalMkAlgHomAligned.lean/declarations/isinvariantsubfield.md) | 62 | `declaration-track:a6b7ecb0169efb425d49a50979503115df0ecbf08c648114abfc325522aec330` |
| 3 | `instance` | [IsInvariantSubfield.toMulSemiringAction](../../../../FieldTheoryAndPolynomials/FixedCardinalMkAlgHomAligned.lean/declarations/tomulsemiringaction.md) | 68 | `declaration-track:eb3ee1e04dbe311fa67758a703e1f61ba62a2a8cdd5cb92359eb9041eceba7c8` |
| 4 | `instance` | [(anonymous)](../../../../FieldTheoryAndPolynomials/FixedCardinalMkAlgHomAligned.lean/declarations/instance-source-edition-2.md) | 79 | `declaration-track:65bccc72d2c33be383063a1364eaf630633cf6933e401e10a8ea73b7cb11796d` |
| 5 | `def` | [subfield](../../../../FieldTheoryAndPolynomials/FixedCardinalMkAlgHomAligned.lean/declarations/subfield.md) | 90 | `declaration-track:af59058c4005a28034be2f30aa1f2795b9b2f2fb82629acaea4a551740f67572` |
| 6 | `instance` | [(anonymous)](../../../../FieldTheoryAndPolynomials/FixedCardinalMkAlgHomAligned.lean/declarations/instance.md) | 95 | `declaration-track:2c12fc7ed33591f4916960aafaaa4b613b763fd46e186053336d13fff67aa18f` |
| 7 | `instance` | [(anonymous)](../../../../FieldTheoryAndPolynomials/FixedCardinalMkAlgHomAligned.lean/declarations/instance-source-edition-4.md) | 98 | `declaration-track:838a14da20ffb6838ab8e95481eeee11b1cf1c78e15f71cb8bd3638c8f499ad5` |
| 8 | `instance` | [smulCommClass'](../../../../FieldTheoryAndPolynomials/FixedCardinalMkAlgHomAligned.lean/declarations/smulcommclass.md) | 101 | `declaration-track:fe1dba1485a28ac9da4acb58b06a1bf45b7bda951704d401c972a80a88d0ffa9` |
| 9 | `theorem` | [smul](../../../../FieldTheoryAndPolynomials/FixedCardinalMkAlgHomAligned.lean/declarations/smul.md) | 106 | `result-track:6a175fa8a1b5791124f6a392042bc562cc4c77ccdf628d18384903bd7ca84afc` |
| 10 | `theorem` | [smul_polynomial](../../../../FieldTheoryAndPolynomials/FixedCardinalMkAlgHomAligned.lean/declarations/smul-polynomial.md) | 112 | `result-track:82db70080f8891e001101bed3c465c5130c2167ac64b855830ec1d7d12d6ac67` |
| 11 | `instance` | [(anonymous)](../../../../FieldTheoryAndPolynomials/FixedCardinalMkAlgHomAligned.lean/declarations/instance-source-edition-3.md) | 118 | `declaration-track:67233732fbad91bbe1aaa9b50b69f36666a7b9a7a5274817dfb9eff5398f4ea0` |
| 12 | `theorem` | [coe_algebraMap](../../../../FieldTheoryAndPolynomials/FixedCardinalMkAlgHomAligned.lean/declarations/coe-algebramap.md) | 120 | `result-track:da96590a7b4af282a203601dd8e3fd8d0f78345770bf2a3db10c4da2f55909b4` |
| 13 | `theorem` | [linearIndependent_smul_of_linearIndependent](../../../../FieldTheoryAndPolynomials/FixedCardinalMkAlgHomAligned.lean/declarations/linearindependent-smul-of-linearindependent.md) | 125 | `result-track:8dc193316cb4fb27e57d2f27aa5998a98be1b6bb228a8c26f7ea16db05db66a1` |
| 14 | `def` | [minpoly](../../../../FieldTheoryAndPolynomials/FixedCardinalMkAlgHomAligned.lean/declarations/minpoly.md) | 175 | `declaration-track:a07c0a7d589da9e850d3fc0223f5dd3a3c31a05245ebb8866e440c8d376f24a1` |
| 15 | `theorem` | [monic](../../../../FieldTheoryAndPolynomials/FixedCardinalMkAlgHomAligned.lean/declarations/monic.md) | 183 | `result-track:8c9ec099c119c83a8d95c43067a852a38f714f0feed56874fbf1e383763fbd9d` |
| 16 | `theorem` | [eval₂](../../../../FieldTheoryAndPolynomials/FixedCardinalMkAlgHomAligned.lean/declarations/eval.md) | 188 | `result-track:3d10ff734a470b0a10363d7ce3a773b0ba2278b666d9f39c0b91bb12775d6d92` |
| 17 | `theorem` | [eval₂'](../../../../FieldTheoryAndPolynomials/FixedCardinalMkAlgHomAligned.lean/declarations/eval-source-edition-2.md) | 195 | `result-track:e68cd3da54b562138dc3a2176b2434d939d681d8bd988912feec7bb3eaa081a1` |
| 18 | `theorem` | [ne_one](../../../../FieldTheoryAndPolynomials/FixedCardinalMkAlgHomAligned.lean/declarations/ne-one.md) | 200 | `result-track:49d948ba525cc011567109f860a4f4f49b9bbbf7e95ad08b578c766f78b24b0b` |
| 19 | `theorem` | [of_eval₂](../../../../FieldTheoryAndPolynomials/FixedCardinalMkAlgHomAligned.lean/declarations/of-eval.md) | 205 | `result-track:4034fd4adf3a333c0a10551d3b531218d7993876cd8d97113f691943e8da2510` |
| 20 | `theorem` | [irreducible_aux](../../../../FieldTheoryAndPolynomials/FixedCardinalMkAlgHomAligned.lean/declarations/irreducible-aux.md) | 228 | `result-track:f953c8c7d642b39640d302209672897c178aa1c5a5a4a76ae04951cde6d85641` |
| 21 | `theorem` | [irreducible](../../../../FieldTheoryAndPolynomials/FixedCardinalMkAlgHomAligned.lean/declarations/irreducible.md) | 247 | `result-track:3ad3657204a6396e9f220b6013019647e775fa40c723d87c0498223ba4da56fc` |
| 22 | `theorem` | [isIntegral](../../../../FieldTheoryAndPolynomials/FixedCardinalMkAlgHomAligned.lean/declarations/isintegral.md) | 255 | `result-track:2df07f32857f242ef7d5c5327766b939c6fe7edcdeb22dd2da92a62b0cf60fee` |
| 23 | `theorem` | [minpoly_eq_minpoly](../../../../FieldTheoryAndPolynomials/FixedCardinalMkAlgHomAligned.lean/declarations/minpoly-eq-minpoly.md) | 263 | `result-track:741dcdcad9b04aa52d665205c2874de4a6dcc9998c3f235f47e4d59a798fe4c1` |
| 24 | `theorem` | [rank_le_card](../../../../FieldTheoryAndPolynomials/FixedCardinalMkAlgHomAligned.lean/declarations/rank-le-card.md) | 268 | `result-track:8ce17e771482057775e0d8730e1ee341c664bc3e868796fe92e38bee69356cdd` |
| 25 | `instance` | [normal](../../../../FieldTheoryAndPolynomials/FixedCardinalMkAlgHomAligned.lean/declarations/normal.md) | 282 | `declaration-track:03eeb20989b739b910937bb286925a5c4333c4599c5cd9a131feb1348bdc5835` |
| 26 | `instance` | [separable](../../../../FieldTheoryAndPolynomials/FixedCardinalMkAlgHomAligned.lean/declarations/separable.md) | 291 | `declaration-track:60101886fae6c0fa59699d2f0f5cfbff4a44989008f0c966200e32c2fe78833b` |
| 27 | `instance` | [(anonymous)](../../../../FieldTheoryAndPolynomials/FixedCardinalMkAlgHomAligned.lean/declarations/instance-source-edition-5.md) | 300 | `declaration-track:e8287e3997c5f4ac119b23aa93fa7c8aa93ad76b1650e6c8cd03ac89f2d4e9e3` |
| 28 | `theorem` | [finrank_le_card](../../../../FieldTheoryAndPolynomials/FixedCardinalMkAlgHomAligned.lean/declarations/finrank-le-card.md) | 307 | `result-track:64e51639b925ca7eaf1d6f9a0fa032d9dacf763c18d3a5d7eef04ebdaf0fc418` |
| 29 | `theorem` | [linearIndependent_toLinearMap](../../../../FieldTheoryAndPolynomials/FixedCardinalMkAlgHomAligned.lean/declarations/linearindependent-tolinearmap.md) | 314 | `result-track:a3cf91693941ffa62e65d266c54b062723103a4cc8b63fe45b439e30011e2f6e` |
| 30 | `theorem` | [cardinal_mk_algHom](../../../../FieldTheoryAndPolynomials/FixedCardinalMkAlgHomAligned.lean/declarations/cardinal-mk-alghom.md) | 324 | `result-track:192428a06c1ef688ef5bbacc528d5961d93b969e9596ae90ac30600e86836d98` |
| 31 | `instance` | [AlgEquiv.fintype](../../../../FieldTheoryAndPolynomials/FixedCardinalMkAlgHomAligned.lean/declarations/algequiv-fintype.md) | 330 | `declaration-track:85c8bd36de5532eaf2676bcd9b8f57ca971a5ddbe82d8bf99082208bbfb77fdf` |
| 32 | `theorem` | [finrank_algHom](../../../../FieldTheoryAndPolynomials/FixedCardinalMkAlgHomAligned.lean/declarations/finrank-alghom.md) | 335 | `result-track:5681806b94b70d88265a1229595cf597dce203d173fe951108a80360c7026d15` |
| 33 | `theorem` | [finrank_eq_card](../../../../FieldTheoryAndPolynomials/FixedCardinalMkAlgHomAligned.lean/declarations/finrank-eq-card.md) | 342 | `result-track:69e197515888c5170ac4472307ef03570fbb0835d68102cf3e9afd2e77d98223` |
| 34 | `theorem` | [toAlgHom_bijective](../../../../FieldTheoryAndPolynomials/FixedCardinalMkAlgHomAligned.lean/declarations/toalghom-bijective.md) | 354 | `result-track:00a08c67ebe7964c0e655770df7020210ce6fdeba75bc0ce03cbe34f96baf2e2` |
| 35 | `def` | [toAlgHomEquiv](../../../../FieldTheoryAndPolynomials/FixedCardinalMkAlgHomAligned.lean/declarations/toalghomequiv.md) | 368 | `declaration-track:525595fda03ac4e00bcdc0f8201b0fb7e29cf4649f7d4755912414f7deea1e3f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=cd06de410c0657a29063aec11d4bd345bb820b9cac70fea971e9924238720d18 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Fixed/Variant496ccbc63e0c5821f1047ea0f1883ec2392fbe845a69a7e8f6633995f5042507.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/Fixed/Variant496ccbc63e0c5821f1047ea0f1883ec2392fbe845a69a7e8f6633995f5042507.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
