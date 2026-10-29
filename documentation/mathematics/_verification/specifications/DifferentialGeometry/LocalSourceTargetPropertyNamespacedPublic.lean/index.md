# Verification target: Local Source Target Property Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "87e128899c40999d24bf40879f65b8e0ab525eb6",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/LocalSourceTargetProperty/Variant23e119451d0a5d2b9dc7d13808841013a4fa83425de7e2f1d5d110ea9e329b12.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../DifferentialGeometry/LocalSourceTargetPropertyNamespacedPublic.lean/index.md) · [Full source](../../../../DifferentialGeometry/LocalSourceTargetPropertyNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `87e128899c40999d24bf40879f65b8e0ab525eb6`.

Source path: `GRWTSK/Topology/GeneralTopology/LocalSourceTargetProperty/Variant23e119451d0a5d2b9dc7d13808841013a4fa83425de7e2f1d5d110ea9e329b12.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/LocalSourceTargetProperty/Variant23e119451d0a5d2b9dc7d13808841013a4fa83425de7e2f1d5d110ea9e329b12.lean.json)

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
| 1 | `structure` | [IsLocalSourceTargetProperty](../../../../DifferentialGeometry/LocalSourceTargetPropertyNamespacedPublic.lean/declarations/islocalsourcetargetproperty.md) | 73 | `declaration-track:8aa32d9a4def435ecb2435ebfd87ff73d1b7eaf8d9c3319e64c8e99e457cf5f5` |
| 2 | `structure` | [LocalPresentationAt](../../../../DifferentialGeometry/LocalSourceTargetPropertyNamespacedPublic.lean/declarations/localpresentationat.md) | 84 | `declaration-track:523e7f415e75576cd8fbf6a90ad0044b294311e51a6d19d452df9db760d3f301` |
| 3 | `def` | [LiftSourceTargetPropertyAt](../../../../DifferentialGeometry/LocalSourceTargetPropertyNamespacedPublic.lean/declarations/liftsourcetargetpropertyat.md) | 109 | `declaration-track:f480005f0c6e742704c9fa39bd5d7285ddee739f343a129262dc570c3f0cf385` |
| 4 | `lemma` | [mapsto_domChart_source_codChart_source](../../../../DifferentialGeometry/LocalSourceTargetPropertyNamespacedPublic.lean/declarations/mapsto-domchart-source-codchart-source.md) | 118 | `result-track:e0e407b5e70a1899cc857c035dfff119b8120b33aaf8a8ea241a104685aabab9` |
| 5 | `def` | [localPresentationAt](../../../../DifferentialGeometry/LocalSourceTargetPropertyNamespacedPublic.lean/declarations/localpresentationat-source-edition-2.md) | 130 | `declaration-track:7dbe86671a8feaa3899070cafb3b2ff736dc5400fbed49c707bcb2d738dca1dd` |
| 6 | `def` | [domChart](../../../../DifferentialGeometry/LocalSourceTargetPropertyNamespacedPublic.lean/declarations/domchart.md) | 137 | `declaration-track:50466647569a5077a749bb24225b8d8fd727dd92db56c5f1d63e1e3b1a92855d` |
| 7 | `def` | [codChart](../../../../DifferentialGeometry/LocalSourceTargetPropertyNamespacedPublic.lean/declarations/codchart.md) | 144 | `declaration-track:04d69636538428884c2db0af1a3f0764f37aefcac61fff4f1aa999ee42993e21` |
| 8 | `lemma` | [mem_domChart_source](../../../../DifferentialGeometry/LocalSourceTargetPropertyNamespacedPublic.lean/declarations/mem-domchart-source.md) | 148 | `result-track:c84e08a29cd55093aaf8eb688bc0c204627e41fb4f0e7e6f6ba6514b959f0e99` |
| 9 | `lemma` | [mem_codChart_source](../../../../DifferentialGeometry/LocalSourceTargetPropertyNamespacedPublic.lean/declarations/mem-codchart-source.md) | 152 | `result-track:08fcf921a9ec4c73827a1d7a24775f1f943212f6ecdb272e38a52ec78d91ec23` |
| 10 | `lemma` | [domChart_mem_maximalAtlas](../../../../DifferentialGeometry/LocalSourceTargetPropertyNamespacedPublic.lean/declarations/domchart-mem-maximalatlas.md) | 156 | `result-track:79b669251cb76309d0a65088fb4742e002fe38d39cf81d43d79ec816d1a9c75e` |
| 11 | `lemma` | [codChart_mem_maximalAtlas](../../../../DifferentialGeometry/LocalSourceTargetPropertyNamespacedPublic.lean/declarations/codchart-mem-maximalatlas.md) | 160 | `result-track:a72f4be2a0b10ed88c3a7c63cf2337357cba7d58486d0126c98080b897d3e063` |
| 12 | `lemma` | [source_subset_preimage_source](../../../../DifferentialGeometry/LocalSourceTargetPropertyNamespacedPublic.lean/declarations/source-subset-preimage-source.md) | 164 | `result-track:5ee47f29dbfa445cb68d3d983e841c89fba15eba9ee0378ce0c156ec4442d4c1` |
| 13 | `lemma` | [property](../../../../DifferentialGeometry/LocalSourceTargetPropertyNamespacedPublic.lean/declarations/property.md) | 168 | `result-track:7603b1d9c8505c7328cc3503aa849b7b43eba1ce6d5bf466effa7a8180aa9acf` |
| 14 | `lemma` | [congr_iff](../../../../DifferentialGeometry/LocalSourceTargetPropertyNamespacedPublic.lean/declarations/congr-iff.md) | 172 | `result-track:1dbaf663d5475c7bba2eddf79ee4e4386b4aa1b9f41dc1a0b363b9b818190d55` |
| 15 | `lemma` | [mk_of_continuousAt](../../../../DifferentialGeometry/LocalSourceTargetPropertyNamespacedPublic.lean/declarations/mk-of-continuousat.md) | 180 | `result-track:e050b62c9b5fc559790ade2c454a89398e8fd49512ad865d018041a082a829b8` |
| 16 | `lemma` | [congr_of_eventuallyEq](../../../../DifferentialGeometry/LocalSourceTargetPropertyNamespacedPublic.lean/declarations/congr-of-eventuallyeq.md) | 196 | `result-track:4a242567580d3ef0b0d652726425a3e11ccff7972129e8273419433317e494d6` |
| 17 | `lemma` | [congr_iff_of_eventuallyEq](../../../../DifferentialGeometry/LocalSourceTargetPropertyNamespacedPublic.lean/declarations/congr-iff-of-eventuallyeq.md) | 215 | `result-track:9045653a52ce9fb2bbf5c317b14ac7b5d9b99f5c9fae15319e37cdf1cf435b6d` |
| 18 | `lemma` | [Local Source Target Property Namespaced Public](../../../../DifferentialGeometry/LocalSourceTargetPropertyNamespacedPublic.lean/declarations/liftsourcetargetpropertyat-source-line-220-occurrence-2.md) | 220 | `result-track:69516c0402eb5b790cd07ef00a34ea22aa26611ae7691f0a58688b5690b3a1a4` |
| 19 | `lemma` | [prodMap](../../../../DifferentialGeometry/LocalSourceTargetPropertyNamespacedPublic.lean/declarations/prodmap.md) | 232 | `result-track:e659c1bb07f9bd43e426531e3c7db19122b504b566bbb778e1434d20a625c6bd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=cc0b2a7b87c185fe4a7e3a3392759334009fada7004892c9e510beb309546efa -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/LocalSourceTargetProperty/Variant23e119451d0a5d2b9dc7d13808841013a4fa83425de7e2f1d5d110ea9e329b12.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/LocalSourceTargetProperty/Variant23e119451d0a5d2b9dc7d13808841013a4fa83425de7e2f1d5d110ea9e329b12.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
