# Verification target: Topology Algebra Module Basic Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "596d52e15c46b6115a2d4747e0dc67143fb1e7ce",
  "lexical_observation_count": 32,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variant9fc73d29323175bf6ec2e23eeef24b7c610bdc55d40b63078b1bbc54897e539a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/TopologyAlgebraModuleBasicNamespaced.lean/index.md) · [Full source](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/TopologyAlgebraModuleBasicNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `596d52e15c46b6115a2d4747e0dc67143fb1e7ce`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Basic/Variant9fc73d29323175bf6ec2e23eeef24b7c610bdc55d40b63078b1bbc54897e539a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Basic/Variant9fc73d29323175bf6ec2e23eeef24b7c610bdc55d40b63078b1bbc54897e539a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Module.Opposite` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Group.Quotient` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Ring.Basic` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.UniformSpace.UniformEmbedding` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Finsupp.LinearCombination` — import line 16; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Pi` — import line 17; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Quotient.Defs` — import line 18; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [ContinuousSMul.of_nhds_zero](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/TopologyAlgebraModuleBasicNamespaced.lean/declarations/continuoussmul-of-nhds-zero.md) | 41 | `result-track:8a69eedcd1bea285d0765e88d5889c1d68b4f54520eea905486dbeb0bc6a59c8` |
| 2 | `theorem` | [ContinuousNeg.of_continuousConstSMul](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/TopologyAlgebraModuleBasicNamespaced.lean/declarations/continuousneg-of-continuousconstsmul.md) | 55 | `result-track:0593368e9eda6f2b4633c8cbade24c5a9b3ca05ce7c027eac246e3239cb92193` |
| 3 | `theorem` | [Submodule.eq_top_of_nonempty_interior'](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/TopologyAlgebraModuleBasicNamespaced.lean/declarations/submodule-eq-top-of-nonempty-interior.md) | 68 | `result-track:4fc36f001eda31fba0502b6c5bad708e003b67870b5efa92cc3d0f3e128d6ba6` |
| 4 | `theorem` | [Module.punctured_nhds_neBot](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/TopologyAlgebraModuleBasicNamespaced.lean/declarations/module-punctured-nhds-nebot.md) | 92 | `result-track:cf010416035d12d8e75199f106f8c41c1b3a48d7cec2d8d242c7f4e6e5e0b5df` |
| 5 | `theorem` | [continuousSMul_induced](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/TopologyAlgebraModuleBasicNamespaced.lean/declarations/continuoussmul-induced.md) | 110 | `result-track:f7d51ae28110867f5a9d91028c4c0e0830992ab45cbaef4020626ad8af0378d6` |
| 6 | `lemma` | [TopologicalSpace.IsSeparable.span](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/TopologyAlgebraModuleBasicNamespaced.lean/declarations/topologicalspace-isseparable-span.md) | 117 | `result-track:a36374d77ed37beea331b766d26cd9d60ad2d1b78eaa99950a42a43c294c8ffd` |
| 7 | `instance` | [topologicalAddGroup](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/TopologyAlgebraModuleBasicNamespaced.lean/declarations/topologicaladdgroup.md) | 131 | `declaration-track:d4441556d1b2aeae044c71dafbba706d1155b20807d7de8e1a36f4463275a4ae` |
| 8 | `theorem` | [Submodule.mapsTo_smul_closure](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/TopologyAlgebraModuleBasicNamespaced.lean/declarations/submodule-mapsto-smul-closure.md) | 142 | `result-track:a836c80217e7896f0aa70a9834475a595d6f769a6044da3febb8957fdc0de821` |
| 9 | `theorem` | [Submodule.smul_closure_subset](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/TopologyAlgebraModuleBasicNamespaced.lean/declarations/submodule-smul-closure-subset.md) | 147 | `result-track:9810171e013a264521d156fcde3786499596d1a04ab2333a4b301f1f9f4a6594` |
| 10 | `def` | [Submodule.topologicalClosure](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/TopologyAlgebraModuleBasicNamespaced.lean/declarations/submodule-topologicalclosure.md) | 155 | `declaration-track:96d83af45752ef81cdfc6b05d727489a73f86669458401168975059b4148fc80` |
| 11 | `theorem` | [Submodule.topologicalClosure_coe](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/TopologyAlgebraModuleBasicNamespaced.lean/declarations/submodule-topologicalclosure-coe.md) | 160 | `result-track:a77ef28cc1beec205613829751d8fa2b3c54c20cd7b282dac16c722e10f498cb` |
| 12 | `theorem` | [Submodule.le_topologicalClosure](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/TopologyAlgebraModuleBasicNamespaced.lean/declarations/submodule-le-topologicalclosure.md) | 164 | `result-track:bc896b71150f3f3aa58d7b8efd9efea27cf6c25ac3d4569807f0a678e58aaa52` |
| 13 | `theorem` | [Submodule.closure_subset_topologicalClosure_span](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/TopologyAlgebraModuleBasicNamespaced.lean/declarations/submodule-closure-subset-topologicalclosure-span.md) | 167 | `result-track:82c8ed92d6ceeb3c285702b1a3d0f91bec6af366e588d53723115906d78db5bd` |
| 14 | `theorem` | [Submodule.isClosed_topologicalClosure](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/TopologyAlgebraModuleBasicNamespaced.lean/declarations/submodule-isclosed-topologicalclosure.md) | 172 | `result-track:42245a3bbb879549a4f42119d0fe766f63f28587c45047b71408c86362b5b8c0` |
| 15 | `theorem` | [Submodule.topologicalClosure_minimal](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/TopologyAlgebraModuleBasicNamespaced.lean/declarations/submodule-topologicalclosure-minimal.md) | 175 | `result-track:04251d7114df19d8b3788ae62e0c82a0cc193c348e173ffc92c00a7409feb95a` |
| 16 | `theorem` | [Submodule.topologicalClosure_mono](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/TopologyAlgebraModuleBasicNamespaced.lean/declarations/submodule-topologicalclosure-mono.md) | 179 | `result-track:13603cb91a3bb8115f3a7ab4729e112ba1ae30eb4f3a51f36cdd09d74ccdaf22` |
| 17 | `theorem` | [IsClosed.submodule_topologicalClosure_eq](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/TopologyAlgebraModuleBasicNamespaced.lean/declarations/isclosed-submodule-topologicalclosure-eq.md) | 184 | `result-track:ea4fa89783f3e03d1c25496852b2de35a1263a0e07a5eb076750ef5c3681cc0b` |
| 18 | `theorem` | [Submodule.dense_iff_topologicalClosure_eq_top](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/TopologyAlgebraModuleBasicNamespaced.lean/declarations/submodule-dense-iff-topologicalclosure-eq-top.md) | 189 | `result-track:6622e1174c480f375102df57c206f13dc941a828e099d87d5b8b0e9aed632de7` |
| 19 | `instance` | [Submodule.topologicalClosure.completeSpace](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/TopologyAlgebraModuleBasicNamespaced.lean/declarations/submodule-topologicalclosure-completespace.md) | 194 | `declaration-track:bb5ddb82ffa3d688f38b75ba46f9acae2cb86cabceacad932250681788f6018b` |
| 20 | `theorem` | [Submodule.isClosed_or_dense_of_isCoatom](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/TopologyAlgebraModuleBasicNamespaced.lean/declarations/submodule-isclosed-or-dense-of-iscoatom.md) | 201 | `result-track:7e182a01c036e9bc10ffba3c3e927f76a23349f6b8a9d39d1f0b671f4a79c3ae` |
| 21 | `theorem` | [closure_coe_iSup_map_single](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/TopologyAlgebraModuleBasicNamespaced.lean/declarations/closure-coe-isup-map-single.md) | 219 | `result-track:4c78953e754cbde07c0dd511914d76c61e258ac5bb8903ac8fc35de22dfc1ea0` |
| 22 | `theorem` | [topologicalClosure_iSup_map_single](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/TopologyAlgebraModuleBasicNamespaced.lean/declarations/topologicalclosure-isup-map-single.md) | 243 | `result-track:48e721e651a500d9e6cca7b10b67e1c67c8b6797d071417e1d3e124c9e262148` |
| 23 | `theorem` | [LinearMap.continuous_on_pi](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/TopologyAlgebraModuleBasicNamespaced.lean/declarations/linearmap-continuous-on-pi.md) | 253 | `result-track:50166465c6ec216a95457a1067aa25c38ef6d99c4d29c4c942c5700b686c8980` |
| 24 | `def` | [linearMapOfMemClosureRangeCoe](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/TopologyAlgebraModuleBasicNamespaced.lean/declarations/linearmapofmemclosurerangecoe.md) | 279 | `declaration-track:c79a530583f3e6f415f7f2e3fed38d8041156304189c8fd2c6178ed1f0e5c5da` |
| 25 | `def` | [linearMapOfTendsto](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/TopologyAlgebraModuleBasicNamespaced.lean/declarations/linearmapoftendsto.md) | 287 | `declaration-track:352f18bbd419876b9a7c52cb967ccb07dff48d0289716ebb73f16f5e40934637` |
| 26 | `theorem` | [LinearMap.isClosed_range_coe](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/TopologyAlgebraModuleBasicNamespaced.lean/declarations/linearmap-isclosed-range-coe.md) | 294 | `result-track:89039a78e454c8fa13979789aed8d4fbda2c8934911baea81fa6be0c32f316dc` |
| 27 | `instance` | [Topology Algebra Module Basic Namespaced](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/TopologyAlgebraModuleBasicNamespaced.lean/declarations/topologicalspace.md) | 306 | `declaration-track:3279b6f97a9527eb54c94816dcc469bc447aa914029d64c67e8538fd4ea841aa` |
| 28 | `theorem` | [isOpenMap_mkQ](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/TopologyAlgebraModuleBasicNamespaced.lean/declarations/isopenmap-mkq.md) | 309 | `result-track:a602f146dfa961051fc5a3af4947edeee3fb4c71c9d5e1be7a20a77f9ecb51cc` |
| 29 | `theorem` | [isOpenQuotientMap_mkQ](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/TopologyAlgebraModuleBasicNamespaced.lean/declarations/isopenquotientmap-mkq.md) | 312 | `result-track:6eae1d979d96637a0cc0f7001834070323ae5f6a844e56bd8b6c020e7b6d0350` |
| 30 | `instance` | [topologicalAddGroup_quotient](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/TopologyAlgebraModuleBasicNamespaced.lean/declarations/topologicaladdgroup-quotient.md) | 315 | `declaration-track:9034848b24a1814e37b906c6a5cfbbebbe8e7d1c9294ca9a0fccde288e1ec08d` |
| 31 | `instance` | [continuousSMul_quotient](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/TopologyAlgebraModuleBasicNamespaced.lean/declarations/continuoussmul-quotient.md) | 318 | `declaration-track:ea96a6d421dccaac6099da9279afbd3ed5da1a84c457085eb1d301f4290e91a9` |
| 32 | `instance` | [t3_quotient_of_isClosed](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/TopologyAlgebraModuleBasicNamespaced.lean/declarations/t3-quotient-of-isclosed.md) | 324 | `declaration-track:dab01799968a03857ae105af3cb6d8ffd826b291d749b296e44429114ea107c7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=bf2497c3e57d082e574ee79037d12e5c58dccdb60b84801a27566069c857e65a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Basic/Variant9fc73d29323175bf6ec2e23eeef24b7c610bdc55d40b63078b1bbc54897e539a.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/Basic/Variant9fc73d29323175bf6ec2e23eeef24b7c610bdc55d40b63078b1bbc54897e539a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
