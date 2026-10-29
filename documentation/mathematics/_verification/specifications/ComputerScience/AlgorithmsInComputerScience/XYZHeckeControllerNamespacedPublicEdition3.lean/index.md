# Verification target: XYZHecke Controller Namespaced Public Edition3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "566288ead1f39cf50efb9617bd4f28ed1d0e6940",
  "lexical_observation_count": 49,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/XYZHeckeController/Variantf118d6ff3d5bea8ce36821e419cb6c9a561a4adbd6d731177ac26d79fc085dfe.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZHeckeControllerNamespacedPublicEdition3.lean/index.md) · [Full source](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZHeckeControllerNamespacedPublicEdition3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `566288ead1f39cf50efb9617bd4f28ed1d0e6940`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/XYZHeckeController/Variantf118d6ff3d5bea8ce36821e419cb6c9a561a4adbd6d731177ac26d79fc085dfe.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/XYZHeckeController/Variantf118d6ff3d5bea8ce36821e419cb6c9a561a4adbd6d731177ac26d79fc085dfe.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.List.Nodup` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [HeckeMatrixV1](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZHeckeControllerNamespacedPublicEdition3.lean/declarations/heckematrixv1.md) | 36 | `declaration-track:f4c9e423db576b9f9c8042d8d51773f98f2404e7f1f00a82de21c689b1efe3fd` |
| 2 | `def` | [HeckeMatrixV1.det](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZHeckeControllerNamespacedPublicEdition3.lean/declarations/heckematrixv1-det.md) | 43 | `declaration-track:5be3abe947230af3e25f6c477a8711504241391badb9a769889c2d2ca084d98f` |
| 3 | `structure` | [HeckeCosetV1](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZHeckeControllerNamespacedPublicEdition3.lean/declarations/heckecosetv1.md) | 47 | `declaration-track:986ba905af02062611f06f56e0ae9490fd5ec24577957ee6bfbdf356e417e2f3` |
| 4 | `def` | [makeHeckeCosetV1](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZHeckeControllerNamespacedPublicEdition3.lean/declarations/makeheckecosetv1.md) | 54 | `declaration-track:7bb78de12992420a2b7e76a803fa2fb01f2418e4a552b687892463a856a56d66` |
| 5 | `def` | [positiveDivisorsAscending](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZHeckeControllerNamespacedPublicEdition3.lean/declarations/positivedivisorsascending.md) | 69 | `declaration-track:9ac78544c11b46e1cf44336c4acefe7382f2f9cb7aff042cee68c85f34e5b8ed` |
| 6 | `theorem` | [positiveDivisorsAscending_sound](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZHeckeControllerNamespacedPublicEdition3.lean/declarations/positivedivisorsascending-sound.md) | 73 | `result-track:5b03253d4886b4a6903dea283fab2e312579c1fc497cfd9995382658d7b8d812` |
| 7 | `def` | [heckeCosets](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZHeckeControllerNamespacedPublicEdition3.lean/declarations/heckecosets.md) | 81 | `declaration-track:553b85a54207923c1f1d7b3f9c81d8c28946d4ee7d9f19b50b2037ebf06d6f7e` |
| 8 | `theorem` | [heckeCosets_deterministic](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZHeckeControllerNamespacedPublicEdition3.lean/declarations/heckecosets-deterministic.md) | 86 | `result-track:d759eb46f112322dd9c847da2c95a3703036d3c86b6dfc5a926d426c2a132173` |
| 9 | `def` | [HeckeCosetV1.Before](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZHeckeControllerNamespacedPublicEdition3.lean/declarations/heckecosetv1-before.md) | 94 | `declaration-track:fd49506a53177fbe3ec622b392e01f6c525cdf1cd1b1e49c57ceb4fc18861d3f` |
| 10 | `theorem` | [heckeCosets_stable_order](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZHeckeControllerNamespacedPublicEdition3.lean/declarations/heckecosets-stable-order.md) | 99 | `result-track:1b65c89b94ae502b76f12e97632499f1fdae6d8e4f6ded5cc42ebeffb44f99c6` |
| 11 | `theorem` | [heckeCosets_nodup](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZHeckeControllerNamespacedPublicEdition3.lean/declarations/heckecosets-nodup.md) | 118 | `result-track:ec26d7ade17846dda8d70c661f450b9b3cad4d4f6132c4cdea6d57a49ad441bb` |
| 12 | `theorem` | [heckeCoset_coordinates](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZHeckeControllerNamespacedPublicEdition3.lean/declarations/heckecoset-coordinates.md) | 144 | `result-track:05d083e0917cb4af0f085e8cca0cd71cdefde582d8bdebf2d7f7e535cdcfa352` |
| 13 | `theorem` | [heckeCosetMatrix_det](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZHeckeControllerNamespacedPublicEdition3.lean/declarations/heckecosetmatrix-det.md) | 153 | `result-track:eabcb93801aa0301ec3154b3aeb7241e0187f538bbad0e33686be407dc023e1e` |
| 14 | `def` | [sumPositiveDivisors](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZHeckeControllerNamespacedPublicEdition3.lean/declarations/sumpositivedivisors.md) | 165 | `declaration-track:8c325b7cbb27fa620646d3b68dabc8d56fa54abd16e242c68dd098d405b52c87` |
| 15 | `theorem` | [heckeCoset_count_eq_sum_divisors](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZHeckeControllerNamespacedPublicEdition3.lean/declarations/heckecoset-count-eq-sum-divisors.md) | 169 | `result-track:80074cfa8bade590f7747fdc791d5d8d6a4c8ac093625dc0a6b77d59c921cc47` |
| 16 | `def` | [heckeScheduleSchemaV1](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZHeckeControllerNamespacedPublicEdition3.lean/declarations/heckescheduleschemav1.md) | 175 | `declaration-track:8632032c5b37e56d542bb9b709a32c3b29ec9141b13562df571b7f0073a69347` |
| 17 | `def` | [heckeScheduleTransformIdV1](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZHeckeControllerNamespacedPublicEdition3.lean/declarations/heckescheduletransformidv1.md) | 178 | `declaration-track:2ddfde4c6d08b74636abca6a015b5c1cce39c413fea8e9f7a3e19e1553be5de3` |
| 18 | `def` | [heckeScheduleMaxNV1](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZHeckeControllerNamespacedPublicEdition3.lean/declarations/heckeschedulemaxnv1.md) | 181 | `declaration-track:55bc7ec94b8417f1aa4aa3a7a9c12870f4d3f4c5ab4aa05c62c982897200c303` |
| 19 | `structure` | [ScheduleVectorV1](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZHeckeControllerNamespacedPublicEdition3.lean/declarations/schedulevectorv1.md) | 185 | `declaration-track:cf3c523c1c57b9fd3830421034194f471357d89843494b2db9859e8738347564` |
| 20 | `def` | [ScheduleVectorV1.Valid](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZHeckeControllerNamespacedPublicEdition3.lean/declarations/schedulevectorv1-valid.md) | 190 | `declaration-track:7010f44d6ebb54a3b5a19a7b48471a10dcb0440a22e1f1dddf4f9f3a318ec986` |
| 21 | `instance` | [(anonymous)](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZHeckeControllerNamespacedPublicEdition3.lean/declarations/instance.md) | 193 | `declaration-track:678989aae12bff4df5fe9adbcb6150923b9d8079ddf8f3075cab0fdf5fcf8402` |
| 22 | `structure` | [HeckeScheduleTransformV1](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZHeckeControllerNamespacedPublicEdition3.lean/declarations/heckescheduletransformv1.md) | 198 | `declaration-track:44fec0e6e0583372c9c1b64cb09716c1234df23b5f080c58f5c6452956c8ba0f` |
| 23 | `def` | [checkedScheduleI128](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZHeckeControllerNamespacedPublicEdition3.lean/declarations/checkedschedulei128.md) | 210 | `declaration-track:537916958ea2732dccbfbcaf047cf924c38358be184b0b9c3d8f6bdf037d1854` |
| 24 | `def` | [checkedScheduleAddI128](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZHeckeControllerNamespacedPublicEdition3.lean/declarations/checkedscheduleaddi128.md) | 213 | `declaration-track:daee1536e412f708d113a76935c933f6a87c7a3b4800d8b5ebb51d4678738dcd` |
| 25 | `def` | [checkedScheduleMulI128](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZHeckeControllerNamespacedPublicEdition3.lean/declarations/checkedschedulemuli128.md) | 216 | `declaration-track:233bae411beb0325e432b6a611aeb8c163dd5993ba79da93418820e58fdf8787` |
| 26 | `def` | [roundDivNearestEvenI64](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZHeckeControllerNamespacedPublicEdition3.lean/declarations/rounddivnearesteveni64.md) | 222 | `declaration-track:91febbe86441ca684b81c2fab8b586719fe94d458903f5c06936878b91594af4` |
| 27 | `def` | [checkedApplyHeckeCoset](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZHeckeControllerNamespacedPublicEdition3.lean/declarations/checkedapplyheckecoset.md) | 235 | `declaration-track:31b87e29bd669f34576fbabf49115e5ef2e5648b64ece0936c20dc19043a3b7e` |
| 28 | `def` | [accumulateHeckeSchedule](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZHeckeControllerNamespacedPublicEdition3.lean/declarations/accumulateheckeschedule.md) | 245 | `declaration-track:3102e2ea0e9fe8ab27b63e110bc2726b04dab6c688e0800a8102109fd3322655` |
| 29 | `def` | [HeckeScheduleLevelValidV1](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZHeckeControllerNamespacedPublicEdition3.lean/declarations/heckeschedulelevelvalidv1.md) | 257 | `declaration-track:8e2bc79f55b7e8700a2eb2342d0e20227ce976c64a96052b48666bb860b21d32` |
| 30 | `instance` | [(anonymous)](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZHeckeControllerNamespacedPublicEdition3.lean/declarations/instance-source-edition-2.md) | 260 | `declaration-track:c2c3bcfdd686e20e764d77ab5dea4babe719e1319b42ddc99685d484ef00fbff` |
| 31 | `def` | [heckeScheduleTransformV1](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZHeckeControllerNamespacedPublicEdition3.lean/declarations/heckescheduletransformv1-source-edition-2.md) | 268 | `declaration-track:d6a611751714a19e544da6369563db9357cafa1210a21458016bfc1dea1fb362` |
| 32 | `theorem` | [heckeScheduleTransformV1_deterministic](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZHeckeControllerNamespacedPublicEdition3.lean/declarations/heckescheduletransformv1-deterministic.md) | 297 | `result-track:1c874f46cf7b56b73d18c1beb52fe19e38c0cf6ebd89d02005c0014884852391` |
| 33 | `theorem` | [heckeScheduleTransformV1_zero_rejected](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZHeckeControllerNamespacedPublicEdition3.lean/declarations/heckescheduletransformv1-zero-rejected.md) | 307 | `result-track:74aa7abdb7c5780dedd173c8099804f2895a3ba8c09cc2e9b868fae48b5aa567` |
| 34 | `theorem` | [heckeScheduleTransformV1_above_bound_rejected](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZHeckeControllerNamespacedPublicEdition3.lean/declarations/heckescheduletransformv1-above-bound-rejected.md) | 313 | `result-track:22042bfe54cddf62150c7efca2239e5d67995f617151af7d5123b83f0d9c4a4d` |
| 35 | `theorem` | [heckeScheduleTransformV1_cosets_exact](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZHeckeControllerNamespacedPublicEdition3.lean/declarations/heckescheduletransformv1-cosets-exact.md) | 321 | `result-track:373c6f86c00eee33a8692522c3a8c21751277af5e8131eab3d7e007ab3a6b804` |
| 36 | `structure` | [ClassicalHeckeConformanceCertificate](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZHeckeControllerNamespacedPublicEdition3.lean/declarations/classicalheckeconformancecertificate.md) | 344 | `declaration-track:af7f194c6a8497d6491a04b65115cdb4d20ade54f206ab079f908815016758b9` |
| 37 | `theorem` | [ClassicalHeckeConformanceCertificate.certified](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZHeckeControllerNamespacedPublicEdition3.lean/declarations/classicalheckeconformancecertificate-certified.md) | 349 | `result-track:687a03b7bfa40e35c1ab5b579cc44e276c306abf44449105d35b9c4c439a3e87` |
| 38 | `def` | [ProvesClassicalHeckeAction](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZHeckeControllerNamespacedPublicEdition3.lean/declarations/provesclassicalheckeaction.md) | 354 | `declaration-track:fa7fd25b62fd0abe57fbde0a1266811f6b32373a934a2d71f1b6dc62dd37052a` |
| 39 | `theorem` | [heckeSchedule_has_no_classical_hecke_authority](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZHeckeControllerNamespacedPublicEdition3.lean/declarations/heckeschedule-has-no-classical-hecke-authority.md) | 359 | `result-track:a3adbba8c2b019359ecad9a0c310bf57c5fb3bb8bfc0ef0656dbc420ee611fa0` |
| 40 | `structure` | [ModularScaleLevel](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZHeckeControllerNamespacedPublicEdition3.lean/declarations/modularscalelevel.md) | 367 | `declaration-track:6e9bf452dfb2d91af1969ab0d4834529265c0bc443c7599c9271d735a03e85f5` |
| 41 | `def` | [ModularScaleLevel.BoundsValid](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZHeckeControllerNamespacedPublicEdition3.lean/declarations/modularscalelevel-boundsvalid.md) | 376 | `declaration-track:b5d330f66106a0124648f02791ea991d3647b6b412668a1d35f41a8dd6dc9fa1` |
| 42 | `def` | [ModularLevelsOrdered](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZHeckeControllerNamespacedPublicEdition3.lean/declarations/modularlevelsordered.md) | 381 | `declaration-track:7701c34dbc9b242c0d47c490651dc09c691fc915111b5a7a999a38c7082a896d` |
| 43 | `def` | [ModularRevisionsMonotone](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZHeckeControllerNamespacedPublicEdition3.lean/declarations/modularrevisionsmonotone.md) | 385 | `declaration-track:0dee9c86d7759187e20f89eef1a059be41fc67def0cdcdf8732f026a6ad8fa1e` |
| 44 | `def` | [ModularBoundsValid](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZHeckeControllerNamespacedPublicEdition3.lean/declarations/modularboundsvalid.md) | 391 | `declaration-track:5b11eb58b00ecb8f70afcb44958226bc89569d2d79873fcc27f5ec34a81375fe` |
| 45 | `structure` | [ModularControllerPlan](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZHeckeControllerNamespacedPublicEdition3.lean/declarations/modularcontrollerplan.md) | 398 | `declaration-track:81562b9937ed74356c13f768b605f5997c02acde68c3977ba32481e3c79c1d72` |
| 46 | `structure` | [BoundedBracketProgramMetadata](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZHeckeControllerNamespacedPublicEdition3.lean/declarations/boundedbracketprogrammetadata.md) | 409 | `declaration-track:91eb16753a348bae69de95bc4d37d08f0e9349ea2998b8687cf417dbe160a435` |
| 47 | `def` | [ModularScaleLevel.bracketMetadata](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZHeckeControllerNamespacedPublicEdition3.lean/declarations/modularscalelevel-bracketmetadata.md) | 416 | `declaration-track:1ec1e6e75bd6c5ddf96eb4659510aac290cc9fe1c6f079a0007a38e48749f681` |
| 48 | `def` | [ProvesClassicalHeckeFromModularPlan](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZHeckeControllerNamespacedPublicEdition3.lean/declarations/provesclassicalheckefrommodularplan.md) | 423 | `declaration-track:0214ecb42a834a90931bcf42814e6bae3c214d807e85df53cdeb1d7581880984` |
| 49 | `theorem` | [modularControllerPlan_has_no_classical_hecke_authority](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZHeckeControllerNamespacedPublicEdition3.lean/declarations/modularcontrollerplan-has-no-classical-hecke-authority.md) | 428 | `result-track:50c4c63b93e788c8098bea50aa20003d7e1fd62277b22900cff813701f079e83` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=2158f7c2e02640bf39f072f84ee637d02668d16fbce678948b7b701bd86a3022 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/XYZHeckeController/Variantf118d6ff3d5bea8ce36821e419cb6c9a561a4adbd6d731177ac26d79fc085dfe.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/XYZHeckeController/Variantf118d6ff3d5bea8ce36821e419cb6c9a561a4adbd6d731177ac26d79fc085dfe.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
