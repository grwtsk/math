# Verification target: GRWTSK.Topology.MetricTopology.ENorm.Variant30087924e03b746e2f4a21929c5b7f93c1dae531d3d52a1deb1952dd40ca8ca5

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "151c98eb10c7a515249cc0b6602c85e36aa8da4a",
  "lexical_observation_count": 29,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/MetricTopology/ENorm/Variant30087924e03b746e2f4a21929c5b7f93c1dae531d3d52a1deb1952dd40ca8ca5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/MetricTopology/ENorm/Variant30087924e03b746e2f4a21929c5b7f93c1dae531d3d52a1deb1952dd40ca8ca5.lean/index.md) · [Full source](../../../../../mathematics/Topology/MetricTopology/ENorm/Variant30087924e03b746e2f4a21929c5b7f93c1dae531d3d52a1deb1952dd40ca8ca5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `151c98eb10c7a515249cc0b6602c85e36aa8da4a`.

Source path: `GRWTSK/Topology/MetricTopology/ENorm/Variant30087924e03b746e2f4a21929c5b7f93c1dae531d3d52a1deb1952dd40ca8ca5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/MetricTopology/ENorm/Variant30087924e03b746e2f4a21929c5b7f93c1dae531d3d52a1deb1952dd40ca8ca5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.NormedSpace.Basic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [ENorm](../../../../../mathematics/Topology/MetricTopology/ENorm/Variant30087924e03b746e2f4a21929c5b7f93c1dae531d3d52a1deb1952dd40ca8ca5.lean/declarations/enorm--1054f1d5837a48110e3c9094.md) | 44 | `declaration-track:1054f1d5837a48110e3c90942e638ca8532fce34b61062cba22c3481172f847d` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/Topology/MetricTopology/ENorm/Variant30087924e03b746e2f4a21929c5b7f93c1dae531d3d52a1deb1952dd40ca8ca5.lean/declarations/instance--64328738f34357fa2cdb8c29.md) | 58 | `declaration-track:64328738f34357fa2cdb8c29d6634601df7124f457f18a1d59cc9d6155a35c10` |
| 3 | `theorem` | [coeFn_injective](../../../../../mathematics/Topology/MetricTopology/ENorm/Variant30087924e03b746e2f4a21929c5b7f93c1dae531d3d52a1deb1952dd40ca8ca5.lean/declarations/coefn-injective--bb9b66d9fdb6340c89da427b.md) | 61 | `result-track:bb9b66d9fdb6340c89da427b5cd554adc31db8eac3017bd34c2ea37b2cd619e1` |
| 4 | `theorem` | [ext](../../../../../mathematics/Topology/MetricTopology/ENorm/Variant30087924e03b746e2f4a21929c5b7f93c1dae531d3d52a1deb1952dd40ca8ca5.lean/declarations/ext--238e80aab23789f3e1e7f43e.md) | 68 | `result-track:238e80aab23789f3e1e7f43e042b5dba25960bb2d27ae5405e5a47ba4ab749e5` |
| 5 | `theorem` | [ext_iff](../../../../../mathematics/Topology/MetricTopology/ENorm/Variant30087924e03b746e2f4a21929c5b7f93c1dae531d3d52a1deb1952dd40ca8ca5.lean/declarations/ext-iff--d64b21c3a1bbf10dc8211125.md) | 72 | `result-track:d64b21c3a1bbf10dc82111251d5d5dc98c678b138fe2fa1d70bf4d5f8481944d` |
| 6 | `theorem` | [coe_inj](../../../../../mathematics/Topology/MetricTopology/ENorm/Variant30087924e03b746e2f4a21929c5b7f93c1dae531d3d52a1deb1952dd40ca8ca5.lean/declarations/coe-inj--00d2dbddda77d4cc35e08a12.md) | 77 | `result-track:00d2dbddda77d4cc35e08a12c538235f49b24a431b3fb348de2b1a3987408706` |
| 7 | `theorem` | [map_smul](../../../../../mathematics/Topology/MetricTopology/ENorm/Variant30087924e03b746e2f4a21929c5b7f93c1dae531d3d52a1deb1952dd40ca8ca5.lean/declarations/map-smul--04bf216d3a851ae593a762e9.md) | 82 | `result-track:04bf216d3a851ae593a762e904577fa2bdc016fbff13ef0294d9af6e2d9f50f3` |
| 8 | `theorem` | [map_zero](../../../../../mathematics/Topology/MetricTopology/ENorm/Variant30087924e03b746e2f4a21929c5b7f93c1dae531d3d52a1deb1952dd40ca8ca5.lean/declarations/map-zero--a48d86573a36f36318fd7f69.md) | 96 | `result-track:a48d86573a36f36318fd7f6914fc2467af26337d3522e7c4814826251766aac1` |
| 9 | `theorem` | [eq_zero_iff](../../../../../mathematics/Topology/MetricTopology/ENorm/Variant30087924e03b746e2f4a21929c5b7f93c1dae531d3d52a1deb1952dd40ca8ca5.lean/declarations/eq-zero-iff--3bb40c3efc618c3486f83eed.md) | 102 | `result-track:3bb40c3efc618c3486f83eed45e4ea5667806ac553e669344535b26da170605f` |
| 10 | `theorem` | [map_neg](../../../../../mathematics/Topology/MetricTopology/ENorm/Variant30087924e03b746e2f4a21929c5b7f93c1dae531d3d52a1deb1952dd40ca8ca5.lean/declarations/map-neg--889009dec9e69be8509a7fc7.md) | 107 | `result-track:889009dec9e69be8509a7fc7649ae0193c819cd3e8acdefd026595df000fb2a6` |
| 11 | `theorem` | [map_sub_rev](../../../../../mathematics/Topology/MetricTopology/ENorm/Variant30087924e03b746e2f4a21929c5b7f93c1dae531d3d52a1deb1952dd40ca8ca5.lean/declarations/map-sub-rev--05a5a3b9918befc4113671ae.md) | 113 | `result-track:05a5a3b9918befc4113671ae66eef83b5192c8244275b60d822a5b9a11373df3` |
| 12 | `theorem` | [map_add_le](../../../../../mathematics/Topology/MetricTopology/ENorm/Variant30087924e03b746e2f4a21929c5b7f93c1dae531d3d52a1deb1952dd40ca8ca5.lean/declarations/map-add-le--577906519f66bffa20af593d.md) | 116 | `result-track:577906519f66bffa20af593d37e239d37a2d611da1c8050038ed12858c2f7ae2` |
| 13 | `theorem` | [map_sub_le](../../../../../mathematics/Topology/MetricTopology/ENorm/Variant30087924e03b746e2f4a21929c5b7f93c1dae531d3d52a1deb1952dd40ca8ca5.lean/declarations/map-sub-le--a7687396e06adfab94d9fb06.md) | 120 | `result-track:a7687396e06adfab94d9fb069359866aee17cf1ea844ef903e2f26c986dd388b` |
| 14 | `instance` | [partialOrder](../../../../../mathematics/Topology/MetricTopology/ENorm/Variant30087924e03b746e2f4a21929c5b7f93c1dae531d3d52a1deb1952dd40ca8ca5.lean/declarations/partialorder--962c080db7b6f1ba18f5b264.md) | 127 | `declaration-track:962c080db7b6f1ba18f5b2642532b759701fa5614cefbfac10805ddd30a7d2c0` |
| 15 | `instance` | [(anonymous)](../../../../../mathematics/Topology/MetricTopology/ENorm/Variant30087924e03b746e2f4a21929c5b7f93c1dae531d3d52a1deb1952dd40ca8ca5.lean/declarations/instance--fcd4db6075b0f7e06ac04b36.md) | 134 | `declaration-track:fcd4db6075b0f7e06ac04b363e52e0a387da3799c42bf6d68d93d9aaac7e7c16` |
| 16 | `instance` | [(anonymous)](../../../../../mathematics/Topology/MetricTopology/ENorm/Variant30087924e03b746e2f4a21929c5b7f93c1dae531d3d52a1deb1952dd40ca8ca5.lean/declarations/instance--226267855fcbf7b325a42cad.md) | 150 | `declaration-track:226267855fcbf7b325a42cad4092abda3e773f01e8bf999343f920e5cd013615` |
| 17 | `theorem` | [top_map](../../../../../mathematics/Topology/MetricTopology/ENorm/Variant30087924e03b746e2f4a21929c5b7f93c1dae531d3d52a1deb1952dd40ca8ca5.lean/declarations/top-map--4644df502cd2f0e85a46eb3b.md) | 153 | `result-track:4644df502cd2f0e85a46eb3b4ad9f41464d160e0d02781bcd97cac27324a8474` |
| 18 | `instance` | [(anonymous)](../../../../../mathematics/Topology/MetricTopology/ENorm/Variant30087924e03b746e2f4a21929c5b7f93c1dae531d3d52a1deb1952dd40ca8ca5.lean/declarations/instance--50bd858b52c096ea4f9053b3.md) | 157 | `declaration-track:50bd858b52c096ea4f9053b323b6b257da7f99d4c7340c863277cfe4b6498ab1` |
| 19 | `instance` | [(anonymous)](../../../../../mathematics/Topology/MetricTopology/ENorm/Variant30087924e03b746e2f4a21929c5b7f93c1dae531d3d52a1deb1952dd40ca8ca5.lean/declarations/instance--f5b6aecd43383d4f1d83f4eb.md) | 161 | `declaration-track:f5b6aecd43383d4f1d83f4ebf6d0ee6339b04efcc34b5be262fc03623ed89e79` |
| 20 | `theorem` | [coe_max](../../../../../mathematics/Topology/MetricTopology/ENorm/Variant30087924e03b746e2f4a21929c5b7f93c1dae531d3d52a1deb1952dd40ca8ca5.lean/declarations/coe-max--22f22e74c3eb6dd0cc77a3bb.md) | 177 | `result-track:22f22e74c3eb6dd0cc77a3bb3a5033cd5bd62221624ede16a12edd0e56bc4bcf` |
| 21 | `theorem` | [max_map](../../../../../mathematics/Topology/MetricTopology/ENorm/Variant30087924e03b746e2f4a21929c5b7f93c1dae531d3d52a1deb1952dd40ca8ca5.lean/declarations/max-map--e068943387f1e725bfde9039.md) | 182 | `result-track:e068943387f1e725bfde9039c0c777f16df106696319d3b8a8f9a3c9d95a9581` |
| 22 | `def` | [emetricSpace](../../../../../mathematics/Topology/MetricTopology/ENorm/Variant30087924e03b746e2f4a21929c5b7f93c1dae531d3d52a1deb1952dd40ca8ca5.lean/declarations/emetricspace--eec542d0c91184b712d70eb7.md) | 188 | `declaration-track:eec542d0c91184b712d70eb7d44900ff80b3b8fe670363392b1ba60e2852c4b2` |
| 23 | `def` | [finiteSubspace](../../../../../mathematics/Topology/MetricTopology/ENorm/Variant30087924e03b746e2f4a21929c5b7f93c1dae531d3d52a1deb1952dd40ca8ca5.lean/declarations/finitesubspace--ee30c9bb4063420c91b98360.md) | 200 | `declaration-track:ee30c9bb4063420c91b983607f98b84f3196f5066d219dcb5f759dd13e4ff973` |
| 24 | `instance` | [metricSpace](../../../../../mathematics/Topology/MetricTopology/ENorm/Variant30087924e03b746e2f4a21929c5b7f93c1dae531d3d52a1deb1952dd40ca8ca5.lean/declarations/metricspace--061ef8a6f29a70ee11f93586.md) | 212 | `declaration-track:061ef8a6f29a70ee11f93586b6d77bb6f3380d1c3471d5c37a2541b44d6abbe2` |
| 25 | `theorem` | [finite_dist_eq](../../../../../mathematics/Topology/MetricTopology/ENorm/Variant30087924e03b746e2f4a21929c5b7f93c1dae531d3d52a1deb1952dd40ca8ca5.lean/declarations/finite-dist-eq--d5f94ffbec72b76f3729c676.md) | 218 | `result-track:d5f94ffbec72b76f3729c6760449ae1626c01e85fbee2f7581a4c2531d996974` |
| 26 | `theorem` | [finite_edist_eq](../../../../../mathematics/Topology/MetricTopology/ENorm/Variant30087924e03b746e2f4a21929c5b7f93c1dae531d3d52a1deb1952dd40ca8ca5.lean/declarations/finite-edist-eq--276c6bfbeabb09cd31be6ee8.md) | 222 | `result-track:276c6bfbeabb09cd31be6ee845309ebff6368335edb91d3343aff042f1bcd793` |
| 27 | `instance` | [normedAddCommGroup](../../../../../mathematics/Topology/MetricTopology/ENorm/Variant30087924e03b746e2f4a21929c5b7f93c1dae531d3d52a1deb1952dd40ca8ca5.lean/declarations/normedaddcommgroup--89e26e188bd585fcf889fa46.md) | 227 | `declaration-track:89e26e188bd585fcf889fa46a555b3f8fde38acbac53114ae1d42c40bf6e7a7d` |
| 28 | `theorem` | [finite_norm_eq](../../../../../mathematics/Topology/MetricTopology/ENorm/Variant30087924e03b746e2f4a21929c5b7f93c1dae531d3d52a1deb1952dd40ca8ca5.lean/declarations/finite-norm-eq--0ee5da79c43634290c23d61e.md) | 233 | `result-track:0ee5da79c43634290c23d61e772efd87ab4259cbb991fda835b5b9d568c38094` |
| 29 | `instance` | [normedSpace](../../../../../mathematics/Topology/MetricTopology/ENorm/Variant30087924e03b746e2f4a21929c5b7f93c1dae531d3d52a1deb1952dd40ca8ca5.lean/declarations/normedspace--00b3d0e14514efe408455e10.md) | 238 | `declaration-track:00b3d0e14514efe408455e10b654d0425896b07c149a477d02bcd0ead94fac98` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
