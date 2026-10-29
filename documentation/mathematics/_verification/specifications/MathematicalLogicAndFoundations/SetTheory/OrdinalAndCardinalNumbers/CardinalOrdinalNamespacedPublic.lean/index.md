# Verification target: Cardinal Ordinal Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "51b43d480793b1d1e10a95c2012c69808c94069e",
  "lexical_observation_count": 31,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Ordinal/Variant191172d6d60d1fb864c7224153efe113fd025b64706881bc263ab411023f3ae6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/CardinalOrdinalNamespacedPublic.lean/index.md) · [Full source](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/CardinalOrdinalNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `51b43d480793b1d1e10a95c2012c69808c94069e`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Ordinal/Variant191172d6d60d1fb864c7224153efe113fd025b64706881bc263ab411023f3ae6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/SetTheory/Ordinal/Variant191172d6d60d1fb864c7224153efe113fd025b64706881bc263ab411023f3ae6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [mk_biUnion_le_of_le_lift](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/CardinalOrdinalNamespacedPublic.lean/declarations/mk-biunion-le-of-le-lift.md) | 36 | `result-track:7641e578a55b8da18e10ca0f2eef12e79633352db3948b5e75cdd079808c7a63` |
| 2 | `lemma` | [mk_biUnion_le_of_le](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/CardinalOrdinalNamespacedPublic.lean/declarations/mk-biunion-le-of-le.md) | 47 | `result-track:774a65adb326c8b79e633ad19056bdecb6b24fffb9eb19cd693ea71fbd62d3bd` |
| 3 | `theorem` | [lift_card_iSup_le_sum_card](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/CardinalOrdinalNamespacedPublic.lean/declarations/lift-card-isup-le-sum-card.md) | 59 | `result-track:c8339222215d89e79e8dc30bc1fb9a42dfccb9f73e4df210437bc55155bf0302` |
| 4 | `theorem` | [card_iSup_le_sum_card](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/CardinalOrdinalNamespacedPublic.lean/declarations/card-isup-le-sum-card.md) | 72 | `result-track:1d09c16b96b6cc943a6399d16abd2e7ac4669c6c31fb7e3865d65fa4bba9db5e` |
| 5 | `theorem` | [card_iSup_Iio_le_sum_card](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/CardinalOrdinalNamespacedPublic.lean/declarations/card-isup-iio-le-sum-card.md) | 77 | `result-track:ea3bc4abc9cbebb638a9ad4b7ac5c2cb66b275526b9ef70db2c24563cf3a96cc` |
| 6 | `theorem` | [card_iSup_Iio_le_card_mul_iSup](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/CardinalOrdinalNamespacedPublic.lean/declarations/card-isup-iio-le-card-mul-isup.md) | 82 | `result-track:3c6278710288ae851d33fc684fb1848f7380fe0adec14af303600ebcc013832c` |
| 7 | `theorem` | [card_iSup_le_lift](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/CardinalOrdinalNamespacedPublic.lean/declarations/card-isup-le-lift.md) | 89 | `result-track:edd4aa5bf76bb2313591c606ed39d2a55c4321e3e03f5d31c43c785fc11e56e6` |
| 8 | `theorem` | [card_iSup_le](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/CardinalOrdinalNamespacedPublic.lean/declarations/card-isup-le.md) | 103 | `result-track:67f0ceb46f6e4c0e4f0e330570202f956fe4d7411707ea8bfdcb578db70e6cbe` |
| 9 | `theorem` | [card_iSup_Iio_le_of_lift](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/CardinalOrdinalNamespacedPublic.lean/declarations/card-isup-iio-le-of-lift.md) | 108 | `result-track:e7a5ad10af9986acb17bee393226588db2b99db02ddf02e7e9a1fc0cff28d9a1` |
| 10 | `theorem` | [card_iSup_Iio_le](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/CardinalOrdinalNamespacedPublic.lean/declarations/card-isup-iio-le.md) | 116 | `result-track:4c09734e807e8d77d2013a006a93336e7f7d67552104c0d5cff2430012d8e3c8` |
| 11 | `theorem` | [card_sSup_le](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/CardinalOrdinalNamespacedPublic.lean/declarations/card-ssup-le.md) | 121 | `result-track:cea0ed297bcde454fa6153694ae85b52184ae80fbb438dbbcfbacb015fd156bb` |
| 12 | `theorem` | [card_nfpFamily_le](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/CardinalOrdinalNamespacedPublic.lean/declarations/card-nfpfamily-le.md) | 128 | `result-track:5f9e006794f14b21f530118197e2a74c7f13a9d754421ba070baa0c9bc29b59a` |
| 13 | `theorem` | [card_derivFamily_le](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/CardinalOrdinalNamespacedPublic.lean/declarations/card-derivfamily-le.md) | 149 | `result-track:986a044748d2e49607b6e258b2e5d134df1bebe22bd5bfda311c16bbf04873c9` |
| 14 | `theorem` | [card_nfp_le_of_forall_le](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/CardinalOrdinalNamespacedPublic.lean/declarations/card-nfp-le-of-forall-le.md) | 170 | `result-track:7d1f1f60b3b7ec04d71b1c044c46a0540678afa38f019ce608dc84409bf16ee3` |
| 15 | `theorem` | [card_deriv_le_of_forall_le](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/CardinalOrdinalNamespacedPublic.lean/declarations/card-deriv-le-of-forall-le.md) | 174 | `result-track:203e59a38aec6c67ccf8491fd6a382866d4e3e0721e579c5c0ba5068850456fa` |
| 16 | `theorem` | [card_opow_le_of_omega0_le_left](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/CardinalOrdinalNamespacedPublic.lean/declarations/card-opow-le-of-omega0-le-left.md) | 178 | `result-track:6d09a4502bab7a53a9a179960c36faf3e9f8ccb4118d2da15a9a8e9a1ac90f2c` |
| 17 | `theorem` | [card_opow_le_of_omega0_le_right](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/CardinalOrdinalNamespacedPublic.lean/declarations/card-opow-le-of-omega0-le-right.md) | 194 | `result-track:f39f7f139a47fd42f65220ce576fd22c0ba1c4ad2cb78cf3a398d67b9f07b5ac` |
| 18 | `theorem` | [card_opow_le](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/CardinalOrdinalNamespacedPublic.lean/declarations/card-opow-le.md) | 202 | `result-track:514802ff3529d8e96accffc30902ff1608a970ccaf3db6f95fc101041cee1d7a` |
| 19 | `theorem` | [card_opow_eq_of_omega0_le_left](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/CardinalOrdinalNamespacedPublic.lean/declarations/card-opow-eq-of-omega0-le-left.md) | 210 | `result-track:2d074bd0defba559fe288f0ac0dc9428bd9e3c42d81643c644d19cec0846b8a5` |
| 20 | `theorem` | [card_opow_eq_of_omega0_le_right](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/CardinalOrdinalNamespacedPublic.lean/declarations/card-opow-eq-of-omega0-le-right.md) | 216 | `result-track:4f13f625ef8b86c190823929d7beff13e8167d16889fc87b009b367a9ce41e5e` |
| 21 | `theorem` | [card_omega0_opow](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/CardinalOrdinalNamespacedPublic.lean/declarations/card-omega0-opow.md) | 222 | `result-track:6fcc4b774d7f830f47ab576bb1bf20f6aca59c6c0830c8d60d21685ba8fe4da9` |
| 22 | `theorem` | [card_opow_omega0](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/CardinalOrdinalNamespacedPublic.lean/declarations/card-opow-omega0.md) | 225 | `result-track:ea97d361f3ce7a702360214097635644982692d6ceaf419508fb5ca9ffc46aa1` |
| 23 | `theorem` | [isPrincipal_opow_omega](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/CardinalOrdinalNamespacedPublic.lean/declarations/isprincipal-opow-omega.md) | 228 | `result-track:1119b58b3a5dc092fba92f06e6223cd516f6b11a5502fac7ca5d1f83b0bae6f9` |
| 24 | `theorem` | [IsInitial.isPrincipal_opow](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/CardinalOrdinalNamespacedPublic.lean/declarations/isinitial-isprincipal-opow.md) | 239 | `result-track:8242a15c8b1e0427537b397998558a123d21fd805c0157d44110c1b1530f181c` |
| 25 | `theorem` | [isPrincipal_opow_ord](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/CardinalOrdinalNamespacedPublic.lean/declarations/isprincipal-opow-ord.md) | 246 | `result-track:bcd5d421356ae5d9a14204a877f61a912557fe1877f9b0e517be0bbf6cdac9a4` |
| 26 | `theorem` | [isPrincipal_add_ord](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/CardinalOrdinalNamespacedPublic.lean/declarations/isprincipal-add-ord.md) | 254 | `result-track:db9e87227898eab4e7e073ddcc807988acdee877722cb1eb4a81b965827a6aac` |
| 27 | `theorem` | [IsInitial.isPrincipal_add](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/CardinalOrdinalNamespacedPublic.lean/declarations/isinitial-isprincipal-add.md) | 261 | `result-track:39532f1464e20edc8f5a5c5c0fac7f109851b96d83b745a4468730b9dc3fa821` |
| 28 | `theorem` | [isPrincipal_add_omega](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/CardinalOrdinalNamespacedPublic.lean/declarations/isprincipal-add-omega.md) | 269 | `result-track:c31ea00a21869ca49223020a9a4ab2006f8b818124877076a9b6bc48c506eb6d` |
| 29 | `theorem` | [isPrincipal_mul_ord](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/CardinalOrdinalNamespacedPublic.lean/declarations/isprincipal-mul-ord.md) | 274 | `result-track:90b055ef0382656557b438e2ac06ecfe5cb0b6ddd01d015cc9eeeaa3348c6d56` |
| 30 | `theorem` | [IsInitial.isPrincipal_mul](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/CardinalOrdinalNamespacedPublic.lean/declarations/isinitial-isprincipal-mul.md) | 281 | `result-track:42e90cd4c3701a9dbe665b08eb7f8bfabab12d5f9a96a406a88bc9460c690d74` |
| 31 | `theorem` | [isPrincipal_mul_omega](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/CardinalOrdinalNamespacedPublic.lean/declarations/isprincipal-mul-omega.md) | 289 | `result-track:7ea6a8e79b3d0e0510c8c2fd321b68d1208cf8d236ea84d8bcefe1fc2b646aaa` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f4c10c641bbe5d378eade5a3decabde4667e20070029a6c568436779b9a2dd33 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Ordinal/Variant191172d6d60d1fb864c7224153efe113fd025b64706881bc263ab411023f3ae6.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/SetTheory/Ordinal/Variant191172d6d60d1fb864c7224153efe113fd025b64706881bc263ab411023f3ae6.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
