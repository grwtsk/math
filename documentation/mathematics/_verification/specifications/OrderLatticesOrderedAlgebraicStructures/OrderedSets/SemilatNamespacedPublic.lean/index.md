# Verification target: Semilat Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "392c83b403efb5972b65a3654ae3cfc976c5bf88",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Semilat/Variant41192f042c4bc8b20811d3387a976493d3b34e7dd40d47412e12d9b31002dd80.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SemilatNamespacedPublic.lean/index.md) · [Full source](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SemilatNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `392c83b403efb5972b65a3654ae3cfc976c5bf88`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Semilat/Variant41192f042c4bc8b20811d3387a976493d3b34e7dd40d47412e12d9b31002dd80.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Semilat/Variant41192f042c4bc8b20811d3387a976493d3b34e7dd40d47412e12d9b31002dd80.lean.json)

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
| 1 | `structure` | [SemilatSupCat](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SemilatNamespacedPublic.lean/declarations/semilatsupcat.md) | 38 | `declaration-track:62b4089bf069c6fe70ba818cbf8dbcdede0369f5d2c553ce9f1952406f70cb47` |
| 2 | `structure` | [SemilatInfCat](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SemilatNamespacedPublic.lean/declarations/semilatinfcat.md) | 47 | `declaration-track:071cbdfa79c084da69df59babdead23176c4038178ca443ef886624afa4d3bb2` |
| 3 | `def` | [delabOf](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SemilatNamespacedPublic.lean/declarations/delabof-source-edition-2.md) | 60 | `declaration-track:d08d46033956d1a2ebf23b6341cd4666473855395abad3f91eff0973edd31ad7` |
| 4 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SemilatNamespacedPublic.lean/declarations/instance-source-edition-7.md) | 62 | `declaration-track:e6c83afffa2a51ffa3cc49a94561d88db2edd21bdda4c32ee3c088b58ceb003e` |
| 5 | `theorem` | [coe_of](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SemilatNamespacedPublic.lean/declarations/coe-of.md) | 67 | `result-track:13f99fbbfff2a2b41c2f167981077095612c1788416dd92c142d443991e8b2c7` |
| 6 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SemilatNamespacedPublic.lean/declarations/instance.md) | 70 | `declaration-track:51bc9d70704e6b50a7488da8b0806214592fd56114037bfcf0bd6c973c12e22f` |
| 7 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SemilatNamespacedPublic.lean/declarations/instance-source-edition-8.md) | 73 | `declaration-track:f3ed25c75f2fefa2bf23611034abd1cefb9cd4e46f647c5b22b0226445a85b70` |
| 8 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SemilatNamespacedPublic.lean/declarations/instance-source-edition-2.md) | 81 | `declaration-track:8d4c64de7d0678d07c4e645f49d62f234a1c5333084119fa0c52ab3d5f85646b` |
| 9 | `instance` | [hasForgetToPartOrd](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SemilatNamespacedPublic.lean/declarations/hasforgettopartord.md) | 85 | `declaration-track:0d3df28caab923d778717edc86adb125fbe1b0af490a737d1291a7537c256a98` |
| 10 | `theorem` | [coe_forget_to_partOrd](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SemilatNamespacedPublic.lean/declarations/coe-forget-to-partord.md) | 90 | `result-track:2f2528b46b4b0568db16a3072102c4e3bb6eb96d4b5d420ec1ca137acae87584` |
| 11 | `def` | [delabOf](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SemilatNamespacedPublic.lean/declarations/delabof.md) | 101 | `declaration-track:ca3ebbddce14cfa79972bc2d81320d8dcb1eee073401ed2d31cf7ad5f61829cb` |
| 12 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SemilatNamespacedPublic.lean/declarations/instance-source-edition-6.md) | 103 | `declaration-track:c7519aae4b767464d3286fb04ec1495e5063abf51bdec06bf5c14657b9cdc3fc` |
| 13 | `theorem` | [coe_of](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SemilatNamespacedPublic.lean/declarations/coe-of-source-edition-2.md) | 108 | `result-track:74c061566d29add8d76302f61f2c6ac355a2038bac112711c87ffe9f8c6a3a1e` |
| 14 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SemilatNamespacedPublic.lean/declarations/instance-source-edition-5.md) | 111 | `declaration-track:bdcf9636c8a8c3535e11ed6de1636b17e322539cc80b907a86e858906fcb2ee7` |
| 15 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SemilatNamespacedPublic.lean/declarations/instance-source-edition-4.md) | 114 | `declaration-track:adcf92d9adc6d79ed4492e6664ab891d8e2045704b7590ea65d11211b4fd903d` |
| 16 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SemilatNamespacedPublic.lean/declarations/instance-source-edition-3.md) | 122 | `declaration-track:97fedc33695e1a867af67fc172beac9990edcc9820d7b0191bd260a733b22134` |
| 17 | `instance` | [hasForgetToPartOrd](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SemilatNamespacedPublic.lean/declarations/hasforgettopartord-source-edition-2.md) | 126 | `declaration-track:62275c288fb587e6cbe9bb0f1ec6f25959f24e86fb72226274dfc31f56bcc4c3` |
| 18 | `theorem` | [coe_forget_to_partOrd](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SemilatNamespacedPublic.lean/declarations/coe-forget-to-partord-source-edition-2.md) | 131 | `result-track:e8c1d48bbd9b30b9e920ac6c12c334b06dabe1486cfbf5a2a4db68d023c84709` |
| 19 | `def` | [Iso.mk](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SemilatNamespacedPublic.lean/declarations/iso-mk-source-edition-2.md) | 143 | `declaration-track:472241827c099664e3af5affcaffb6289d50138f03a6be8e78661687aae25595` |
| 20 | `def` | [dual](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SemilatNamespacedPublic.lean/declarations/dual.md) | 151 | `declaration-track:53e7e9ae7f1797c4f24588e3a2fddec212b41dbdc8fbb11c1a2e81e7c634f372` |
| 21 | `def` | [Iso.mk](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SemilatNamespacedPublic.lean/declarations/iso-mk.md) | 161 | `declaration-track:39a658c655bdf5087b7f927be8b53faaf60611e2327db32fb7df0a91580f7ca7` |
| 22 | `def` | [dual](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SemilatNamespacedPublic.lean/declarations/dual-source-edition-2.md) | 169 | `declaration-track:7c9b899b690009e571b258ecff28232a6c36f90f85fe6a7c893da1a9b1746307` |
| 23 | `def` | [SemilatSupCatEquivSemilatInfCat](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SemilatNamespacedPublic.lean/declarations/semilatsupcatequivsemilatinfcat.md) | 177 | `declaration-track:2b09206dd9d3f945fd51d70776634829fe15eb745419e356e576f0315fedd774` |
| 24 | `theorem` | [SemilatSupCat_dual_comp_forget_to_partOrd](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SemilatNamespacedPublic.lean/declarations/semilatsupcat-dual-comp-forget-to-partord.md) | 183 | `result-track:c8108f8057ec665471bd638bd9bab4a452ae21be130808944e74fbec3bb42e35` |
| 25 | `theorem` | [SemilatInfCat_dual_comp_forget_to_partOrd](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SemilatNamespacedPublic.lean/declarations/semilatinfcat-dual-comp-forget-to-partord.md) | 188 | `result-track:18a0cb0554989d2b8417142e4f37a9b004b321954650f2adceac2b2bec8941c5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a2e73f1a5083503dddfc613c4ea148f36f8b46aa4267d143654c9518f7a4ec12 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Semilat/Variant41192f042c4bc8b20811d3387a976493d3b34e7dd40d47412e12d9b31002dd80.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Semilat/Variant41192f042c4bc8b20811d3387a976493d3b34e7dd40d47412e12d9b31002dd80.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
