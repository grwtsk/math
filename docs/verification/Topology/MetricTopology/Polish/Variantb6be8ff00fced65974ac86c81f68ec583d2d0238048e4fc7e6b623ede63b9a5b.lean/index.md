# Verification target: GRWTSK.Topology.MetricTopology.Polish.Variantb6be8ff00fced65974ac86c81f68ec583d2d0238048e4fc7e6b623ede63b9a5b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ca42b0146bb4f3af57a30fe2cc0e9936ea87b96c",
  "lexical_observation_count": 31,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/MetricTopology/Polish/Variantb6be8ff00fced65974ac86c81f68ec583d2d0238048e4fc7e6b623ede63b9a5b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/MetricTopology/Polish/Variantb6be8ff00fced65974ac86c81f68ec583d2d0238048e4fc7e6b623ede63b9a5b.lean/index.md) · [Full source](../../../../../mathematics/Topology/MetricTopology/Polish/Variantb6be8ff00fced65974ac86c81f68ec583d2d0238048e4fc7e6b623ede63b9a5b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ca42b0146bb4f3af57a30fe2cc0e9936ea87b96c`.

Source path: `GRWTSK/Topology/MetricTopology/Polish/Variantb6be8ff00fced65974ac86c81f68ec583d2d0238048e4fc7e6b623ede63b9a5b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/MetricTopology/Polish/Variantb6be8ff00fced65974ac86c81f68ec583d2d0238048e4fc7e6b623ede63b9a5b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.MetricSpace.PiNat` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.MetricSpace.Isometry` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.MetricSpace.Gluing` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Sets.Opens` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Field.Basic` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [PolishSpace](../../../../../mathematics/Topology/MetricTopology/Polish/Variantb6be8ff00fced65974ac86c81f68ec583d2d0238048e4fc7e6b623ede63b9a5b.lean/declarations/polishspace--a10d2f27a9afd730594db789.md) | 65 | `declaration-track:a10d2f27a9afd730594db78909b3e3d1ebc8ce3443ff7d0923ec181606f0b488` |
| 2 | `class` | [UpgradedPolishSpace](../../../../../mathematics/Topology/MetricTopology/Polish/Variantb6be8ff00fced65974ac86c81f68ec583d2d0238048e4fc7e6b623ede63b9a5b.lean/declarations/upgradedpolishspace--c615ee9319db5295403f3f9e.md) | 74 | `declaration-track:c615ee9319db5295403f3f9ec1031ee07c79730ebc7443e2470aa8837cac4290` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/Topology/MetricTopology/Polish/Variantb6be8ff00fced65974ac86c81f68ec583d2d0238048e4fc7e6b623ede63b9a5b.lean/declarations/instance--a82f40737f037bc5ecabd82f.md) | 78 | `declaration-track:a82f40737f037bc5ecabd82f349813d9709cdafc7889f0386a83c440c1455f98` |
| 4 | `def` | [polishSpaceMetric](../../../../../mathematics/Topology/MetricTopology/Polish/Variantb6be8ff00fced65974ac86c81f68ec583d2d0238048e4fc7e6b623ede63b9a5b.lean/declarations/polishspacemetric--86e1411e2c74caf8bc7808ed.md) | 85 | `declaration-track:86e1411e2c74caf8bc7808edc2b38855081092b399bf9c9bec490978776c1aab` |
| 5 | `theorem` | [complete_polishSpaceMetric](../../../../../mathematics/Topology/MetricTopology/Polish/Variantb6be8ff00fced65974ac86c81f68ec583d2d0238048e4fc7e6b623ede63b9a5b.lean/declarations/complete-polishspacemetric--78b5c1296413118ac7aaab14.md) | 89 | `result-track:78b5c1296413118ac7aaab14942c5bbc05718180e98670dec46c52f372f95c9b` |
| 6 | `def` | [upgradePolishSpace](../../../../../mathematics/Topology/MetricTopology/Polish/Variantb6be8ff00fced65974ac86c81f68ec583d2d0238048e4fc7e6b623ede63b9a5b.lean/declarations/upgradepolishspace--e0259b714c15b30bda6b597a.md) | 97 | `declaration-track:e0259b714c15b30bda6b597ad309bdcfef9e63261d85e24e472389c57ee48b41` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/Topology/MetricTopology/Polish/Variantb6be8ff00fced65974ac86c81f68ec583d2d0238048e4fc7e6b623ede63b9a5b.lean/declarations/instance--09c253cff143ad54d23f5ae3.md) | 105 | `declaration-track:09c253cff143ad54d23f5ae3a611c2c199bd236cef60e504ee1c50f37c5c3a68` |
| 8 | `instance` | [pi_countable](../../../../../mathematics/Topology/MetricTopology/Polish/Variantb6be8ff00fced65974ac86c81f68ec583d2d0238048e4fc7e6b623ede63b9a5b.lean/declarations/pi-countable--46eb59d863ef6f48bf8f2e5d.md) | 112 | `declaration-track:46eb59d863ef6f48bf8f2e5da025fdf71bc61c856f38a186e68bd471cb29728c` |
| 9 | `instance` | [nat_fun](../../../../../mathematics/Topology/MetricTopology/Polish/Variantb6be8ff00fced65974ac86c81f68ec583d2d0238048e4fc7e6b623ede63b9a5b.lean/declarations/nat-fun--c5c1a6741cb9f5d220e6fb80.md) | 122 | `declaration-track:c5c1a6741cb9f5d220e6fb80110dc5e721d0b645565eac8678b058eeb004d039` |
| 10 | `instance` | [sigma](../../../../../mathematics/Topology/MetricTopology/Polish/Variantb6be8ff00fced65974ac86c81f68ec583d2d0238048e4fc7e6b623ede63b9a5b.lean/declarations/sigma--72d80adbfcc3ad039f87aabc.md) | 126 | `declaration-track:72d80adbfcc3ad039f87aabcfdc1257d4fd769f75c89cd05cc0017b28235d19c` |
| 11 | `instance` | [sum](../../../../../mathematics/Topology/MetricTopology/Polish/Variantb6be8ff00fced65974ac86c81f68ec583d2d0238048e4fc7e6b623ede63b9a5b.lean/declarations/sum--8349d27669770c1da35ce62d.md) | 135 | `declaration-track:8349d27669770c1da35ce62d627791b0f73345388a74d0faf20b6c4a985aef56` |
| 12 | `theorem` | [exists_nat_nat_continuous_surjective](../../../../../mathematics/Topology/MetricTopology/Polish/Variantb6be8ff00fced65974ac86c81f68ec583d2d0238048e4fc7e6b623ede63b9a5b.lean/declarations/exists-nat-nat-continuous-surjective--a95c604e6e07996450689a8e.md) | 144 | `result-track:a95c604e6e07996450689a8eed66462fe0164f3ae6f22539d212978d32363515` |
| 13 | `theorem` | [_root_.ClosedEmbedding.polishSpace](../../../../../mathematics/Topology/MetricTopology/Polish/Variantb6be8ff00fced65974ac86c81f68ec583d2d0238048e4fc7e6b623ede63b9a5b.lean/declarations/root-closedembedding-polishspace--a02d9b348c5f4e80b48ed8ad.md) | 151 | `result-track:a02d9b348c5f4e80b48ed8adb22b93f803d1887d6b63311086a19ed978c969e1` |
| 14 | `theorem` | [_root_.Equiv.polishSpace_induced](../../../../../mathematics/Topology/MetricTopology/Polish/Variantb6be8ff00fced65974ac86c81f68ec583d2d0238048e4fc7e6b623ede63b9a5b.lean/declarations/root-equiv-polishspace-induced--2526cd6d8108361cb1a38a7c.md) | 163 | `result-track:2526cd6d8108361cb1a38a7c6034f87d6bf0e2c1755dab2a3f305f2d96a55e9b` |
| 15 | `theorem` | [_root_.IsClosed.polishSpace](../../../../../mathematics/Topology/MetricTopology/Polish/Variantb6be8ff00fced65974ac86c81f68ec583d2d0238048e4fc7e6b623ede63b9a5b.lean/declarations/root-isclosed-polishspace--8fb128f9787ea28e2ac08114.md) | 170 | `result-track:8fb128f9787ea28e2ac08114b72108d0349531b32440fc3f6db048473f3ff506` |
| 16 | `def` | [AuxCopy](../../../../../mathematics/Topology/MetricTopology/Polish/Variantb6be8ff00fced65974ac86c81f68ec583d2d0238048e4fc7e6b623ede63b9a5b.lean/declarations/auxcopy--117a00054007df8cfd5148a2.md) | 178 | `declaration-track:117a00054007df8cfd5148a2f9e5643b0aecc6789bdb903b99a2eca50de07391` |
| 17 | `theorem` | [exists_polishSpace_forall_le](../../../../../mathematics/Topology/MetricTopology/Polish/Variantb6be8ff00fced65974ac86c81f68ec583d2d0238048e4fc7e6b623ede63b9a5b.lean/declarations/exists-polishspace-forall-le--ce50afb0cc75886b3489306e.md) | 185 | `result-track:ce50afb0cc75886b3489306ebcc7c4052d82e9b5fc482cebca1a7e7655255ac6` |
| 18 | `def` | [CompleteCopy](../../../../../mathematics/Topology/MetricTopology/Polish/Variantb6be8ff00fced65974ac86c81f68ec583d2d0238048e4fc7e6b623ede63b9a5b.lean/declarations/completecopy--3ab640a939f5fb979fb0c6f2.md) | 256 | `declaration-track:3ab640a939f5fb979fb0c6f2452222860db9c319e504ea66d666bc97ff24d11f` |
| 19 | `instance` | [instDist](../../../../../mathematics/Topology/MetricTopology/Polish/Variantb6be8ff00fced65974ac86c81f68ec583d2d0238048e4fc7e6b623ede63b9a5b.lean/declarations/instdist--685d29ad8d08db24a186da45.md) | 265 | `declaration-track:685d29ad8d08db24a186da45e9a1291b82ae790998ced4f8b2dd30f9446849ce` |
| 20 | `theorem` | [dist_eq](../../../../../mathematics/Topology/MetricTopology/Polish/Variantb6be8ff00fced65974ac86c81f68ec583d2d0238048e4fc7e6b623ede63b9a5b.lean/declarations/dist-eq--23507d2ccf64e231ee544b0e.md) | 269 | `result-track:23507d2ccf64e231ee544b0e87da07373e670d9fbd2f3757fb8b71359f5b6856` |
| 21 | `theorem` | [dist_val_le_dist](../../../../../mathematics/Topology/MetricTopology/Polish/Variantb6be8ff00fced65974ac86c81f68ec583d2d0238048e4fc7e6b623ede63b9a5b.lean/declarations/dist-val-le-dist--479b79840f3b11299bab3f29.md) | 274 | `result-track:479b79840f3b11299bab3f29a5ac8ad7a2af78cd239d7fdb955d8c65fb800230` |
| 22 | `instance` | [(anonymous)](../../../../../mathematics/Topology/MetricTopology/Polish/Variantb6be8ff00fced65974ac86c81f68ec583d2d0238048e4fc7e6b623ede63b9a5b.lean/declarations/instance--1356de51161b68e41267159c.md) | 278 | `declaration-track:1356de51161b68e41267159c53e3d5bc0d3812d02121bc33f225357d3dca7e89` |
| 23 | `instance` | [(anonymous)](../../../../../mathematics/Topology/MetricTopology/Polish/Variantb6be8ff00fced65974ac86c81f68ec583d2d0238048e4fc7e6b623ede63b9a5b.lean/declarations/instance--8910158a99e5b77a7e956b37.md) | 279 | `declaration-track:8910158a99e5b77a7e956b3797393e8441950d40174c237170e6874230dd9023` |
| 24 | `instance` | [instMetricSpace](../../../../../mathematics/Topology/MetricTopology/Polish/Variantb6be8ff00fced65974ac86c81f68ec583d2d0238048e4fc7e6b623ede63b9a5b.lean/declarations/instmetricspace--663614dc3c05b85892cddf4c.md) | 289 | `declaration-track:663614dc3c05b85892cddf4c4cb55f5eb1ddfdbbf840b3b9d41b2918a7e641f2` |
| 25 | `instance` | [instCompleteSpace](../../../../../mathematics/Topology/MetricTopology/Polish/Variantb6be8ff00fced65974ac86c81f68ec583d2d0238048e4fc7e6b623ede63b9a5b.lean/declarations/instcompletespace--b1418bd90a28a537070f7eae.md) | 319 | `declaration-track:b1418bd90a28a537070f7eaef61f117206c2105c346809eb1963be8c69ee7089` |
| 26 | `theorem` | [_root_.IsOpen.polishSpace](../../../../../mathematics/Topology/MetricTopology/Polish/Variantb6be8ff00fced65974ac86c81f68ec583d2d0238048e4fc7e6b623ede63b9a5b.lean/declarations/root-isopen-polishspace--7478624d2dee5e88b050020c.md) | 351 | `result-track:7478624d2dee5e88b050020c0a4a05336beae99354934bbb5be0df800f37e437` |
| 27 | `def` | [IsClopenable](../../../../../mathematics/Topology/MetricTopology/Polish/Variantb6be8ff00fced65974ac86c81f68ec583d2d0238048e4fc7e6b623ede63b9a5b.lean/declarations/isclopenable--b8d01d2b28425e0d49602c4c.md) | 370 | `declaration-track:b8d01d2b28425e0d49602c4c372a566534ad8325d09dac8ab2a5cabdd1967837` |
| 28 | `theorem` | [_root_.IsClosed.isClopenable](../../../../../mathematics/Topology/MetricTopology/Polish/Variantb6be8ff00fced65974ac86c81f68ec583d2d0238048e4fc7e6b623ede63b9a5b.lean/declarations/root-isclosed-isclopenable--d3e7296bc7a80d65afd8a383.md) | 376 | `result-track:d3e7296bc7a80d65afd8a383c9487ab4e49e5ff4a6b03544a0f6b521133bc2b3` |
| 29 | `theorem` | [IsClopenable.compl](../../../../../mathematics/Topology/MetricTopology/Polish/Variantb6be8ff00fced65974ac86c81f68ec583d2d0238048e4fc7e6b623ede63b9a5b.lean/declarations/isclopenable-compl--eb1ad976d2d6f2f088dc0c1a.md) | 397 | `result-track:eb1ad976d2d6f2f088dc0c1a044e9527c2de91b705b5cac2d07fa5cf026b16ae` |
| 30 | `theorem` | [_root_.IsOpen.isClopenable](../../../../../mathematics/Topology/MetricTopology/Polish/Variantb6be8ff00fced65974ac86c81f68ec583d2d0238048e4fc7e6b623ede63b9a5b.lean/declarations/root-isopen-isclopenable--9dfcf2422a8991f4a8ff1dc8.md) | 403 | `result-track:9dfcf2422a8991f4a8ff1dc84a7479b2767f8a07075ef94b1e0442b687b9d628` |
| 31 | `theorem` | [IsClopenable.iUnion](../../../../../mathematics/Topology/MetricTopology/Polish/Variantb6be8ff00fced65974ac86c81f68ec583d2d0238048e4fc7e6b623ede63b9a5b.lean/declarations/isclopenable-iunion--8b4e01a11a0674978c731d83.md) | 409 | `result-track:8b4e01a11a0674978c731d83eb60fd41e8fb0b1991c45af6a9d23052bd085261` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
