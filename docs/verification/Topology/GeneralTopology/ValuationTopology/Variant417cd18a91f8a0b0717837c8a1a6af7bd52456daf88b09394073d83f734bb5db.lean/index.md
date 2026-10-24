# Verification target: GRWTSK.Topology.GeneralTopology.ValuationTopology.Variant417cd18a91f8a0b0717837c8a1a6af7bd52456daf88b09394073d83f734bb5db

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5e6f007ddb26082c407620e6c91a0521cb94a755",
  "lexical_observation_count": 26,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/ValuationTopology/Variant417cd18a91f8a0b0717837c8a1a6af7bd52456daf88b09394073d83f734bb5db.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/ValuationTopology/Variant417cd18a91f8a0b0717837c8a1a6af7bd52456daf88b09394073d83f734bb5db.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/ValuationTopology/Variant417cd18a91f8a0b0717837c8a1a6af7bd52456daf88b09394073d83f734bb5db.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5e6f007ddb26082c407620e6c91a0521cb94a755`.

Source path: `GRWTSK/Topology/GeneralTopology/ValuationTopology/Variant417cd18a91f8a0b0717837c8a1a6af7bd52456daf88b09394073d83f734bb5db.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/ValuationTopology/Variant417cd18a91f8a0b0717837c8a1a6af7bd52456daf88b09394073d83f734bb5db.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Group.Units` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Nonarchimedean.Bases` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.UniformFilterBasis` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Valuation.ValuationSubring` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [subgroups_basis](../../../../../mathematics/Topology/GeneralTopology/ValuationTopology/Variant417cd18a91f8a0b0717837c8a1a6af7bd52456daf88b09394073d83f734bb5db.lean/declarations/subgroups-basis--df442cb3ab29c11f6eafc079.md) | 33 | `result-track:df442cb3ab29c11f6eafc079b523db8c6de6e3993955ed1bc255d437af6647aa` |
| 2 | `class` | [Valued](../../../../../mathematics/Topology/GeneralTopology/ValuationTopology/Variant417cd18a91f8a0b0717837c8a1a6af7bd52456daf88b09394073d83f734bb5db.lean/declarations/valued--494624ded82cce2d56205f1c.md) | 89 | `declaration-track:494624ded82cce2d56205f1c370d8861a1644a854381071c46aa550bdac819f1` |
| 3 | `def` | [mk'](../../../../../mathematics/Topology/GeneralTopology/ValuationTopology/Variant417cd18a91f8a0b0717837c8a1a6af7bd52456daf88b09394073d83f734bb5db.lean/declarations/mk--74baf0e5bc5318191751f12f.md) | 97 | `declaration-track:74baf0e5bc5318191751f12ff3d9b0f588d7b6d86f9dc6c6825ae07ed2688123` |
| 4 | `theorem` | [hasBasis_nhds_zero](../../../../../mathematics/Topology/GeneralTopology/ValuationTopology/Variant417cd18a91f8a0b0717837c8a1a6af7bd52456daf88b09394073d83f734bb5db.lean/declarations/hasbasis-nhds-zero--db6b9ab31ac86c4594d15660.md) | 110 | `result-track:db6b9ab31ac86c4594d156606c72ba2f7ed48042223da6b527df3a8031486b36` |
| 5 | `theorem` | [hasBasis_uniformity](../../../../../mathematics/Topology/GeneralTopology/ValuationTopology/Variant417cd18a91f8a0b0717837c8a1a6af7bd52456daf88b09394073d83f734bb5db.lean/declarations/hasbasis-uniformity--925b2ab6dc9a89f503328554.md) | 115 | `result-track:925b2ab6dc9a89f503328554c3addad196605bed1ef2bfad58e36038cdce5a01` |
| 6 | `theorem` | [toUniformSpace_eq](../../../../../mathematics/Topology/GeneralTopology/ValuationTopology/Variant417cd18a91f8a0b0717837c8a1a6af7bd52456daf88b09394073d83f734bb5db.lean/declarations/touniformspace-eq--a26b90d15bdc2f39de31da5c.md) | 120 | `result-track:a26b90d15bdc2f39de31da5c2d1ea8ee822b7ee58b8d3c6a51ab2e17e03a56fc` |
| 7 | `theorem` | [mem_nhds](../../../../../mathematics/Topology/GeneralTopology/ValuationTopology/Variant417cd18a91f8a0b0717837c8a1a6af7bd52456daf88b09394073d83f734bb5db.lean/declarations/mem-nhds--bb0ef0d54f243548c07ab366.md) | 127 | `result-track:bb0ef0d54f243548c07ab366133a5effc6fc20bf85b3d6d6b95c7ac1ed859bb5` |
| 8 | `theorem` | [mem_nhds_zero](../../../../../mathematics/Topology/GeneralTopology/ValuationTopology/Variant417cd18a91f8a0b0717837c8a1a6af7bd52456daf88b09394073d83f734bb5db.lean/declarations/mem-nhds-zero--95386f43d846110b22f0a246.md) | 131 | `result-track:95386f43d846110b22f0a246a8eca560019edc8e24644599c79d3422a3320d89` |
| 9 | `theorem` | [loc_const](../../../../../mathematics/Topology/GeneralTopology/ValuationTopology/Variant417cd18a91f8a0b0717837c8a1a6af7bd52456daf88b09394073d83f734bb5db.lean/declarations/loc-const--f577134c197cb87700d0a14c.md) | 134 | `result-track:f577134c197cb87700d0a14ccb064fb43d83d80d7b7249e479377942226bdb8e` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/ValuationTopology/Variant417cd18a91f8a0b0717837c8a1a6af7bd52456daf88b09394073d83f734bb5db.lean/declarations/instance--9f5a0c64e39ae465a39d8217.md) | 141 | `declaration-track:9f5a0c64e39ae465a39d8217b154fa6be83ccf7ba12a4ba14640f827f7eae7ca` |
| 11 | `theorem` | [cauchy_iff](../../../../../mathematics/Topology/GeneralTopology/ValuationTopology/Variant417cd18a91f8a0b0717837c8a1a6af7bd52456daf88b09394073d83f734bb5db.lean/declarations/cauchy-iff--2515b5ff8bc950c1bd6e79a6.md) | 144 | `result-track:2515b5ff8bc950c1bd6e79a6d6de1b64e213adbb1ce230ce4656628b9a084d93` |
| 12 | `theorem` | [isOpen_ball](../../../../../mathematics/Topology/GeneralTopology/ValuationTopology/Variant417cd18a91f8a0b0717837c8a1a6af7bd52456daf88b09394073d83f734bb5db.lean/declarations/isopen-ball--f9cd2281b38299e5a4d71c7f.md) | 158 | `result-track:f9cd2281b38299e5a4d71c7fb008abed620c442dc2038d6d7501c7e9c6616c51` |
| 13 | `theorem` | [isClosed_ball](../../../../../mathematics/Topology/GeneralTopology/ValuationTopology/Variant417cd18a91f8a0b0717837c8a1a6af7bd52456daf88b09394073d83f734bb5db.lean/declarations/isclosed-ball--e1d89d0b87fd11a6994d89eb.md) | 169 | `result-track:e1d89d0b87fd11a6994d89eb18d0c1b938fe5c443dd214c4960e0681bb61b88b` |
| 14 | `theorem` | [isClopen_ball](../../../../../mathematics/Topology/GeneralTopology/ValuationTopology/Variant417cd18a91f8a0b0717837c8a1a6af7bd52456daf88b09394073d83f734bb5db.lean/declarations/isclopen-ball--87a8cc2be8850327f44443a0.md) | 177 | `result-track:87a8cc2be8850327f44443a08a3c32051212f2c603b42fa70c8cbe40bee314a9` |
| 15 | `theorem` | [isOpen_closedball](../../../../../mathematics/Topology/GeneralTopology/ValuationTopology/Variant417cd18a91f8a0b0717837c8a1a6af7bd52456daf88b09394073d83f734bb5db.lean/declarations/isopen-closedball--7dab77162aeb750a0631ec7e.md) | 181 | `result-track:7dab77162aeb750a0631ec7e0fc740ea7492b905caf54a151c59453edd3eb39b` |
| 16 | `theorem` | [isClosed_closedBall](../../../../../mathematics/Topology/GeneralTopology/ValuationTopology/Variant417cd18a91f8a0b0717837c8a1a6af7bd52456daf88b09394073d83f734bb5db.lean/declarations/isclosed-closedball--62547def97e81f8c0bcbc2a2.md) | 190 | `result-track:62547def97e81f8c0bcbc2a28b82792a050d7f610b2cf231de2dc075f3ecd0e5` |
| 17 | `theorem` | [isClopen_closedBall](../../../../../mathematics/Topology/GeneralTopology/ValuationTopology/Variant417cd18a91f8a0b0717837c8a1a6af7bd52456daf88b09394073d83f734bb5db.lean/declarations/isclopen-closedball--cead643b5a5f60bd2e92ca21.md) | 199 | `result-track:cead643b5a5f60bd2e92ca210f8719a76878a748682c0ee6b29405d88bba4ed6` |
| 18 | `theorem` | [isClopen_sphere](../../../../../mathematics/Topology/GeneralTopology/ValuationTopology/Variant417cd18a91f8a0b0717837c8a1a6af7bd52456daf88b09394073d83f734bb5db.lean/declarations/isclopen-sphere--ca7e468953e70d33d1e2d6e3.md) | 203 | `result-track:ca7e468953e70d33d1e2d6e3fea43fa2e53e090aa77b752808161a20037cecd7` |
| 19 | `theorem` | [isOpen_sphere](../../../../../mathematics/Topology/GeneralTopology/ValuationTopology/Variant417cd18a91f8a0b0717837c8a1a6af7bd52456daf88b09394073d83f734bb5db.lean/declarations/isopen-sphere--6b5bffaab70346abf8210368.md) | 211 | `result-track:6b5bffaab70346abf821036814ac1201fb936abf665d531a3f6b81c38e386d9e` |
| 20 | `theorem` | [isClosed_sphere](../../../../../mathematics/Topology/GeneralTopology/ValuationTopology/Variant417cd18a91f8a0b0717837c8a1a6af7bd52456daf88b09394073d83f734bb5db.lean/declarations/isclosed-sphere--63d6056343d12b033e2f5f0b.md) | 215 | `result-track:63d6056343d12b033e2f5f0b456c4bfa81023383422a7f46751ff9f7b264cb39` |
| 21 | `theorem` | [isOpen_integer](../../../../../mathematics/Topology/GeneralTopology/ValuationTopology/Variant417cd18a91f8a0b0717837c8a1a6af7bd52456daf88b09394073d83f734bb5db.lean/declarations/isopen-integer--e832284ca703c3096f0f6009.md) | 221 | `result-track:e832284ca703c3096f0f60091c2eeb6cb486077e8021c06085abb8c2b3a02966` |
| 22 | `theorem` | [isClosed_integer](../../../../../mathematics/Topology/GeneralTopology/ValuationTopology/Variant417cd18a91f8a0b0717837c8a1a6af7bd52456daf88b09394073d83f734bb5db.lean/declarations/isclosed-integer--81e3b7dfadca1c61f8fa4250.md) | 228 | `result-track:81e3b7dfadca1c61f8fa4250c7d011653030adb31f5008c45f649db531b7779b` |
| 23 | `theorem` | [isClopen_integer](../../../../../mathematics/Topology/GeneralTopology/ValuationTopology/Variant417cd18a91f8a0b0717837c8a1a6af7bd52456daf88b09394073d83f734bb5db.lean/declarations/isclopen-integer--4f4aa9d9e6c139b6c31ddd2e.md) | 232 | `result-track:4f4aa9d9e6c139b6c31ddd2e92bf6c2102b0362d84025a6d5dd61ee672b0302a` |
| 24 | `theorem` | [isOpen_valuationSubring](../../../../../mathematics/Topology/GeneralTopology/ValuationTopology/Variant417cd18a91f8a0b0717837c8a1a6af7bd52456daf88b09394073d83f734bb5db.lean/declarations/isopen-valuationsubring--bd6e238da9ed475667772459.md) | 236 | `result-track:bd6e238da9ed475667772459f82e70254c4c36458863a50a07fe309e89f83b81` |
| 25 | `theorem` | [isClosed_valuationSubring](../../../../../mathematics/Topology/GeneralTopology/ValuationTopology/Variant417cd18a91f8a0b0717837c8a1a6af7bd52456daf88b09394073d83f734bb5db.lean/declarations/isclosed-valuationsubring--e27a84491a5aa164e96859a8.md) | 244 | `result-track:e27a84491a5aa164e96859a84b88306f38e18eb12409a656e8f1d3ed5a5bf2d2` |
| 26 | `theorem` | [isClopen_valuationSubring](../../../../../mathematics/Topology/GeneralTopology/ValuationTopology/Variant417cd18a91f8a0b0717837c8a1a6af7bd52456daf88b09394073d83f734bb5db.lean/declarations/isclopen-valuationsubring--9b1beb14185a134160e17b14.md) | 249 | `result-track:9b1beb14185a134160e17b14030ffcfff8fa14e79744a5ef970f93c5e1c1eeee` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
