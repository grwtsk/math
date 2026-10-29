# Verification target: Covering Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "df4be3e457222a67c5f15c87fb97d086665f5f2d",
  "lexical_observation_count": 35,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Covering/Variantf4758a123d3b91299652a6965f996c2d0c99fa371662d12b5d1f6178c4c73f41.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../Combinatorics/GraphTheory/CoveringNamespaced.lean/index.md) · [Full source](../../../../../Combinatorics/GraphTheory/CoveringNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `df4be3e457222a67c5f15c87fb97d086665f5f2d`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Covering/Variantf4758a123d3b91299652a6965f996c2d0c99fa371662d12b5d1f6178c4c73f41.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/GraphTheory/Covering/Variantf4758a123d3b91299652a6965f996c2d0c99fa371662d12b5d1f6178c4c73f41.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Combinatorics.Quiver.Cast` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Combinatorics.Quiver.Symmetric` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Sigma.Basic` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Sum.Basic` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Equiv.Sum` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Common` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [Quiver.Star](../../../../../Combinatorics/GraphTheory/CoveringNamespaced.lean/declarations/quiver-star.md) | 62 | `declaration-track:1a1e0c704612671b3da9aa5bda14acc81ad79ef3e28ea9a78d8aa0f3eae08da4` |
| 2 | `abbrev` | [Quiver.Star.mk](../../../../../Combinatorics/GraphTheory/CoveringNamespaced.lean/declarations/quiver-star-mk.md) | 66 | `declaration-track:76409446672fba0d9217d7961ea4c3b7263a908677a9cc4040f4134b6ceefebb` |
| 3 | `abbrev` | [Quiver.Costar](../../../../../Combinatorics/GraphTheory/CoveringNamespaced.lean/declarations/quiver-costar.md) | 71 | `declaration-track:9832e075858042ef2ff228117b9210ac5d9aabc349b8910cf54d317a23fc9b4b` |
| 4 | `abbrev` | [Quiver.Costar.mk](../../../../../Combinatorics/GraphTheory/CoveringNamespaced.lean/declarations/quiver-costar-mk.md) | 75 | `declaration-track:ccb5f0736cb994de2b48fa9f5b0312f3014b5cbdfef2df01ef10427aec0162e6` |
| 5 | `def` | [Prefunctor.star](../../../../../Combinatorics/GraphTheory/CoveringNamespaced.lean/declarations/prefunctor-star.md) | 80 | `declaration-track:363a20d6faf493f0c1bd9b46aef991cba141a521f685230314f18165353a9c73` |
| 6 | `def` | [Prefunctor.costar](../../../../../Combinatorics/GraphTheory/CoveringNamespaced.lean/declarations/prefunctor-costar.md) | 85 | `declaration-track:0b01fcb6f8aab971ffe9f051ebe0e536f0236e85746e0668c63a442723c84fc8` |
| 7 | `theorem` | [Prefunctor.star_apply](../../../../../Combinatorics/GraphTheory/CoveringNamespaced.lean/declarations/prefunctor-star-apply.md) | 89 | `result-track:d839ddc68be8dbb0723655bef92ae2a7a060573d6a088d69c400cebb558c7174` |
| 8 | `theorem` | [Prefunctor.costar_apply](../../../../../Combinatorics/GraphTheory/CoveringNamespaced.lean/declarations/prefunctor-costar-apply.md) | 94 | `result-track:84c59ac5cec80e36b5e734708ff7bb45c7df57b93b9b9e7eff71bdaf0c8ad5ed` |
| 9 | `theorem` | [Prefunctor.star_comp](../../../../../Combinatorics/GraphTheory/CoveringNamespaced.lean/declarations/prefunctor-star-comp.md) | 98 | `result-track:1b5e3fb0c4ff3b82bbc874a02dea89012ee639c5907c52273c50a91967e37faf` |
| 10 | `theorem` | [Prefunctor.costar_comp](../../../../../Combinatorics/GraphTheory/CoveringNamespaced.lean/declarations/prefunctor-costar-comp.md) | 101 | `result-track:e52fb1be32641e0ac27cb300869a41d0dd3dbc5b514d366b641cfb394477dcf9` |
| 11 | `structure` | [Prefunctor.IsCovering](../../../../../Combinatorics/GraphTheory/CoveringNamespaced.lean/declarations/prefunctor-iscovering.md) | 105 | `declaration-track:acc37cfc0fb34c2c5bacc892696cb419e4d2ba139892cf9253177848289b93f7` |
| 12 | `theorem` | [Prefunctor.IsCovering.map_injective](../../../../../Combinatorics/GraphTheory/CoveringNamespaced.lean/declarations/prefunctor-iscovering-map-injective.md) | 110 | `result-track:aa415856887fc89b88ce9e18eeb5df8a6ec68e93baa9c6cdafdf7547d13a2e66` |
| 13 | `theorem` | [Prefunctor.IsCovering.comp](../../../../../Combinatorics/GraphTheory/CoveringNamespaced.lean/declarations/prefunctor-iscovering-comp.md) | 116 | `result-track:ebb6fbc64f1ca7f62ae176de3328226484839c30a3eaae1ff17f37a10d7fa6d4` |
| 14 | `theorem` | [Prefunctor.IsCovering.of_comp_right](../../../../../Combinatorics/GraphTheory/CoveringNamespaced.lean/declarations/prefunctor-iscovering-of-comp-right.md) | 120 | `result-track:fdb4aafd517676c600416a2a0a7ce8ad5ef962a664fd575a73ea68840eb8962c` |
| 15 | `theorem` | [Prefunctor.IsCovering.of_comp_left](../../../../../Combinatorics/GraphTheory/CoveringNamespaced.lean/declarations/prefunctor-iscovering-of-comp-left.md) | 125 | `result-track:6ed33e48bf40b615ba5849e430dbf795decce8754163d65241cb82e0ec02753b` |
| 16 | `def` | [Quiver.symmetrifyStar](../../../../../Combinatorics/GraphTheory/CoveringNamespaced.lean/declarations/quiver-symmetrifystar.md) | 133 | `declaration-track:8798cc018fe93461de972e911c3a4b1ddd25f6d5ef82760a49488e77972d8ade` |
| 17 | `def` | [Quiver.symmetrifyCostar](../../../../../Combinatorics/GraphTheory/CoveringNamespaced.lean/declarations/quiver-symmetrifycostar.md) | 139 | `declaration-track:9c2d0913df8de27f69e9d0dc0fc8faac9e839347bcf047989bf127dfcad1b5cf` |
| 18 | `theorem` | [Prefunctor.symmetrifyStar](../../../../../Combinatorics/GraphTheory/CoveringNamespaced.lean/declarations/prefunctor-symmetrifystar.md) | 143 | `result-track:60ca79c81d5a266f1d6991399e55f3de2c039666b0da0ff4f3ecaf52dba1c526` |
| 19 | `theorem` | [Prefunctor.symmetrifyCostar](../../../../../Combinatorics/GraphTheory/CoveringNamespaced.lean/declarations/prefunctor-symmetrifycostar.md) | 154 | `result-track:744e096132a0f769d260ed3e4126fa3c08012c91abeeed38e45f7349e729c547` |
| 20 | `theorem` | [Prefunctor.IsCovering.symmetrify](../../../../../Combinatorics/GraphTheory/CoveringNamespaced.lean/declarations/prefunctor-iscovering-symmetrify.md) | 165 | `result-track:1a8c6c71adfefc4c8f0f6a2ea82dd2fa031d983bc8b6dfa2dac23a69fb074fd8` |
| 21 | `abbrev` | [Quiver.PathStar](../../../../../Combinatorics/GraphTheory/CoveringNamespaced.lean/declarations/quiver-pathstar.md) | 172 | `declaration-track:4f5c6695dedb6e09053d07b7cd97e25faad4e012137fc60d3c453da523494d14` |
| 22 | `abbrev` | [Quiver.PathStar.mk](../../../../../Combinatorics/GraphTheory/CoveringNamespaced.lean/declarations/quiver-pathstar-mk.md) | 176 | `declaration-track:0198b259be284b49864bbc1d5add72b740187a7c560f49463eb91f2558c3dfa3` |
| 23 | `def` | [Prefunctor.pathStar](../../../../../Combinatorics/GraphTheory/CoveringNamespaced.lean/declarations/prefunctor-pathstar.md) | 180 | `declaration-track:9cfc60399d2af8812b7c74978930bdc7f92ef8f28153dc8c2abab6ef8e1f3164` |
| 24 | `theorem` | [Prefunctor.pathStar_apply](../../../../../Combinatorics/GraphTheory/CoveringNamespaced.lean/declarations/prefunctor-pathstar-apply.md) | 184 | `result-track:cd4765341d3dafe2bb46e49e339676658176d77cf85d95352d4e60f4ce3114dc` |
| 25 | `theorem` | [Prefunctor.pathStar_injective](../../../../../Combinatorics/GraphTheory/CoveringNamespaced.lean/declarations/prefunctor-pathstar-injective.md) | 188 | `result-track:183122e433e76ff7d57e43b0d339bd2e50aeb0cb1a796c7e4ad3b630bddcc4b2` |
| 26 | `theorem` | [Prefunctor.pathStar_surjective](../../../../../Combinatorics/GraphTheory/CoveringNamespaced.lean/declarations/prefunctor-pathstar-surjective.md) | 230 | `result-track:6c756bec80eab03df4b2699d4e30c3d5c898814eda0792b7d3f0214e8dd48035` |
| 27 | `theorem` | [Prefunctor.pathStar_bijective](../../../../../Combinatorics/GraphTheory/CoveringNamespaced.lean/declarations/prefunctor-pathstar-bijective.md) | 251 | `result-track:d325ca6d0d78817e4e0f96827852c8edde0116a85e46515ef84846ef2122ebc2` |
| 28 | `theorem` | [pathStar_bijective](../../../../../Combinatorics/GraphTheory/CoveringNamespaced.lean/declarations/pathstar-bijective.md) | 259 | `result-track:baaf86298ec071f9bf99a7fcae867f92e37e7e12b151af860a9d6fb518360e2b` |
| 29 | `def` | [Quiver.starEquivCostar](../../../../../Combinatorics/GraphTheory/CoveringNamespaced.lean/declarations/quiver-starequivcostar.md) | 271 | `declaration-track:6b36edc9f49fbed744e1c4ef15a1700689aedc4933a4d5c2161527f9ef280081` |
| 30 | `theorem` | [Quiver.starEquivCostar_apply](../../../../../Combinatorics/GraphTheory/CoveringNamespaced.lean/declarations/quiver-starequivcostar-apply.md) | 278 | `result-track:109de16ef6279359d3337c50cc5ba9fa2d4d2932c7c0beca61cf77e125ecfb9a` |
| 31 | `theorem` | [Quiver.starEquivCostar_symm_apply](../../../../../Combinatorics/GraphTheory/CoveringNamespaced.lean/declarations/quiver-starequivcostar-symm-apply.md) | 283 | `result-track:6cb5d722b1f484c272a369aa3539f019228f1df394fccd1c81de33b90ce8c139` |
| 32 | `theorem` | [Prefunctor.costar_conj_star](../../../../../Combinatorics/GraphTheory/CoveringNamespaced.lean/declarations/prefunctor-costar-conj-star.md) | 289 | `result-track:e858f25978b3e2582168266d7daf0dc64be29c6afa84d0070c92af5c8e0142d3` |
| 33 | `theorem` | [Prefunctor.bijective_costar_iff_bijective_star](../../../../../Combinatorics/GraphTheory/CoveringNamespaced.lean/declarations/prefunctor-bijective-costar-iff-bijective-star.md) | 293 | `result-track:5d3078fd567eb7fc670a8f2c2cdc52c4288c5e1254058d0c43be4564c0aa87ff` |
| 34 | `theorem` | [Prefunctor.isCovering_of_bijective_star](../../../../../Combinatorics/GraphTheory/CoveringNamespaced.lean/declarations/prefunctor-iscovering-of-bijective-star.md) | 297 | `result-track:bb1f6f8f0154be72b61073b2b185df10fda6148dd2b3a72eb323bb1af0f42c4c` |
| 35 | `theorem` | [Prefunctor.isCovering_of_bijective_costar](../../../../../Combinatorics/GraphTheory/CoveringNamespaced.lean/declarations/prefunctor-iscovering-of-bijective-costar.md) | 300 | `result-track:532848e8ff56e33d00d8ba88cff996de9c77dcd77ceda9f9435d695873021f1d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6df05365ab22285a57ebe02b1746b3ea2e564cb1f332fc3c981f166acfedd952 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Covering/Variantf4758a123d3b91299652a6965f996c2d0c99fa371662d12b5d1f6178c4c73f41.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/GraphTheory/Covering/Variantf4758a123d3b91299652a6965f996c2d0c99fa371662d12b5d1f6178c4c73f41.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
