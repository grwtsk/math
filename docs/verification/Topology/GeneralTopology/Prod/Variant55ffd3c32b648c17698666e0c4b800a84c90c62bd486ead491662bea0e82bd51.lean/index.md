# Verification target: GRWTSK.Topology.GeneralTopology.Prod.Variant55ffd3c32b648c17698666e0c4b800a84c90c62bd486ead491662bea0e82bd51

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "84d79bc25debecd5fdfdd8644d627348f1cb9c2f",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Prod/Variant55ffd3c32b648c17698666e0c4b800a84c90c62bd486ead491662bea0e82bd51.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Prod/Variant55ffd3c32b648c17698666e0c4b800a84c90c62bd486ead491662bea0e82bd51.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Prod/Variant55ffd3c32b648c17698666e0c4b800a84c90c62bd486ead491662bea0e82bd51.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `84d79bc25debecd5fdfdd8644d627348f1cb9c2f`.

Source path: `GRWTSK/Topology/GeneralTopology/Prod/Variant55ffd3c32b648c17698666e0c4b800a84c90c62bd486ead491662bea0e82bd51.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Prod/Variant55ffd3c32b648c17698666e0c4b800a84c90c62bd486ead491662bea0e82bd51.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Monoid.Canonical.Defs` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Sub.Defs` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finset.Basic` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Interval.Finset.Defs` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [HasAntidiagonal](../../../../../mathematics/Topology/GeneralTopology/Prod/Variant55ffd3c32b648c17698666e0c4b800a84c90c62bd486ead491662bea0e82bd51.lean/declarations/hasantidiagonal--4de11a7adf9936deab0b85bb.md) | 55 | `declaration-track:4de11a7adf9936deab0b85bb0bd50110386fc44888c14f01e4cc4ccef6eceaec` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Prod/Variant55ffd3c32b648c17698666e0c4b800a84c90c62bd486ead491662bea0e82bd51.lean/declarations/instance--b217159ed34bc2a9eaff653c.md) | 68 | `declaration-track:b217159ed34bc2a9eaff653c23c5fad42d07327ef7c407a6716451e2e89546f6` |
| 3 | `lemma` | [hasAntidiagonal_congr](../../../../../mathematics/Topology/GeneralTopology/Prod/Variant55ffd3c32b648c17698666e0c4b800a84c90c62bd486ead491662bea0e82bd51.lean/declarations/hasantidiagonal-congr--f0e6364f61eaeb51edbcbbc6.md) | 76 | `result-track:f0e6364f61eaeb51edbcbbc6b428c83d93eda6d7d83f402e207c65eb9cc38206` |
| 4 | `theorem` | [swap_mem_antidiagonal](../../../../../mathematics/Topology/GeneralTopology/Prod/Variant55ffd3c32b648c17698666e0c4b800a84c90c62bd486ead491662bea0e82bd51.lean/declarations/swap-mem-antidiagonal--16ed793399ef2dca8558dc8c.md) | 80 | `result-track:16ed793399ef2dca8558dc8c4e25a25a80a328840079cc1db7250a1d31675d2d` |
| 5 | `theorem` | [map_prodComm_antidiagonal](../../../../../mathematics/Topology/GeneralTopology/Prod/Variant55ffd3c32b648c17698666e0c4b800a84c90c62bd486ead491662bea0e82bd51.lean/declarations/map-prodcomm-antidiagonal--25adce75d3277f05f3c38e87.md) | 84 | `result-track:25adce75d3277f05f3c38e8791f6a531b7dd8b0cbb91903fc97244eacba42ecd` |
| 6 | `theorem` | [map_swap_antidiagonal](../../../../../mathematics/Topology/GeneralTopology/Prod/Variant55ffd3c32b648c17698666e0c4b800a84c90c62bd486ead491662bea0e82bd51.lean/declarations/map-swap-antidiagonal--6247e408210490c5c4059431.md) | 89 | `result-track:6247e408210490c5c4059431e305c7a33a2cdbb846a4dde98b9f5c154625e93d` |
| 7 | `theorem` | [antidiagonal_congr](../../../../../mathematics/Topology/GeneralTopology/Prod/Variant55ffd3c32b648c17698666e0c4b800a84c90c62bd486ead491662bea0e82bd51.lean/declarations/antidiagonal-congr--0b84a00ccefc54cbcfd572c1.md) | 99 | `result-track:0b84a00ccefc54cbcfd572c15f5ff6a4288483a42e213a999a8d820b4ea61c5a` |
| 8 | `theorem` | [antidiagonal_subtype_ext](../../../../../mathematics/Topology/GeneralTopology/Prod/Variant55ffd3c32b648c17698666e0c4b800a84c90c62bd486ead491662bea0e82bd51.lean/declarations/antidiagonal-subtype-ext--20c402e2b289b482773e7b58.md) | 107 | `result-track:20c402e2b289b482773e7b58472bb429a3124c8c9c0e68e57ecfdc7cfa365b46` |
| 9 | `lemma` | [antidiagonal_congr'](../../../../../mathematics/Topology/GeneralTopology/Prod/Variant55ffd3c32b648c17698666e0c4b800a84c90c62bd486ead491662bea0e82bd51.lean/declarations/antidiagonal-congr--62a078252a7570c669f27bd7.md) | 118 | `result-track:62a078252a7570c669f27bd7e73cc6c75853f8dd3c417701835144a61e2d16a7` |
| 10 | `theorem` | [antidiagonal_zero](../../../../../mathematics/Topology/GeneralTopology/Prod/Variant55ffd3c32b648c17698666e0c4b800a84c90c62bd486ead491662bea0e82bd51.lean/declarations/antidiagonal-zero--737a00bb560b703da0bd6756.md) | 129 | `result-track:737a00bb560b703da0bd6756c6f710abab87551137a1f43d1a991096a76e6a83` |
| 11 | `theorem` | [antidiagonal.fst_le](../../../../../mathematics/Topology/GeneralTopology/Prod/Variant55ffd3c32b648c17698666e0c4b800a84c90c62bd486ead491662bea0e82bd51.lean/declarations/antidiagonal-fst-le--0c87f19f4d763335089a9050.md) | 133 | `result-track:0c87f19f4d763335089a90508a731a38a3cd43cb0b7fb7b380690c39bc53c366` |
| 12 | `theorem` | [antidiagonal.snd_le](../../../../../mathematics/Topology/GeneralTopology/Prod/Variant55ffd3c32b648c17698666e0c4b800a84c90c62bd486ead491662bea0e82bd51.lean/declarations/antidiagonal-snd-le--ecb134b822c33f0866a4a009.md) | 138 | `result-track:ecb134b822c33f0866a4a009602e04894541369c9117504b11aa7fc7bb258950` |
| 13 | `theorem` | [filter_fst_eq_antidiagonal](../../../../../mathematics/Topology/GeneralTopology/Prod/Variant55ffd3c32b648c17698666e0c4b800a84c90c62bd486ead491662bea0e82bd51.lean/declarations/filter-fst-eq-antidiagonal--02c433a003640eb000b421c3.md) | 150 | `result-track:02c433a003640eb000b421c33fc5c7e41685742c1e378e0128cf441c2125eaa0` |
| 14 | `theorem` | [filter_snd_eq_antidiagonal](../../../../../mathematics/Topology/GeneralTopology/Prod/Variant55ffd3c32b648c17698666e0c4b800a84c90c62bd486ead491662bea0e82bd51.lean/declarations/filter-snd-eq-antidiagonal--b50a2edacf10ad14198834f0.md) | 164 | `result-track:b50a2edacf10ad14198834f04423fa80539c78c9db5623ff3b6d73198d512e6b` |
| 15 | `def` | [sigmaAntidiagonalEquivProd](../../../../../mathematics/Topology/GeneralTopology/Prod/Variant55ffd3c32b648c17698666e0c4b800a84c90c62bd486ead491662bea0e82bd51.lean/declarations/sigmaantidiagonalequivprod--aa40b6b7037e4edf4afd2c15.md) | 176 | `declaration-track:aa40b6b7037e4edf4afd2c15ed8ed4438f9f34b2278204f1ad60b08707caea13` |
| 16 | `abbrev` | [antidiagonalOfLocallyFinite](../../../../../mathematics/Topology/GeneralTopology/Prod/Variant55ffd3c32b648c17698666e0c4b800a84c90c62bd486ead491662bea0e82bd51.lean/declarations/antidiagonaloflocallyfinite--e44c1b0529e4d2f17103a6b9.md) | 193 | `declaration-track:e44c1b0529e4d2f17103a6b911abc9ae06cb11e9a64f836f059d0134a3868c56` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
