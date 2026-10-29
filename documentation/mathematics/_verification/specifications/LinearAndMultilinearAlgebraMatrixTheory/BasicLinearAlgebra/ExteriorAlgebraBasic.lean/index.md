# Verification target: Exterior Algebra Basic

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "51db4dcafbfdfe31b23071f795cd007f567ff152",
  "lexical_observation_count": 36,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variantb8b18f7a4e19347d7332385551bc470f981aedeff93c7a53dd7c9bc2e68c37a9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ExteriorAlgebraBasic.lean/index.md) · [Full source](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ExteriorAlgebraBasic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `51db4dcafbfdfe31b23071f795cd007f567ff152`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Basic/Variantb8b18f7a4e19347d7332385551bc470f981aedeff93c7a53dd7c9bc2e68c37a9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Basic/Variantb8b18f7a4e19347d7332385551bc470f981aedeff93c7a53dd7c9bc2e68c37a9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.CliffordAlgebra.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Alternating` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [ExteriorAlgebra](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ExteriorAlgebraBasic.lean/declarations/exterioralgebra.md) | 54 | `declaration-track:67be0c0c937ebca37331adae16a6c3a13edc9c2e9980391ac5a884bbf6acd136` |
| 2 | `def` | [ι](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ExteriorAlgebraBasic.lean/declarations/anonymous.md) | 65 | `declaration-track:07f8231ac683443360cd27a283c81cb5bc435ed698f15e321bf1bcd75dbc2727` |
| 3 | `theorem` | [ι_sq_zero](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ExteriorAlgebraBasic.lean/declarations/sq-zero.md) | 73 | `result-track:7ccd9f58e219ebcd72162166eeb415eeb5f43ae4c2ca1c0ce587115ec7de7d31` |
| 4 | `theorem` | [comp_ι_sq_zero](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ExteriorAlgebraBasic.lean/declarations/comp-sq-zero.md) | 80 | `result-track:77bd6c1edfa1936de3b6983274d54d5b432aa01e90f86b541f5f86de4b93058b` |
| 5 | `def` | [lift](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ExteriorAlgebraBasic.lean/declarations/lift.md) | 91 | `declaration-track:822091901ce0de1180440364dc370021e7029138f3ac292e1ec682f439af6740` |
| 6 | `theorem` | [ι_comp_lift](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ExteriorAlgebraBasic.lean/declarations/comp-lift.md) | 96 | `result-track:ddc1aa71784a47a8bbfde3a2351113211955307be5c1961a6e029b7eae2465e0` |
| 7 | `theorem` | [lift_ι_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ExteriorAlgebraBasic.lean/declarations/lift-apply.md) | 102 | `result-track:0b0af067b4e7fcf9ecdf086a64fdf99e2d7d8ac67d30045cfbdd55d4f5eb25cb` |
| 8 | `theorem` | [lift_unique](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ExteriorAlgebraBasic.lean/declarations/lift-unique.md) | 108 | `result-track:753b030fff250066ef08724e52beaf2707706641a750f7bdb35cc0e6c912e071` |
| 9 | `theorem` | [lift_comp_ι](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ExteriorAlgebraBasic.lean/declarations/lift-comp.md) | 116 | `result-track:a04004f28b952b24d49b249b9e9cd57cc37a67b7a83ed4d28473b964a68d19b0` |
| 10 | `theorem` | [hom_ext](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ExteriorAlgebraBasic.lean/declarations/hom-ext.md) | 123 | `result-track:88961648a136f90d00fc51134bd5bec2eca93a347f01669f04b3cd809c788714` |
| 11 | `theorem` | [induction](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ExteriorAlgebraBasic.lean/declarations/induction.md) | 132 | `result-track:003bd867f17a27ccb62155a6a1195674533fb0db2ce3f63353a9ca1e9333fe70` |
| 12 | `def` | [algebraMapInv](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ExteriorAlgebraBasic.lean/declarations/algebramapinv.md) | 140 | `declaration-track:8dca07cc7b231f6f4bc72c1d6b770418ecb62a34977af464243c491463d51510` |
| 13 | `theorem` | [algebraMap_leftInverse](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ExteriorAlgebraBasic.lean/declarations/algebramap-leftinverse.md) | 146 | `result-track:4a7179830e2eeada7526e645ed322047faaa0464ffb72c5263945822e6d316bb` |
| 14 | `theorem` | [algebraMap_inj](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ExteriorAlgebraBasic.lean/declarations/algebramap-inj.md) | 152 | `result-track:63dcfb717254565853fbb04ccbc6ff6923bdf3542150a38086ab4e78183d76e2` |
| 15 | `theorem` | [algebraMap_eq_zero_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ExteriorAlgebraBasic.lean/declarations/algebramap-eq-zero-iff.md) | 158 | `result-track:f231b41e4e08f79fc6b0b4faee33ea88b6262d063ad5596475d1f711f36ed52f` |
| 16 | `theorem` | [algebraMap_eq_one_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ExteriorAlgebraBasic.lean/declarations/algebramap-eq-one-iff.md) | 163 | `result-track:40aebdb2802d05eebce340b75424ea766179dd4ff590193d86ff0e2688d392cc` |
| 17 | `theorem` | [isUnit_algebraMap](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ExteriorAlgebraBasic.lean/declarations/isunit-algebramap.md) | 167 | `result-track:175e24e3c47a0d084352380a39b88de973569043eea6670d438dde4d204486a8` |
| 18 | `def` | [invertibleAlgebraMapEquiv](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ExteriorAlgebraBasic.lean/declarations/invertiblealgebramapequiv.md) | 173 | `declaration-track:829d39b4e9bebefe6959b2d525626a07b2542daaa7a703c2101e39bed37cc393` |
| 19 | `def` | [toTrivSqZeroExt](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ExteriorAlgebraBasic.lean/declarations/totrivsqzeroext-source-edition-2.md) | 182 | `declaration-track:61317dc0965c03f7c17c652057bbf15df21c5829c5fa267a730c09cbc58b47ae` |
| 20 | `theorem` | [toTrivSqZeroExt_ι](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ExteriorAlgebraBasic.lean/declarations/totrivsqzeroext.md) | 188 | `result-track:40ff6e9592d7ed8f87cb68fc91ba718680248ad7401a5b676740e9e80e34228a` |
| 21 | `def` | [ιInv](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ExteriorAlgebraBasic.lean/declarations/inv.md) | 197 | `declaration-track:66765cd056023e5a92736636b8580dd9af589d01705ef9ffbb79598d7e1d08d9` |
| 22 | `theorem` | [ι_leftInverse](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ExteriorAlgebraBasic.lean/declarations/leftinverse.md) | 204 | `result-track:085d4744428811ad06c1148ab425ed81032484dbaa9f20f9121559bb12913f44` |
| 23 | `theorem` | [ι_inj](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ExteriorAlgebraBasic.lean/declarations/inj.md) | 214 | `result-track:c501ee8d963c0e725d8b477bb67be75843c2487fad1e801b4d8b613d0cb432d8` |
| 24 | `theorem` | [ι_eq_zero_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ExteriorAlgebraBasic.lean/declarations/eq-zero-iff.md) | 221 | `result-track:5bc7f0a515f37b802d2ecf2ec241777c0199c989e0bf56f318ddc70cfed70530` |
| 25 | `theorem` | [ι_eq_algebraMap_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ExteriorAlgebraBasic.lean/declarations/eq-algebramap-iff.md) | 225 | `result-track:23bedcdede51793869490e228c11f244909498db5b4be3a5184842bdb4a785ae` |
| 26 | `theorem` | [ι_ne_one](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ExteriorAlgebraBasic.lean/declarations/ne-one.md) | 238 | `result-track:c9bb57816b8868e1e72bdb8c976f26e35528a52ffba7bec3f3f801305adc60b9` |
| 27 | `theorem` | [ι_range_disjoint_one](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ExteriorAlgebraBasic.lean/declarations/range-disjoint-one.md) | 244 | `result-track:35a8b377bd0ae0f3048e503809b69cb98df98b13f11d9fc13c2519d8bd13f394` |
| 28 | `theorem` | [ι_add_mul_swap](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ExteriorAlgebraBasic.lean/declarations/add-mul-swap.md) | 254 | `result-track:9e006f918978f300cddd8c8bc4b091240f07b1ebf68f860f504e2ad256915157` |
| 29 | `theorem` | [ι_mul_prod_list](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ExteriorAlgebraBasic.lean/declarations/mul-prod-list.md) | 260 | `result-track:31d753eaabecaffae1ca508c01a0fb9012eab6d5fb9f02dcff8863fb3f8f4331` |
| 30 | `def` | [ιMulti](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ExteriorAlgebraBasic.lean/declarations/multi.md) | 282 | `declaration-track:7c08ab8f86e6e776c0afbc531665562536658e79c7ce88421b177adddc1e70f8` |
| 31 | `theorem` | [ιMulti_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ExteriorAlgebraBasic.lean/declarations/multi-apply.md) | 313 | `result-track:ef1eeaa3664b5477456ca017c9dc0f1f7b372b7de2dd932284352d1bcaac0a09` |
| 32 | `theorem` | [ιMulti_zero_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ExteriorAlgebraBasic.lean/declarations/multi-zero-apply.md) | 318 | `result-track:c074869586c935508df8df31c07ba8f627ffb7b495578d326f7e717ecded193e` |
| 33 | `theorem` | [ιMulti_succ_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ExteriorAlgebraBasic.lean/declarations/multi-succ-apply.md) | 323 | `result-track:fc5fea3dbc4921874f2a521ae578ab341c1a9599a3beecd86182c6d448b12b26` |
| 34 | `theorem` | [ιMulti_succ_curryLeft](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ExteriorAlgebraBasic.lean/declarations/multi-succ-curryleft.md) | 328 | `result-track:cdb13d4ccd042497d6c41615d9e70674fee15e2a55177acdf77343b91320e50f` |
| 35 | `def` | [toExterior](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ExteriorAlgebraBasic.lean/declarations/toexterior.md) | 344 | `declaration-track:08b4c84247e1a8fccecbf9c2998d4cfc8ad11bcf4f6c86bbdca73f352903324f` |
| 36 | `theorem` | [toExterior_ι](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ExteriorAlgebraBasic.lean/declarations/toexterior-source-edition-2.md) | 349 | `result-track:f4b5df10629eef6607bf9a278d77158f48a6fd7eb3f37ebb86bf00c65569ac0d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=085292b9ded47ecc840a357af481777f38578563d73e1d533ff6b93696df35a9 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Basic/Variantb8b18f7a4e19347d7332385551bc470f981aedeff93c7a53dd7c9bc2e68c37a9.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/Basic/Variantb8b18f7a4e19347d7332385551bc470f981aedeff93c7a53dd7c9bc2e68c37a9.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
