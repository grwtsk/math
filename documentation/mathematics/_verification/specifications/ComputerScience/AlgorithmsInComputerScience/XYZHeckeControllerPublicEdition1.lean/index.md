# Verification target: XYZHecke Controller Public Edition1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a1a5264dc10bfb2ca49e76a6640fc98e32455a5f",
  "lexical_observation_count": 49,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/XYZHeckeController/Variant421d42e01d37b56496ce33c7024c6a1ba7ac7e027b2eb377584834b2c2c0e938.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZHeckeControllerPublicEdition1.lean/index.md) · [Full source](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZHeckeControllerPublicEdition1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a1a5264dc10bfb2ca49e76a6640fc98e32455a5f`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/XYZHeckeController/Variant421d42e01d37b56496ce33c7024c6a1ba7ac7e027b2eb377584834b2c2c0e938.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/XYZHeckeController/Variant421d42e01d37b56496ce33c7024c6a1ba7ac7e027b2eb377584834b2c2c0e938.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.List.Nodup` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [HeckeMatrixV1](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZHeckeControllerPublicEdition1.lean/declarations/heckematrixv1.md) | 28 | `declaration-track:e2f01b45d480d1f86b3550a8cd5fb0d662dc8da4651464c3a0a5687dcd71d989` |
| 2 | `def` | [HeckeMatrixV1.det](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZHeckeControllerPublicEdition1.lean/declarations/heckematrixv1-det.md) | 35 | `declaration-track:52d7116d9842db2aa74472a6dcd0ecc9af156ce98ed1fc56b42376911c8aa267` |
| 3 | `structure` | [HeckeCosetV1](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZHeckeControllerPublicEdition1.lean/declarations/heckecosetv1.md) | 39 | `declaration-track:bc9be0521aa1d01dd46223471eb3c376eb4bb61ef2e7c37bd2ec4f6272c480eb` |
| 4 | `def` | [makeHeckeCosetV1](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZHeckeControllerPublicEdition1.lean/declarations/makeheckecosetv1.md) | 46 | `declaration-track:b48ba9a4b0a3065f214491c69ad886ff656d8632a17768f192e1c593f2d0a5e4` |
| 5 | `def` | [positiveDivisorsAscending](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZHeckeControllerPublicEdition1.lean/declarations/positivedivisorsascending.md) | 61 | `declaration-track:6b16f540c9d2bac2d8ee1bf5d9ff00e9e47ac15aecc99785ee8447affcb0c809` |
| 6 | `theorem` | [positiveDivisorsAscending_sound](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZHeckeControllerPublicEdition1.lean/declarations/positivedivisorsascending-sound.md) | 65 | `result-track:c4d47d524abd876d4b43a503e680df17a0723b4da74c10f02c8f852b568a894c` |
| 7 | `def` | [heckeCosets](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZHeckeControllerPublicEdition1.lean/declarations/heckecosets.md) | 73 | `declaration-track:13f3354831fda965fe944a3ed1388d787b38cee87550b1ec6b67b8c6a0b892e3` |
| 8 | `theorem` | [heckeCosets_deterministic](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZHeckeControllerPublicEdition1.lean/declarations/heckecosets-deterministic.md) | 78 | `result-track:46d589d5e1de150bada34eb072339501db899bf1a85e2fa2c5e022077617eafd` |
| 9 | `def` | [HeckeCosetV1.Before](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZHeckeControllerPublicEdition1.lean/declarations/heckecosetv1-before.md) | 86 | `declaration-track:1ab0519601868295c8d32fb08ef7965e3fadda4715deb899c298d12d269eb3da` |
| 10 | `theorem` | [heckeCosets_stable_order](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZHeckeControllerPublicEdition1.lean/declarations/heckecosets-stable-order.md) | 91 | `result-track:6303acffd71f8cada7835251c13d475843effbe11f632bf67e8c370cc058497b` |
| 11 | `theorem` | [heckeCosets_nodup](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZHeckeControllerPublicEdition1.lean/declarations/heckecosets-nodup.md) | 110 | `result-track:d75f1823e50c67c7c2487ec31ba6b177b261aebbe81b5359a79c35a6afa19e46` |
| 12 | `theorem` | [heckeCoset_coordinates](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZHeckeControllerPublicEdition1.lean/declarations/heckecoset-coordinates.md) | 136 | `result-track:a7a79d7ce22742aa2d54486d082e928a20a320f89378c85d631e96bf740368d7` |
| 13 | `theorem` | [heckeCosetMatrix_det](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZHeckeControllerPublicEdition1.lean/declarations/heckecosetmatrix-det.md) | 145 | `result-track:1c3cbff715313fbb6a8a3c5d2804f6e45f144034a4b2533c256b095f65446cb6` |
| 14 | `def` | [sumPositiveDivisors](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZHeckeControllerPublicEdition1.lean/declarations/sumpositivedivisors.md) | 157 | `declaration-track:7512b3bca4d1710f272d6fab258e14a953ec91873a6876ac1f733199bc1e6308` |
| 15 | `theorem` | [heckeCoset_count_eq_sum_divisors](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZHeckeControllerPublicEdition1.lean/declarations/heckecoset-count-eq-sum-divisors.md) | 161 | `result-track:b79dc1b22a32b38f46d3dd1e02b44132d289cfd3329f4d5b569f1ea6a632715e` |
| 16 | `def` | [heckeScheduleSchemaV1](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZHeckeControllerPublicEdition1.lean/declarations/heckescheduleschemav1.md) | 167 | `declaration-track:004de1fba093c8692c95a9fc4eefe54d30aedb3ac5063dcde14b6deed8858d24` |
| 17 | `def` | [heckeScheduleTransformIdV1](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZHeckeControllerPublicEdition1.lean/declarations/heckescheduletransformidv1.md) | 170 | `declaration-track:ece1c4acb7e7172f23020a32fff84519e93f28e114ec29439508dc272a7de0a4` |
| 18 | `def` | [heckeScheduleMaxNV1](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZHeckeControllerPublicEdition1.lean/declarations/heckeschedulemaxnv1.md) | 173 | `declaration-track:52a71a75b8a7dc093a932ff3582383ecdce44f424ba9d5302c30ada639d15bfd` |
| 19 | `structure` | [ScheduleVectorV1](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZHeckeControllerPublicEdition1.lean/declarations/schedulevectorv1.md) | 177 | `declaration-track:19d6ddd23824a2123e8a704b1a2ae264402876a7ca805a5bc832750cf9994b6d` |
| 20 | `def` | [ScheduleVectorV1.Valid](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZHeckeControllerPublicEdition1.lean/declarations/schedulevectorv1-valid.md) | 182 | `declaration-track:9162c7b307bcef5f35b13d6549592933feaeddc3968e392af71d0fe789f99f96` |
| 21 | `instance` | [(anonymous)](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZHeckeControllerPublicEdition1.lean/declarations/instance-source-edition-2.md) | 185 | `declaration-track:5d684e8945a655c53a5207578a6363c42e6b4b92c20de238f69c00eae49a45b5` |
| 22 | `structure` | [HeckeScheduleTransformV1](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZHeckeControllerPublicEdition1.lean/declarations/heckescheduletransformv1-source-edition-2.md) | 190 | `declaration-track:deba41682b6cbb28e502ede058dc967fc4ee1bbf1ba415e4beb73cc12ef7c5e0` |
| 23 | `def` | [checkedScheduleI128](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZHeckeControllerPublicEdition1.lean/declarations/checkedschedulei128.md) | 202 | `declaration-track:8896d454a1a12ca8f339b7daa6ff5f54fa83900afde6dd44d0f42d375358630e` |
| 24 | `def` | [checkedScheduleAddI128](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZHeckeControllerPublicEdition1.lean/declarations/checkedscheduleaddi128.md) | 205 | `declaration-track:7819acf2349a9653664018dd232cac5bc885a6f040d506b46b6d456708c22faf` |
| 25 | `def` | [checkedScheduleMulI128](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZHeckeControllerPublicEdition1.lean/declarations/checkedschedulemuli128.md) | 208 | `declaration-track:d2aa0376afb5327cd5fe3883cdf52c527d7d6d3fe429c607bec422795ea2b8ea` |
| 26 | `def` | [roundDivNearestEvenI64](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZHeckeControllerPublicEdition1.lean/declarations/rounddivnearesteveni64.md) | 214 | `declaration-track:aaa7023150070b7ee44aefcc40bceaed8a25d285831163147420e7b85dab39f7` |
| 27 | `def` | [checkedApplyHeckeCoset](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZHeckeControllerPublicEdition1.lean/declarations/checkedapplyheckecoset.md) | 227 | `declaration-track:313534563d8af07963f61dd1d705d8d20bbf241e46b4b8911ed9329a3105b8cb` |
| 28 | `def` | [accumulateHeckeSchedule](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZHeckeControllerPublicEdition1.lean/declarations/accumulateheckeschedule.md) | 237 | `declaration-track:13cbd7816240bce22bb839d6cb21b4698b32be4ef97c8d593eb3489b50296130` |
| 29 | `def` | [HeckeScheduleLevelValidV1](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZHeckeControllerPublicEdition1.lean/declarations/heckeschedulelevelvalidv1.md) | 249 | `declaration-track:f9c225f2272772c11288289c8a6d29b406bc3f933d34dfe64ffdd1972e97aeb8` |
| 30 | `instance` | [(anonymous)](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZHeckeControllerPublicEdition1.lean/declarations/instance.md) | 252 | `declaration-track:3fd7eb7c37d2c25ea0bee4c26867594141dfcc8773d51d5de1d6681a40166a5c` |
| 31 | `def` | [heckeScheduleTransformV1](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZHeckeControllerPublicEdition1.lean/declarations/heckescheduletransformv1.md) | 260 | `declaration-track:d2f440476be16d9c57a2bb5932f2d5fa24e37762bb8dc7480c1554c5b9c3ec9f` |
| 32 | `theorem` | [heckeScheduleTransformV1_deterministic](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZHeckeControllerPublicEdition1.lean/declarations/heckescheduletransformv1-deterministic.md) | 289 | `result-track:8f91df11305ddce274906779702351c2aaa48966dd9b40f6535c3fcc3d536c71` |
| 33 | `theorem` | [heckeScheduleTransformV1_zero_rejected](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZHeckeControllerPublicEdition1.lean/declarations/heckescheduletransformv1-zero-rejected.md) | 299 | `result-track:eec417869bdc2860741066f4eb821afe0220fb8e9c530d98f2e6133a58f2bafa` |
| 34 | `theorem` | [heckeScheduleTransformV1_above_bound_rejected](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZHeckeControllerPublicEdition1.lean/declarations/heckescheduletransformv1-above-bound-rejected.md) | 305 | `result-track:d07bfd6f68fa8126f6d9d73d85a52567c34a13cfa43210c1e1a93ea11fbce482` |
| 35 | `theorem` | [heckeScheduleTransformV1_cosets_exact](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZHeckeControllerPublicEdition1.lean/declarations/heckescheduletransformv1-cosets-exact.md) | 313 | `result-track:6f22cbc05d826b3809a68d15039c4d315a01dfec3110157b10a1b09fc71dcd0e` |
| 36 | `structure` | [ClassicalHeckeConformanceCertificate](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZHeckeControllerPublicEdition1.lean/declarations/classicalheckeconformancecertificate.md) | 336 | `declaration-track:1c82a43ae63eda322865ef7c9d91e1430b6c0785ee8209607fc71cefb43c516c` |
| 37 | `theorem` | [ClassicalHeckeConformanceCertificate.certified](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZHeckeControllerPublicEdition1.lean/declarations/classicalheckeconformancecertificate-certified.md) | 341 | `result-track:72ee40fd069265081f3f43e641fc2fc104ecb5a264325d13342d8cfba28a30a8` |
| 38 | `def` | [ProvesClassicalHeckeAction](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZHeckeControllerPublicEdition1.lean/declarations/provesclassicalheckeaction.md) | 346 | `declaration-track:016fd8d9bb0ff112bb51171321475d856fd71da2c3a1992da08e1cef1ea2b3e7` |
| 39 | `theorem` | [heckeSchedule_has_no_classical_hecke_authority](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZHeckeControllerPublicEdition1.lean/declarations/heckeschedule-has-no-classical-hecke-authority.md) | 351 | `result-track:63d6c652fd76c4d93c98f3f62aa081e44714cd87eb97cdf2729bf56ee9d10ffe` |
| 40 | `structure` | [ModularScaleLevel](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZHeckeControllerPublicEdition1.lean/declarations/modularscalelevel.md) | 359 | `declaration-track:3b5e0562384a234721573330f8ef2070c2239191cc90c2899948138485bee9a5` |
| 41 | `def` | [ModularScaleLevel.BoundsValid](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZHeckeControllerPublicEdition1.lean/declarations/modularscalelevel-boundsvalid.md) | 368 | `declaration-track:29e55d41a517e8d8c0bb08e5fdf2a21da19879919ccd937ba6e698c9fd7f3ee1` |
| 42 | `def` | [ModularLevelsOrdered](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZHeckeControllerPublicEdition1.lean/declarations/modularlevelsordered.md) | 373 | `declaration-track:56909d9a39f0b19a90ebb0b9c1f33cb90a81a95f085d19aecb44daba8ffee14d` |
| 43 | `def` | [ModularRevisionsMonotone](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZHeckeControllerPublicEdition1.lean/declarations/modularrevisionsmonotone.md) | 377 | `declaration-track:c64fc1a765b011b95b82c7ece0d272a46c56eb0dd7d4eeee8970911e5a741481` |
| 44 | `def` | [ModularBoundsValid](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZHeckeControllerPublicEdition1.lean/declarations/modularboundsvalid.md) | 383 | `declaration-track:ca24a3587376e2d49d5b03318df5bcd2b6deb1534dfecb03f8d347d37de6b6f1` |
| 45 | `structure` | [ModularControllerPlan](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZHeckeControllerPublicEdition1.lean/declarations/modularcontrollerplan.md) | 390 | `declaration-track:3f091cb300ee980aceb6ed68dd79ff886124d61be50fb2e42ebfb2f18d0656dc` |
| 46 | `structure` | [BoundedBracketProgramMetadata](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZHeckeControllerPublicEdition1.lean/declarations/boundedbracketprogrammetadata.md) | 401 | `declaration-track:ed151ab96b76cd78ae347e35ceb33aa1d18241b095ae36832d694a875df6f75b` |
| 47 | `def` | [ModularScaleLevel.bracketMetadata](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZHeckeControllerPublicEdition1.lean/declarations/modularscalelevel-bracketmetadata.md) | 408 | `declaration-track:dc0985f850333a28875ec0a07a5b22c669683529a0fb0d0684fdd19d057470d0` |
| 48 | `def` | [ProvesClassicalHeckeFromModularPlan](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZHeckeControllerPublicEdition1.lean/declarations/provesclassicalheckefrommodularplan.md) | 415 | `declaration-track:2867ca95d39c8294d666a0ef719324586f4a3423d6ef2281b6a5291c04da0f07` |
| 49 | `theorem` | [modularControllerPlan_has_no_classical_hecke_authority](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZHeckeControllerPublicEdition1.lean/declarations/modularcontrollerplan-has-no-classical-hecke-authority.md) | 420 | `result-track:0f8e54d6fa44083030a9fec0b38dacaf02533f67459385da63d8b70a8ca39f5e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6010fd2fd05b1ccb8ad2d6a6d25d4d425d0a5ecf5e3be5fe9f62cd1b3f18a9e0 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/XYZHeckeController/Variant421d42e01d37b56496ce33c7024c6a1ba7ac7e027b2eb377584834b2c2c0e938.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/XYZHeckeController/Variant421d42e01d37b56496ce33c7024c6a1ba7ac7e027b2eb377584834b2c2c0e938.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
