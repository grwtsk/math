# Verification target: Continued Fractions Translations Part Num None Iff SNone Aligned

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4807bb19a64f59b70ed5880dc86fb3350a5f13ee",
  "lexical_observation_count": 31,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/Translations/Variantcdf6297118fccc7b0fd4e52b0410b4454443898fa887e998a14c4b5ec35b8b53.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ContinuedFractionsTranslationsPartNumNoneIffSNoneAligned.lean/index.md) · [Full source](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ContinuedFractionsTranslationsPartNumNoneIffSNoneAligned.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4807bb19a64f59b70ed5880dc86fb3350a5f13ee`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/Translations/Variantcdf6297118fccc7b0fd4e52b0410b4454443898fa887e998a14c4b5ec35b8b53.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/Translations/Variantcdf6297118fccc7b0fd4e52b0410b4454443898fa887e998a14c4b5ec35b8b53.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.ContinuedFractions.Basic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [terminatedAt_iff_s_terminatedAt](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ContinuedFractionsTranslationsPartNumNoneIffSNoneAligned.lean/declarations/terminatedat-iff-s-terminatedat.md) | 34 | `result-track:977a4ae94ec6ef61f324ee7389c7d349084316c1e5cfb3bad84ea851d6160511` |
| 2 | `theorem` | [terminatedAt_iff_s_none](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ContinuedFractionsTranslationsPartNumNoneIffSNoneAligned.lean/declarations/terminatedat-iff-s-none.md) | 37 | `result-track:fe4d856f5427350e75e785d291546947327c35c98f0a8072cb53b4425fb231ae` |
| 3 | `theorem` | [part_num_none_iff_s_none](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ContinuedFractionsTranslationsPartNumNoneIffSNoneAligned.lean/declarations/part-num-none-iff-s-none.md) | 40 | `result-track:74f3717a8e4a3f6dbdf30b5aa4d477d806603f80f3f13e361a7ec9bd04a192d1` |
| 4 | `theorem` | [terminatedAt_iff_part_num_none](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ContinuedFractionsTranslationsPartNumNoneIffSNoneAligned.lean/declarations/terminatedat-iff-part-num-none.md) | 44 | `result-track:5d8593b1317690d32de84b28dc3317c88b9a3b731e5939371698daac29657336` |
| 5 | `theorem` | [part_denom_none_iff_s_none](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ContinuedFractionsTranslationsPartNumNoneIffSNoneAligned.lean/declarations/part-denom-none-iff-s-none.md) | 48 | `result-track:050cf31e483acb1b136a566ed60c6f9b0dc9d703a0663946e1c0091f0b84ad55` |
| 6 | `theorem` | [terminatedAt_iff_part_denom_none](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ContinuedFractionsTranslationsPartNumNoneIffSNoneAligned.lean/declarations/terminatedat-iff-part-denom-none.md) | 52 | `result-track:0119fd3597aa71364856072e69b148c9ee7477c8c8fab8c6815e3662e3bfc274` |
| 7 | `theorem` | [part_num_eq_s_a](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ContinuedFractionsTranslationsPartNumNoneIffSNoneAligned.lean/declarations/part-num-eq-s-a.md) | 56 | `result-track:3b286a56e024d5834d80f44800b3758adfba271f0b10c8f91a3ee780daa41388` |
| 8 | `theorem` | [part_denom_eq_s_b](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ContinuedFractionsTranslationsPartNumNoneIffSNoneAligned.lean/declarations/part-denom-eq-s-b.md) | 60 | `result-track:6d0965654153be6c11ae5cee752cc53d8a6bdbfd6498cf2e293107eb0fde9e46` |
| 9 | `theorem` | [exists_s_a_of_part_num](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ContinuedFractionsTranslationsPartNumNoneIffSNoneAligned.lean/declarations/exists-s-a-of-part-num.md) | 64 | `result-track:8a5d2d0d7c40f1f6a886a8b01167400ad18ebd3a40d7b750daba31bcaa5b168c` |
| 10 | `theorem` | [exists_s_b_of_part_denom](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ContinuedFractionsTranslationsPartNumNoneIffSNoneAligned.lean/declarations/exists-s-b-of-part-denom.md) | 69 | `result-track:641a94b6a8ce8e118ad526fcbf17fe805d09a804791a439dfff2fe22e15f38f5` |
| 11 | `theorem` | [nth_cont_eq_succ_nth_cont_aux](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ContinuedFractionsTranslationsPartNumNoneIffSNoneAligned.lean/declarations/nth-cont-eq-succ-nth-cont-aux.md) | 89 | `result-track:0db0a4ea11b51a0897b2123d769c3309d01fa7de5e44148e8a1f5c236ccc5a68` |
| 12 | `theorem` | [num_eq_conts_a](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ContinuedFractionsTranslationsPartNumNoneIffSNoneAligned.lean/declarations/num-eq-conts-a.md) | 93 | `result-track:124099bd7a362e54bb5209b525ddd180f1eb8c92d1d9ef547be9208a01166127` |
| 13 | `theorem` | [denom_eq_conts_b](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ContinuedFractionsTranslationsPartNumNoneIffSNoneAligned.lean/declarations/denom-eq-conts-b.md) | 97 | `result-track:149aa64198305cf8c7a8da9ff7518f8495bffd7e4c3b6c029d9aa7e1f663ea17` |
| 14 | `theorem` | [convergent_eq_num_div_denom](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ContinuedFractionsTranslationsPartNumNoneIffSNoneAligned.lean/declarations/convergent-eq-num-div-denom.md) | 101 | `result-track:027338e10bebf6afdaae6d52f8f9dd6fddce5e54ee6ca44baa29ccd11b9dac5c` |
| 15 | `theorem` | [convergent_eq_conts_a_div_conts_b](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ContinuedFractionsTranslationsPartNumNoneIffSNoneAligned.lean/declarations/convergent-eq-conts-a-div-conts-b.md) | 105 | `result-track:ef7a77fadf6321f8c5dde9b5c940e720a41692a521b439a8cf9ad56621d4248c` |
| 16 | `theorem` | [exists_conts_a_of_num](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ContinuedFractionsTranslationsPartNumNoneIffSNoneAligned.lean/declarations/exists-conts-a-of-num.md) | 110 | `result-track:cf6d80516efffa0ac47fbbc234e5f65d6188fb115b98225329ba37242d3f9671` |
| 17 | `theorem` | [exists_conts_b_of_denom](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ContinuedFractionsTranslationsPartNumNoneIffSNoneAligned.lean/declarations/exists-conts-b-of-denom.md) | 114 | `result-track:37f87077a7771c72436ef3afeeb8f8007fbd7226027356be4af0754cc5fd3525` |
| 18 | `theorem` | [zeroth_continuant_aux_eq_one_zero](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ContinuedFractionsTranslationsPartNumNoneIffSNoneAligned.lean/declarations/zeroth-continuant-aux-eq-one-zero.md) | 119 | `result-track:f9d0bc059804159c9f889ce10e99015d0bdded3e3bc9386265a433679ff17aac` |
| 19 | `theorem` | [first_continuant_aux_eq_h_one](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ContinuedFractionsTranslationsPartNumNoneIffSNoneAligned.lean/declarations/first-continuant-aux-eq-h-one.md) | 124 | `result-track:d106ea41607bad498ccd131b8f3e29f05161eb4cb4cba602b11c9f7355b41013` |
| 20 | `theorem` | [zeroth_continuant_eq_h_one](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ContinuedFractionsTranslationsPartNumNoneIffSNoneAligned.lean/declarations/zeroth-continuant-eq-h-one.md) | 129 | `result-track:8007be098e8503911fe6c62cc7093fd72c12693eb36ad02fd000dcc86e60f8eb` |
| 21 | `theorem` | [zeroth_numerator_eq_h](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ContinuedFractionsTranslationsPartNumNoneIffSNoneAligned.lean/declarations/zeroth-numerator-eq-h.md) | 134 | `result-track:21a08598b61f8cd98f1ef51a226914950bf5b986cd90983181c7480a173522f0` |
| 22 | `theorem` | [zeroth_denominator_eq_one](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ContinuedFractionsTranslationsPartNumNoneIffSNoneAligned.lean/declarations/zeroth-denominator-eq-one.md) | 139 | `result-track:1710945507f85453cc733cfcfd4821d0207544dc346096ec41ff5ef64556e6c3` |
| 23 | `theorem` | [zeroth_convergent_eq_h](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ContinuedFractionsTranslationsPartNumNoneIffSNoneAligned.lean/declarations/zeroth-convergent-eq-h-source-edition-2.md) | 144 | `result-track:a13211fb6d8dbe71ee28a192731e0baa2e68c50cfcf99f1ef4fc9dd2fc0f4133` |
| 24 | `theorem` | [second_continuant_aux_eq](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ContinuedFractionsTranslationsPartNumNoneIffSNoneAligned.lean/declarations/second-continuant-aux-eq.md) | 148 | `result-track:3ab98d436ef86299a77f6b651f1f97726279b8f28671f0994903a7b3d091bf3f` |
| 25 | `theorem` | [first_continuant_eq](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ContinuedFractionsTranslationsPartNumNoneIffSNoneAligned.lean/declarations/first-continuant-eq.md) | 153 | `result-track:aa1ee9a94ceeaa2344367883d86f9131dfd201847ed367214fa5aabdcbbd2ea0` |
| 26 | `theorem` | [first_numerator_eq](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ContinuedFractionsTranslationsPartNumNoneIffSNoneAligned.lean/declarations/first-numerator-eq.md) | 160 | `result-track:b1bcc863d9d89dbcc776457572758f15022ed1df982742e40670581729677e0e` |
| 27 | `theorem` | [first_denominator_eq](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ContinuedFractionsTranslationsPartNumNoneIffSNoneAligned.lean/declarations/first-denominator-eq.md) | 164 | `result-track:01bd54a147c520657772f77602343dff8a05acfc40dc0cb548145335151dbf7a` |
| 28 | `theorem` | [zeroth_convergent'_aux_eq_zero](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ContinuedFractionsTranslationsPartNumNoneIffSNoneAligned.lean/declarations/zeroth-convergent-aux-eq-zero.md) | 169 | `result-track:58992a82b6df366155774f1ce8614f9736a73bf15c17cadd7227dd326333fff9` |
| 29 | `theorem` | [zeroth_convergent'_eq_h](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ContinuedFractionsTranslationsPartNumNoneIffSNoneAligned.lean/declarations/zeroth-convergent-eq-h.md) | 175 | `result-track:2685b5885dd80ca180c07a1dd8dcc3ba5a411d9c98c2dc511e2a38e4a8d8cf40` |
| 30 | `theorem` | [convergents'Aux_succ_none](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ContinuedFractionsTranslationsPartNumNoneIffSNoneAligned.lean/declarations/convergents-aux-succ-none.md) | 178 | `result-track:2a3d491114da9b1d55451fd89445e0a4a1350a414509ce98d5eb256b2671ed25` |
| 31 | `theorem` | [convergents'Aux_succ_some](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/ContinuedFractionsTranslationsPartNumNoneIffSNoneAligned.lean/declarations/convergents-aux-succ-some.md) | 182 | `result-track:aead31826e4f947618f5a9080a31d55516e5a90fe6a51cc1f8f865527e87a452` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=863a09ed47ffc7b99dcc26f02f304dd06731a262e55802154c6c2260f642a35f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/UniversalAlgebra/Translations/Variantcdf6297118fccc7b0fd4e52b0410b4454443898fa887e998a14c4b5ec35b8b53.lean","GRWTSK/_verification/specifications/Algebra/UniversalAlgebra/Translations/Variantcdf6297118fccc7b0fd4e52b0410b4454443898fa887e998a14c4b5ec35b8b53.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
