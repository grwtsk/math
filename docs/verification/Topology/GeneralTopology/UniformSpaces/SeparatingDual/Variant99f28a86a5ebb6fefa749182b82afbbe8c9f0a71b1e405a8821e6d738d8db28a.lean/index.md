# Verification target: GRWTSK.Topology.GeneralTopology.UniformSpaces.SeparatingDual.Variant99f28a86a5ebb6fefa749182b82afbbe8c9f0a71b1e405a8821e6d738d8db28a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "62b7f1a2e25b31d4c9928f85f07f4f800fbed6e1",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/UniformSpaces/SeparatingDual/Variant99f28a86a5ebb6fefa749182b82afbbe8c9f0a71b1e405a8821e6d738d8db28a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/SeparatingDual/Variant99f28a86a5ebb6fefa749182b82afbbe8c9f0a71b1e405a8821e6d738d8db28a.lean/index.md) · [Full source](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/SeparatingDual/Variant99f28a86a5ebb6fefa749182b82afbbe8c9f0a71b1e405a8821e6d738d8db28a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `62b7f1a2e25b31d4c9928f85f07f4f800fbed6e1`.

Source path: `GRWTSK/Topology/GeneralTopology/UniformSpaces/SeparatingDual/Variant99f28a86a5ebb6fefa749182b82afbbe8c9f0a71b1e405a8821e6d738d8db28a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/UniformSpaces/SeparatingDual/Variant99f28a86a5ebb6fefa749182b82afbbe8c9f0a71b1e405a8821e6d738d8db28a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.NormedSpace.HahnBanach.Extension` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.NormedSpace.HahnBanach.Separation` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.NormedSpace.Multilinear.Basic` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Dual.Lemmas` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [SeparatingDual](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/SeparatingDual/Variant99f28a86a5ebb6fefa749182b82afbbe8c9f0a71b1e405a8821e6d738d8db28a.lean/declarations/separatingdual--ac7778be2c316ba492e7b0dc.md) | 36 | `declaration-track:ac7778be2c316ba492e7b0dcf5e9542499923ea4e31f82283e59f46135edb385` |
| 2 | `instance` | [(anonymous)](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/SeparatingDual/Variant99f28a86a5ebb6fefa749182b82afbbe8c9f0a71b1e405a8821e6d738d8db28a.lean/declarations/instance--328e7167317512fb4d51ffd8.md) | 41 | `declaration-track:328e7167317512fb4d51ffd81b66d98d1787919e0bcbca924a574b22480ba998` |
| 3 | `instance` | [(anonymous)](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/SeparatingDual/Variant99f28a86a5ebb6fefa749182b82afbbe8c9f0a71b1e405a8821e6d738d8db28a.lean/declarations/instance--826cdbf7179b40b127035d2b.md) | 48 | `declaration-track:826cdbf7179b40b127035d2b1588ef6e8cd13b83547c988f979e90386294c554` |
| 4 | `lemma` | [exists_ne_zero](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/SeparatingDual/Variant99f28a86a5ebb6fefa749182b82afbbe8c9f0a71b1e405a8821e6d738d8db28a.lean/declarations/exists-ne-zero--38ec5e4888cc53412981c7db.md) | 61 | `result-track:38ec5e4888cc53412981c7db811872f3b2c3a6d0cf5a598da761ac9552a2ab5b` |
| 5 | `theorem` | [exists_separating_of_ne](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/SeparatingDual/Variant99f28a86a5ebb6fefa749182b82afbbe8c9f0a71b1e405a8821e6d738d8db28a.lean/declarations/exists-separating-of-ne--e3e0688b04a364ff14f6a331.md) | 65 | `result-track:e3e0688b04a364ff14f6a3312ca90b0e7773e42d695404f0d112fd1dd00ce1e8` |
| 6 | `theorem` | [t1Space](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/SeparatingDual/Variant99f28a86a5ebb6fefa749182b82afbbe8c9f0a71b1e405a8821e6d738d8db28a.lean/declarations/t1space--30871adc1f91a65773e3d143.md) | 70 | `result-track:30871adc1f91a65773e3d14338a42df65f5669245c4638e955e952aa63bfc929` |
| 7 | `theorem` | [t2Space](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/SeparatingDual/Variant99f28a86a5ebb6fefa749182b82afbbe8c9f0a71b1e405a8821e6d738d8db28a.lean/declarations/t2space--bc085506a50203bc31a28c37.md) | 75 | `result-track:bc085506a50203bc31a28c379677af8aa1fbb131792b238aa399320d643ccb4b` |
| 8 | `theorem` | [_root_.GRWTSK.Topology.GeneralTopology.UniformSpaces.SeparatingDual.Variantd94d80a2221d83fbcc3f0c2de415deaed9302fa3c00b50c1633f8f035d8ffb6e.separatingDual_iff_injective](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/SeparatingDual/Variant99f28a86a5ebb6fefa749182b82afbbe8c9f0a71b1e405a8821e6d738d8db28a.lean/declarations/root-grwtsk-topology-generaltopology-uniformspaces-separatingdual-varian--b606f8f449886a57452b26f2.md) | 88 | `result-track:b606f8f449886a57452b26f203b143646027435076861ff42fc1466cbf460326` |
| 9 | `theorem` | [dualMap_surjective_iff](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/SeparatingDual/Variant99f28a86a5ebb6fefa749182b82afbbe8c9f0a71b1e405a8821e6d738d8db28a.lean/declarations/dualmap-surjective-iff--7d0da18c0ec961cb85311219.md) | 101 | `result-track:7d0da18c0ec961cb8531121959b3593a44779c6ffd015462251d912987917caa` |
| 10 | `lemma` | [exists_eq_one](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/SeparatingDual/Variant99f28a86a5ebb6fefa749182b82afbbe8c9f0a71b1e405a8821e6d738d8db28a.lean/declarations/exists-eq-one--b2eab9da0f0df8fbff73d06d.md) | 109 | `result-track:b2eab9da0f0df8fbff73d06d905114238642068a385c5e2fe4e9ab2c3fe45d2c` |
| 11 | `theorem` | [exists_eq_one_ne_zero_of_ne_zero_pair](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/SeparatingDual/Variant99f28a86a5ebb6fefa749182b82afbbe8c9f0a71b1e405a8821e6d738d8db28a.lean/declarations/exists-eq-one-ne-zero-of-ne-zero-pair--0a1751d615a4d8f1ae3849b1.md) | 114 | `result-track:0a1751d615a4d8f1ae3849b1bb2c1e3d866787e665c8e86d118b1e0d4fa704b1` |
| 12 | `theorem` | [exists_continuousLinearEquiv_apply_eq](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/SeparatingDual/Variant99f28a86a5ebb6fefa749182b82afbbe8c9f0a71b1e405a8821e6d738d8db28a.lean/declarations/exists-continuouslinearequiv-apply-eq--5305a9385b39378f29a9cc6a.md) | 129 | `result-track:5305a9385b39378f29a9cc6af5a09c7405e11fae491a6f64ead8432aef7ec93b` |
| 13 | `lemma` | [completeSpace_of_completeSpace_continuousLinearMap](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/SeparatingDual/Variant99f28a86a5ebb6fefa749182b82afbbe8c9f0a71b1e405a8821e6d738d8db28a.lean/declarations/completespace-of-completespace-continuouslinearmap--38eb10b491a4d06d464db4d8.md) | 167 | `result-track:38eb10b491a4d06d464db4d8d3c7844efe6550ad26b6741b551bf98af9df39d7` |
| 14 | `lemma` | [completeSpace_continuousLinearMap_iff](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/SeparatingDual/Variant99f28a86a5ebb6fefa749182b82afbbe8c9f0a71b1e405a8821e6d738d8db28a.lean/declarations/completespace-continuouslinearmap-iff--aabc3b4732f925b5796e0af1.md) | 181 | `result-track:aabc3b4732f925b5796e0af1850961278ac9eaa631d188065275acff9ab4d8de` |
| 15 | `lemma` | [completeSpace_of_completeSpace_continuousMultilinearMap](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/SeparatingDual/Variant99f28a86a5ebb6fefa749182b82afbbe8c9f0a71b1e405a8821e6d738d8db28a.lean/declarations/completespace-of-completespace-continuousmultilinearmap--8032ab5cd6af7c18a376209a.md) | 192 | `result-track:8032ab5cd6af7c18a376209a235feb8c1721b746b806d2c086ab6da842967c4f` |
| 16 | `lemma` | [completeSpace_continuousMultilinearMap_iff](../../../../../../mathematics/Topology/GeneralTopology/UniformSpaces/SeparatingDual/Variant99f28a86a5ebb6fefa749182b82afbbe8c9f0a71b1e405a8821e6d738d8db28a.lean/declarations/completespace-continuousmultilinearmap-iff--5735c033d7462126d988d188.md) | 210 | `result-track:5735c033d7462126d988d188c647a18613392644e4d195e687a601031c34b578` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
