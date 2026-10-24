# Verification target: GRWTSK.Topology.GeneralTopology.TopCatAdjunction.Variant6621c15238408518afef8b71cfb03480de0087192446d7226d5927f34e64ceea

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2bfb89ffd408d3c6d85409f0b0baa42964d40190",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/TopCatAdjunction/Variant6621c15238408518afef8b71cfb03480de0087192446d7226d5927f34e64ceea.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/TopCatAdjunction/Variant6621c15238408518afef8b71cfb03480de0087192446d7226d5927f34e64ceea.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/TopCatAdjunction/Variant6621c15238408518afef8b71cfb03480de0087192446d7226d5927f34e64ceea.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2bfb89ffd408d3c6d85409f0b0baa42964d40190`.

Source path: `GRWTSK/Topology/GeneralTopology/TopCatAdjunction/Variant6621c15238408518afef8b71cfb03480de0087192446d7226d5927f34e64ceea.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/TopCatAdjunction/Variant6621c15238408518afef8b71cfb03480de0087192446d7226d5927f34e64ceea.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Condensed.TopComparison` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Category.CompactlyGenerated` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [CondensedSet.coinducingCoprod](../../../../../mathematics/Topology/GeneralTopology/TopCatAdjunction/Variant6621c15238408518afef8b71cfb03480de0087192446d7226d5927f34e64ceea.lean/declarations/condensedset-coinducingcoprod--450bbdfbf6b3e058b7d7f497.md) | 27 | `declaration-track:450bbdfbf6b3e058b7d7f4978c3cad7210fd2ebdee387e6c5ca26281e0a93a29` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/TopCatAdjunction/Variant6621c15238408518afef8b71cfb03480de0087192446d7226d5927f34e64ceea.lean/declarations/instance--e753d90779970e9f909c79ed.md) | 34 | `declaration-track:e753d90779970e9f909c79ed56b0031d2ebc27406d7217a716d74108518e3b81` |
| 3 | `abbrev` | [CondensedSet.toTopCat](../../../../../mathematics/Topology/GeneralTopology/TopCatAdjunction/Variant6621c15238408518afef8b71cfb03480de0087192446d7226d5927f34e64ceea.lean/declarations/condensedset-totopcat--096e4fa519f38cf36e19c8e1.md) | 38 | `declaration-track:096e4fa519f38cf36e19c8e1a1fb643332c7b1da34c749c73035d37a11803e73` |
| 4 | `lemma` | [continuous_coinducingCoprod](../../../../../mathematics/Topology/GeneralTopology/TopCatAdjunction/Variant6621c15238408518afef8b71cfb03480de0087192446d7226d5927f34e64ceea.lean/declarations/continuous-coinducingcoprod--063b379d09a4d1721f3c3246.md) | 42 | `result-track:063b379d09a4d1721f3c3246e5a1de1346bfde10b007ed50e18858b1da07ecf5` |
| 5 | `def` | [toTopCatMap](../../../../../mathematics/Topology/GeneralTopology/TopCatAdjunction/Variant6621c15238408518afef8b71cfb03480de0087192446d7226d5927f34e64ceea.lean/declarations/totopcatmap--3f0f0e000cd1fdc2268db2fa.md) | 54 | `declaration-track:3f0f0e000cd1fdc2268db2fa0c63d7349b49f9a9910670d5bceaf9de2d82101c` |
| 6 | `def` | [condensedSetToTopCat](../../../../../mathematics/Topology/GeneralTopology/TopCatAdjunction/Variant6621c15238408518afef8b71cfb03480de0087192446d7226d5927f34e64ceea.lean/declarations/condensedsettotopcat--514ccffca067311bf4a9e7f1.md) | 71 | `declaration-track:514ccffca067311bf4a9e7f16c52eae88d27987aa135815e443bb1ab6b7f30f9` |
| 7 | `def` | [topCatAdjunctionCounit](../../../../../mathematics/Topology/GeneralTopology/TopCatAdjunction/Variant6621c15238408518afef8b71cfb03480de0087192446d7226d5927f34e64ceea.lean/declarations/topcatadjunctioncounit--398d07134aa84ccf1f1c76fe.md) | 78 | `declaration-track:398d07134aa84ccf1f1c76fe09601d91094befa449d3f0afef2c660ebbcfb075` |
| 8 | `lemma` | [topCatAdjunctionCounit_hom_apply](../../../../../mathematics/Topology/GeneralTopology/TopCatAdjunction/Variant6621c15238408518afef8b71cfb03480de0087192446d7226d5927f34e64ceea.lean/declarations/topcatadjunctioncounit-hom-apply--8d4824f37adcbfcc2426283c.md) | 86 | `result-track:8d4824f37adcbfcc2426283c87db38cf33a3792da744c5790515030a89fdb752` |
| 9 | `def` | [topCatAdjunctionCounitEquiv](../../../../../mathematics/Topology/GeneralTopology/TopCatAdjunction/Variant6621c15238408518afef8b71cfb03480de0087192446d7226d5927f34e64ceea.lean/declarations/topcatadjunctioncounitequiv--9953d7d0b10e91f2c282c22e.md) | 96 | `declaration-track:9953d7d0b10e91f2c282c22e144100f77547cfbbccfa9da47f9698ba9b46fb83` |
| 10 | `lemma` | [topCatAdjunctionCounit_bijective](../../../../../mathematics/Topology/GeneralTopology/TopCatAdjunction/Variant6621c15238408518afef8b71cfb03480de0087192446d7226d5927f34e64ceea.lean/declarations/topcatadjunctioncounit-bijective--929e09114b841a9cc678f4b6.md) | 103 | `result-track:929e09114b841a9cc678f4b625ccde2a4bf8107620b044df6d3f7db48dda9911` |
| 11 | `def` | [topCatAdjunctionUnit](../../../../../mathematics/Topology/GeneralTopology/TopCatAdjunction/Variant6621c15238408518afef8b71cfb03480de0087192446d7226d5927f34e64ceea.lean/declarations/topcatadjunctionunit--a62d31269e02f79f6c59fd47.md) | 109 | `declaration-track:a62d31269e02f79f6c59fd4763881e53965dad47caf3efed8a1b1e4c2d52867d` |
| 12 | `def` | [topCatAdjunction](../../../../../mathematics/Topology/GeneralTopology/TopCatAdjunction/Variant6621c15238408518afef8b71cfb03480de0087192446d7226d5927f34e64ceea.lean/declarations/topcatadjunction--158ef0921fbf5ab288842dec.md) | 126 | `declaration-track:158ef0921fbf5ab288842decaf6728b1b8e0c97e5ccf7be4af27a68d1ad1ccab` |
| 13 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/TopCatAdjunction/Variant6621c15238408518afef8b71cfb03480de0087192446d7226d5927f34e64ceea.lean/declarations/instance--1f6565868a26d89df3bad504.md) | 134 | `declaration-track:1f6565868a26d89df3bad504f4126bb07318323b3c73524a16a26c4cbf8c2494` |
| 14 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/TopCatAdjunction/Variant6621c15238408518afef8b71cfb03480de0087192446d7226d5927f34e64ceea.lean/declarations/instance--48690c068f247e8fdf74ae93.md) | 138 | `declaration-track:48690c068f247e8fdf74ae931b618054aa1f685c73b4bcaa0e0f745112b22ca2` |
| 15 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/TopCatAdjunction/Variant6621c15238408518afef8b71cfb03480de0087192446d7226d5927f34e64ceea.lean/declarations/instance--27421a2c7d2d47181544587f.md) | 142 | `declaration-track:27421a2c7d2d47181544587fda70f95624a15ed7313215c035a684496c248d68` |
| 16 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/TopCatAdjunction/Variant6621c15238408518afef8b71cfb03480de0087192446d7226d5927f34e64ceea.lean/declarations/instance--3c81504cfdbbed29c3c5d203.md) | 148 | `declaration-track:3c81504cfdbbed29c3c5d20364c6de00c5297eb4df453c227a26c7bff3cd3fa6` |
| 17 | `def` | [condensedSetToCompactlyGenerated](../../../../../mathematics/Topology/GeneralTopology/TopCatAdjunction/Variant6621c15238408518afef8b71cfb03480de0087192446d7226d5927f34e64ceea.lean/declarations/condensedsettocompactlygenerated--7f0a1aa78b088879d8eebf2b.md) | 153 | `declaration-track:7f0a1aa78b088879d8eebf2b3e3a68d3217ef2ce008935607c2031970f3d9d79` |
| 18 | `def` | [compactlyGeneratedToCondensedSet](../../../../../mathematics/Topology/GeneralTopology/TopCatAdjunction/Variant6621c15238408518afef8b71cfb03480de0087192446d7226d5927f34e64ceea.lean/declarations/compactlygeneratedtocondensedset--24512b90d325fe0992cedb23.md) | 160 | `declaration-track:24512b90d325fe0992cedb23529ceed5f0e4e53525f876a0e1e4e0c92513f448` |
| 19 | `def` | [compactlyGeneratedAdjunction](../../../../../mathematics/Topology/GeneralTopology/TopCatAdjunction/Variant6621c15238408518afef8b71cfb03480de0087192446d7226d5927f34e64ceea.lean/declarations/compactlygeneratedadjunction--d751f2db614f3487e29272f1.md) | 169 | `declaration-track:d751f2db614f3487e29272f1ca5bc0d0649ba924482625de6e06c6a0f9d2772c` |
| 20 | `def` | [compactlyGeneratedAdjunctionCounitHomeo](../../../../../mathematics/Topology/GeneralTopology/TopCatAdjunction/Variant6621c15238408518afef8b71cfb03480de0087192446d7226d5927f34e64ceea.lean/declarations/compactlygeneratedadjunctioncounithomeo--aca2ac81ee254c2381b505c1.md) | 179 | `declaration-track:aca2ac81ee254c2381b505c1e577e04c6bb2a5e14ffd965f5869c97e8463d438` |
| 21 | `def` | [compactlyGeneratedAdjunctionCounitIso](../../../../../mathematics/Topology/GeneralTopology/TopCatAdjunction/Variant6621c15238408518afef8b71cfb03480de0087192446d7226d5927f34e64ceea.lean/declarations/compactlygeneratedadjunctioncounitiso--a10f7d50445967e97cb7383a.md) | 192 | `declaration-track:a10f7d50445967e97cb7383adadb8cf54bafe81f40fc302a829e68471e05c101` |
| 22 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/TopCatAdjunction/Variant6621c15238408518afef8b71cfb03480de0087192446d7226d5927f34e64ceea.lean/declarations/instance--c57391beec5db2862272211d.md) | 196 | `declaration-track:c57391beec5db2862272211ddfc44f1dfd23b90b6e5ad1501c89b484a5c77d0a` |
| 23 | `def` | [fullyFaithfulCompactlyGeneratedToCondensedSet](../../../../../mathematics/Topology/GeneralTopology/TopCatAdjunction/Variant6621c15238408518afef8b71cfb03480de0087192446d7226d5927f34e64ceea.lean/declarations/fullyfaithfulcompactlygeneratedtocondensedset--471180b1eacaedd2288415ff.md) | 205 | `declaration-track:471180b1eacaedd2288415ffdf4100aa6e718bd091bda0922bfe706606036b25` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
