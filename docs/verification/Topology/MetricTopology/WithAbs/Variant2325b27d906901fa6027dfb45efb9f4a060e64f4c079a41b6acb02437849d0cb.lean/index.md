# Verification target: GRWTSK.Topology.MetricTopology.WithAbs.Variant2325b27d906901fa6027dfb45efb9f4a060e64f4c079a41b6acb02437849d0cb

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ba9c389b273cccf54490f0258342edb9d322049b",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/MetricTopology/WithAbs/Variant2325b27d906901fa6027dfb45efb9f4a060e64f4c079a41b6acb02437849d0cb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/MetricTopology/WithAbs/Variant2325b27d906901fa6027dfb45efb9f4a060e64f4c079a41b6acb02437849d0cb.lean/index.md) · [Full source](../../../../../mathematics/Topology/MetricTopology/WithAbs/Variant2325b27d906901fa6027dfb45efb9f4a060e64f4c079a41b6acb02437849d0cb.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ba9c389b273cccf54490f0258342edb9d322049b`.

Source path: `GRWTSK/Topology/MetricTopology/WithAbs/Variant2325b27d906901fa6027dfb45efb9f4a060e64f4c079a41b6acb02437849d0cb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/MetricTopology/WithAbs/Variant2325b27d906901fa6027dfb45efb9f4a060e64f4c079a41b6acb02437849d0cb.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Normed.Module.Completion` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Ring.WithAbs` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [normedField](../../../../../mathematics/Topology/MetricTopology/WithAbs/Variant2325b27d906901fa6027dfb45efb9f4a060e64f4c079a41b6acb02437849d0cb.lean/declarations/normedfield--2ddc22baa2bbc403d5a2b83d.md) | 28 | `declaration-track:2ddc22baa2bbc403d5a2b83dfde3a30f1dae482e7b10649b15d543de248398e0` |
| 2 | `theorem` | [isometry_of_comp](../../../../../mathematics/Topology/MetricTopology/WithAbs/Variant2325b27d906901fa6027dfb45efb9f4a060e64f4c079a41b6acb02437849d0cb.lean/declarations/isometry-of-comp--b377baa479bf36a1d23d158c.md) | 42 | `result-track:b377baa479bf36a1d23d158c6cb9dd93625dc44ac1425c2be4ae589e3fd74d12` |
| 3 | `theorem` | [pseudoMetricSpace_induced_of_comp](../../../../../mathematics/Topology/MetricTopology/WithAbs/Variant2325b27d906901fa6027dfb45efb9f4a060e64f4c079a41b6acb02437849d0cb.lean/declarations/pseudometricspace-induced-of-comp--fb18b41f644d637f5cd78ec3.md) | 48 | `result-track:fb18b41f644d637f5cd78ec356add3a49141ec8cd6a839fed6520df6cf03ed1d` |
| 4 | `theorem` | [uniformSpace_comap_eq_of_comp](../../../../../mathematics/Topology/MetricTopology/WithAbs/Variant2325b27d906901fa6027dfb45efb9f4a060e64f4c079a41b6acb02437849d0cb.lean/declarations/uniformspace-comap-eq-of-comp--9bd656fff8d2337a7d7639dc.md) | 55 | `result-track:9bd656fff8d2337a7d7639dc4b15de9aee1d2c55be104e7311046ab54986aa4b` |
| 5 | `theorem` | [isUniformInducing_of_comp](../../../../../mathematics/Topology/MetricTopology/WithAbs/Variant2325b27d906901fa6027dfb45efb9f4a060e64f4c079a41b6acb02437849d0cb.lean/declarations/isuniforminducing-of-comp--d132dcd28a317d24a9bc8d3d.md) | 61 | `result-track:d132dcd28a317d24a9bc8d3d55062f9968ddf080273d173c35a87c160c149690` |
| 6 | `abbrev` | [Completion](../../../../../mathematics/Topology/MetricTopology/WithAbs/Variant2325b27d906901fa6027dfb45efb9f4a060e64f4c079a41b6acb02437849d0cb.lean/declarations/completion--291c792ce7857679d1bbe693.md) | 73 | `declaration-track:291c792ce7857679d1bbe693def933f16ea345e40721eaf5d867d91b48901482` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/Topology/MetricTopology/WithAbs/Variant2325b27d906901fa6027dfb45efb9f4a060e64f4c079a41b6acb02437849d0cb.lean/declarations/instance--8d82cc7ca81755876126f0a0.md) | 79 | `declaration-track:8d82cc7ca81755876126f0a0329d25c8272958d1547ee4a3a10805cd994cafe6` |
| 8 | `abbrev` | [extensionEmbedding_of_comp](../../../../../mathematics/Topology/MetricTopology/WithAbs/Variant2325b27d906901fa6027dfb45efb9f4a060e64f4c079a41b6acb02437849d0cb.lean/declarations/extensionembedding-of-comp--73a0b038b0ce270441cfba6e.md) | 86 | `declaration-track:73a0b038b0ce270441cfba6e4d4235c536f1f4eaaec3d03dc56c00ae87f525b1` |
| 9 | `theorem` | [extensionEmbedding_of_comp_coe](../../../../../mathematics/Topology/MetricTopology/WithAbs/Variant2325b27d906901fa6027dfb45efb9f4a060e64f4c079a41b6acb02437849d0cb.lean/declarations/extensionembedding-of-comp-coe--4f41c009105822e8960d761f.md) | 90 | `result-track:4f41c009105822e8960d761f2293e8615c5475565206e395ed978779ef1632cc` |
| 10 | `theorem` | [extensionEmbedding_dist_eq_of_comp](../../../../../mathematics/Topology/MetricTopology/WithAbs/Variant2325b27d906901fa6027dfb45efb9f4a060e64f4c079a41b6acb02437849d0cb.lean/declarations/extensionembedding-dist-eq-of-comp--81f82d4b5b8305abb6e8a1c7.md) | 97 | `result-track:81f82d4b5b8305abb6e8a1c74d8cd59bb67241fd2da4eec27c5c12d5d976e822` |
| 11 | `theorem` | [isometry_extensionEmbedding_of_comp](../../../../../mathematics/Topology/MetricTopology/WithAbs/Variant2325b27d906901fa6027dfb45efb9f4a060e64f4c079a41b6acb02437849d0cb.lean/declarations/isometry-extensionembedding-of-comp--9130dbdc8362c25ca0b70b9b.md) | 108 | `result-track:9130dbdc8362c25ca0b70b9bb24f38cc70a1c5a4a29a31c8db4f7965380bf1d3` |
| 12 | `theorem` | [isClosedEmbedding_extensionEmbedding_of_comp](../../../../../mathematics/Topology/MetricTopology/WithAbs/Variant2325b27d906901fa6027dfb45efb9f4a060e64f4c079a41b6acb02437849d0cb.lean/declarations/isclosedembedding-extensionembedding-of-comp--f256ee8e2448689766971f60.md) | 114 | `result-track:f256ee8e2448689766971f60fe217015e43097fc25ecc610e9b31ac843197542` |
| 13 | `theorem` | [locallyCompactSpace](../../../../../mathematics/Topology/MetricTopology/WithAbs/Variant2325b27d906901fa6027dfb45efb9f4a060e64f4c079a41b6acb02437849d0cb.lean/declarations/locallycompactspace--ac2511e5eebe6e03307ecdc8.md) | 120 | `result-track:ac2511e5eebe6e03307ecdc87c81999c974d0ded9552b8e1fb6fbb052c3c776d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
