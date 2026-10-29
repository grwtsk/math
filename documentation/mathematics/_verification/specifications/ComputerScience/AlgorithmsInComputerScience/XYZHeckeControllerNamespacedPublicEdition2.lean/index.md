# Verification target: XYZHecke Controller Namespaced Public Edition2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b0d4ae5bde183a92560a999e207c7515a7ef6c97",
  "lexical_observation_count": 49,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/XYZHeckeController/Variant0d29c7cd482eecaa16456187bf75b58dbb57e4a9af445092b17013ac261167df.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZHeckeControllerNamespacedPublicEdition2.lean/index.md) · [Full source](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZHeckeControllerNamespacedPublicEdition2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b0d4ae5bde183a92560a999e207c7515a7ef6c97`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/XYZHeckeController/Variant0d29c7cd482eecaa16456187bf75b58dbb57e4a9af445092b17013ac261167df.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/XYZHeckeController/Variant0d29c7cd482eecaa16456187bf75b58dbb57e4a9af445092b17013ac261167df.lean.json)

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
| 1 | `structure` | [HeckeMatrixV1](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZHeckeControllerNamespacedPublicEdition2.lean/declarations/heckematrixv1.md) | 36 | `declaration-track:80b4738edf4f04a0f83af625219424b6b016b13931ebeac7045fbe432c1d62d0` |
| 2 | `def` | [HeckeMatrixV1.det](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZHeckeControllerNamespacedPublicEdition2.lean/declarations/heckematrixv1-det.md) | 43 | `declaration-track:fd684af346a864ee29348fc5a289d38c1153ca016f6cf84ff7cc34bcb28a46b0` |
| 3 | `structure` | [HeckeCosetV1](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZHeckeControllerNamespacedPublicEdition2.lean/declarations/heckecosetv1.md) | 47 | `declaration-track:2cbae9d6564e2e85765d43883cdd09eca5eb3f32e36ef221ac006e89fea76056` |
| 4 | `def` | [makeHeckeCosetV1](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZHeckeControllerNamespacedPublicEdition2.lean/declarations/makeheckecosetv1.md) | 54 | `declaration-track:ff904952ea8a5452b47d5b94ad999aab9039bd28217faea2bfc857ea439681f5` |
| 5 | `def` | [positiveDivisorsAscending](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZHeckeControllerNamespacedPublicEdition2.lean/declarations/positivedivisorsascending.md) | 69 | `declaration-track:75a44b5a51075f7c2cf7983c6e5631e09289259e0289e16518221b2b61952143` |
| 6 | `theorem` | [positiveDivisorsAscending_sound](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZHeckeControllerNamespacedPublicEdition2.lean/declarations/positivedivisorsascending-sound.md) | 73 | `result-track:2b7c12c499c03084caa008b69ae7206efd2fa2a56c8378e69f1707adc20ac493` |
| 7 | `def` | [heckeCosets](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZHeckeControllerNamespacedPublicEdition2.lean/declarations/heckecosets.md) | 81 | `declaration-track:c5e69666c71cb3cd5b906ddf0ed3e4779432133edfaa11816db41c8cfbceb4f8` |
| 8 | `theorem` | [heckeCosets_deterministic](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZHeckeControllerNamespacedPublicEdition2.lean/declarations/heckecosets-deterministic.md) | 86 | `result-track:968418b59236cc9448794a716a624c48c825daea19a7990147d28039805b51ab` |
| 9 | `def` | [HeckeCosetV1.Before](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZHeckeControllerNamespacedPublicEdition2.lean/declarations/heckecosetv1-before.md) | 94 | `declaration-track:d25b18b3d98cafa700787df1fcaee2f52afa6215aaf7263fa3db2b8e6f47452a` |
| 10 | `theorem` | [heckeCosets_stable_order](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZHeckeControllerNamespacedPublicEdition2.lean/declarations/heckecosets-stable-order.md) | 99 | `result-track:33defc89325a27d4a367c3d714ec77a8c24468fe71f33dc979e397cbed7023be` |
| 11 | `theorem` | [heckeCosets_nodup](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZHeckeControllerNamespacedPublicEdition2.lean/declarations/heckecosets-nodup.md) | 118 | `result-track:f894a90b1fbb765754e75554540e14aee6d8811fc0bb5961870eff0d8ccd2cc9` |
| 12 | `theorem` | [heckeCoset_coordinates](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZHeckeControllerNamespacedPublicEdition2.lean/declarations/heckecoset-coordinates.md) | 144 | `result-track:86b08a0167a1aa6f56c76caefba1bf9c2f9b004207c954d6f45daa8bf16495fa` |
| 13 | `theorem` | [heckeCosetMatrix_det](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZHeckeControllerNamespacedPublicEdition2.lean/declarations/heckecosetmatrix-det.md) | 153 | `result-track:af947ba503d5a801e001c0f68a6d5b8b176e4ac6e179f7d4501672946d58b484` |
| 14 | `def` | [sumPositiveDivisors](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZHeckeControllerNamespacedPublicEdition2.lean/declarations/sumpositivedivisors.md) | 165 | `declaration-track:e8bcde19d61ffa11e4798565a6ea4f157283912112f5f0cf96c895aef526206d` |
| 15 | `theorem` | [heckeCoset_count_eq_sum_divisors](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZHeckeControllerNamespacedPublicEdition2.lean/declarations/heckecoset-count-eq-sum-divisors.md) | 169 | `result-track:fa932530a462ed3ae206a9dbf7485d4b2b191c05a836daed961f370f72934e3f` |
| 16 | `def` | [heckeScheduleSchemaV1](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZHeckeControllerNamespacedPublicEdition2.lean/declarations/heckescheduleschemav1.md) | 175 | `declaration-track:92128b3b7f923b9d3fada8cfb8b306dc051d477b5790a76e10f4e705ecfcec22` |
| 17 | `def` | [heckeScheduleTransformIdV1](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZHeckeControllerNamespacedPublicEdition2.lean/declarations/heckescheduletransformidv1.md) | 178 | `declaration-track:e8fbee281dacb7b33bb2a709644e2b5ec1a4e7e97fb29f8a24a3e1bb88824c2e` |
| 18 | `def` | [heckeScheduleMaxNV1](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZHeckeControllerNamespacedPublicEdition2.lean/declarations/heckeschedulemaxnv1.md) | 181 | `declaration-track:0ac1222ebbbe5d8bd28c46005c5daf9a2775f0118fc54c22af842d7e1fd6ec60` |
| 19 | `structure` | [ScheduleVectorV1](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZHeckeControllerNamespacedPublicEdition2.lean/declarations/schedulevectorv1.md) | 185 | `declaration-track:268a94411060aa0bde0630baf5a26ddac8aa400138038656baa1d534baf9d590` |
| 20 | `def` | [ScheduleVectorV1.Valid](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZHeckeControllerNamespacedPublicEdition2.lean/declarations/schedulevectorv1-valid.md) | 190 | `declaration-track:9f20f326281f756f69e56846d1b4c206e86ff58cd4398c72a9820b458fe74a47` |
| 21 | `instance` | [(anonymous)](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZHeckeControllerNamespacedPublicEdition2.lean/declarations/instance-source-edition-2.md) | 193 | `declaration-track:c2d65999b720ccdaee1b6fa34b906a8c0ebdb4b2e2ab03d486bd7c15becaefd0` |
| 22 | `structure` | [HeckeScheduleTransformV1](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZHeckeControllerNamespacedPublicEdition2.lean/declarations/heckescheduletransformv1-source-edition-2.md) | 198 | `declaration-track:f2e2ea52611afcabd28dc9aec1c95596609a08617b9e0162da4b5ea304a33363` |
| 23 | `def` | [checkedScheduleI128](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZHeckeControllerNamespacedPublicEdition2.lean/declarations/checkedschedulei128.md) | 210 | `declaration-track:8c204851fbca21128f0c8060b1cd8be9e648893343eb574cd095be1510357328` |
| 24 | `def` | [checkedScheduleAddI128](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZHeckeControllerNamespacedPublicEdition2.lean/declarations/checkedscheduleaddi128.md) | 213 | `declaration-track:3eaf771667e7d89c1a653533d7ce2aca723b40d6ca0593b1925a1a4e40a28abf` |
| 25 | `def` | [checkedScheduleMulI128](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZHeckeControllerNamespacedPublicEdition2.lean/declarations/checkedschedulemuli128.md) | 216 | `declaration-track:c94d1b316ad7cfb17169913b8e1ddadef474d71c36b15e13b8c174f9aa97b0b5` |
| 26 | `def` | [roundDivNearestEvenI64](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZHeckeControllerNamespacedPublicEdition2.lean/declarations/rounddivnearesteveni64.md) | 222 | `declaration-track:a9492b24b5e0a3190523bf56a3f5f104cdeb96636a64144c8c7315a9a3af334f` |
| 27 | `def` | [checkedApplyHeckeCoset](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZHeckeControllerNamespacedPublicEdition2.lean/declarations/checkedapplyheckecoset.md) | 235 | `declaration-track:b1244facbedf81a336725f4e020c542cf5df9409636b357e8be6353ea3a27ba3` |
| 28 | `def` | [accumulateHeckeSchedule](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZHeckeControllerNamespacedPublicEdition2.lean/declarations/accumulateheckeschedule.md) | 245 | `declaration-track:0a7e6650fd5f3128cc8d9f255bd96fabf611bfaee1df1a78737af6f7a8e1ab25` |
| 29 | `def` | [HeckeScheduleLevelValidV1](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZHeckeControllerNamespacedPublicEdition2.lean/declarations/heckeschedulelevelvalidv1.md) | 257 | `declaration-track:dff3a3543499fde90b8a7aa0b9d2782109ebca5695a73188bfa15b6f1cae953e` |
| 30 | `instance` | [(anonymous)](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZHeckeControllerNamespacedPublicEdition2.lean/declarations/instance.md) | 260 | `declaration-track:6a9d18937ab45ab625410946ea93f0521d682243d6b412712dcccb7a48ae9455` |
| 31 | `def` | [heckeScheduleTransformV1](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZHeckeControllerNamespacedPublicEdition2.lean/declarations/heckescheduletransformv1.md) | 268 | `declaration-track:2aef4d0564dc070c2db96ed03e1a179f2842802e7ff6c92659d16e80e7141b23` |
| 32 | `theorem` | [heckeScheduleTransformV1_deterministic](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZHeckeControllerNamespacedPublicEdition2.lean/declarations/heckescheduletransformv1-deterministic.md) | 297 | `result-track:73589c4126ea8ec4a698a2492f9c490d9109930195bfa2f45b779505e417abbb` |
| 33 | `theorem` | [heckeScheduleTransformV1_zero_rejected](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZHeckeControllerNamespacedPublicEdition2.lean/declarations/heckescheduletransformv1-zero-rejected.md) | 307 | `result-track:ef0a103612af29965cbb962b116a2a6f4a3f5f4a500206011a9b454181e060e3` |
| 34 | `theorem` | [heckeScheduleTransformV1_above_bound_rejected](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZHeckeControllerNamespacedPublicEdition2.lean/declarations/heckescheduletransformv1-above-bound-rejected.md) | 313 | `result-track:a290beb9d12cffe348c5fcc69a5008e60241ab0210a714a1585341afe5a6ceeb` |
| 35 | `theorem` | [heckeScheduleTransformV1_cosets_exact](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZHeckeControllerNamespacedPublicEdition2.lean/declarations/heckescheduletransformv1-cosets-exact.md) | 321 | `result-track:1d8f1d496945b82a765dbd501ecc6ddbfb92724c9d678659a0ac3516e54c9fa5` |
| 36 | `structure` | [ClassicalHeckeConformanceCertificate](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZHeckeControllerNamespacedPublicEdition2.lean/declarations/classicalheckeconformancecertificate.md) | 344 | `declaration-track:80ffc515991ee7afa863fa9ec54fd014ce9b553f9ad8a9476cfa4213040686d4` |
| 37 | `theorem` | [ClassicalHeckeConformanceCertificate.certified](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZHeckeControllerNamespacedPublicEdition2.lean/declarations/classicalheckeconformancecertificate-certified.md) | 349 | `result-track:8f3bc234201d7a2bb5c160d81eba462947701ccbfa6c2c5ea622aef67d8d926d` |
| 38 | `def` | [ProvesClassicalHeckeAction](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZHeckeControllerNamespacedPublicEdition2.lean/declarations/provesclassicalheckeaction.md) | 354 | `declaration-track:a07236b5302a5da5e472c717def7720c2b3ec736459619341da20a9be396503f` |
| 39 | `theorem` | [heckeSchedule_has_no_classical_hecke_authority](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZHeckeControllerNamespacedPublicEdition2.lean/declarations/heckeschedule-has-no-classical-hecke-authority.md) | 359 | `result-track:218b29228b917332d6efcc52f3303c0e42006fde94d03affc60d725c6617c641` |
| 40 | `structure` | [ModularScaleLevel](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZHeckeControllerNamespacedPublicEdition2.lean/declarations/modularscalelevel.md) | 367 | `declaration-track:7775ebf63e4fe2a052115f36d66fed4953685eb574e0f5f49a975abb5c3e7d7a` |
| 41 | `def` | [ModularScaleLevel.BoundsValid](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZHeckeControllerNamespacedPublicEdition2.lean/declarations/modularscalelevel-boundsvalid.md) | 376 | `declaration-track:4a0253b20722214d01781b7627ea1a66cda4898aa5099cde7a9235a8fda65ad6` |
| 42 | `def` | [ModularLevelsOrdered](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZHeckeControllerNamespacedPublicEdition2.lean/declarations/modularlevelsordered.md) | 381 | `declaration-track:f650ad40051697ff064f3f725328733de37f1374cd5d44382e0f1f2a0838f247` |
| 43 | `def` | [ModularRevisionsMonotone](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZHeckeControllerNamespacedPublicEdition2.lean/declarations/modularrevisionsmonotone.md) | 385 | `declaration-track:aec19a48ffb0876a34d2f5293ce3b729e142a19a08f2d3f6fc908adce9e8f12c` |
| 44 | `def` | [ModularBoundsValid](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZHeckeControllerNamespacedPublicEdition2.lean/declarations/modularboundsvalid.md) | 391 | `declaration-track:d54746c79df981c57272b86ec0760c631beed3d9e77803174ba05b87134a8847` |
| 45 | `structure` | [ModularControllerPlan](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZHeckeControllerNamespacedPublicEdition2.lean/declarations/modularcontrollerplan.md) | 398 | `declaration-track:824cb9cab1942c97a109acd1b33da67cd0e439bd466022f91c12cffa7c63b928` |
| 46 | `structure` | [BoundedBracketProgramMetadata](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZHeckeControllerNamespacedPublicEdition2.lean/declarations/boundedbracketprogrammetadata.md) | 409 | `declaration-track:9c164841a6e8e4d0e2f97338d58525c496e0178de456a6570b6190aecfbaf31d` |
| 47 | `def` | [ModularScaleLevel.bracketMetadata](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZHeckeControllerNamespacedPublicEdition2.lean/declarations/modularscalelevel-bracketmetadata.md) | 416 | `declaration-track:5b35c7825eddb06291e67a1e55e3637f552a6d9ab2872dcc73594ace8f3c3eb7` |
| 48 | `def` | [ProvesClassicalHeckeFromModularPlan](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZHeckeControllerNamespacedPublicEdition2.lean/declarations/provesclassicalheckefrommodularplan.md) | 423 | `declaration-track:77ba9d8ed6b09b43b189cbc62fb75be8b859d04ebca937b4359959e7f4897ea2` |
| 49 | `theorem` | [modularControllerPlan_has_no_classical_hecke_authority](../../../../../ComputerScience/AlgorithmsInComputerScience/XYZHeckeControllerNamespacedPublicEdition2.lean/declarations/modularcontrollerplan-has-no-classical-hecke-authority.md) | 428 | `result-track:367b60e1cd1414742b139efed79d1b22713d66fca146e6288c01bebdba02fa80` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=3368c23dc4de448c629e287f546a4ce67788996728dc5da939a78436415ee653 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/XYZHeckeController/Variant0d29c7cd482eecaa16456187bf75b58dbb57e4a9af445092b17013ac261167df.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/XYZHeckeController/Variant0d29c7cd482eecaa16456187bf75b58dbb57e4a9af445092b17013ac261167df.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
