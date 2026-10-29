# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentBombieriMomentRankObstruction

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fb3f61846511ff9edf8759c611ce860d35ac4325",
  "lexical_observation_count": 47,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/CanonicalSquareTentBombieriMomentRankObstruction.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/CanonicalSquareTentBombieriMomentRankObstruction.lean/index.md) · [Full source](../../../../MeasureAndIntegration/CanonicalSquareTentBombieriMomentRankObstruction.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fb3f61846511ff9edf8759c611ce860d35ac4325`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/CanonicalSquareTentBombieriMomentRankObstruction.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/CanonicalSquareTentBombieriMomentRankObstruction.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentBombieriMomentObstruction`](../../../../MeasureAndIntegration/CanonicalSquareTentBombieriMomentObstruction.lean/index.md) — import line 5; pinned internal source present.
- `Mathlib.MeasureTheory.Integral.Bochner.Set` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Function.LocallyIntegrable` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [stageTwoCoordinate](../../../../MeasureAndIntegration/CanonicalSquareTentBombieriMomentRankObstruction.lean/declarations/stagetwocoordinate.md) | 48 | `declaration-track:cf14c43fb5cd320a49349bfabaeda97c48cfec6f325a6bdc209592364bdd39cf` |
| 2 | `def` | [stageThreeCoordinate](../../../../MeasureAndIntegration/CanonicalSquareTentBombieriMomentRankObstruction.lean/declarations/stagethreecoordinate.md) | 51 | `declaration-track:b9f9e67b3ec1a27a35143391be83c1ec43616f7b85fd1d2adef91eee6e331708` |
| 3 | `theorem` | [stageTwoCoordinate_ne_stageThreeCoordinate](../../../../MeasureAndIntegration/CanonicalSquareTentBombieriMomentRankObstruction.lean/declarations/stagetwocoordinate-ne-stagethreecoordinate.md) | 53 | `result-track:bf2825c6196dbb89c8a128841dc3638a40ef2840431efe16a0e7ddff4efe468f` |
| 4 | `def` | [realOrdinaryMoment](../../../../MeasureAndIntegration/CanonicalSquareTentBombieriMomentRankObstruction.lean/declarations/realordinarymoment.md) | 58 | `declaration-track:8aa04dc1b1a0354e3a76ef13ea874c1d77f1e9a43644cb6956c319f14ef48c65` |
| 5 | `def` | [realMultiplicativeMoment](../../../../MeasureAndIntegration/CanonicalSquareTentBombieriMomentRankObstruction.lean/declarations/realmultiplicativemoment.md) | 62 | `declaration-track:fdf3b59886f63f7ae9f5bc75eb73a14d2066d62172df949235766d4114bb1c2d` |
| 6 | `theorem` | [realOrdinaryMoment_pos](../../../../MeasureAndIntegration/CanonicalSquareTentBombieriMomentRankObstruction.lean/declarations/realordinarymoment-pos.md) | 65 | `result-track:547e99ed07de4e81d06031f3ac15ad06b392a1ebf6492a7e8d0d63336887199d` |
| 7 | `theorem` | [canonicalTentReal_div_integrable](../../../../MeasureAndIntegration/CanonicalSquareTentBombieriMomentRankObstruction.lean/declarations/canonicaltentreal-div-integrable.md) | 71 | `result-track:a4c92f497901ecbbf3aa8fc589cacf3e3a10e8c615ca813bfbc2b3df0e782cc8` |
| 8 | `theorem` | [canonicalTentReal_div_integrableOn](../../../../MeasureAndIntegration/CanonicalSquareTentBombieriMomentRankObstruction.lean/declarations/canonicaltentreal-div-integrableon.md) | 118 | `result-track:fae763bf84ea076d81ce022a10c1f53f78c05cdefdb4d8978813d0a72701c7e5` |
| 9 | `def` | [reciprocalPivot](../../../../MeasureAndIntegration/CanonicalSquareTentBombieriMomentRankObstruction.lean/declarations/reciprocalpivot.md) | 123 | `declaration-track:a14181b8c1bed7fa1581b6893236a94bcb45f46f6ab0b0cc7992cbc352d331e5` |
| 10 | `def` | [stageTwoReciprocalGap](../../../../MeasureAndIntegration/CanonicalSquareTentBombieriMomentRankObstruction.lean/declarations/stagetworeciprocalgap.md) | 126 | `declaration-track:498fa9db3ba981843dd89d624017b0b0f92a54b14f85a82661a8529909eb3814` |
| 11 | `def` | [stageThreeReciprocalGap](../../../../MeasureAndIntegration/CanonicalSquareTentBombieriMomentRankObstruction.lean/declarations/stagethreereciprocalgap.md) | 130 | `declaration-track:56b96c361982e2bbce94a70acc9b4966b37fd105ead5c2d894de6558fab67512` |
| 12 | `theorem` | [stageTwoTent_eq_zero_of_nine_le](../../../../MeasureAndIntegration/CanonicalSquareTentBombieriMomentRankObstruction.lean/declarations/stagetwotent-eq-zero-of-nine-le.md) | 133 | `result-track:afa12228bf36c1a2fc2d4ab277b88769c007bbd24f4e1f3e4afcea257e69f4d9` |
| 13 | `theorem` | [stageTwoTent_eq_zero_of_nonpos](../../../../MeasureAndIntegration/CanonicalSquareTentBombieriMomentRankObstruction.lean/declarations/stagetwotent-eq-zero-of-nonpos.md) | 141 | `result-track:cfe47b62ee253dffdbfa95aef1a6c3bd7eacfca81c995030f2773e1d0951cf5d` |
| 14 | `theorem` | [stageThreeTent_eq_zero_of_le_nine](../../../../MeasureAndIntegration/CanonicalSquareTentBombieriMomentRankObstruction.lean/declarations/stagethreetent-eq-zero-of-le-nine.md) | 149 | `result-track:f72a2f16db11e02596bf0cb8d697f2f8de8ceb2e6122108cb6790d6d21a97a48` |
| 15 | `theorem` | [stageThreeTent_eq_zero_of_nonpos](../../../../MeasureAndIntegration/CanonicalSquareTentBombieriMomentRankObstruction.lean/declarations/stagethreetent-eq-zero-of-nonpos.md) | 157 | `result-track:4cfb059e0484f42b810e7b1a775b68b5a4faf0c03ab67906ee4dbe54622187bd` |
| 16 | `theorem` | [stageTwoReciprocalGap_nonnegative](../../../../MeasureAndIntegration/CanonicalSquareTentBombieriMomentRankObstruction.lean/declarations/stagetworeciprocalgap-nonnegative.md) | 161 | `result-track:1e495d2b0245143ca0a022d6a482945a98439062a125094fd9fbe8e0ae35844b` |
| 17 | `theorem` | [stageThreeReciprocalGap_nonnegative](../../../../MeasureAndIntegration/CanonicalSquareTentBombieriMomentRankObstruction.lean/declarations/stagethreereciprocalgap-nonnegative.md) | 180 | `result-track:46e263071ff605c9053670134d1bc622830496be19357b8e4fb8beefee2948d7` |
| 18 | `theorem` | [stageTwoReciprocalGap_pos](../../../../MeasureAndIntegration/CanonicalSquareTentBombieriMomentRankObstruction.lean/declarations/stagetworeciprocalgap-pos.md) | 198 | `result-track:eb99b520c3667ef2606e7b882e9114aa369153f7269cde82108e82f0bb2cfac4` |
| 19 | `theorem` | [stageThreeReciprocalGap_pos](../../../../MeasureAndIntegration/CanonicalSquareTentBombieriMomentRankObstruction.lean/declarations/stagethreereciprocalgap-pos.md) | 217 | `result-track:ebeeef76f9f3dc0485bf94816c51ec1439dbdc4a7a37d5ff29784b921d67d39b` |
| 20 | `theorem` | [stageTwoReciprocalGap_integrableOn](../../../../MeasureAndIntegration/CanonicalSquareTentBombieriMomentRankObstruction.lean/declarations/stagetworeciprocalgap-integrableon.md) | 236 | `result-track:5da717b57fb5977c1227f025a786a13a1b7e7cc5e7d1b11fdedbee4aab0344ce` |
| 21 | `theorem` | [stageThreeReciprocalGap_integrableOn](../../../../MeasureAndIntegration/CanonicalSquareTentBombieriMomentRankObstruction.lean/declarations/stagethreereciprocalgap-integrableon.md) | 242 | `result-track:b9ac5450097a30de5f40c266cc72c5d5feea10d6bb102a7eac389af182899363` |
| 22 | `theorem` | [stageTwoReciprocalGap_integral_pos](../../../../MeasureAndIntegration/CanonicalSquareTentBombieriMomentRankObstruction.lean/declarations/stagetworeciprocalgap-integral-pos.md) | 248 | `result-track:cd857e81e7041b4c15bc0bcc3efbc512d625adadacf659434db2928cea0a425a` |
| 23 | `theorem` | [stageThreeReciprocalGap_integral_pos](../../../../MeasureAndIntegration/CanonicalSquareTentBombieriMomentRankObstruction.lean/declarations/stagethreereciprocalgap-integral-pos.md) | 267 | `result-track:577b6b6cf798afd4a855cd988558032a96323506f8c118f67adeb23b2ae8f9c0` |
| 24 | `theorem` | [stageTwo_multiplicative_gt_pivot_ordinary](../../../../MeasureAndIntegration/CanonicalSquareTentBombieriMomentRankObstruction.lean/declarations/stagetwo-multiplicative-gt-pivot-ordinary.md) | 287 | `result-track:c9e3cb467e114f89f1ede1e7786136683f3c609cee2c4ab4dc75d14c0a98a6d9` |
| 25 | `theorem` | [stageThree_multiplicative_lt_pivot_ordinary](../../../../MeasureAndIntegration/CanonicalSquareTentBombieriMomentRankObstruction.lean/declarations/stagethree-multiplicative-lt-pivot-ordinary.md) | 305 | `result-track:dd8c80a9f8ed14dce9f92ea309c971f8c2835e52fbd074c61e6fb81d1f5d99f1` |
| 26 | `def` | [twoTentMomentDeterminant](../../../../MeasureAndIntegration/CanonicalSquareTentBombieriMomentRankObstruction.lean/declarations/twotentmomentdeterminant.md) | 323 | `declaration-track:0558f899fd71e1e0de4c4f2fd5ccc3a7c10ace9141d493355b65978bc7a5f764` |
| 27 | `theorem` | [twoTentMomentDeterminant_pos](../../../../MeasureAndIntegration/CanonicalSquareTentBombieriMomentRankObstruction.lean/declarations/twotentmomentdeterminant-pos.md) | 328 | `result-track:521eef73601a5add2bf8e770c330e15c040529de4fba9f026e1c3405b02d8e7f` |
| 28 | `def` | [twoTentFunction](../../../../MeasureAndIntegration/CanonicalSquareTentBombieriMomentRankObstruction.lean/declarations/twotentfunction.md) | 356 | `declaration-track:dc747307e4546fa790a59d190fc5976d6de918b3ffd5ba315c34ef9391cf141b` |
| 29 | `def` | [ordinaryMomentMap](../../../../MeasureAndIntegration/CanonicalSquareTentBombieriMomentRankObstruction.lean/declarations/ordinarymomentmap.md) | 362 | `declaration-track:d30d06c4250079d5ea50b467cabdc07dd826a953949dfa400d5c2102bb211ea6` |
| 30 | `def` | [multiplicativeMomentMap](../../../../MeasureAndIntegration/CanonicalSquareTentBombieriMomentRankObstruction.lean/declarations/multiplicativemomentmap.md) | 367 | `declaration-track:e3c51b38c6f300b22e0457be05fb78eb8d83ee2ede4d2fce2c667599db31a989` |
| 31 | `def` | [bombieriMultiplicativeMoment](../../../../MeasureAndIntegration/CanonicalSquareTentBombieriMomentRankObstruction.lean/declarations/bombierimultiplicativemoment.md) | 372 | `declaration-track:bace918eb7b690d6f427c58825cf08b87d2bed1c2d32c4fb5cf79e1151b63ed7` |
| 32 | `theorem` | [canonicalTentComplex_integrableOn](../../../../MeasureAndIntegration/CanonicalSquareTentBombieriMomentRankObstruction.lean/declarations/canonicaltentcomplex-integrableon.md) | 375 | `result-track:c085166229afecbab0715d8d35f274273587c5885fa4861c776124ec2a39d453` |
| 33 | `theorem` | [canonicalTentComplex_div_integrableOn](../../../../MeasureAndIntegration/CanonicalSquareTentBombieriMomentRankObstruction.lean/declarations/canonicaltentcomplex-div-integrableon.md) | 381 | `result-track:440a51fab6bfc61063a17400029e7046c22f539f32a1cf29a82c8547ab9d13ac` |
| 34 | `theorem` | [bombieriMultiplicativeMoment_canonicalTent_eq](../../../../MeasureAndIntegration/CanonicalSquareTentBombieriMomentRankObstruction.lean/declarations/bombierimultiplicativemoment-canonicaltent-eq.md) | 391 | `result-track:ff70fc1dc832ebfe6463e346bb242e17e9e3f0438c3e1842f6d9c2f5e5d47eb9` |
| 35 | `theorem` | [bombieriOrdinaryMoment_twoTent_eq](../../../../MeasureAndIntegration/CanonicalSquareTentBombieriMomentRankObstruction.lean/declarations/bombieriordinarymoment-twotent-eq.md) | 403 | `result-track:4104dbb29cc09305ce1ecac32a67ad25fbc3ecc795ee1e6da6b221958c12e654` |
| 36 | `theorem` | [bombieriMultiplicativeMoment_twoTent_eq](../../../../MeasureAndIntegration/CanonicalSquareTentBombieriMomentRankObstruction.lean/declarations/bombierimultiplicativemoment-twotent-eq.md) | 417 | `result-track:7cc77f47eb5828db6242cc8172d308c7c4aeafa5cdb9dfb5e24f284e2c86e91b` |
| 37 | `theorem` | [combination_eq_zero_of_momentMaps_zero](../../../../MeasureAndIntegration/CanonicalSquareTentBombieriMomentRankObstruction.lean/declarations/combination-eq-zero-of-momentmaps-zero.md) | 432 | `result-track:1bb79e09773e788a050c2224ea64e79c2ed3ca223748b104df975feeb778ccd2` |
| 38 | `theorem` | [combination_eq_zero_of_bombieriMoments](../../../../MeasureAndIntegration/CanonicalSquareTentBombieriMomentRankObstruction.lean/declarations/combination-eq-zero-of-bombierimoments.md) | 481 | `result-track:e5b054297770d49887e951869590c9ced064ce06a576465306fe8deb52ec2fb4` |
| 39 | `structure` | [TwoTentMomentCorrectedPair](../../../../MeasureAndIntegration/CanonicalSquareTentBombieriMomentRankObstruction.lean/declarations/twotentmomentcorrectedpair.md) | 494 | `declaration-track:fb2efd1c1ca0bf54d9a26ec18b5e1fe4e99fe9b5c0821942fa47a5553f86afc9` |
| 40 | `theorem` | [vector_eq_zero](../../../../MeasureAndIntegration/CanonicalSquareTentBombieriMomentRankObstruction.lean/declarations/vector-eq-zero.md) | 501 | `result-track:d1f841d1aaa2cf18918951adf87c816252b0d5f1624afd80678f00eb8d890972` |
| 41 | `def` | [arithmeticMatrix](../../../../MeasureAndIntegration/CanonicalSquareTentBombieriMomentRankObstruction.lean/declarations/arithmeticmatrix.md) | 508 | `declaration-track:527a5396ae7027105243d7c236afc0f2afa65731902c604263fc8dc2182a319a` |
| 42 | `theorem` | [arithmeticMatrix_entry_eq_zero](../../../../MeasureAndIntegration/CanonicalSquareTentBombieriMomentRankObstruction.lean/declarations/arithmeticmatrix-entry-eq-zero.md) | 512 | `result-track:115029cc386d23319d4e2c70e8089187f85b1d10bcc2d273b239567d55752ec5` |
| 43 | `theorem` | [arithmeticMatrix_eq_zero](../../../../MeasureAndIntegration/CanonicalSquareTentBombieriMomentRankObstruction.lean/declarations/arithmeticmatrix-eq-zero.md) | 519 | `result-track:4ca7420b0630110b34d274eb9b01b5ebc07dfcc3a2d0c905cda4c289b85ae4f3` |
| 44 | `structure` | [NondegenerateTwoTentMomentCorrectedPair](../../../../MeasureAndIntegration/CanonicalSquareTentBombieriMomentRankObstruction.lean/declarations/nondegeneratetwotentmomentcorrectedpair.md) | 529 | `declaration-track:b4b02ee55f5244690f09dd982c79010c2f92da323599ae1acb9ff89dd5144baa` |
| 45 | `theorem` | [no_nondegenerateTwoTentMomentCorrectedPair](../../../../MeasureAndIntegration/CanonicalSquareTentBombieriMomentRankObstruction.lean/declarations/no-nondegeneratetwotentmomentcorrectedpair.md) | 537 | `result-track:eb9882a0d5ab765adf2751fd87b04bda33c919f8390ffe1a511f3313ff8c30ac` |
| 46 | `structure` | [TwoTentMomentRankObstructionPacket](../../../../MeasureAndIntegration/CanonicalSquareTentBombieriMomentRankObstruction.lean/declarations/twotentmomentrankobstructionpacket-source-edition-2.md) | 558 | `declaration-track:ec3cdce0888aa3d184a2174260933b05794af209f215652241e3f16dea25a409` |
| 47 | `def` | [twoTentMomentRankObstructionPacket](../../../../MeasureAndIntegration/CanonicalSquareTentBombieriMomentRankObstruction.lean/declarations/twotentmomentrankobstructionpacket.md) | 571 | `declaration-track:00f285f1e0a2ad80ef8eeee67d3408e58ab7533067d386225fc75a806beb73ac` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=037ae941607ef7f0f2db2ea40a0c0eada3884c7f3513f4e6f076340bbeb2265c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/Zeta/Riemann/CanonicalSquareTentBombieriMomentRankObstruction.lean","GRWTSK/_verification/specifications/NumberTheory/Zeta/Riemann/CanonicalSquareTentBombieriMomentRankObstruction.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
