# Verification target: GRWTSK.Topology.GeneralTopology.Star.Variant91502c3d08b2800908f4c976dba344f3f8d2465bfd754142869f3182122fdfac

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b11163286459e9478263f9a60957adab31a982ce",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Star/Variant91502c3d08b2800908f4c976dba344f3f8d2465bfd754142869f3182122fdfac.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Star/Variant91502c3d08b2800908f4c976dba344f3f8d2465bfd754142869f3182122fdfac.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Star/Variant91502c3d08b2800908f4c976dba344f3f8d2465bfd754142869f3182122fdfac.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b11163286459e9478263f9a60957adab31a982ce`.

Source path: `GRWTSK/Topology/GeneralTopology/Star/Variant91502c3d08b2800908f4c976dba344f3f8d2465bfd754142869f3182122fdfac.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Star/Variant91502c3d08b2800908f4c976dba344f3f8d2465bfd754142869f3182122fdfac.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [ContinuousStar](../../../../../mathematics/Topology/GeneralTopology/Star/Variant91502c3d08b2800908f4c976dba344f3f8d2465bfd754142869f3182122fdfac.lean/declarations/continuousstar--bb6e6fb02b78a46b2c2c277a.md) | 34 | `declaration-track:bb6e6fb02b78a46b2c2c277a8440d99aa8f5d51692176cd8f37f05bae3ca8f4f` |
| 2 | `theorem` | [continuousOn_star](../../../../../mathematics/Topology/GeneralTopology/Star/Variant91502c3d08b2800908f4c976dba344f3f8d2465bfd754142869f3182122fdfac.lean/declarations/continuouson-star--66a204b54f512d6d13221f17.md) | 44 | `result-track:66a204b54f512d6d13221f1764c3cbb5f3edc48c2d8214035ec304cee92455f2` |
| 3 | `theorem` | [continuousWithinAt_star](../../../../../mathematics/Topology/GeneralTopology/Star/Variant91502c3d08b2800908f4c976dba344f3f8d2465bfd754142869f3182122fdfac.lean/declarations/continuouswithinat-star--cf3cf57a0bc877c9da4c3aba.md) | 47 | `result-track:cf3cf57a0bc877c9da4c3abadb298a5ca427feb3f1816af1b8334b33afbd19c9` |
| 4 | `theorem` | [continuousAt_star](../../../../../mathematics/Topology/GeneralTopology/Star/Variant91502c3d08b2800908f4c976dba344f3f8d2465bfd754142869f3182122fdfac.lean/declarations/continuousat-star--8766db9b5f9813a771f84975.md) | 50 | `result-track:8766db9b5f9813a771f849754933fd342e366b37cfc11b8ac2b950f25facfce5` |
| 5 | `theorem` | [tendsto_star](../../../../../mathematics/Topology/GeneralTopology/Star/Variant91502c3d08b2800908f4c976dba344f3f8d2465bfd754142869f3182122fdfac.lean/declarations/tendsto-star--ab16c26512024188d573dbd8.md) | 53 | `result-track:ab16c26512024188d573dbd8d8a5ec190a25c79fca11548a4fb23cb9ccb3f7a2` |
| 6 | `theorem` | [Filter.Tendsto.star](../../../../../mathematics/Topology/GeneralTopology/Star/Variant91502c3d08b2800908f4c976dba344f3f8d2465bfd754142869f3182122fdfac.lean/declarations/filter-tendsto-star--d7b253985f20d2138fd3f409.md) | 56 | `result-track:d7b253985f20d2138fd3f40916b76643b0eee14f9070b5e5d01d0300ff0d851e` |
| 7 | `theorem` | [Continuous.star](../../../../../mathematics/Topology/GeneralTopology/Star/Variant91502c3d08b2800908f4c976dba344f3f8d2465bfd754142869f3182122fdfac.lean/declarations/continuous-star--9a214f7ea74551897704002d.md) | 63 | `result-track:9a214f7ea74551897704002d235c046a24cdcf2c970dc317f2a702a8985e3f6e` |
| 8 | `theorem` | [ContinuousAt.star](../../../../../mathematics/Topology/GeneralTopology/Star/Variant91502c3d08b2800908f4c976dba344f3f8d2465bfd754142869f3182122fdfac.lean/declarations/continuousat-star--18cb64d44290bf25ea8b5c0c.md) | 67 | `result-track:18cb64d44290bf25ea8b5c0c38f54f2f3a57dec8db8b0b5fc9fbccb70adafe72` |
| 9 | `theorem` | [ContinuousOn.star](../../../../../mathematics/Topology/GeneralTopology/Star/Variant91502c3d08b2800908f4c976dba344f3f8d2465bfd754142869f3182122fdfac.lean/declarations/continuouson-star--72ec4a08eaf68b304fc783b4.md) | 71 | `result-track:72ec4a08eaf68b304fc783b4dd0945f330abf004ae58979430cd1f17d9c0fea5` |
| 10 | `theorem` | [ContinuousWithinAt.star](../../../../../mathematics/Topology/GeneralTopology/Star/Variant91502c3d08b2800908f4c976dba344f3f8d2465bfd754142869f3182122fdfac.lean/declarations/continuouswithinat-star--501b547116435439a4457cc3.md) | 74 | `result-track:501b547116435439a4457cc3cd0956491408a833bbe6668c33617e09c61df59b` |
| 11 | `def` | [starContinuousMap](../../../../../mathematics/Topology/GeneralTopology/Star/Variant91502c3d08b2800908f4c976dba344f3f8d2465bfd754142869f3182122fdfac.lean/declarations/starcontinuousmap--72f5e4b69794bfd6d31bb4d9.md) | 80 | `declaration-track:72f5e4b69794bfd6d31bb4d96c3893cc6d8a70fc55f7e1d14ac4ab546b197d4f` |
| 12 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Star/Variant91502c3d08b2800908f4c976dba344f3f8d2465bfd754142869f3182122fdfac.lean/declarations/instance--e1f0e842a09a11e253737043.md) | 89 | `declaration-track:e1f0e842a09a11e253737043b39cfb4a7f23940a2a0290f3950d6de74239b4a9` |
| 13 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Star/Variant91502c3d08b2800908f4c976dba344f3f8d2465bfd754142869f3182122fdfac.lean/declarations/instance--5b14a958a0cdda1cb39093cc.md) | 93 | `declaration-track:5b14a958a0cdda1cb39093ccf20ce4a9464276ef256877e7f99fffd3bacf8b6b` |
| 14 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Star/Variant91502c3d08b2800908f4c976dba344f3f8d2465bfd754142869f3182122fdfac.lean/declarations/instance--5fe71734c5f4377c1ab321fa.md) | 97 | `declaration-track:5fe71734c5f4377c1ab321fa176a98581e515011de21fc48169939de28122ec3` |
| 15 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Star/Variant91502c3d08b2800908f4c976dba344f3f8d2465bfd754142869f3182122fdfac.lean/declarations/instance--4c3c7777977b073723fb31bc.md) | 100 | `declaration-track:4c3c7777977b073723fb31bc54065c156b0ade473190d180a1b7bd635628a02f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
