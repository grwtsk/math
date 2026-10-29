# Verification target: Lawful Xor Basic Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e55a02a88b056a685681c3ef4b12aeea8ba70ed1",
  "lexical_observation_count": 34,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant0594b96905dd93c33496614e526e68ad39c2ab3225020505078c0cb79da389c6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfData/DataStructures/LawfulXorBasicPublic.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfData/DataStructures/LawfulXorBasicPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e55a02a88b056a685681c3ef4b12aeea8ba70ed1`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant0594b96905dd93c33496614e526e68ad39c2ab3225020505078c0cb79da389c6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant0594b96905dd93c33496614e526e68ad39c2ab3225020505078c0cb79da389c6.lean.json)

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
| 1 | `class` | [LawfulXor](../../../../../../ComputerScience/TheoryOfData/DataStructures/LawfulXorBasicPublic.lean/declarations/lawfulxor.md) | 20 | `declaration-track:ee6ac92acd64eeb426b58e1703529c729ab9015b391f750158d0a15bcaa858d0` |
| 2 | `theorem` | [zero_xor](../../../../../../ComputerScience/TheoryOfData/DataStructures/LawfulXorBasicPublic.lean/declarations/zero-xor.md) | 33 | `result-track:c865955f5eec566938e75b57fd505d0863862df33657e6a2d6230cccb4b0c667` |
| 3 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/LawfulXorBasicPublic.lean/declarations/instance-source-edition-11.md) | 35 | `declaration-track:baec70f339bb67f3af7ee50fe0c1c70b37cf96e95422a26f3f754a314763acc3` |
| 4 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/LawfulXorBasicPublic.lean/declarations/instance-source-edition-10.md) | 36 | `declaration-track:ba0ffc0f6fe0542cd744af199131b8aa09b3a44671fbad41c923cca6ffbc3be0` |
| 5 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/LawfulXorBasicPublic.lean/declarations/instance-source-edition-2.md) | 38 | `declaration-track:3eb678fc3e502f5dd1c370e9d1771c692c639b50d8bbdb41e952b011f83f12a3` |
| 6 | `theorem` | [xor_cancel_left](../../../../../../ComputerScience/TheoryOfData/DataStructures/LawfulXorBasicPublic.lean/declarations/xor-cancel-left.md) | 43 | `result-track:1714bdf3682ec726980d55d7ae666cae8abf05845465f05b7c27383e96a202a7` |
| 7 | `theorem` | [xor_cancel_right](../../../../../../ComputerScience/TheoryOfData/DataStructures/LawfulXorBasicPublic.lean/declarations/xor-cancel-right.md) | 47 | `result-track:b99d9afa65b4e64e47907688865a724e8b886688f0ac07d71dc54efa0794f820` |
| 8 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/LawfulXorBasicPublic.lean/declarations/instance-source-edition-9.md) | 50 | `declaration-track:9fead38451c30347fddedc07853b33579b5884568125fc2cc7b3ee1b1970fba3` |
| 9 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/LawfulXorBasicPublic.lean/declarations/instance-source-edition-3.md) | 56 | `declaration-track:453ff84a5599aae8a73dda79063141015eedfb2526e7d52d4cf5670825d6b529` |
| 10 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/LawfulXorBasicPublic.lean/declarations/instance-source-edition-6.md) | 62 | `declaration-track:7048034656c5785993aff3303b0421f3eaa9bb57d666bea104f4af76b406b1ee` |
| 11 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/LawfulXorBasicPublic.lean/declarations/instance-source-edition-7.md) | 68 | `declaration-track:71e51e6d076aaae45aa73af8f4c6db00d896f29d1a53cfd639fd35bcd6d90ad3` |
| 12 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/LawfulXorBasicPublic.lean/declarations/instance-source-edition-14.md) | 74 | `declaration-track:eac70ddd62374ef38e81d70403ccb0e0d1bd7220ded7f6c273b2ce0d51260ae0` |
| 13 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/LawfulXorBasicPublic.lean/declarations/instance-source-edition-5.md) | 80 | `declaration-track:4fc3c1865df4bed0efa31090842f238e85f75c8da2efc5a742763fa49d91f49f` |
| 14 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/LawfulXorBasicPublic.lean/declarations/instance-source-edition-16.md) | 86 | `declaration-track:f089584aa19a57edbcc841803d050ddd54d3e9c6d66fec292652cc954403162a` |
| 15 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/LawfulXorBasicPublic.lean/declarations/instance-source-edition-4.md) | 92 | `declaration-track:4dbfb383feeece2f7466e34c05b15c697710356d17f13e2a1300d08c97415159` |
| 16 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/LawfulXorBasicPublic.lean/declarations/instance-source-edition-13.md) | 98 | `declaration-track:e28ffd2857fc297ee3e1cb84d63e7f12811acc764b3a84452da0851c016a6329` |
| 17 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/LawfulXorBasicPublic.lean/declarations/instance-source-edition-12.md) | 104 | `declaration-track:c14ae5fa48e1999f0a0e2e0770f5f8d3a50dc87621036817c7e7d40450ca4737` |
| 18 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/LawfulXorBasicPublic.lean/declarations/instance.md) | 110 | `declaration-track:03135e8f0adf7186a283ea12fc95a71fb97dd31a073a7f5b8aa2e5efbeb24187` |
| 19 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/LawfulXorBasicPublic.lean/declarations/instance-source-edition-8.md) | 116 | `declaration-track:7b3a8dc96fdd4f35bc73ce9de2a5c3bf063ab5577016504946fff515c3767399` |
| 20 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/LawfulXorBasicPublic.lean/declarations/instance-source-edition-15.md) | 122 | `declaration-track:ec827958da3e786c708c673515093e3dc7552cf61b85a8c674ef2cd607694313` |
| 21 | `lemma` | [xor_right_eq](../../../../../../ComputerScience/TheoryOfData/DataStructures/LawfulXorBasicPublic.lean/declarations/xor-right-eq.md) | 128 | `result-track:6b15dd89d709f3339e94536a14fcac51a70f81f15d14d9231c1abe09f23e9acb` |
| 22 | `lemma` | [xor_left_involutive](../../../../../../ComputerScience/TheoryOfData/DataStructures/LawfulXorBasicPublic.lean/declarations/xor-left-involutive.md) | 130 | `result-track:075abb3b39f08bb2ff41d7b96261cd058a43a3863259035cda4303e772fb7f30` |
| 23 | `lemma` | [xor_right_involutive](../../../../../../ComputerScience/TheoryOfData/DataStructures/LawfulXorBasicPublic.lean/declarations/xor-right-involutive.md) | 131 | `result-track:9ba6e413c6d3795ab7dd419d1be6c1fab0a568a8280d4e02520b7d5247878f42` |
| 24 | `lemma` | [xor_eq_iff_left_eq](../../../../../../ComputerScience/TheoryOfData/DataStructures/LawfulXorBasicPublic.lean/declarations/xor-eq-iff-left-eq.md) | 133 | `result-track:7dfd645e6d3bb2f083edba8741072a5356e2b2a347a599c1a36b1aa4b32172c0` |
| 25 | `lemma` | [xor_eq_iff_right_eq](../../../../../../ComputerScience/TheoryOfData/DataStructures/LawfulXorBasicPublic.lean/declarations/xor-eq-iff-right-eq.md) | 135 | `result-track:500ec4bbf4a745767114b7de98f10d561843df7672a460585abcb8a9be500f61` |
| 26 | `lemma` | [xor_eq_zero_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/LawfulXorBasicPublic.lean/declarations/xor-eq-zero-iff.md) | 138 | `result-track:5f09461dd22e37b7a4de48669449d9bf1a0359e8b77c26423e96a98d2e912108` |
| 27 | `lemma` | [xor_xor_cancel_comm](../../../../../../ComputerScience/TheoryOfData/DataStructures/LawfulXorBasicPublic.lean/declarations/xor-xor-cancel-comm.md) | 141 | `result-track:81994f8aba7c4b1385516ac8ee1b86fbefec4f387266107cf3c756dd1e3f197f` |
| 28 | `lemma` | [xor_xor_cancel_comm_assoc](../../../../../../ComputerScience/TheoryOfData/DataStructures/LawfulXorBasicPublic.lean/declarations/xor-xor-cancel-comm-assoc.md) | 144 | `result-track:a56a6410965eb2461c2fdc92a12f10a6f395387e3e0fcf8fc883728dc673df81` |
| 29 | `lemma` | [xor_left_eq_self_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/LawfulXorBasicPublic.lean/declarations/xor-left-eq-self-iff.md) | 147 | `result-track:6102e29ffda93f28b8929ee05cd98f8006a67eae0654c06544758e8e5afb64a9` |
| 30 | `lemma` | [xor_right_eq_self_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/LawfulXorBasicPublic.lean/declarations/xor-right-eq-self-iff.md) | 149 | `result-track:0fb72f8fdef95d31f9f25d157934081d87915b4f69745cf1cec38bb669ab9188` |
| 31 | `lemma` | [xor_left_eq_id_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/LawfulXorBasicPublic.lean/declarations/xor-left-eq-id-iff.md) | 152 | `result-track:70c5ac15853ba4b40304503d8f87339ae15b023c6bab48d6cc1231c9fbe8e644` |
| 32 | `lemma` | [xor_right_eq_id_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/LawfulXorBasicPublic.lean/declarations/xor-right-eq-id-iff.md) | 154 | `result-track:73a0960bd38489cc15a692514522ebe196c5f862a820a98ba4c4fc0b02e133c7` |
| 33 | `lemma` | [isFixedPt_xor_left_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/LawfulXorBasicPublic.lean/declarations/isfixedpt-xor-left-iff.md) | 157 | `result-track:c6e0f219cde29d26c08df4b4e96da57e2c259c8dac6586a7e8820a0b05d1cb25` |
| 34 | `lemma` | [isFixedPt_xor_right_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/LawfulXorBasicPublic.lean/declarations/isfixedpt-xor-right-iff.md) | 159 | `result-track:5dfd316531550c913450524a6a3f02349a56c88534f3c30b20b41b32de1905d0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f1dffa7aff8b00b1fb1bb0172d777017a1dfeabcdd4bcd1c07d8a4ee15298eff -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant0594b96905dd93c33496614e526e68ad39c2ab3225020505078c0cb79da389c6.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant0594b96905dd93c33496614e526e68ad39c2ab3225020505078c0cb79da389c6.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
