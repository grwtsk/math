# Verification target: Fun Like Group Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0078f1dc9b74fe6764084ac1733cdf90d8433e8f",
  "lexical_observation_count": 32,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Group/Variantca3522cebfc9aa2eae5116cbd5fbc397c3e1c1100af5feb22f0842cf6454fe37.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfData/DataStructures/FunLikeGroupNamespacedPublic.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfData/DataStructures/FunLikeGroupNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0078f1dc9b74fe6764084ac1733cdf90d8433e8f`.

Source path: `GRWTSK/Algebra/GroupTheory/Group/Variantca3522cebfc9aa2eae5116cbd5fbc397c3e1c1100af5feb22f0842cf6454fe37.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Group/Variantca3522cebfc9aa2eae5116cbd5fbc397c3e1c1100af5feb22f0842cf6454fe37.lean.json)

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
| 1 | `def` | [coeMulHom](../../../../../../ComputerScience/TheoryOfData/DataStructures/FunLikeGroupNamespacedPublic.lean/declarations/coemulhom.md) | 49 | `declaration-track:0922c55ee888f7f364abff3d5af01a0d54d05508810ce06ac07e5880de0c4d77` |
| 2 | `theorem` | [coeMulHom_apply](../../../../../../ComputerScience/TheoryOfData/DataStructures/FunLikeGroupNamespacedPublic.lean/declarations/coemulhom-apply.md) | 54 | `result-track:a7eecf2ad3e5cfbe823eed811264291687c69725ff2a999dfa66f7d0d9a452fb` |
| 3 | `theorem` | [coe_coeMulHom](../../../../../../ComputerScience/TheoryOfData/DataStructures/FunLikeGroupNamespacedPublic.lean/declarations/coe-coemulhom.md) | 57 | `result-track:f218c62493a5acdd0fa9a233111cd60e100549e47d3132e6b24a45779487d30c` |
| 4 | `theorem` | [coeMulHom_injective](../../../../../../ComputerScience/TheoryOfData/DataStructures/FunLikeGroupNamespacedPublic.lean/declarations/coemulhom-injective.md) | 60 | `result-track:d4a703bf04ac9a59475ebcdd52b7a1c4c46373a43c0aa64278b3b85970042323` |
| 5 | `def` | [coeMonoidHom](../../../../../../ComputerScience/TheoryOfData/DataStructures/FunLikeGroupNamespacedPublic.lean/declarations/coemonoidhom.md) | 74 | `declaration-track:55c11815d410e16c46a949d1667eeb1291496ccdaf91a547d4d2bafe72eb9504` |
| 6 | `theorem` | [coeMonoidHom_apply](../../../../../../ComputerScience/TheoryOfData/DataStructures/FunLikeGroupNamespacedPublic.lean/declarations/coemonoidhom-apply.md) | 80 | `result-track:60c5560067a0cbc6c26565f6a09a90f3d64bbfcb1359b6b84be8f6b8345c1cd9` |
| 7 | `theorem` | [coe_coeMonoidHom](../../../../../../ComputerScience/TheoryOfData/DataStructures/FunLikeGroupNamespacedPublic.lean/declarations/coe-coemonoidhom-source-edition-2.md) | 83 | `result-track:961ea1ef9e84218f8d8436cb7b54e9200f0a3bc83d19005310ae92438624848b` |
| 8 | `theorem` | [coe_coeMonoidHom'](../../../../../../ComputerScience/TheoryOfData/DataStructures/FunLikeGroupNamespacedPublic.lean/declarations/coe-coemonoidhom.md) | 86 | `result-track:611a349f0b8d5a1ef2aeff4442e47362017a717b3241a4f5e18b9dfb6e8e3a39` |
| 9 | `theorem` | [coeMonoidHom_injective](../../../../../../ComputerScience/TheoryOfData/DataStructures/FunLikeGroupNamespacedPublic.lean/declarations/coemonoidhom-injective.md) | 89 | `result-track:9973619fe4f232ea0c0b9522715cade63f4252c1d00b8046e56884909ae842ee` |
| 10 | `abbrev` | [semigroup](../../../../../../ComputerScience/TheoryOfData/DataStructures/FunLikeGroupNamespacedPublic.lean/declarations/semigroup.md) | 104 | `declaration-track:dee365af0b38280387e1c2702137bebc89de902a0f8ef28a006eca3203deeccd` |
| 11 | `abbrev` | [commSemigroup](../../../../../../ComputerScience/TheoryOfData/DataStructures/FunLikeGroupNamespacedPublic.lean/declarations/commsemigroup.md) | 111 | `declaration-track:2cf8ffd6cc3be335162eed243e5c19d4b6316e4a4e2dbd1866ee26b9fe4fb9e0` |
| 12 | `theorem` | [isLeftCancelMul](../../../../../../ComputerScience/TheoryOfData/DataStructures/FunLikeGroupNamespacedPublic.lean/declarations/isleftcancelmul.md) | 119 | `result-track:6b4f40d9127310ee01ad8188cf8b77b9340873db8e3503beca29627a3a82ec64` |
| 13 | `theorem` | [isRightCancelMul](../../../../../../ComputerScience/TheoryOfData/DataStructures/FunLikeGroupNamespacedPublic.lean/declarations/isrightcancelmul.md) | 127 | `result-track:4d0d22c756c395a5b254152ae90e55ff75311ec0a1e6c59fd2dc850f498b4889` |
| 14 | `theorem` | [isCancelMul](../../../../../../ComputerScience/TheoryOfData/DataStructures/FunLikeGroupNamespacedPublic.lean/declarations/iscancelmul.md) | 135 | `result-track:d251fbf136a60831678908383e86861cf298c29d9526b43d95ca2f3e010a6b61` |
| 15 | `abbrev` | [leftCancelSemigroup](../../../../../../ComputerScience/TheoryOfData/DataStructures/FunLikeGroupNamespacedPublic.lean/declarations/leftcancelsemigroup.md) | 143 | `declaration-track:22c01ca4b9e788f68f32cfe274914870bf2483f67519f34725d445ba7dab5227` |
| 16 | `abbrev` | [rightCancelSemigroup](../../../../../../ComputerScience/TheoryOfData/DataStructures/FunLikeGroupNamespacedPublic.lean/declarations/rightcancelsemigroup.md) | 151 | `declaration-track:fe31856af576cf38542ec432a2243624538b1d6c44afd245601d2476efa8c1b9` |
| 17 | `abbrev` | [mulOneClass](../../../../../../ComputerScience/TheoryOfData/DataStructures/FunLikeGroupNamespacedPublic.lean/declarations/muloneclass.md) | 160 | `declaration-track:9e1cb4e14eb314fad82a3e666e0ee79e8408d4dff2282b1be55b90dca8a0244d` |
| 18 | `abbrev` | [monoid](../../../../../../ComputerScience/TheoryOfData/DataStructures/FunLikeGroupNamespacedPublic.lean/declarations/monoid.md) | 170 | `declaration-track:c627e50e3627c78f1527bd7f24602d0d517e0b11b7237187fef6124f1c7ffe05` |
| 19 | `abbrev` | [leftCancelMonoid](../../../../../../ComputerScience/TheoryOfData/DataStructures/FunLikeGroupNamespacedPublic.lean/declarations/leftcancelmonoid.md) | 178 | `declaration-track:1bb4b51d92e2576c494350ac88e4964d8f0ea7d250d5620af97e260414bde133` |
| 20 | `abbrev` | [rightCancelMonoid](../../../../../../ComputerScience/TheoryOfData/DataStructures/FunLikeGroupNamespacedPublic.lean/declarations/rightcancelmonoid.md) | 187 | `declaration-track:af45957da984992dcdf9595e884330ed869cf2b338b655b55d85d1b6926f70e3` |
| 21 | `abbrev` | [cancelMonoid](../../../../../../ComputerScience/TheoryOfData/DataStructures/FunLikeGroupNamespacedPublic.lean/declarations/cancelmonoid.md) | 195 | `declaration-track:9a2727648c849e92564c6ee7c63498a65c5c00d27934c4b23098ebeabb37943d` |
| 22 | `abbrev` | [commMonoid](../../../../../../ComputerScience/TheoryOfData/DataStructures/FunLikeGroupNamespacedPublic.lean/declarations/commmonoid.md) | 203 | `declaration-track:343103fa2ad91c4168d28e62a388b6129cc66adfa1a1304a639da36bad0d4c49` |
| 23 | `abbrev` | [cancelCommMonoid](../../../../../../ComputerScience/TheoryOfData/DataStructures/FunLikeGroupNamespacedPublic.lean/declarations/cancelcommmonoid.md) | 212 | `declaration-track:e3eafb09a5fe07da071ee4957634efae6d15873e31d5164fcf0b05686b5cf264` |
| 24 | `abbrev` | [involutiveInv](../../../../../../ComputerScience/TheoryOfData/DataStructures/FunLikeGroupNamespacedPublic.lean/declarations/involutiveinv.md) | 222 | `declaration-track:9fb35f7b48112cec8df77b5b2c566e7af2b234aadcc5b19e2d31e3872d1abc00` |
| 25 | `abbrev` | [invOneClass](../../../../../../ComputerScience/TheoryOfData/DataStructures/FunLikeGroupNamespacedPublic.lean/declarations/invoneclass.md) | 228 | `declaration-track:ef6eecbcbd4343fff7c9b6eca6d5087fafd794ca4f1f2d99b054d9977b30e7df` |
| 26 | `abbrev` | [divInvMonoid](../../../../../../ComputerScience/TheoryOfData/DataStructures/FunLikeGroupNamespacedPublic.lean/declarations/divinvmonoid.md) | 236 | `declaration-track:0493c77ce69dc5fb6e0f38dbb2c607dbceb2fef5f354d87714842d329f9d513c` |
| 27 | `abbrev` | [divInvOneMonoid](../../../../../../ComputerScience/TheoryOfData/DataStructures/FunLikeGroupNamespacedPublic.lean/declarations/divinvonemonoid.md) | 245 | `declaration-track:b7ca6e5468fb5c8ed54bf3d0a0e11fd0e47890fcef7ba6a38f8290f45713b70a` |
| 28 | `abbrev` | [divisionMonoid](../../../../../../ComputerScience/TheoryOfData/DataStructures/FunLikeGroupNamespacedPublic.lean/declarations/divisionmonoid.md) | 253 | `declaration-track:2bbf7ba00cdfed4dba229fcef56414b1a8d50f0f7fda887497b6295b30bb431e` |
| 29 | `abbrev` | [divisionCommMonoid](../../../../../../ComputerScience/TheoryOfData/DataStructures/FunLikeGroupNamespacedPublic.lean/declarations/divisioncommmonoid.md) | 262 | `declaration-track:6ae1eeca47f744904141c1893dcdc9c65d6c7f76b106dbf3b628aa0bc9031e2a` |
| 30 | `abbrev` | [group](../../../../../../ComputerScience/TheoryOfData/DataStructures/FunLikeGroupNamespacedPublic.lean/declarations/group.md) | 270 | `declaration-track:dd797931b2d3ff25279c42a490a9afffe6dd04037039bc5111dd8879890f8bc9` |
| 31 | `abbrev` | [commGroup](../../../../../../ComputerScience/TheoryOfData/DataStructures/FunLikeGroupNamespacedPublic.lean/declarations/commgroup.md) | 279 | `declaration-track:427db7dc574e8c09d2313c88a96ecef82396c51de4fb5e1bd307df89e1fe931a` |
| 32 | `theorem` | [isMulTorsionFree](../../../../../../ComputerScience/TheoryOfData/DataStructures/FunLikeGroupNamespacedPublic.lean/declarations/ismultorsionfree.md) | 292 | `result-track:f129d30803e27b57dcb08357b22ef2552d9fdb8b377730a9a40cd4ff54e8eec4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=8b5e677a0864691e17ab8de8f09e8abc725bbdb939c5e294ba44572de38fa5f1 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/Group/Variantca3522cebfc9aa2eae5116cbd5fbc397c3e1c1100af5feb22f0842cf6454fe37.lean","GRWTSK/_verification/specifications/Algebra/GroupTheory/Group/Variantca3522cebfc9aa2eae5116cbd5fbc397c3e1c1100af5feb22f0842cf6454fe37.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
