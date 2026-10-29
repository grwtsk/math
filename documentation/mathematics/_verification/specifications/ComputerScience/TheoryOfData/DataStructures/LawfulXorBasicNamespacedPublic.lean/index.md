# Verification target: Lawful Xor Basic Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "24f4230e37825b22dca552525c52476f616a439a",
  "lexical_observation_count": 34,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant3cfb16d2acae84d6f10986e54901a38c9584165c340a5f610252a83a88b97173.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfData/DataStructures/LawfulXorBasicNamespacedPublic.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfData/DataStructures/LawfulXorBasicNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `24f4230e37825b22dca552525c52476f616a439a`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant3cfb16d2acae84d6f10986e54901a38c9584165c340a5f610252a83a88b97173.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant3cfb16d2acae84d6f10986e54901a38c9584165c340a5f610252a83a88b97173.lean.json)

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
| 1 | `class` | [LawfulXor](../../../../../../ComputerScience/TheoryOfData/DataStructures/LawfulXorBasicNamespacedPublic.lean/declarations/lawfulxor.md) | 28 | `declaration-track:80ede6edef434f266760706fc28e4e326037909094c537cfcf534d67a448990b` |
| 2 | `theorem` | [zero_xor](../../../../../../ComputerScience/TheoryOfData/DataStructures/LawfulXorBasicNamespacedPublic.lean/declarations/zero-xor.md) | 41 | `result-track:04bd9434ef030c7940cfb63860eba2b311476d1b09a586d7dc9088536c022d2c` |
| 3 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/LawfulXorBasicNamespacedPublic.lean/declarations/instance-source-edition-14.md) | 43 | `declaration-track:c61c3cd3ad20e241693036fef79ec156857168fb3190973ff73486226c399dec` |
| 4 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/LawfulXorBasicNamespacedPublic.lean/declarations/instance-source-edition-15.md) | 44 | `declaration-track:d75e47eb0e1d9331e77335ec415e1514e964828eb9820cb3197ccf5b9461af5b` |
| 5 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/LawfulXorBasicNamespacedPublic.lean/declarations/instance-source-edition-11.md) | 46 | `declaration-track:9fff8017cb4cc77e32f2fa7af3dddab8c9368369debf1359417a07275b6cb33e` |
| 6 | `theorem` | [xor_cancel_left](../../../../../../ComputerScience/TheoryOfData/DataStructures/LawfulXorBasicNamespacedPublic.lean/declarations/xor-cancel-left.md) | 51 | `result-track:59ada3de9108bf2de09d27965609120c8cf740cb1cfb461e4854851a965da26f` |
| 7 | `theorem` | [xor_cancel_right](../../../../../../ComputerScience/TheoryOfData/DataStructures/LawfulXorBasicNamespacedPublic.lean/declarations/xor-cancel-right.md) | 55 | `result-track:6c19e55d6ef2cce6959e048b3cbd9bd50efbf4232b297ff67e4270881fccb491` |
| 8 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/LawfulXorBasicNamespacedPublic.lean/declarations/instance-source-edition-13.md) | 58 | `declaration-track:bfaa51359b0be937595e0ca926b7aed6219c18e0e16f67682dc42ef49748f1b6` |
| 9 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/LawfulXorBasicNamespacedPublic.lean/declarations/instance-source-edition-4.md) | 64 | `declaration-track:49ee0d79c193ea6dd51e5fca863945cc3a46eb6cc95f791ca7c96d4a5b1b9243` |
| 10 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/LawfulXorBasicNamespacedPublic.lean/declarations/instance-source-edition-8.md) | 70 | `declaration-track:7668519da9720c7963e091b622c2a09bd6bfee0b6384533e9c447e70961c21d8` |
| 11 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/LawfulXorBasicNamespacedPublic.lean/declarations/instance-source-edition-16.md) | 76 | `declaration-track:f8108770d379a6951693e6b03ab9f7c81c4ab14b8d48b471b617358592b994ef` |
| 12 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/LawfulXorBasicNamespacedPublic.lean/declarations/instance-source-edition-7.md) | 82 | `declaration-track:702fc4d6e8f042c3cf8fe87d05a425a347ada4751dab0fb0b9d047f1c7fef801` |
| 13 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/LawfulXorBasicNamespacedPublic.lean/declarations/instance-source-edition-2.md) | 88 | `declaration-track:221d630a16f4e9c47be2989e2bc30ace296eff945f2ab1cd7d17840c0b49a1c0` |
| 14 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/LawfulXorBasicNamespacedPublic.lean/declarations/instance-source-edition-12.md) | 94 | `declaration-track:b1f4a45cb2259ccf89edef96195d1f38c7d4c6a4b9722de58acd844400f6c5af` |
| 15 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/LawfulXorBasicNamespacedPublic.lean/declarations/instance-source-edition-10.md) | 100 | `declaration-track:897ee4dd0f7b5c3afe49345bbf773f69785a76a314fb78f276ab2274369d5e0a` |
| 16 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/LawfulXorBasicNamespacedPublic.lean/declarations/instance-source-edition-3.md) | 106 | `declaration-track:30da1e3a5125719723a69235fd37f41b05a80085a1ad8ee730507ab8d7ca878e` |
| 17 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/LawfulXorBasicNamespacedPublic.lean/declarations/instance-source-edition-9.md) | 112 | `declaration-track:8404235a4f470765f108fc1c11dda65e88e6bbdc12e4dd4f1e5b696f69883ce5` |
| 18 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/LawfulXorBasicNamespacedPublic.lean/declarations/instance.md) | 118 | `declaration-track:0560ac413f6dcd9d0bd8e0e9053aee332b1e5218346dfec7ef4dbe7a8dead046` |
| 19 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/LawfulXorBasicNamespacedPublic.lean/declarations/instance-source-edition-6.md) | 124 | `declaration-track:64da76484b17252ab9ce5924d35deaf305a619d41cc102339366dc9516ff13e0` |
| 20 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/LawfulXorBasicNamespacedPublic.lean/declarations/instance-source-edition-5.md) | 130 | `declaration-track:5e026c0a2df35fbdd4080f7fdd37c3b8a1e7fb1c875eafc36eacae9789875438` |
| 21 | `lemma` | [xor_right_eq](../../../../../../ComputerScience/TheoryOfData/DataStructures/LawfulXorBasicNamespacedPublic.lean/declarations/xor-right-eq.md) | 136 | `result-track:ca72fee7c5b6526eb70ab42a98bf8ce29432c4e3b311757121a4fdad39b7ea17` |
| 22 | `lemma` | [xor_left_involutive](../../../../../../ComputerScience/TheoryOfData/DataStructures/LawfulXorBasicNamespacedPublic.lean/declarations/xor-left-involutive.md) | 138 | `result-track:43de5b26a13cfa9fa104658ec9fad694f992303c7dd48be937d395265028ff52` |
| 23 | `lemma` | [xor_right_involutive](../../../../../../ComputerScience/TheoryOfData/DataStructures/LawfulXorBasicNamespacedPublic.lean/declarations/xor-right-involutive.md) | 139 | `result-track:45864ccb650694e857440e2f8b93fb9a4c7a183691375ea3dab053ed4c79ad3d` |
| 24 | `lemma` | [xor_eq_iff_left_eq](../../../../../../ComputerScience/TheoryOfData/DataStructures/LawfulXorBasicNamespacedPublic.lean/declarations/xor-eq-iff-left-eq.md) | 141 | `result-track:2bcb8bb4e2276a960be2503fd4f6c2cd875b9043412a603a662443696b1fe3a4` |
| 25 | `lemma` | [xor_eq_iff_right_eq](../../../../../../ComputerScience/TheoryOfData/DataStructures/LawfulXorBasicNamespacedPublic.lean/declarations/xor-eq-iff-right-eq.md) | 143 | `result-track:d83d07972ad2d09a1cc2aa927312e639cb20289fb18b80a8ca0c7bab03fbe0fb` |
| 26 | `lemma` | [xor_eq_zero_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/LawfulXorBasicNamespacedPublic.lean/declarations/xor-eq-zero-iff.md) | 146 | `result-track:02ccb41247ac858d1b7560827fafdf6af0a1415c253fdeb12e1392baed5d0b46` |
| 27 | `lemma` | [xor_xor_cancel_comm](../../../../../../ComputerScience/TheoryOfData/DataStructures/LawfulXorBasicNamespacedPublic.lean/declarations/xor-xor-cancel-comm.md) | 149 | `result-track:fa9e64b6844265fa9cd0d89e453c78104930e3a67cbe7346d7ff50285d5634fd` |
| 28 | `lemma` | [xor_xor_cancel_comm_assoc](../../../../../../ComputerScience/TheoryOfData/DataStructures/LawfulXorBasicNamespacedPublic.lean/declarations/xor-xor-cancel-comm-assoc.md) | 152 | `result-track:c371df3ce5a222e968be8db4addd883db5e9891266c31b0a4bce817b6bd34cd1` |
| 29 | `lemma` | [xor_left_eq_self_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/LawfulXorBasicNamespacedPublic.lean/declarations/xor-left-eq-self-iff.md) | 155 | `result-track:d72b30440635b65fdcc5004ef9a83ad1455aace670ddf4b709d83ae23e5e7802` |
| 30 | `lemma` | [xor_right_eq_self_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/LawfulXorBasicNamespacedPublic.lean/declarations/xor-right-eq-self-iff.md) | 157 | `result-track:f25401284dad1c302a7adc465a08920129329adf8fa68b0e183a75b5df58f104` |
| 31 | `lemma` | [xor_left_eq_id_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/LawfulXorBasicNamespacedPublic.lean/declarations/xor-left-eq-id-iff.md) | 160 | `result-track:d8a1bc5b54d86cfd33680b57919f7fbd56ba96af88c67c842eebcb2526d5e5fd` |
| 32 | `lemma` | [xor_right_eq_id_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/LawfulXorBasicNamespacedPublic.lean/declarations/xor-right-eq-id-iff.md) | 162 | `result-track:fffd9a7636d5de901e05cf702d086a8b1d20ee90ca0807b8ffb1651889976cba` |
| 33 | `lemma` | [isFixedPt_xor_left_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/LawfulXorBasicNamespacedPublic.lean/declarations/isfixedpt-xor-left-iff.md) | 165 | `result-track:4ac84816bd337587b93fc0cdef41706c4112cd0afb7ababf7d6ea40597f18c9c` |
| 34 | `lemma` | [isFixedPt_xor_right_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/LawfulXorBasicNamespacedPublic.lean/declarations/isfixedpt-xor-right-iff.md) | 167 | `result-track:d0786c1a05716b8be96977dc2baf3f156c16cb0d8c036caf1aef14b09ab55188` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e383e5df551db483fadc6c7428f4595950829b90167c8ad68ed16ec9b18139a6 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant3cfb16d2acae84d6f10986e54901a38c9584165c340a5f610252a83a88b97173.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant3cfb16d2acae84d6f10986e54901a38c9584165c340a5f610252a83a88b97173.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
