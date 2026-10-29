# Verification target: Filter Basis Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0559a18212a10cb4bea45bb47c1d18017024e5f7",
  "lexical_observation_count": 38,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/FilterBasis/Variantb51d11db513ef59ce82370e3a31a6dcd96f2909d265b25f3f6096e9eff054af6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/FilterBasisNamespaced.lean/index.md) · [Full source](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/FilterBasisNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0559a18212a10cb4bea45bb47c1d18017024e5f7`.

Source path: `GRWTSK/Topology/FilterBasis/Variantb51d11db513ef59ce82370e3a31a6dcd96f2909d265b25f3f6096e9eff054af6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/FilterBasis/Variantb51d11db513ef59ce82370e3a31a6dcd96f2909d265b25f3f6096e9eff054af6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Algebra.Module.Basic` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [GroupFilterBasis](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/FilterBasisNamespaced.lean/declarations/groupfilterbasis.md) | 55 | `declaration-track:f4f3017373d1035c04286ceebf436e7dce152abf60b6fafb880686dcdec15724` |
| 2 | `class` | [AddGroupFilterBasis](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/FilterBasisNamespaced.lean/declarations/addgroupfilterbasis.md) | 65 | `declaration-track:75230e8593602a5cfb66e63bf968dc303eefab4f1b867b424220a3d355acaea6` |
| 3 | `def` | [groupFilterBasisOfComm](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/FilterBasisNamespaced.lean/declarations/groupfilterbasisofcomm.md) | 76 | `declaration-track:92c8f0211767bfd47a604809cc18b23d0a76bbb5981df3e3a8e49f8f3ebc64c2` |
| 4 | `instance` | [(anonymous)](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/FilterBasisNamespaced.lean/declarations/instance-source-edition-5.md) | 93 | `declaration-track:c2e808c1e09edcae84cf80c459c093e11f8db526742842c39f4db00f77ed54ef` |
| 5 | `theorem` | [one](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/FilterBasisNamespaced.lean/declarations/one.md) | 97 | `result-track:901cef90dcd9ae79f88d1819c53a7bd1d6493ba549bcdf70b93d4025f2d44052` |
| 6 | `theorem` | [mul](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/FilterBasisNamespaced.lean/declarations/mul.md) | 101 | `result-track:3f80f93ece5f9c8c943ae5980ace0c940c11e06399c83bd34a2b4918f7a11a25` |
| 7 | `theorem` | [inv](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/FilterBasisNamespaced.lean/declarations/inv.md) | 105 | `result-track:7a9082ff00366b0157095ea5cfae9c1c8bc44e3dfc6038bb9d0321d1b8b2e5b7` |
| 8 | `theorem` | [conj](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/FilterBasisNamespaced.lean/declarations/conj.md) | 109 | `result-track:c8fcb9610dc7cae325a990324e979c98c2ca6041a48a6beaa1a05bd46da2880f` |
| 9 | `instance` | [(anonymous)](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/FilterBasisNamespaced.lean/declarations/instance-source-edition-7.md) | 116 | `declaration-track:e4baa5db9559614aa59338e66c7a30b8f22a671f67a2515184c0f55b95773ecd` |
| 10 | `theorem` | [subset_mul_self](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/FilterBasisNamespaced.lean/declarations/subset-mul-self.md) | 127 | `result-track:495df337741e24e7fdc5c3708a50f258f5a9f648eff79d28100f28d959e8ae64` |
| 11 | `def` | [N](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/FilterBasisNamespaced.lean/declarations/n.md) | 132 | `declaration-track:83e4989064cdd2c4cafadcf5b46a20c836275916a12c16793253a10159b8cd1d` |
| 12 | `theorem` | [N_one](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/FilterBasisNamespaced.lean/declarations/n-one.md) | 136 | `result-track:239acc6d0696df379cbc6204bf35868855477fef3e8a3086776743dbacb5bb14` |
| 13 | `theorem` | [hasBasis](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/FilterBasisNamespaced.lean/declarations/hasbasis.md) | 140 | `result-track:d7a7a78b097527bf463db31f2ee25703a364e4e1fc55b4525dfbed6c55e7767b` |
| 14 | `def` | [topology](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/FilterBasisNamespaced.lean/declarations/topology.md) | 146 | `declaration-track:37b2fcfdaafc672d01431ffb51a6b16babb5916f64d2a0a6d596d7cd52549dab` |
| 15 | `theorem` | [nhds_eq](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/FilterBasisNamespaced.lean/declarations/nhds-eq.md) | 150 | `result-track:6d9c7e8e41e3ceba3bf3fb0eb63285dd36654ed324fd655bbcd33b6864f46275` |
| 16 | `theorem` | [nhds_one_eq](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/FilterBasisNamespaced.lean/declarations/nhds-one-eq.md) | 165 | `result-track:a44b295f45c8fe222dab0c0243d31c34ab5fd1d92dc72fbdb7f45ce412a175ff` |
| 17 | `theorem` | [nhds_hasBasis](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/FilterBasisNamespaced.lean/declarations/nhds-hasbasis.md) | 172 | `result-track:a1d4c58985072ee46b82cdf1f41e3c5fddb4e4a4dcfb5f889e85c81edf30c740` |
| 18 | `theorem` | [nhds_one_hasBasis](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/FilterBasisNamespaced.lean/declarations/nhds-one-hasbasis.md) | 178 | `result-track:97f1ce59e7a0f2538c489e838ae5e757b6e6a8270751dd021e9a4a250f8aeaac` |
| 19 | `theorem` | [mem_nhds_one](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/FilterBasisNamespaced.lean/declarations/mem-nhds-one.md) | 184 | `result-track:b899f8b326a0b23dbfa60280020ab56cefddeb29e437a277517f3cead4aa2ef7` |
| 20 | `instance` | [(anonymous)](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/FilterBasisNamespaced.lean/declarations/instance-source-edition-4.md) | 194 | `declaration-track:937b91f1434bca6aa5376ff7f67ce3d2011bdfeed6443409c8359e275960ffce` |
| 21 | `class` | [RingFilterBasis](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/FilterBasisNamespaced.lean/declarations/ringfilterbasis.md) | 224 | `declaration-track:f7e116464065a2fe6b6a61362392f69084a8e01994a8caad7619302a1c98fc5f` |
| 22 | `instance` | [(anonymous)](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/FilterBasisNamespaced.lean/declarations/instance-source-edition-2.md) | 233 | `declaration-track:5812698d77acc0b62c08169004255bc43d06d7488ad7831ad4b34b4140203645` |
| 23 | `theorem` | [mul](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/FilterBasisNamespaced.lean/declarations/mul-source-edition-2.md) | 236 | `result-track:acf6c3407aa91e5676abe543fef5944bd6b8536535c28c0736200d4c7e48d219` |
| 24 | `theorem` | [mul_left](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/FilterBasisNamespaced.lean/declarations/mul-left.md) | 239 | `result-track:f2850982fe95f80b4b46c0abd488f696006331ad34a97c4028083af540f87a27` |
| 25 | `theorem` | [mul_right](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/FilterBasisNamespaced.lean/declarations/mul-right.md) | 242 | `result-track:b6a31a07979bfd29e126474ddfc7a414c9d521e379524a3d442dbe99b40f8986` |
| 26 | `def` | [topology](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/FilterBasisNamespaced.lean/declarations/topology-source-edition-3.md) | 247 | `declaration-track:74e08c7ece5b6f07b630faa19b9951a83e05c02a488eeaac5ee61be82e0c43b5` |
| 27 | `instance` | [(anonymous)](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/FilterBasisNamespaced.lean/declarations/instance-source-edition-3.md) | 252 | `declaration-track:5a847548bd6fe151a5c2037e977343d327b96fafa36e9960d697917794d85984` |
| 28 | `structure` | [ModuleFilterBasis](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/FilterBasisNamespaced.lean/declarations/modulefilterbasis.md) | 282 | `declaration-track:3400603ec28799f025fb88877c187a11c1d571669cbcd817ac65e159afc11e00` |
| 29 | `instance` | [GroupFilterBasis.hasMem](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/FilterBasisNamespaced.lean/declarations/groupfilterbasis-hasmem.md) | 293 | `declaration-track:0266a8e6aa646f7638bdd7e448ed1b0c623f8e3fcedb83e0cbb2a3b556d81723` |
| 30 | `theorem` | [smul](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/FilterBasisNamespaced.lean/declarations/smul.md) | 296 | `result-track:d29206aa380f8224fe09fac91dfe2f545ff23a055c15237b2adb282c3722a018` |
| 31 | `theorem` | [smul_left](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/FilterBasisNamespaced.lean/declarations/smul-left.md) | 299 | `result-track:f9318d1f9c47ab15e4c77744824d5dcbdd3d08b7df460ce8effc11fdbd5a51d1` |
| 32 | `theorem` | [smul_right](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/FilterBasisNamespaced.lean/declarations/smul-right.md) | 302 | `result-track:80fbbe187acb4fb7788f6089a6eef22c8e7a861db2e8b13909f20b20f80fee77` |
| 33 | `instance` | [(anonymous)](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/FilterBasisNamespaced.lean/declarations/instance.md) | 307 | `declaration-track:4e96cecef79936c0d10c84ecd52179b6730a02e498a2d6d9209988975087f63b` |
| 34 | `def` | [topology](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/FilterBasisNamespaced.lean/declarations/topology-source-edition-4.md) | 328 | `declaration-track:de797fbaadfa5a33f82601d62517b23b61459b9cbc12eacb72245d1a9dfe4f46` |
| 35 | `def` | [topology'](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/FilterBasisNamespaced.lean/declarations/topology-source-edition-2.md) | 334 | `declaration-track:701794db0d11d0e4788a5a04a9cc059e41e2b92e7225d9230a320a4357dc234b` |
| 36 | `theorem` | [Filter Basis Namespaced](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/FilterBasisNamespaced.lean/declarations/of-basis-zero.md) | 347 | `result-track:8f4949a3b045905343d21f826ffb6f91e5164927b36bd0cee2a3f90e6b8cb00b` |
| 37 | `instance` | [(anonymous)](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/FilterBasisNamespaced.lean/declarations/instance-source-edition-6.md) | 371 | `declaration-track:cb4954f8eaf65a8678e1e2a0c755d4ba010a8181e4a417427ebb15b39062c988` |
| 38 | `def` | [ofBases](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/FilterBasisNamespaced.lean/declarations/ofbases.md) | 381 | `declaration-track:5019a73d9ca13ac9d71e23cbfbd8fdd70a255a4949034b3d8ed0d7a8a081e369` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b71d579defc2b59167795464b7a6d10e39a2b90642005dd3e1687b253ee983fd -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/FilterBasis/Variantb51d11db513ef59ce82370e3a31a6dcd96f2909d265b25f3f6096e9eff054af6.lean","GRWTSK/_verification/specifications/Topology/FilterBasis/Variantb51d11db513ef59ce82370e3a31a6dcd96f2909d265b25f3f6096e9eff054af6.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
