# Verification target: Canonical Embedding Polar Coord Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "699dfbcf97b0c0cba6a84ec0e18389dd95211880",
  "lexical_observation_count": 42,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/PolarCoord/Variant970f49a956d62d914c543e365e13b202dbca8165d15694e73684b1ac1c0c2471.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/CanonicalEmbeddingPolarCoordPublic.lean/index.md) · [Full source](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/CanonicalEmbeddingPolarCoordPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `699dfbcf97b0c0cba6a84ec0e18389dd95211880`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/PolarCoord/Variant970f49a956d62d914c543e365e13b202dbca8165d15694e73684b1ac1c0c2471.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/PolarCoord/Variant970f49a956d62d914c543e365e13b202dbca8165d15694e73684b1ac1c0c2471.lean.json)

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
| 1 | `abbrev` | [realMixedSpace](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/CanonicalEmbeddingPolarCoordPublic.lean/declarations/realmixedspace.md) | 66 | `declaration-track:8d20e5540179dae925e42b4b7bfedf28661a0b98cb68c091396dfbfa325eb8a6` |
| 2 | `def` | [mixedSpaceToRealMixedSpace](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/CanonicalEmbeddingPolarCoordPublic.lean/declarations/mixedspacetorealmixedspace.md) | 73 | `declaration-track:3897f6157e870224eb75f7616fd8223dd8e3450f10c25c650d1ae68b82efb235` |
| 3 | `theorem` | [mixedSpaceToRealMixedSpace_apply](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/CanonicalEmbeddingPolarCoordPublic.lean/declarations/mixedspacetorealmixedspace-apply.md) | 77 | `result-track:6a6429786b70f67f8c2ecc5debb4ed23358687e61ed54858fff4a56783a3419c` |
| 4 | `theorem` | [volume_preserving_mixedSpaceToRealMixedSpace_symm](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/CanonicalEmbeddingPolarCoordPublic.lean/declarations/volume-preserving-mixedspacetorealmixedspace-symm.md) | 83 | `result-track:b0b57a9b99f29942a5d182034ad9f01f928366bf38caef68cd17cd0fbe6c1146` |
| 5 | `instance` | [(anonymous)](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/CanonicalEmbeddingPolarCoordPublic.lean/declarations/instance.md) | 89 | `declaration-track:0654f21301215fa30261a541572cda2953949853226944757f952f1b7fd48d66` |
| 6 | `def` | [polarCoordReal](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/CanonicalEmbeddingPolarCoordPublic.lean/declarations/polarcoordreal.md) | 96 | `declaration-track:12faf0ac4a61a1a2b4f83cf784cd4da43728b3d0d6995eb151477642b87a6b19` |
| 7 | `theorem` | [measurable_polarCoordReal_symm](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/CanonicalEmbeddingPolarCoordPublic.lean/declarations/measurable-polarcoordreal-symm.md) | 99 | `result-track:a8e78b5da1c22ca7f4e485b47e9c3d0e50823bb2eb53c7d76ec0e3b2f4818dd0` |
| 8 | `theorem` | [polarCoordReal_source](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/CanonicalEmbeddingPolarCoordPublic.lean/declarations/polarcoordreal-source.md) | 104 | `result-track:5f070dcae518b555953d5ba673040d6dc22c5213e5416f31729b7fd78bdc4a99` |
| 9 | `theorem` | [abs_of_mem_polarCoordReal_target](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/CanonicalEmbeddingPolarCoordPublic.lean/declarations/abs-of-mem-polarcoordreal-target.md) | 107 | `result-track:55990292483585fa8167abba61c91183694e66c206008f6c29783db0c60d2758` |
| 10 | `def` | [FDerivPolarCoordRealSymm](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/CanonicalEmbeddingPolarCoordPublic.lean/declarations/fderivpolarcoordrealsymm.md) | 116 | `declaration-track:2645fcdcdd6cccf9b44cb6036b8c66a3a8d5a53cb55bfa33f1df961c7ca750c3` |
| 11 | `theorem` | [hasFDerivAt_polarCoordReal_symm](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/CanonicalEmbeddingPolarCoordPublic.lean/declarations/hasfderivat-polarcoordreal-symm.md) | 119 | `result-track:ff2f4102e9ec7d833a775a279c22c2a8cf46e8b0bd00c970ef85a495849aaa59` |
| 12 | `theorem` | [det_fderivPolarCoordRealSymm](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/CanonicalEmbeddingPolarCoordPublic.lean/declarations/det-fderivpolarcoordrealsymm.md) | 125 | `result-track:74d8ec8a123c18a24fd8ba1ca78a3e46c0ecde6237a46fb9dad5fd4ff210b504` |
| 13 | `theorem` | [polarCoordReal_symm_target_ae_eq_univ](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/CanonicalEmbeddingPolarCoordPublic.lean/declarations/polarcoordreal-symm-target-ae-eq-univ.md) | 133 | `result-track:80f00ffa5d871d180c09ca5b25c47312ed2a044c35e12fca46942f4ac8a8f201` |
| 14 | `theorem` | [integral_comp_polarCoordReal_symm](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/CanonicalEmbeddingPolarCoordPublic.lean/declarations/integral-comp-polarcoordreal-symm.md) | 140 | `result-track:5669d7caf12be3c952aa557c977f521531bfe17f53e5c3ceb8ede82a2a475638` |
| 15 | `theorem` | [lintegral_comp_polarCoordReal_symm](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/CanonicalEmbeddingPolarCoordPublic.lean/declarations/lintegral-comp-polarcoordreal-symm.md) | 154 | `result-track:8ffe4f2a6f2deaf04a763aef68dab2fd7943ed09c68b68311721d56e8d9562cd` |
| 16 | `def` | [polarCoord](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/CanonicalEmbeddingPolarCoordPublic.lean/declarations/polarcoord.md) | 178 | `declaration-track:653aeb2fca148e0b10b77004bdfe88d9b85729f9a1939d7136464423c094c5ce` |
| 17 | `theorem` | [polarCoord_target_eq_polarCoordReal_target](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/CanonicalEmbeddingPolarCoordPublic.lean/declarations/polarcoord-target-eq-polarcoordreal-target.md) | 181 | `result-track:f59bb3f1b7e43977f60ab3a8096066dc0d107204b9450bbce2740fa678f02f48` |
| 18 | `theorem` | [polarCoord_symm_eq](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/CanonicalEmbeddingPolarCoordPublic.lean/declarations/polarcoord-symm-eq.md) | 184 | `result-track:b617c50e476330dfec13a6b8958cf7870ab2bba458da589317ae3f90f131459b` |
| 19 | `theorem` | [measurable_polarCoord_symm](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/CanonicalEmbeddingPolarCoordPublic.lean/declarations/measurable-polarcoord-symm.md) | 188 | `result-track:1ea253d992bbfd35e3cf9297ab28c6513d9eb583f6ece6bead20bbcce0d086cd` |
| 20 | `theorem` | [normAtPlace_polarCoord_symm_of_isReal](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/CanonicalEmbeddingPolarCoordPublic.lean/declarations/normatplace-polarcoord-symm-of-isreal.md) | 193 | `result-track:f15ab3f2d07b4fe21b95b4b268ee2003d3f0279abfb2ef1b166a5252c94105e3` |
| 21 | `theorem` | [normAtPlace_polarCoord_symm_of_isComplex](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/CanonicalEmbeddingPolarCoordPublic.lean/declarations/normatplace-polarcoord-symm-of-iscomplex.md) | 198 | `result-track:29ff5a34397ddda6d90878efc791ac38fd5ea0f867b521e900fae01968948647` |
| 22 | `theorem` | [integral_comp_polarCoord_symm](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/CanonicalEmbeddingPolarCoordPublic.lean/declarations/integral-comp-polarcoord-symm.md) | 204 | `result-track:97555e52e0c861080d3efc86c2b4e6e45fa2fb705cbe3f2419952b85148c3202` |
| 23 | `theorem` | [lintegral_comp_polarCoord_symm](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/CanonicalEmbeddingPolarCoordPublic.lean/declarations/lintegral-comp-polarcoord-symm.md) | 214 | `result-track:8d2236247249b7d90514c4d105140093338ccb60967b802e9aaac4f3d9bf8d2c` |
| 24 | `abbrev` | [polarSpace](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/CanonicalEmbeddingPolarCoordPublic.lean/declarations/polarspace.md) | 231 | `declaration-track:067fcf533c4cdfc1d785569bb95f3fdf0e8349c90ac54e185a35c373d9b1ff0c` |
| 25 | `def` | [measurableEquivRealMixedSpacePolarSpace](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/CanonicalEmbeddingPolarCoordPublic.lean/declarations/measurableequivrealmixedspacepolarspace.md) | 239 | `declaration-track:32b6752bb2093a2e4f7f6ce08be4ef3bb03549a29c95472ef0afa3f188c2b377` |
| 26 | `def` | [homeoRealMixedSpacePolarSpace](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/CanonicalEmbeddingPolarCoordPublic.lean/declarations/homeorealmixedspacepolarspace.md) | 253 | `declaration-track:55ec1697852a3a26473432d50534a1053dcb1924ed407c8c7b9b2c67230a075b` |
| 27 | `theorem` | [homeoRealMixedSpacePolarSpace_apply](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/CanonicalEmbeddingPolarCoordPublic.lean/declarations/homeorealmixedspacepolarspace-apply.md) | 266 | `result-track:7befe979c98228610c7a94c5de27c60cc8700a048d1b7670f206ec8ff8d62658` |
| 28 | `theorem` | [homeoRealMixedSpacePolarSpace_apply_fst_ofIsReal](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/CanonicalEmbeddingPolarCoordPublic.lean/declarations/homeorealmixedspacepolarspace-apply-fst-ofisreal.md) | 271 | `result-track:e1a4fb2dab059f91d6dd7c750a3d8ecc53c81052a2b057d9b2b97710c1ff3a87` |
| 29 | `theorem` | [homeoRealMixedSpacePolarSpace_apply_fst_ofIsComplex](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/CanonicalEmbeddingPolarCoordPublic.lean/declarations/homeorealmixedspacepolarspace-apply-fst-ofiscomplex.md) | 276 | `result-track:8bedb0adf5dba391e023e1afcec76b1fe280c8d87863264a9e6f79023e516c4e` |
| 30 | `theorem` | [homeoRealMixedSpacePolarSpace_apply_snd](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/CanonicalEmbeddingPolarCoordPublic.lean/declarations/homeorealmixedspacepolarspace-apply-snd.md) | 281 | `result-track:e57b8b40c12e1e98037bf96b5c0f2b65293c1498b9482c249ba07103ce7ca587` |
| 31 | `theorem` | [homeoRealMixedSpacePolarSpace_symm_apply](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/CanonicalEmbeddingPolarCoordPublic.lean/declarations/homeorealmixedspacepolarspace-symm-apply.md) | 285 | `result-track:07e913f70ddab62f2870fed85cca10ffec4280eed2bfeb86e109acc1b49f9da6` |
| 32 | `theorem` | [volume_preserving_homeoRealMixedSpacePolarSpace](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/CanonicalEmbeddingPolarCoordPublic.lean/declarations/volume-preserving-homeorealmixedspacepolarspace.md) | 289 | `result-track:3b67db812fcd85ddda2ec0ec7de9e728b62883a706d5f26009ea2e6c5fcfacd7` |
| 33 | `def` | [polarSpaceCoord](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/CanonicalEmbeddingPolarCoordPublic.lean/declarations/polarspacecoord.md) | 305 | `declaration-track:4a6f06b807081836694983b22716914ad3aa3aa958f9c14e85b45cc888277e9f` |
| 34 | `theorem` | [measurable_polarSpaceCoord_symm](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/CanonicalEmbeddingPolarCoordPublic.lean/declarations/measurable-polarspacecoord-symm.md) | 308 | `result-track:0cb2772a0c999d0479b78dd38171e0c8d6e2fcd4a53652620447414f7ac5e264` |
| 35 | `theorem` | [polarSpaceCoord_target'](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/CanonicalEmbeddingPolarCoordPublic.lean/declarations/polarspacecoord-target.md) | 314 | `result-track:04392c7a3e0d7697aa0fbdcc755c8efe36512021f56d4e8439456907de8a8999` |
| 36 | `theorem` | [integral_comp_polarSpaceCoord_symm](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/CanonicalEmbeddingPolarCoordPublic.lean/declarations/integral-comp-polarspacecoord-symm.md) | 324 | `result-track:ef97f0050900b24867952a3699f96837e72a0d1e2ef8a352b2b94d31d8f54eee` |
| 37 | `theorem` | [lintegral_comp_polarSpaceCoord_symm](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/CanonicalEmbeddingPolarCoordPublic.lean/declarations/lintegral-comp-polarspacecoord-symm.md) | 338 | `result-track:89e3ba5a009b59036a41baac4a6bce707e65640d3f6e214262a08ebb39633dfa` |
| 38 | `theorem` | [normAtComplexPlaces_polarSpaceCoord_symm](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/CanonicalEmbeddingPolarCoordPublic.lean/declarations/normatcomplexplaces-polarspacecoord-symm.md) | 355 | `result-track:c9552afb104c0911bdc7179dce064d07f673aa44f1cd60caa452d7e40ffe0e22` |
| 39 | `theorem` | [volume_eq_two_pi_pow_mul_integral_aux](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/CanonicalEmbeddingPolarCoordPublic.lean/declarations/volume-eq-two-pi-pow-mul-integral-aux.md) | 364 | `result-track:b9d0ec093bdd5f0497eeaf47b9f8192c4dead247b06a3d52eb24974218b6f595` |
| 40 | `theorem` | [volume_eq_two_pi_pow_mul_integral](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/CanonicalEmbeddingPolarCoordPublic.lean/declarations/volume-eq-two-pi-pow-mul-integral.md) | 389 | `result-track:21e44be40b03cabdf5d4b482db2c928c756f83d6b439ff14350137cb7c9483aa` |
| 41 | `theorem` | [volume_eq_two_pow_mul_two_pi_pow_mul_integral_aux](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/CanonicalEmbeddingPolarCoordPublic.lean/declarations/volume-eq-two-pow-mul-two-pi-pow-mul-integral-aux.md) | 412 | `result-track:694cb47420c60f8d1ed4be9d326664175fd9002c91dcbaf1c3dc9da7474be992` |
| 42 | `theorem` | [volume_eq_two_pow_mul_two_pi_pow_mul_integral](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/CanonicalEmbeddingPolarCoordPublic.lean/declarations/volume-eq-two-pow-mul-two-pi-pow-mul-integral.md) | 440 | `result-track:a78f4eb3b1ce5b902f92476c79cf25745652105dd236b95410ac5c59a7767bc7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f7450f2ce67d5d5420395e6c68193a93f71a3b3c2602695143db1d65c647ebb4 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/PolarCoord/Variant970f49a956d62d914c543e365e13b202dbca8165d15694e73684b1ac1c0c2471.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/Integration/PolarCoord/Variant970f49a956d62d914c543e365e13b202dbca8165d15694e73684b1ac1c0c2471.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
