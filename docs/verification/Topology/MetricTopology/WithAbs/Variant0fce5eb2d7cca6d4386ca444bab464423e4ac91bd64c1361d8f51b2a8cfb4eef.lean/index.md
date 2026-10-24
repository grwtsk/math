# Verification target: GRWTSK.Topology.MetricTopology.WithAbs.Variant0fce5eb2d7cca6d4386ca444bab464423e4ac91bd64c1361d8f51b2a8cfb4eef

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1af53476f1f147f967f02a37480551bc637bbb69",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/MetricTopology/WithAbs/Variant0fce5eb2d7cca6d4386ca444bab464423e4ac91bd64c1361d8f51b2a8cfb4eef.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/MetricTopology/WithAbs/Variant0fce5eb2d7cca6d4386ca444bab464423e4ac91bd64c1361d8f51b2a8cfb4eef.lean/index.md) · [Full source](../../../../../mathematics/Topology/MetricTopology/WithAbs/Variant0fce5eb2d7cca6d4386ca444bab464423e4ac91bd64c1361d8f51b2a8cfb4eef.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1af53476f1f147f967f02a37480551bc637bbb69`.

Source path: `GRWTSK/Topology/MetricTopology/WithAbs/Variant0fce5eb2d7cca6d4386ca444bab464423e4ac91bd64c1361d8f51b2a8cfb4eef.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/MetricTopology/WithAbs/Variant0fce5eb2d7cca6d4386ca444bab464423e4ac91bd64c1361d8f51b2a8cfb4eef.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Normed.Module.Completion` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Ring.WithAbs` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [normedField](../../../../../mathematics/Topology/MetricTopology/WithAbs/Variant0fce5eb2d7cca6d4386ca444bab464423e4ac91bd64c1361d8f51b2a8cfb4eef.lean/declarations/normedfield--de635e7efa732fb21738a783.md) | 36 | `declaration-track:de635e7efa732fb21738a7833499a633efa404f40b8c981ba06bf0e74a83521b` |
| 2 | `theorem` | [isometry_of_comp](../../../../../mathematics/Topology/MetricTopology/WithAbs/Variant0fce5eb2d7cca6d4386ca444bab464423e4ac91bd64c1361d8f51b2a8cfb4eef.lean/declarations/isometry-of-comp--9d4650b4fbde8c3753191628.md) | 50 | `result-track:9d4650b4fbde8c3753191628265b064ce6df0c5f609e7fab5f194647ae1ce28e` |
| 3 | `theorem` | [pseudoMetricSpace_induced_of_comp](../../../../../mathematics/Topology/MetricTopology/WithAbs/Variant0fce5eb2d7cca6d4386ca444bab464423e4ac91bd64c1361d8f51b2a8cfb4eef.lean/declarations/pseudometricspace-induced-of-comp--58bbd8d1e59d0b90610880d6.md) | 56 | `result-track:58bbd8d1e59d0b90610880d67f61463315e0b239c2bd93317c22ee26503b24dd` |
| 4 | `theorem` | [uniformSpace_comap_eq_of_comp](../../../../../mathematics/Topology/MetricTopology/WithAbs/Variant0fce5eb2d7cca6d4386ca444bab464423e4ac91bd64c1361d8f51b2a8cfb4eef.lean/declarations/uniformspace-comap-eq-of-comp--701258ad1e46c3c447718842.md) | 63 | `result-track:701258ad1e46c3c447718842cdca307572e1b7fe97683ed10064a4e389273252` |
| 5 | `theorem` | [isUniformInducing_of_comp](../../../../../mathematics/Topology/MetricTopology/WithAbs/Variant0fce5eb2d7cca6d4386ca444bab464423e4ac91bd64c1361d8f51b2a8cfb4eef.lean/declarations/isuniforminducing-of-comp--89cf5059729fa9a5adb98e57.md) | 69 | `result-track:89cf5059729fa9a5adb98e578e334a5509d9d9fe6048eed75b114f8da866a3f3` |
| 6 | `abbrev` | [Completion](../../../../../mathematics/Topology/MetricTopology/WithAbs/Variant0fce5eb2d7cca6d4386ca444bab464423e4ac91bd64c1361d8f51b2a8cfb4eef.lean/declarations/completion--83b56029aef32ebf1abb86bc.md) | 81 | `declaration-track:83b56029aef32ebf1abb86bc83cd019dc02070b9f3ecda0cf43eb7c169d925c9` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/Topology/MetricTopology/WithAbs/Variant0fce5eb2d7cca6d4386ca444bab464423e4ac91bd64c1361d8f51b2a8cfb4eef.lean/declarations/instance--ac0cffe9c1bbaa58389032b4.md) | 87 | `declaration-track:ac0cffe9c1bbaa58389032b4892355a1b1e61cabb8fadbbef86ad46cdc7622c4` |
| 8 | `abbrev` | [extensionEmbedding_of_comp](../../../../../mathematics/Topology/MetricTopology/WithAbs/Variant0fce5eb2d7cca6d4386ca444bab464423e4ac91bd64c1361d8f51b2a8cfb4eef.lean/declarations/extensionembedding-of-comp--b09be40077abe4cf3c5c436a.md) | 94 | `declaration-track:b09be40077abe4cf3c5c436a9093bd41a5961f13bdab9e9ac3ae3ccbf0d6558e` |
| 9 | `theorem` | [extensionEmbedding_of_comp_coe](../../../../../mathematics/Topology/MetricTopology/WithAbs/Variant0fce5eb2d7cca6d4386ca444bab464423e4ac91bd64c1361d8f51b2a8cfb4eef.lean/declarations/extensionembedding-of-comp-coe--ba1fded09b9bd9688229fcc7.md) | 98 | `result-track:ba1fded09b9bd9688229fcc7d2cd40aa97503574bf5c7c201c0d6db915d22241` |
| 10 | `theorem` | [extensionEmbedding_dist_eq_of_comp](../../../../../mathematics/Topology/MetricTopology/WithAbs/Variant0fce5eb2d7cca6d4386ca444bab464423e4ac91bd64c1361d8f51b2a8cfb4eef.lean/declarations/extensionembedding-dist-eq-of-comp--c6cd3fbb9a0cc9293f084ea9.md) | 105 | `result-track:c6cd3fbb9a0cc9293f084ea9715a6df5a791c4ff02c3d0cf743d0f6567db882e` |
| 11 | `theorem` | [isometry_extensionEmbedding_of_comp](../../../../../mathematics/Topology/MetricTopology/WithAbs/Variant0fce5eb2d7cca6d4386ca444bab464423e4ac91bd64c1361d8f51b2a8cfb4eef.lean/declarations/isometry-extensionembedding-of-comp--350c1f5fc7378fc3765ba24c.md) | 116 | `result-track:350c1f5fc7378fc3765ba24c1597914f539a3ac1ae7847bcf346ef938ea35af6` |
| 12 | `theorem` | [isClosedEmbedding_extensionEmbedding_of_comp](../../../../../mathematics/Topology/MetricTopology/WithAbs/Variant0fce5eb2d7cca6d4386ca444bab464423e4ac91bd64c1361d8f51b2a8cfb4eef.lean/declarations/isclosedembedding-extensionembedding-of-comp--2bad9b083fc24a862bf43f81.md) | 122 | `result-track:2bad9b083fc24a862bf43f81a2d216997e5bee1a98ffbfe92488a810e3d0287e` |
| 13 | `theorem` | [locallyCompactSpace](../../../../../mathematics/Topology/MetricTopology/WithAbs/Variant0fce5eb2d7cca6d4386ca444bab464423e4ac91bd64c1361d8f51b2a8cfb4eef.lean/declarations/locallycompactspace--8b88eab84ceda176d24497cc.md) | 128 | `result-track:8b88eab84ceda176d24497cc9f74348c6fb9f3400f130444302fbbec6fddd370` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
