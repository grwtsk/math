# Verification target: GRWTSK.Topology.MetricTopology.GromovHausdorff.Variant7e320db9ea1197e61bfb30427a3937712195a476cfc4e8f99d701538c891580c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "647a1da85db9bfb4dde10a068d6978427b3a9a80",
  "lexical_observation_count": 32,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/MetricTopology/GromovHausdorff/Variant7e320db9ea1197e61bfb30427a3937712195a476cfc4e8f99d701538c891580c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/MetricTopology/GromovHausdorff/Variant7e320db9ea1197e61bfb30427a3937712195a476cfc4e8f99d701538c891580c.lean/index.md) · [Full source](../../../../../mathematics/Topology/MetricTopology/GromovHausdorff/Variant7e320db9ea1197e61bfb30427a3937712195a476cfc4e8f99d701538c891580c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `647a1da85db9bfb4dde10a068d6978427b3a9a80`.

Source path: `GRWTSK/Topology/MetricTopology/GromovHausdorff/Variant7e320db9ea1197e61bfb30427a3937712195a476cfc4e8f99d701538c891580c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/MetricTopology/GromovHausdorff/Variant7e320db9ea1197e61bfb30427a3937712195a476cfc4e8f99d701538c891580c.lean.json)

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
| 1 | `def` | [IsometryRel](../../../../../mathematics/Topology/MetricTopology/GromovHausdorff/Variant7e320db9ea1197e61bfb30427a3937712195a476cfc4e8f99d701538c891580c.lean/declarations/isometryrel--a4b7d9e2bb8cdb66b97f7746.md) | 79 | `declaration-track:a4b7d9e2bb8cdb66b97f7746660e953cf512bb7bf1c1edc561abc56912a79a5d` |
| 2 | `theorem` | [equivalence_isometryRel](../../../../../mathematics/Topology/MetricTopology/GromovHausdorff/Variant7e320db9ea1197e61bfb30427a3937712195a476cfc4e8f99d701538c891580c.lean/declarations/equivalence-isometryrel--6970eb1aeec993a01109e7f3.md) | 84 | `result-track:6970eb1aeec993a01109e7f380169a4899a01372bf8dd44cecd816efebfd401a` |
| 3 | `instance` | [IsometryRel.setoid](../../../../../mathematics/Topology/MetricTopology/GromovHausdorff/Variant7e320db9ea1197e61bfb30427a3937712195a476cfc4e8f99d701538c891580c.lean/declarations/isometryrel-setoid--b8b9c7925a79a7a2dd7ff1e4.md) | 90 | `declaration-track:b8b9c7925a79a7a2dd7ff1e43a0b0c8c737fc162294a0eea1f74e0f53a4394cc` |
| 4 | `def` | [GHSpace](../../../../../mathematics/Topology/MetricTopology/GromovHausdorff/Variant7e320db9ea1197e61bfb30427a3937712195a476cfc4e8f99d701538c891580c.lean/declarations/ghspace--5540b4c9ffa73215369f99dc.md) | 94 | `declaration-track:5540b4c9ffa73215369f99dc5d14eb3eee1d009e25c403004097658420e60c9a` |
| 5 | `def` | [toGHSpace](../../../../../mathematics/Topology/MetricTopology/GromovHausdorff/Variant7e320db9ea1197e61bfb30427a3937712195a476cfc4e8f99d701538c891580c.lean/declarations/toghspace--89a4dcc09d1de7b41f408e09.md) | 98 | `declaration-track:89a4dcc09d1de7b41f408e09725bae371bc04cae2deebace6f2c39af8c7724c0` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/Topology/MetricTopology/GromovHausdorff/Variant7e320db9ea1197e61bfb30427a3937712195a476cfc4e8f99d701538c891580c.lean/declarations/instance--304b2f25e37d89dfb4af037d.md) | 101 | `declaration-track:304b2f25e37d89dfb4af037d715702aa1c564c4324ef94c0a1097444ea5a76ba` |
| 7 | `def` | [GHSpace.Rep](../../../../../mathematics/Topology/MetricTopology/GromovHausdorff/Variant7e320db9ea1197e61bfb30427a3937712195a476cfc4e8f99d701538c891580c.lean/declarations/ghspace-rep--8fa2eb7c825f19d0340fa2a4.md) | 105 | `declaration-track:8fa2eb7c825f19d0340fa2a4f44cb494c143e107f78d0ad19c6ec253af918aa6` |
| 8 | `theorem` | [eq_toGHSpace_iff](../../../../../mathematics/Topology/MetricTopology/GromovHausdorff/Variant7e320db9ea1197e61bfb30427a3937712195a476cfc4e8f99d701538c891580c.lean/declarations/eq-toghspace-iff--0f6b83f73041382a08c8dccd.md) | 108 | `result-track:0f6b83f73041382a08c8dccd9a538944de9d07cf36e1cea71d625de3234cc0dc` |
| 9 | `theorem` | [eq_toGHSpace](../../../../../mathematics/Topology/MetricTopology/GromovHausdorff/Variant7e320db9ea1197e61bfb30427a3937712195a476cfc4e8f99d701538c891580c.lean/declarations/eq-toghspace--d6994d319b06f6a68bfa1cce.md) | 126 | `result-track:d6994d319b06f6a68bfa1cce9467b9e161477883288472f6b96f4b9e9bb82c77` |
| 10 | `instance` | [repGHSpaceMetricSpace](../../../../../mathematics/Topology/MetricTopology/GromovHausdorff/Variant7e320db9ea1197e61bfb30427a3937712195a476cfc4e8f99d701538c891580c.lean/declarations/repghspacemetricspace--d258739c968d58972c8e120c.md) | 131 | `declaration-track:d258739c968d58972c8e120c3235c50ba1d0631d40dd3317cd3fb2602e3a775e` |
| 11 | `instance` | [rep_gHSpace_compactSpace](../../../../../mathematics/Topology/MetricTopology/GromovHausdorff/Variant7e320db9ea1197e61bfb30427a3937712195a476cfc4e8f99d701538c891580c.lean/declarations/rep-ghspace-compactspace--7aec25f1de1b1a7c29bf4fbb.md) | 134 | `declaration-track:7aec25f1de1b1a7c29bf4fbbe05dcf4b1268c1b4b531081e131c52e9631d59b7` |
| 12 | `instance` | [rep_gHSpace_nonempty](../../../../../mathematics/Topology/MetricTopology/GromovHausdorff/Variant7e320db9ea1197e61bfb30427a3937712195a476cfc4e8f99d701538c891580c.lean/declarations/rep-ghspace-nonempty--8ca79c63afa8e8fc5014fe2f.md) | 137 | `declaration-track:8ca79c63afa8e8fc5014fe2f72fe0139175a5ea11a480a71f6be47c355d6ce4f` |
| 13 | `theorem` | [GHSpace.toGHSpace_rep](../../../../../mathematics/Topology/MetricTopology/GromovHausdorff/Variant7e320db9ea1197e61bfb30427a3937712195a476cfc4e8f99d701538c891580c.lean/declarations/ghspace-toghspace-rep--71b2ed208a92f967f2a54db7.md) | 142 | `result-track:71b2ed208a92f967f2a54db7a1d5fa5fba49ec3f7210f95aff923471a5f61d84` |
| 14 | `theorem` | [toGHSpace_eq_toGHSpace_iff_isometryEquiv](../../../../../mathematics/Topology/MetricTopology/GromovHausdorff/Variant7e320db9ea1197e61bfb30427a3937712195a476cfc4e8f99d701538c891580c.lean/declarations/toghspace-eq-toghspace-iff-isometryequiv--067dbeaa743d335e7b577ba8.md) | 150 | `result-track:067dbeaa743d335e7b577ba83050c57caf3c37f428c328b9f3d1b33989cdf307` |
| 15 | `instance` | [(anonymous)](../../../../../mathematics/Topology/MetricTopology/GromovHausdorff/Variant7e320db9ea1197e61bfb30427a3937712195a476cfc4e8f99d701538c891580c.lean/declarations/instance--e18a22cf7980f773752367b9.md) | 178 | `declaration-track:e18a22cf7980f773752367b9480fee8d96ae94014eb33dc63e0be9d7a0b0151a` |
| 16 | `def` | [ghDist](../../../../../mathematics/Topology/MetricTopology/GromovHausdorff/Variant7e320db9ea1197e61bfb30427a3937712195a476cfc4e8f99d701538c891580c.lean/declarations/ghdist--d5e0474dd8a674e9e7f1d7ef.md) | 184 | `declaration-track:d5e0474dd8a674e9e7f1d7ef10151f7737fff5032fd0818f022b23bb216bc404` |
| 17 | `theorem` | [dist_ghDist](../../../../../mathematics/Topology/MetricTopology/GromovHausdorff/Variant7e320db9ea1197e61bfb30427a3937712195a476cfc4e8f99d701538c891580c.lean/declarations/dist-ghdist--705a8eba4325e57a1f47e3b5.md) | 188 | `result-track:705a8eba4325e57a1f47e3b595451101e03d35e03698b0e9f2360ba07dec1c5e` |
| 18 | `theorem` | [ghDist_le_hausdorffDist](../../../../../mathematics/Topology/MetricTopology/GromovHausdorff/Variant7e320db9ea1197e61bfb30427a3937712195a476cfc4e8f99d701538c891580c.lean/declarations/ghdist-le-hausdorffdist--b8a70257cef573e50ca62e22.md) | 193 | `result-track:b8a70257cef573e50ca62e22c9fafa791a989bb41156cb2f309e035a111e3158` |
| 19 | `theorem` | [hausdorffDist_optimal](../../../../../mathematics/Topology/MetricTopology/GromovHausdorff/Variant7e320db9ea1197e61bfb30427a3937712195a476cfc4e8f99d701538c891580c.lean/declarations/hausdorffdist-optimal--c6f4a51d248a37dad8e1628a.md) | 246 | `result-track:c6f4a51d248a37dad8e1628a3dcb7bacd8eede8448b9d55549951c7aeee09b07` |
| 20 | `theorem` | [ghDist_eq_hausdorffDist](../../../../../mathematics/Topology/MetricTopology/GromovHausdorff/Variant7e320db9ea1197e61bfb30427a3937712195a476cfc4e8f99d701538c891580c.lean/declarations/ghdist-eq-hausdorffdist--a4e78d15b1d7f9dcf49b578d.md) | 385 | `result-track:a4e78d15b1d7f9dcf49b578d7d531607653076deb82dd681e16f1aab940f462e` |
| 21 | `instance` | [(anonymous)](../../../../../mathematics/Topology/MetricTopology/GromovHausdorff/Variant7e320db9ea1197e61bfb30427a3937712195a476cfc4e8f99d701538c891580c.lean/declarations/instance--468cd394b576ebdf869838ed.md) | 401 | `declaration-track:468cd394b576ebdf869838ed9ac32e3bcf0691f529eb6529ca75a6e6b1f5ff39` |
| 22 | `def` | [TopologicalSpace.NonemptyCompacts.toGHSpace](../../../../../mathematics/Topology/MetricTopology/GromovHausdorff/Variant7e320db9ea1197e61bfb30427a3937712195a476cfc4e8f99d701538c891580c.lean/declarations/topologicalspace-nonemptycompacts-toghspace--93d0ac6c610b78345506a291.md) | 503 | `declaration-track:93d0ac6c610b78345506a29122b965b93cb6adf80ae76d8d78a2bc5b4addde60` |
| 23 | `theorem` | [ghDist_le_nonemptyCompacts_dist](../../../../../mathematics/Topology/MetricTopology/GromovHausdorff/Variant7e320db9ea1197e61bfb30427a3937712195a476cfc4e8f99d701538c891580c.lean/declarations/ghdist-le-nonemptycompacts-dist--1c1be668433c39e7434c1d8f.md) | 513 | `result-track:1c1be668433c39e7434c1d8f3625e5e79e93797aa163f8d9e6f687eedfc07fb6` |
| 24 | `theorem` | [toGHSpace_lipschitz](../../../../../mathematics/Topology/MetricTopology/GromovHausdorff/Variant7e320db9ea1197e61bfb30427a3937712195a476cfc4e8f99d701538c891580c.lean/declarations/toghspace-lipschitz--256b971bcb64a09ee52244bd.md) | 523 | `result-track:256b971bcb64a09ee52244bd986f460b4a5e8ad8aa6276660756cd978506925b` |
| 25 | `theorem` | [toGHSpace_continuous](../../../../../mathematics/Topology/MetricTopology/GromovHausdorff/Variant7e320db9ea1197e61bfb30427a3937712195a476cfc4e8f99d701538c891580c.lean/declarations/toghspace-continuous--273cb983dc22c012ae2661d4.md) | 527 | `result-track:273cb983dc22c012ae2661d4852da9cfdb37abf368d8e9db1963be6a749bd274` |
| 26 | `theorem` | [ghDist_le_of_approx_subsets](../../../../../mathematics/Topology/MetricTopology/GromovHausdorff/Variant7e320db9ea1197e61bfb30427a3937712195a476cfc4e8f99d701538c891580c.lean/declarations/ghdist-le-of-approx-subsets--1515366be4b2b332f78b62c3.md) | 546 | `result-track:1515366be4b2b332f78b62c3e06011eafbd4e8fbfdb4839dbbb4f22ba1e6b5d6` |
| 27 | `instance` | [(anonymous)](../../../../../mathematics/Topology/MetricTopology/GromovHausdorff/Variant7e320db9ea1197e61bfb30427a3937712195a476cfc4e8f99d701538c891580c.lean/declarations/instance--f7a96e473521eb8e60282112.md) | 624 | `declaration-track:f7a96e473521eb8e60282112faf199fa44dd9030be1719199b719f9d3965858e` |
| 28 | `theorem` | [totallyBounded](../../../../../mathematics/Topology/MetricTopology/GromovHausdorff/Variant7e320db9ea1197e61bfb30427a3937712195a476cfc4e8f99d701538c891580c.lean/declarations/totallybounded--0ef2071cae9bbf1fd761149c.md) | 743 | `result-track:0ef2071cae9bbf1fd761149cc9bd4977e0d3faafb130dbb1234c2c14839b5936` |
| 29 | `structure` | [AuxGluingStruct](../../../../../mathematics/Topology/MetricTopology/GromovHausdorff/Variant7e320db9ea1197e61bfb30427a3937712195a476cfc4e8f99d701538c891580c.lean/declarations/auxgluingstruct--c9e48fb89ec39631af65ccf6.md) | 919 | `declaration-track:c9e48fb89ec39631af65ccf64953e2163094fb774128808d9ade0bb691c28812` |
| 30 | `instance` | [(anonymous)](../../../../../mathematics/Topology/MetricTopology/GromovHausdorff/Variant7e320db9ea1197e61bfb30427a3937712195a476cfc4e8f99d701538c891580c.lean/declarations/instance--a081aa5f0921161945ffb90a.md) | 927 | `declaration-track:a081aa5f0921161945ffb90a72db49cb8cce05cf8850f5fa717100557a51c8c0` |
| 31 | `def` | [auxGluing](../../../../../mathematics/Topology/MetricTopology/GromovHausdorff/Variant7e320db9ea1197e61bfb30427a3937712195a476cfc4e8f99d701538c891580c.lean/declarations/auxgluing--44fa7afdaba58aa9ff52e660.md) | 936 | `declaration-track:44fa7afdaba58aa9ff52e660a7c9b03bb68571c82739fd6972d4b5d7066bfe4c` |
| 32 | `instance` | [(anonymous)](../../../../../mathematics/Topology/MetricTopology/GromovHausdorff/Variant7e320db9ea1197e61bfb30427a3937712195a476cfc4e8f99d701538c891580c.lean/declarations/instance--79d317ee628acf489ec609b2.md) | 946 | `declaration-track:79d317ee628acf489ec609b2181aa990a49b2c3c74373f5c6d261e09a922774a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
