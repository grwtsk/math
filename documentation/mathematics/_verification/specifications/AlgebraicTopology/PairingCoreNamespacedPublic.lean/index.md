# Verification target: Pairing Core Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1b31d82bf69277cc3cdf58e3918ae4fd24be61a6",
  "lexical_observation_count": 30,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/AlgebraicTopology/PairingCore/Variant13e16f1775309ac4e976ae8a71b5eea5461e73895a0e8de45b8c92932f2ad071.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../AlgebraicTopology/PairingCoreNamespacedPublic.lean/index.md) · [Full source](../../../../AlgebraicTopology/PairingCoreNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1b31d82bf69277cc3cdf58e3918ae4fd24be61a6`.

Source path: `GRWTSK/Topology/AlgebraicTopology/PairingCore/Variant13e16f1775309ac4e976ae8a71b5eea5461e73895a0e8de45b8c92932f2ad071.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/AlgebraicTopology/PairingCore/Variant13e16f1775309ac4e976ae8a71b5eea5461e73895a0e8de45b8c92932f2ad071.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [PairingCore](../../../../AlgebraicTopology/PairingCoreNamespacedPublic.lean/declarations/pairingcore.md) | 48 | `declaration-track:fdf41605306b86f9e6fc6f63b9cbe206cf996f22f894f1ec4c0e0b3dbc85fc54` |
| 2 | `def` | [Pairing.pairingCore](../../../../AlgebraicTopology/PairingCoreNamespacedPublic.lean/declarations/pairing-pairingcore.md) | 74 | `declaration-track:7852aa81c49605e2de4fbc1bd9433db97fd3fcf354c0c8b6697946625fd93e31` |
| 3 | `def` | [type₁](../../../../AlgebraicTopology/PairingCoreNamespacedPublic.lean/declarations/type-source-edition-2.md) | 115 | `declaration-track:94aaf19d4dbc621480c2d6e00e30b90dc88404f7ee7154a763b0573e49c4763c` |
| 4 | `def` | [type₂](../../../../AlgebraicTopology/PairingCoreNamespacedPublic.lean/declarations/type.md) | 120 | `declaration-track:0077eb89bc7d257d42270fae94b98bb41d8469588bc4b6142061af6e499d889c` |
| 5 | `lemma` | [injective_type₁](../../../../AlgebraicTopology/PairingCoreNamespacedPublic.lean/declarations/injective-type-source-edition-2.md) | 124 | `result-track:f9c12a9d189473ba9c4fc5ce3f32db12f12fb804e4115775ed3a44143f41f6f5` |
| 6 | `lemma` | [injective_type₂](../../../../AlgebraicTopology/PairingCoreNamespacedPublic.lean/declarations/injective-type.md) | 127 | `result-track:3da95744fce322ed9670f03c265793681a0ea0464450a8283e22893f8fe63141` |
| 7 | `lemma` | [type₁_ne_type₂](../../../../AlgebraicTopology/PairingCoreNamespacedPublic.lean/declarations/type-ne-type.md) | 130 | `result-track:0464dd4b0e5114f5a73c20e5e01d8b07084f932c1c05267a4d525cfefd648c97` |
| 8 | `lemma` | [surjective](../../../../AlgebraicTopology/PairingCoreNamespacedPublic.lean/declarations/surjective.md) | 133 | `result-track:94b20c27d850a3575e2ae02baa00a9a45f01728d9e47104e7215c26dad01f3ed` |
| 9 | `abbrev` | [I](../../../../AlgebraicTopology/PairingCoreNamespacedPublic.lean/declarations/i.md) | 140 | `declaration-track:43a53083d07d1fcdf93b0f7060be1633bd5d21c9581fea5de759e9af1dc80c5f` |
| 10 | `abbrev` | [II](../../../../AlgebraicTopology/PairingCoreNamespacedPublic.lean/declarations/ii.md) | 143 | `declaration-track:2e9217ae381fbe41a7d6a145e569f4cc3825e8ce1a7fe3b5d2f464eceb0d9a5a` |
| 11 | `def` | [equivI](../../../../AlgebraicTopology/PairingCoreNamespacedPublic.lean/declarations/equivi.md) | 147 | `declaration-track:f65e3dfa9f7e0c820324293ee9d3b4b66fd475011aa3a6ee1d6e8bb69a291c15` |
| 12 | `def` | [equivII](../../../../AlgebraicTopology/PairingCoreNamespacedPublic.lean/declarations/equivii.md) | 151 | `declaration-track:8a07668d70d071a5c2ad4de77c02240640fa1dd11b67a59bb3c306b60ab77ff1` |
| 13 | `def` | [pairing](../../../../AlgebraicTopology/PairingCoreNamespacedPublic.lean/declarations/pairing.md) | 155 | `declaration-track:0acd9e8ff621dc2d1551f01e8af698c3ace0336eb9c9fbe52dc5137c03c75947` |
| 14 | `lemma` | [pairing_p_equivII](../../../../AlgebraicTopology/PairingCoreNamespacedPublic.lean/declarations/pairing-p-equivii.md) | 172 | `result-track:7e1d436b5e5df256c1ca93c400968182400a095fb3f7a0306537ef93a03bbf42` |
| 15 | `lemma` | [pairing_p_symm_equivI](../../../../AlgebraicTopology/PairingCoreNamespacedPublic.lean/declarations/pairing-p-symm-equivi.md) | 177 | `result-track:34037223270ae7b3316e1da7595d5fc7b1732649b6cbf42ec8822cc5672d32f3` |
| 16 | `lemma` | [type₁_pairing](../../../../AlgebraicTopology/PairingCoreNamespacedPublic.lean/declarations/type-pairing.md) | 181 | `result-track:80e0ff71023f1e1258ca24a5f38e90dee3f6f57b51d33db4b226d8a001644df5` |
| 17 | `class` | [IsProper](../../../../AlgebraicTopology/PairingCoreNamespacedPublic.lean/declarations/isproper.md) | 188 | `declaration-track:ac5f31471476b53977cf80e73d39d75eb19091a1d3b1552061ebd8e0d84591ea` |
| 18 | `lemma` | [isUniquelyCodimOneFace](../../../../AlgebraicTopology/PairingCoreNamespacedPublic.lean/declarations/isuniquelycodimoneface.md) | 192 | `result-track:c26f65b71d270dbef746420a61d114de2954f008a7c1ed90aec4d1110a6b8d36` |
| 19 | `instance` | [(anonymous)](../../../../AlgebraicTopology/PairingCoreNamespacedPublic.lean/declarations/instance-source-edition-4.md) | 196 | `declaration-track:a69a7e44fae262825f87fc03c5bf01040824ff83e63d9682aca580db177e5928` |
| 20 | `instance` | [(anonymous)](../../../../AlgebraicTopology/PairingCoreNamespacedPublic.lean/declarations/instance.md) | 203 | `declaration-track:19bbf859818f47b495ff247e06720721c5cc16fac49509d0c102887ea49c5084` |
| 21 | `lemma` | [isProper_pairing_iff](../../../../AlgebraicTopology/PairingCoreNamespacedPublic.lean/declarations/isproper-pairing-iff.md) | 208 | `result-track:848f9d3c4f08004b4c7f24feea82d94c669f1264ccf09e180eb76dfb91a187e0` |
| 22 | `lemma` | [isUniquelyCodimOneFace_index](../../../../AlgebraicTopology/PairingCoreNamespacedPublic.lean/declarations/isuniquelycodimoneface-index.md) | 214 | `result-track:af606f586fed9821cde6b4bee84e2c265acab155331527ede24516c5a1e61028` |
| 23 | `lemma` | [isUniquelyCodimOneFace_index_coe](../../../../AlgebraicTopology/PairingCoreNamespacedPublic.lean/declarations/isuniquelycodimoneface-index-coe.md) | 219 | `result-track:85782b03141ee2a805a706a6f7f25b698ebd6f6f1abb70401a3dc9b673ce4bb2` |
| 24 | `class` | [IsInner](../../../../AlgebraicTopology/PairingCoreNamespacedPublic.lean/declarations/isinner.md) | 226 | `declaration-track:f6b6b06c443f7ad0897280c927eafab090c7e75507eb1754845efc0637d61baa` |
| 25 | `instance` | [(anonymous)](../../../../AlgebraicTopology/PairingCoreNamespacedPublic.lean/declarations/instance-source-edition-3.md) | 232 | `declaration-track:a5f0c5e22254b965b9b143bf1eca9f128d29765b2b0b3dae21c6d5df6630473d` |
| 26 | `def` | [AncestralRel](../../../../AlgebraicTopology/PairingCoreNamespacedPublic.lean/declarations/ancestralrel.md) | 243 | `declaration-track:c8a999addea9cdb232af306aa838edcdcd036fbe8394e6c2d0e1e89c326c64c1` |
| 27 | `lemma` | [ancestralRel_iff](../../../../AlgebraicTopology/PairingCoreNamespacedPublic.lean/declarations/ancestralrel-iff.md) | 246 | `result-track:91601eda56811cb83b7d125524e1a1bbf12a24a9355d489b074f174a7f3676ad` |
| 28 | `class` | [IsRegular](../../../../AlgebraicTopology/PairingCoreNamespacedPublic.lean/declarations/isregular.md) | 252 | `declaration-track:81b47af2bca104a0edf46465e7ca2da80f13c199c3116e78c7da5e40db69696e` |
| 29 | `instance` | [(anonymous)](../../../../AlgebraicTopology/PairingCoreNamespacedPublic.lean/declarations/instance-source-edition-2.md) | 255 | `declaration-track:4c8c2f5fc18614e51496bb80889d5009c81f76f0e6da065e675d05491a507d9e` |
| 30 | `lemma` | [isRegular_pairing_iff](../../../../AlgebraicTopology/PairingCoreNamespacedPublic.lean/declarations/isregular-pairing-iff.md) | 262 | `result-track:e3a34246b1eef62c03ac99afc82b205f3bebc1879778ab34343e2375f4446665` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=2609194b73571f277667f88ddfa852eb4c89984686f97813de2eef416f4bde18 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/AlgebraicTopology/PairingCore/Variant13e16f1775309ac4e976ae8a71b5eea5461e73895a0e8de45b8c92932f2ad071.lean","GRWTSK/_verification/specifications/Topology/AlgebraicTopology/PairingCore/Variant13e16f1775309ac4e976ae8a71b5eea5461e73895a0e8de45b8c92932f2ad071.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
