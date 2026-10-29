# Verification target: Operator Mul Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f2380814d0a83afb95cd4b02609043aeb38b623a",
  "lexical_observation_count": 42,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/Mul/Variant8b2a75196234339764d9f5627dc6b974eeb5f1fbf5a6e28b69ce3efe56aee765.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/OperatorMulNamespacedPublic.lean/index.md) · [Full source](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/OperatorMulNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f2380814d0a83afb95cd4b02609043aeb38b623a`.

Source path: `GRWTSK/Analysis/Mul/Variant8b2a75196234339764d9f5627dc6b974eeb5f1fbf5a6e28b69ce3efe56aee765.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/Mul/Variant8b2a75196234339764d9f5627dc6b974eeb5f1fbf5a6e28b69ce3efe56aee765.lean.json)

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
| 1 | `def` | [mul](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/OperatorMulNamespacedPublic.lean/declarations/mul-source-edition-2.md) | 48 | `declaration-track:b827db5c0228b1b2c5daaafb95e037d21c317657a3be827ccf51287d63a99d12` |
| 2 | `theorem` | [mul_apply'](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/OperatorMulNamespacedPublic.lean/declarations/mul-apply.md) | 52 | `result-track:111d2eb71b1027c3565f5a1ea73a24aab29a6feaf6e5bae3ecf0254c1ab37740` |
| 3 | `theorem` | [opNorm_mul_apply_le](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/OperatorMulNamespacedPublic.lean/declarations/opnorm-mul-apply-le.md) | 56 | `result-track:981c593ba7a4cb19cfd9d74cbfe6cf8dd0cfb37a17e051436a6249fc8cf8ad84` |
| 4 | `theorem` | [opNorm_mul_le](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/OperatorMulNamespacedPublic.lean/declarations/opnorm-mul-le.md) | 59 | `result-track:a73b646793a059dd7ad53d4864108b7d329efd08825dfc1addbaba0d549e8678` |
| 5 | `def` | [Operator Mul Namespaced Public](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/OperatorMulNamespacedPublic.lean/declarations/lmul.md) | 70 | `declaration-track:fd57ba52179afa19de7e0da35c0033d82aeba8c566024edda6f9549b74edde20` |
| 6 | `theorem` | [Operator Mul Namespaced Public](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/OperatorMulNamespacedPublic.lean/declarations/coe-lmul.md) | 77 | `result-track:6843f0e6471bb95f5a6e57c6947fd31915adb0b051b128b44f9c490c845a5dcf` |
| 7 | `def` | [mulLeftRight](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/OperatorMulNamespacedPublic.lean/declarations/mulleftright.md) | 83 | `declaration-track:a9a5638781e68ff7981294fa0dbd5140b27f5af37f5bd193e407dfa2818832d6` |
| 8 | `theorem` | [mulLeftRight_apply](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/OperatorMulNamespacedPublic.lean/declarations/mulleftright-apply.md) | 87 | `result-track:a5e179b5cd9dd32ce98e055649770c00f9fb622dfbd25f1eb7de68ed653ba77b` |
| 9 | `theorem` | [opNorm_mulLeftRight_apply_apply_le](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/OperatorMulNamespacedPublic.lean/declarations/opnorm-mulleftright-apply-apply-le.md) | 90 | `result-track:fe12f712fd9ab3d8d84d4f3888ddb7a84633b7e8f4e337bb8652cbdbc8e3b080` |
| 10 | `theorem` | [opNorm_mulLeftRight_apply_le](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/OperatorMulNamespacedPublic.lean/declarations/opnorm-mulleftright-apply-le.md) | 97 | `result-track:a3f372f8ab580418003559ff4e1ed46e5901b4eccc504bb4c1314bc9eb94e5ea` |
| 11 | `theorem` | [opNorm_mulLeftRight_le](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/OperatorMulNamespacedPublic.lean/declarations/opnorm-mulleftright-le.md) | 100 | `result-track:23788612963d787bdbc630c2922afd7df30876bba52de6e2cc4484edbf2268e4` |
| 12 | `class` | [Operator Mul Namespaced Public](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/OperatorMulNamespacedPublic.lean/declarations/regularnormedalgebra.md) | 113 | `declaration-track:cb99cfd1a9a6bce336feefa604c9d5bb215c32083dfeb6e9b6adc4af7fa40f9c` |
| 13 | `instance` | [Operator Mul Namespaced Public](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/OperatorMulNamespacedPublic.lean/declarations/instregularnormedalgebra.md) | 118 | `declaration-track:adc4f81c829414ad2814c23fd9116780fb3577304e517344a4c5f6e7a265dc37` |
| 14 | `lemma` | [isometry_mul](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/OperatorMulNamespacedPublic.lean/declarations/isometry-mul.md) | 127 | `result-track:76e882f3aa723ad5bdd446fa952299638b194e05e484163a9c890fce073024c9` |
| 15 | `lemma` | [opNorm_mul_apply](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/OperatorMulNamespacedPublic.lean/declarations/opnorm-mul-apply.md) | 131 | `result-track:019e335c85c8081400e02af962349256f51640f255efcfc3fa60524e59ac30cc` |
| 16 | `lemma` | [opNNNorm_mul_apply](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/OperatorMulNamespacedPublic.lean/declarations/opnnnorm-mul-apply.md) | 135 | `result-track:c1b7be7cd24c79890526068322d557bb77bfdbb02b68e3fc93d30322527e3515` |
| 17 | `def` | [mulₗᵢ](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/OperatorMulNamespacedPublic.lean/declarations/mul.md) | 140 | `declaration-track:15d518cb132e33bafb3123d24da0559ab60b4bcbc2813a8b780054e0eab23e78` |
| 18 | `theorem` | [coe_mulₗᵢ](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/OperatorMulNamespacedPublic.lean/declarations/coe-mul.md) | 145 | `result-track:74a11cafb514e08fa2e85028a96c8367ee0e73f3c4a7b82abdba3bccafcf6c4f` |
| 19 | `lemma` | [flip_mul](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/OperatorMulNamespacedPublic.lean/declarations/flip-mul.md) | 154 | `result-track:c51dc88746e1fd05386b1c6d31b3477638499f652535d2bf866c320f3372b5f8` |
| 20 | `def` | [toSpanSingletonLIE](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/OperatorMulNamespacedPublic.lean/declarations/tospansingletonlie.md) | 164 | `declaration-track:7a1ebe4e9b64afd8990aaacc42af0d8e5b6b4f19dfc3f9c17cdb625ecdd9c1e8` |
| 21 | `lemma` | [toSpanSingletonLIE_apply](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/OperatorMulNamespacedPublic.lean/declarations/tospansingletonlie-apply.md) | 169 | `result-track:ba9e60fa9ab99c596b7525397553a8258c90cedeb4833177237a1781983c5496` |
| 22 | `lemma` | [toSpanSingletonLIE_symm_apply](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/OperatorMulNamespacedPublic.lean/declarations/tospansingletonlie-symm-apply.md) | 171 | `result-track:7b3e49051fa21ef281e90eb39c434056f5354863d36b84434d3ddfbe4808af8f` |
| 23 | `lemma` | [toLinearEquiv_toSpanSingletonLIE](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/OperatorMulNamespacedPublic.lean/declarations/tolinearequiv-tospansingletonlie.md) | 174 | `result-track:42156324cd0463791db88bafafa22f16e7b17233e846d2c880aa2ad442c9d6dd` |
| 24 | `lemma` | [toContinuousLinearEquiv_toSpanSingletonLIE](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/OperatorMulNamespacedPublic.lean/declarations/tocontinuouslinearequiv-tospansingletonlie.md) | 177 | `result-track:fa5906fb33b541772dfde81bfcd0a4905e308e0880fff5473eafc49a03c17557` |
| 25 | `def` | [lsmul](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/OperatorMulNamespacedPublic.lean/declarations/lsmul.md) | 196 | `declaration-track:b5aab8da3d71144352873bb632392d02b7a69cf41060f6704709ed3c8fee1e6c` |
| 26 | `theorem` | [lsmul_apply](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/OperatorMulNamespacedPublic.lean/declarations/lsmul-apply.md) | 201 | `result-track:700a2562c59e96733ce938a3e6f0ecf364dc00acbc969ec2f1b6df090073575b` |
| 27 | `theorem` | [lsmul_flip_apply](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/OperatorMulNamespacedPublic.lean/declarations/lsmul-flip-apply.md) | 206 | `result-track:66724c0df0dbee81e596880c6ba541e10a0916957506f2dd136bd918fa319c07` |
| 28 | `theorem` | [lsmul_flip_inj](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/OperatorMulNamespacedPublic.lean/declarations/lsmul-flip-inj.md) | 211 | `result-track:4bf9fb1a80740f5f0e029669c24bdccfdc7eb58ed53edbfee1e5543ae951d7d4` |
| 29 | `theorem` | [opNorm_lsmul_apply_le](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/OperatorMulNamespacedPublic.lean/declarations/opnorm-lsmul-apply-le.md) | 217 | `result-track:e81e4e4fdcdb7f449b77439457c123cb6a088b9003dae231d8b5e6caf2c29841` |
| 30 | `theorem` | [opNNNorm_lsmul_apply_le](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/OperatorMulNamespacedPublic.lean/declarations/opnnnorm-lsmul-apply-le.md) | 220 | `result-track:54bf795f24e9d93e390b52c5ba27deca8aca84a8991403d00db6bd8408ea0b80` |
| 31 | `theorem` | [opNorm_lsmul_le](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/OperatorMulNamespacedPublic.lean/declarations/opnorm-lsmul-le.md) | 224 | `result-track:c68c1c9716b64227ba00c6105a0c0357cf18ab5b68836bd9656cb145a82e15be` |
| 32 | `theorem` | [opNNNorm_lsmul_le](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/OperatorMulNamespacedPublic.lean/declarations/opnnnorm-lsmul-le.md) | 227 | `result-track:57046dab98f961b2dead7944e81b3c2ab2542000a785a72d8f48c9882566c16c` |
| 33 | `theorem` | [opENorm_lsmul_le](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/OperatorMulNamespacedPublic.lean/declarations/openorm-lsmul-le.md) | 231 | `result-track:ef134a658aa7fc57b7de2de6feb79ecc4b7d05440e8895771b3bc2465bfa3feb` |
| 34 | `theorem` | [opNorm_mul](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/OperatorMulNamespacedPublic.lean/declarations/opnorm-mul.md) | 254 | `result-track:25b627980402d4ab66ddbdd139fa08abca96a86a2b6a31ffc432a53ba275f097` |
| 35 | `theorem` | [opNNNorm_mul](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/OperatorMulNamespacedPublic.lean/declarations/opnnnorm-mul.md) | 258 | `result-track:be2fd6b5f6edb6a39528540a0f81a164fedb59c3216ce4d9704f436fbadcbdf7` |
| 36 | `theorem` | [opENorm_mul](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/OperatorMulNamespacedPublic.lean/declarations/openorm-mul.md) | 262 | `result-track:10214e01e307b45733e1ba4135228ae67af578e0a1a8dedea8b289e7c461a8be` |
| 37 | `theorem` | [opNorm_lsmul](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/OperatorMulNamespacedPublic.lean/declarations/opnorm-lsmul.md) | 271 | `result-track:2c6c0dab78478809167d6b420637fab81c2ae864e9d0afbd5825edb5467a21ba` |
| 38 | `theorem` | [opNNNorm_lsmul](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/OperatorMulNamespacedPublic.lean/declarations/opnnnorm-lsmul.md) | 281 | `result-track:9af9d38869b7ade448b7cba956c032be9a2a9cd70b7ddf759b9397f574469d3f` |
| 39 | `theorem` | [opENorm_lsmul](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/OperatorMulNamespacedPublic.lean/declarations/openorm-lsmul.md) | 287 | `result-track:9276cc81c66cb6ed0d530edcd948fd4072b6bbfd84e22637945eb5bef12aedd7` |
| 40 | `theorem` | [opNorm_lsmul_apply](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/OperatorMulNamespacedPublic.lean/declarations/opnorm-lsmul-apply.md) | 295 | `result-track:2bc8c270d02bc2cbfa181e7f57760e2e5209c45fb8ad141ce52a691febcdadaa` |
| 41 | `theorem` | [opNNNorm_lsmul_apply](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/OperatorMulNamespacedPublic.lean/declarations/opnnnorm-lsmul-apply.md) | 305 | `result-track:72a668d3b56956bd22cbb9c02a45e857cfa36beafd2932c95a4a22b6f049b9d1` |
| 42 | `theorem` | [opENorm_lsmul_apply](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/OperatorMulNamespacedPublic.lean/declarations/openorm-lsmul-apply.md) | 312 | `result-track:70e70ddbbca2b60f24c965b7ec540f202eb864d0bf51c02e3b4d005a1c254844` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=2d3c31475105adfefb66502d73ca23757dc3347950675a21f93ac983b1a81894 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/Mul/Variant8b2a75196234339764d9f5627dc6b974eeb5f1fbf5a6e28b69ce3efe56aee765.lean","GRWTSK/_verification/specifications/Analysis/Mul/Variant8b2a75196234339764d9f5627dc6b974eeb5f1fbf5a6e28b69ce3efe56aee765.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
