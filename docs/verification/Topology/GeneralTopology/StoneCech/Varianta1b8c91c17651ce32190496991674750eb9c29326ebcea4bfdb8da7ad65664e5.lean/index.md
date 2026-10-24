# Verification target: GRWTSK.Topology.GeneralTopology.StoneCech.Varianta1b8c91c17651ce32190496991674750eb9c29326ebcea4bfdb8da7ad65664e5

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "abbaa476aba7139389c6225e698dfc7832dfad97",
  "lexical_observation_count": 34,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/StoneCech/Varianta1b8c91c17651ce32190496991674750eb9c29326ebcea4bfdb8da7ad65664e5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/StoneCech/Varianta1b8c91c17651ce32190496991674750eb9c29326ebcea4bfdb8da7ad65664e5.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/StoneCech/Varianta1b8c91c17651ce32190496991674750eb9c29326ebcea4bfdb8da7ad65664e5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `abbaa476aba7139389c6225e698dfc7832dfad97`.

Source path: `GRWTSK/Topology/GeneralTopology/StoneCech/Varianta1b8c91c17651ce32190496991674750eb9c29326ebcea4bfdb8da7ad65664e5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/StoneCech/Varianta1b8c91c17651ce32190496991674750eb9c29326ebcea4bfdb8da7ad65664e5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Bases` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.DenseEmbedding` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [ultrafilterBasis](../../../../../mathematics/Topology/GeneralTopology/StoneCech/Varianta1b8c91c17651ce32190496991674750eb9c29326ebcea4bfdb8da7ad65664e5.lean/declarations/ultrafilterbasis--ff4f277c424409c373fa3444.md) | 41 | `declaration-track:ff4f277c424409c373fa3444a8a6b34a1b35bd26a8fba6df12b86d51cb96fb27` |
| 2 | `instance` | [Ultrafilter.topologicalSpace](../../../../../mathematics/Topology/GeneralTopology/StoneCech/Varianta1b8c91c17651ce32190496991674750eb9c29326ebcea4bfdb8da7ad65664e5.lean/declarations/ultrafilter-topologicalspace--d0d4607e9dafa494f24e8d43.md) | 47 | `declaration-track:d0d4607e9dafa494f24e8d43524f346068928d6c5383258ee87557e301c8ff1e` |
| 3 | `theorem` | [ultrafilterBasis_is_basis](../../../../../mathematics/Topology/GeneralTopology/StoneCech/Varianta1b8c91c17651ce32190496991674750eb9c29326ebcea4bfdb8da7ad65664e5.lean/declarations/ultrafilterbasis-is-basis--9fe52639ee633dc73912cdd4.md) | 51 | `result-track:9fe52639ee633dc73912cdd418f7471af83a4c3548f0d48ef9af0c033de7f0e0` |
| 4 | `theorem` | [ultrafilter_isOpen_basic](../../../../../mathematics/Topology/GeneralTopology/StoneCech/Varianta1b8c91c17651ce32190496991674750eb9c29326ebcea4bfdb8da7ad65664e5.lean/declarations/ultrafilter-isopen-basic--c7720b9ccfc5b728ff6e0686.md) | 61 | `result-track:c7720b9ccfc5b728ff6e0686fb0df89a4692df6e9326cc61d5840eaa0b540a6c` |
| 5 | `theorem` | [ultrafilter_isClosed_basic](../../../../../mathematics/Topology/GeneralTopology/StoneCech/Varianta1b8c91c17651ce32190496991674750eb9c29326ebcea4bfdb8da7ad65664e5.lean/declarations/ultrafilter-isclosed-basic--0fff236b080fb16f378227a8.md) | 66 | `result-track:0fff236b080fb16f378227a8d8ce1c972e1746db9493b4e06cd3a66c40c6b8ba` |
| 6 | `theorem` | [ultrafilter_converges_iff](../../../../../mathematics/Topology/GeneralTopology/StoneCech/Varianta1b8c91c17651ce32190496991674750eb9c29326ebcea4bfdb8da7ad65664e5.lean/declarations/ultrafilter-converges-iff--8c91bb25a63d56ad26ace6ef.md) | 75 | `result-track:8c91bb25a63d56ad26ace6efb4be4adffd29be70bed2a7388d55bb1f556b7e7b` |
| 7 | `instance` | [ultrafilter_compact](../../../../../mathematics/Topology/GeneralTopology/StoneCech/Varianta1b8c91c17651ce32190496991674750eb9c29326ebcea4bfdb8da7ad65664e5.lean/declarations/ultrafilter-compact--4e85de7ae6684ec8a7c8ba7b.md) | 88 | `declaration-track:4e85de7ae6684ec8a7c8ba7b9c2fdf01c6fe0326dda889ae5b8989a9d512a7c1` |
| 8 | `instance` | [Ultrafilter.t2Space](../../../../../mathematics/Topology/GeneralTopology/StoneCech/Varianta1b8c91c17651ce32190496991674750eb9c29326ebcea4bfdb8da7ad65664e5.lean/declarations/ultrafilter-t2space--32fcc3e6bf518ead866ac88f.md) | 93 | `declaration-track:32fcc3e6bf518ead866ac88fcca599d5e9b6a82e715df55196e94c149e125862` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/StoneCech/Varianta1b8c91c17651ce32190496991674750eb9c29326ebcea4bfdb8da7ad65664e5.lean/declarations/instance--75f0c2cb86bb0d361243d35e.md) | 100 | `declaration-track:75f0c2cb86bb0d361243d35e5ea7a96993387a2c4ecbc973dc80256c5b744a23` |
| 10 | `theorem` | [Ultrafilter.tendsto_pure_self](../../../../../mathematics/Topology/GeneralTopology/StoneCech/Varianta1b8c91c17651ce32190496991674750eb9c29326ebcea4bfdb8da7ad65664e5.lean/declarations/ultrafilter-tendsto-pure-self--1395baa20b5cce712e036a36.md) | 112 | `result-track:1395baa20b5cce712e036a362bf2c9fa50f0b9b1665d451a5f120f875c939ca9` |
| 11 | `theorem` | [ultrafilter_comap_pure_nhds](../../../../../mathematics/Topology/GeneralTopology/StoneCech/Varianta1b8c91c17651ce32190496991674750eb9c29326ebcea4bfdb8da7ad65664e5.lean/declarations/ultrafilter-comap-pure-nhds--a81eb5d6075dd53bfc8c61fa.md) | 118 | `result-track:a81eb5d6075dd53bfc8c61fa77fd7fb4fe4cfa04db2326e441dd7062d4394776` |
| 12 | `theorem` | [ultrafilter_pure_injective](../../../../../mathematics/Topology/GeneralTopology/StoneCech/Varianta1b8c91c17651ce32190496991674750eb9c29326ebcea4bfdb8da7ad65664e5.lean/declarations/ultrafilter-pure-injective--6b72a31f7d8221cb8eda69cd.md) | 130 | `result-track:6b72a31f7d8221cb8eda69cdead4cead046ef730378080de06d569d648efe33d` |
| 13 | `theorem` | [denseRange_pure](../../../../../mathematics/Topology/GeneralTopology/StoneCech/Varianta1b8c91c17651ce32190496991674750eb9c29326ebcea4bfdb8da7ad65664e5.lean/declarations/denserange-pure--591c551d13a1c7963acdeb78.md) | 140 | `result-track:591c551d13a1c7963acdeb78b96e2a99181d6c7ad04f729887db6bae09a5ab84` |
| 14 | `theorem` | [induced_topology_pure](../../../../../mathematics/Topology/GeneralTopology/StoneCech/Varianta1b8c91c17651ce32190496991674750eb9c29326ebcea4bfdb8da7ad65664e5.lean/declarations/induced-topology-pure--584af74c5516bb58f193d2ea.md) | 146 | `result-track:584af74c5516bb58f193d2ea0eee4c7aac72676243fd23713993ac151d30c32f` |
| 15 | `theorem` | [denseInducing_pure](../../../../../mathematics/Topology/GeneralTopology/StoneCech/Varianta1b8c91c17651ce32190496991674750eb9c29326ebcea4bfdb8da7ad65664e5.lean/declarations/denseinducing-pure--0fee34a1d30eeb069e38dc58.md) | 155 | `result-track:0fee34a1d30eeb069e38dc582532d583cba8abba4b8f8b6ec74174d8f26aa4ef` |
| 16 | `theorem` | [denseEmbedding_pure](../../../../../mathematics/Topology/GeneralTopology/StoneCech/Varianta1b8c91c17651ce32190496991674750eb9c29326ebcea4bfdb8da7ad65664e5.lean/declarations/denseembedding-pure--db2edd6df86f73f6b840abe2.md) | 162 | `result-track:db2edd6df86f73f6b840abe2cfb9f5abf65c8b17384ea57e6a1891199fd38511` |
| 17 | `def` | [Ultrafilter.extend](../../../../../mathematics/Topology/GeneralTopology/StoneCech/Varianta1b8c91c17651ce32190496991674750eb9c29326ebcea4bfdb8da7ad65664e5.lean/declarations/ultrafilter-extend--832ed7c458f1ed810bd655e2.md) | 180 | `declaration-track:832ed7c458f1ed810bd655e2fcd2c74fa0b5a843066b3417a57a2950c7a4ae0d` |
| 18 | `theorem` | [ultrafilter_extend_extends](../../../../../mathematics/Topology/GeneralTopology/StoneCech/Varianta1b8c91c17651ce32190496991674750eb9c29326ebcea4bfdb8da7ad65664e5.lean/declarations/ultrafilter-extend-extends--657ef8d4f152be5b4963cacb.md) | 187 | `result-track:657ef8d4f152be5b4963cacb7d230f873c27aa6582af0b4bcae389499a54aaaa` |
| 19 | `theorem` | [continuous_ultrafilter_extend](../../../../../mathematics/Topology/GeneralTopology/StoneCech/Varianta1b8c91c17651ce32190496991674750eb9c29326ebcea4bfdb8da7ad65664e5.lean/declarations/continuous-ultrafilter-extend--6f676ce175fdcd0993c156d2.md) | 195 | `result-track:6f676ce175fdcd0993c156d2768bbf249bae85fc95aa439729e9f9ddfd9a2870` |
| 20 | `theorem` | [ultrafilter_extend_eq_iff](../../../../../mathematics/Topology/GeneralTopology/StoneCech/Varianta1b8c91c17651ce32190496991674750eb9c29326ebcea4bfdb8da7ad65664e5.lean/declarations/ultrafilter-extend-eq-iff--7d37eaf3e0c64d1226221542.md) | 208 | `result-track:7d37eaf3e0c64d1226221542cbe61857fe582cd3e92dbf64724881c93da821a0` |
| 21 | `instance` | [stoneCechSetoid](../../../../../mathematics/Topology/GeneralTopology/StoneCech/Varianta1b8c91c17651ce32190496991674750eb9c29326ebcea4bfdb8da7ad65664e5.lean/declarations/stonecechsetoid--c92bbe64a3e4bc9091964e56.md) | 240 | `declaration-track:c92bbe64a3e4bc9091964e56c01a326b0abbfe2bcb4b885c6846f6d829c9ae0f` |
| 22 | `def` | [StoneCech](../../../../../mathematics/Topology/GeneralTopology/StoneCech/Varianta1b8c91c17651ce32190496991674750eb9c29326ebcea4bfdb8da7ad65664e5.lean/declarations/stonecech--3f9af40ff61e2f4ace03d00b.md) | 252 | `declaration-track:3f9af40ff61e2f4ace03d00b4bc8c221cab370abd8d89d8f68c396771344a44d` |
| 23 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/StoneCech/Varianta1b8c91c17651ce32190496991674750eb9c29326ebcea4bfdb8da7ad65664e5.lean/declarations/instance--2c28a2335d66e832f9c3f880.md) | 258 | `declaration-track:2c28a2335d66e832f9c3f8803cb72de997e5fd2073cc4d229d7f0bd95180aad9` |
| 24 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/StoneCech/Varianta1b8c91c17651ce32190496991674750eb9c29326ebcea4bfdb8da7ad65664e5.lean/declarations/instance--298a94e61553f4c754e208ac.md) | 260 | `declaration-track:298a94e61553f4c754e208ac6cd63eff92e507a3832616f65fe618b61d256985` |
| 25 | `def` | [stoneCechUnit](../../../../../mathematics/Topology/GeneralTopology/StoneCech/Varianta1b8c91c17651ce32190496991674750eb9c29326ebcea4bfdb8da7ad65664e5.lean/declarations/stonecechunit--999b6961af50e93aae1bfe87.md) | 263 | `declaration-track:999b6961af50e93aae1bfe877c6386c67616572d6204efb2c51f42b6a4a3f8e0` |
| 26 | `theorem` | [denseRange_stoneCechUnit](../../../../../mathematics/Topology/GeneralTopology/StoneCech/Varianta1b8c91c17651ce32190496991674750eb9c29326ebcea4bfdb8da7ad65664e5.lean/declarations/denserange-stonecechunit--6428d585fa7a2bb690bf5b80.md) | 269 | `result-track:6428d585fa7a2bb690bf5b80bc9cfa9411590bbd92cb3d1f2b3c35735b0f0242` |
| 27 | `def` | [stoneCechExtend](../../../../../mathematics/Topology/GeneralTopology/StoneCech/Varianta1b8c91c17651ce32190496991674750eb9c29326ebcea4bfdb8da7ad65664e5.lean/declarations/stonecechextend--22a112dda727b83d13be28d2.md) | 286 | `declaration-track:22a112dda727b83d13be28d2a741402dfe6984b395e0f45bcef90023a66e3e73` |
| 28 | `theorem` | [stoneCechExtend_extends](../../../../../mathematics/Topology/GeneralTopology/StoneCech/Varianta1b8c91c17651ce32190496991674750eb9c29326ebcea4bfdb8da7ad65664e5.lean/declarations/stonecechextend-extends--93d9ea2baff95fdbc4c5e0f3.md) | 290 | `result-track:93d9ea2baff95fdbc4c5e0f34df8084f27efbb7a8ad2ca05ef0eb45e6661d174` |
| 29 | `theorem` | [continuous_stoneCechExtend](../../../../../mathematics/Topology/GeneralTopology/StoneCech/Varianta1b8c91c17651ce32190496991674750eb9c29326ebcea4bfdb8da7ad65664e5.lean/declarations/continuous-stonecechextend--065c4c3be5db795d3d7322c2.md) | 294 | `result-track:065c4c3be5db795d3d7322c2ae25565033dede74ad6cf5e4d8740b2b51665873` |
| 30 | `theorem` | [stoneCech_hom_ext](../../../../../mathematics/Topology/GeneralTopology/StoneCech/Varianta1b8c91c17651ce32190496991674750eb9c29326ebcea4bfdb8da7ad65664e5.lean/declarations/stonecech-hom-ext--4158f10b5753ef1a2a701934.md) | 298 | `result-track:4158f10b5753ef1a2a701934d453fbafc0873f255476256d3995bf9bfdc003fe` |
| 31 | `theorem` | [convergent_eqv_pure](../../../../../mathematics/Topology/GeneralTopology/StoneCech/Varianta1b8c91c17651ce32190496991674750eb9c29326ebcea4bfdb8da7ad65664e5.lean/declarations/convergent-eqv-pure--a163bcc05fa42fd6a4f3b88c.md) | 307 | `result-track:a163bcc05fa42fd6a4f3b88ca86ba9250ffd5f0bb940295f7bb594c0b4fd6923` |
| 32 | `theorem` | [continuous_stoneCechUnit](../../../../../mathematics/Topology/GeneralTopology/StoneCech/Varianta1b8c91c17651ce32190496991674750eb9c29326ebcea4bfdb8da7ad65664e5.lean/declarations/continuous-stonecechunit--873144ac347f5179ee216490.md) | 316 | `result-track:873144ac347f5179ee2164905ff2a1f692d79f85d801ae326ca71061b6c6df1a` |
| 33 | `instance` | [StoneCech.t2Space](../../../../../mathematics/Topology/GeneralTopology/StoneCech/Varianta1b8c91c17651ce32190496991674750eb9c29326ebcea4bfdb8da7ad65664e5.lean/declarations/stonecech-t2space--aba6a66911fec8d1ce1b8230.md) | 326 | `declaration-track:aba6a66911fec8d1ce1b8230d29c5593092daea4184b4ed40a8350ebc5094189` |
| 34 | `instance` | [StoneCech.compactSpace](../../../../../mathematics/Topology/GeneralTopology/StoneCech/Varianta1b8c91c17651ce32190496991674750eb9c29326ebcea4bfdb8da7ad65664e5.lean/declarations/stonecech-compactspace--95db6d54e8ba591c7f200a74.md) | 339 | `declaration-track:95db6d54e8ba591c7f200a744f384f8c7456c9e771328ca3a4fd94e16d72b099` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
