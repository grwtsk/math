# Verification target: GRWTSK.Topology.GeneralTopology.Topology.Variant51feb7c9429248bf6a8fc43c4fd2d661fb3219e0fe732f70a900d14cfc24a08f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0578d05498a88180488be21ce6a5a96f96d9defd",
  "lexical_observation_count": 49,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Topology/Variant51feb7c9429248bf6a8fc43c4fd2d661fb3219e0fe732f70a900d14cfc24a08f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Topology/Variant51feb7c9429248bf6a8fc43c4fd2d661fb3219e0fe732f70a900d14cfc24a08f.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Topology/Variant51feb7c9429248bf6a8fc43c4fd2d661fb3219e0fe732f70a900d14cfc24a08f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0578d05498a88180488be21ce6a5a96f96d9defd`.

Source path: `GRWTSK/Topology/GeneralTopology/Topology/Variant51feb7c9429248bf6a8fc43c4fd2d661fb3219e0fe732f70a900d14cfc24a08f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Topology/Variant51feb7c9429248bf6a8fc43c4fd2d661fb3219e0fe732f70a900d14cfc24a08f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Convex.Combination` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Convex.Strict` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Affine` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Module.Basic` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.MetricSpace.ProperSpace.Real` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.UnitInterval` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [closedBall_eq_segment](../../../../../mathematics/Topology/GeneralTopology/Topology/Variant51feb7c9429248bf6a8fc43c4fd2d661fb3219e0fe732f70a900d14cfc24a08f.lean/declarations/closedball-eq-segment--5fb513305131fc0ac29df42b.md) | 35 | `result-track:5fb513305131fc0ac29df42bdb50634f6b63ec38eaa27c5753fbf70d3151ac4e` |
| 2 | `lemma` | [ball_eq_openSegment](../../../../../mathematics/Topology/GeneralTopology/Topology/Variant51feb7c9429248bf6a8fc43c4fd2d661fb3219e0fe732f70a900d14cfc24a08f.lean/declarations/ball-eq-opensegment--ba0d7a3dbaf176a24749de91.md) | 38 | `result-track:ba0d7a3dbaf176a24749de913db717e1dcff59bee1946a157c2449b84d8d3f0c` |
| 3 | `theorem` | [convex_iff_isPreconnected](../../../../../mathematics/Topology/GeneralTopology/Topology/Variant51feb7c9429248bf6a8fc43c4fd2d661fb3219e0fe732f70a900d14cfc24a08f.lean/declarations/convex-iff-ispreconnected--63668802c2a99849aa6c3a82.md) | 41 | `result-track:63668802c2a99849aa6c3a82f4fd2091fff0420648b3ccbb3314727dfaf02f88` |
| 4 | `theorem` | [stdSimplex_subset_closedBall](../../../../../mathematics/Topology/GeneralTopology/Topology/Variant51feb7c9429248bf6a8fc43c4fd2d661fb3219e0fe732f70a900d14cfc24a08f.lean/declarations/stdsimplex-subset-closedball--7d3ffad81ef4d4dadf90ab0d.md) | 56 | `result-track:7d3ffad81ef4d4dadf90ab0d26cd627d04dcce82b5f23e910c419e1a3e85e735` |
| 5 | `theorem` | [bounded_stdSimplex](../../../../../mathematics/Topology/GeneralTopology/Topology/Variant51feb7c9429248bf6a8fc43c4fd2d661fb3219e0fe732f70a900d14cfc24a08f.lean/declarations/bounded-stdsimplex--0ef76872ab44e7d0980d89e4.md) | 65 | `result-track:0ef76872ab44e7d0980d89e4c3aa49c9de4efa7b4530ad0c83f137e7d75288da` |
| 6 | `theorem` | [isClosed_stdSimplex](../../../../../mathematics/Topology/GeneralTopology/Topology/Variant51feb7c9429248bf6a8fc43c4fd2d661fb3219e0fe732f70a900d14cfc24a08f.lean/declarations/isclosed-stdsimplex--fa6639a49f3bf64a1ffe1ba5.md) | 69 | `result-track:fa6639a49f3bf64a1ffe1ba51a63b9b1d3f2e11bfc49f245993e49f9bb7fd2d1` |
| 7 | `theorem` | [isCompact_stdSimplex](../../../../../mathematics/Topology/GeneralTopology/Topology/Variant51feb7c9429248bf6a8fc43c4fd2d661fb3219e0fe732f70a900d14cfc24a08f.lean/declarations/iscompact-stdsimplex--be9bbe48a3c951bd59830de6.md) | 75 | `result-track:be9bbe48a3c951bd59830de6cd0b0a4ac8995ed9bb56998532e0f49be9875750` |
| 8 | `instance` | [stdSimplex.instCompactSpace_coe](../../../../../mathematics/Topology/GeneralTopology/Topology/Variant51feb7c9429248bf6a8fc43c4fd2d661fb3219e0fe732f70a900d14cfc24a08f.lean/declarations/stdsimplex-instcompactspace-coe--a21f2c9ad961b8abd26b1a1c.md) | 78 | `declaration-track:a21f2c9ad961b8abd26b1a1c0252fae9a206d50526d8e40b2d6b7d17c31656a2` |
| 9 | `def` | [stdSimplexHomeomorphUnitInterval](../../../../../mathematics/Topology/GeneralTopology/Topology/Variant51feb7c9429248bf6a8fc43c4fd2d661fb3219e0fe732f70a900d14cfc24a08f.lean/declarations/stdsimplexhomeomorphunitinterval--1ef6ec7218af546ed85df884.md) | 84 | `declaration-track:1ef6ec7218af546ed85df884a00fd3179e614be00647451ce4e30f941474536a` |
| 10 | `theorem` | [segment_subset_closure_openSegment](../../../../../mathematics/Topology/GeneralTopology/Topology/Variant51feb7c9429248bf6a8fc43c4fd2d661fb3219e0fe732f70a900d14cfc24a08f.lean/declarations/segment-subset-closure-opensegment--5cfc4f08efe9d4e70360b955.md) | 102 | `result-track:5cfc4f08efe9d4e70360b955c03b8976500d0f0f014ccff7da6bc5e77681f445` |
| 11 | `theorem` | [closure_openSegment](../../../../../mathematics/Topology/GeneralTopology/Topology/Variant51feb7c9429248bf6a8fc43c4fd2d661fb3219e0fe732f70a900d14cfc24a08f.lean/declarations/closure-opensegment--6f0af1e1fff2f982df1700d2.md) | 116 | `result-track:6f0af1e1fff2f982df1700d2a6bfc652554b45b8705b56a304041e7d3f36e34c` |
| 12 | `theorem` | [Convex.combo_interior_closure_subset_interior](../../../../../mathematics/Topology/GeneralTopology/Topology/Variant51feb7c9429248bf6a8fc43c4fd2d661fb3219e0fe732f70a900d14cfc24a08f.lean/declarations/convex-combo-interior-closure-subset-interior--b83b799f5d431d6b5621aad7.md) | 131 | `result-track:b83b799f5d431d6b5621aad7e5adf5970784e995f0f9a933b624355bc00f3fee` |
| 13 | `theorem` | [Convex.combo_interior_self_subset_interior](../../../../../mathematics/Topology/GeneralTopology/Topology/Variant51feb7c9429248bf6a8fc43c4fd2d661fb3219e0fe732f70a900d14cfc24a08f.lean/declarations/convex-combo-interior-self-subset-interior--b059f07d4bf6af4eb51dd36b.md) | 143 | `result-track:b059f07d4bf6af4eb51dd36b2a56ef9cc3f4f8335d99ec2ea0ad5e783d3951f9` |
| 14 | `theorem` | [Convex.combo_closure_interior_subset_interior](../../../../../mathematics/Topology/GeneralTopology/Topology/Variant51feb7c9429248bf6a8fc43c4fd2d661fb3219e0fe732f70a900d14cfc24a08f.lean/declarations/convex-combo-closure-interior-subset-interior--199e757932db87e18b9cb403.md) | 152 | `result-track:199e757932db87e18b9cb403eb6494d54bb43f096ebdfece41354fccb2683b1a` |
| 15 | `theorem` | [Convex.combo_self_interior_subset_interior](../../../../../mathematics/Topology/GeneralTopology/Topology/Variant51feb7c9429248bf6a8fc43c4fd2d661fb3219e0fe732f70a900d14cfc24a08f.lean/declarations/convex-combo-self-interior-subset-interior--8e2ea270950ed9f39e75e665.md) | 159 | `result-track:8e2ea270950ed9f39e75e6654968ba150b16eaa5e6bfb6ffa882e1dfebc82c9e` |
| 16 | `theorem` | [Convex.combo_interior_closure_mem_interior](../../../../../mathematics/Topology/GeneralTopology/Topology/Variant51feb7c9429248bf6a8fc43c4fd2d661fb3219e0fe732f70a900d14cfc24a08f.lean/declarations/convex-combo-interior-closure-mem-interior--cbb8c287ae2634d8c7f35854.md) | 164 | `result-track:cbb8c287ae2634d8c7f358542417eefa0dd52ecc6b384f8080093e835f9941f4` |
| 17 | `theorem` | [Convex.combo_interior_self_mem_interior](../../../../../mathematics/Topology/GeneralTopology/Topology/Variant51feb7c9429248bf6a8fc43c4fd2d661fb3219e0fe732f70a900d14cfc24a08f.lean/declarations/convex-combo-interior-self-mem-interior--fd8b3b2f93edcb4bf3fa956a.md) | 170 | `result-track:fd8b3b2f93edcb4bf3fa956a08959e3c47b1a3dbcd7c1c961c381182c8fbf6e6` |
| 18 | `theorem` | [Convex.combo_closure_interior_mem_interior](../../../../../mathematics/Topology/GeneralTopology/Topology/Variant51feb7c9429248bf6a8fc43c4fd2d661fb3219e0fe732f70a900d14cfc24a08f.lean/declarations/convex-combo-closure-interior-mem-interior--41b395a5fbcf220908972916.md) | 175 | `result-track:41b395a5fbcf2209089729163eed25b3b3e4072aad80e0f198d07dd20cfe112a` |
| 19 | `theorem` | [Convex.combo_self_interior_mem_interior](../../../../../mathematics/Topology/GeneralTopology/Topology/Variant51feb7c9429248bf6a8fc43c4fd2d661fb3219e0fe732f70a900d14cfc24a08f.lean/declarations/convex-combo-self-interior-mem-interior--63ff71ecf11f54c87f0cfb40.md) | 181 | `result-track:63ff71ecf11f54c87f0cfb4065d338973ec7bdbdceea564f3ab2b00f979fae4e` |
| 20 | `theorem` | [Convex.openSegment_interior_closure_subset_interior](../../../../../mathematics/Topology/GeneralTopology/Topology/Variant51feb7c9429248bf6a8fc43c4fd2d661fb3219e0fe732f70a900d14cfc24a08f.lean/declarations/convex-opensegment-interior-closure-subset-interior--674fe5af15ce7c0603056e99.md) | 186 | `result-track:674fe5af15ce7c0603056e99c0620659c64e7ca44bdca9c3af7a97d21ebfeb83` |
| 21 | `theorem` | [Convex.openSegment_interior_self_subset_interior](../../../../../mathematics/Topology/GeneralTopology/Topology/Variant51feb7c9429248bf6a8fc43c4fd2d661fb3219e0fe732f70a900d14cfc24a08f.lean/declarations/convex-opensegment-interior-self-subset-interior--704941beebe0d5d7ed427745.md) | 191 | `result-track:704941beebe0d5d7ed4277457ba0bbdac088abd9556278daf3e0245f4ca03d9e` |
| 22 | `theorem` | [Convex.openSegment_closure_interior_subset_interior](../../../../../mathematics/Topology/GeneralTopology/Topology/Variant51feb7c9429248bf6a8fc43c4fd2d661fb3219e0fe732f70a900d14cfc24a08f.lean/declarations/convex-opensegment-closure-interior-subset-interior--7005213f1f9e04151c0bc657.md) | 195 | `result-track:7005213f1f9e04151c0bc657dd5c2d9617c8eb701d3850806f878b43fcf00b0a` |
| 23 | `theorem` | [Convex.openSegment_self_interior_subset_interior](../../../../../mathematics/Topology/GeneralTopology/Topology/Variant51feb7c9429248bf6a8fc43c4fd2d661fb3219e0fe732f70a900d14cfc24a08f.lean/declarations/convex-opensegment-self-interior-subset-interior--0695febb26be51a6edcc7da6.md) | 200 | `result-track:0695febb26be51a6edcc7da631df1f4242f7e9d9acbb726a1bfdbc9d65148632` |
| 24 | `theorem` | [Convex.add_smul_sub_mem_interior'](../../../../../mathematics/Topology/GeneralTopology/Topology/Variant51feb7c9429248bf6a8fc43c4fd2d661fb3219e0fe732f70a900d14cfc24a08f.lean/declarations/convex-add-smul-sub-mem-interior--2d961ac95d752ebbfe0aa762.md) | 210 | `result-track:2d961ac95d752ebbfe0aa76204e3afc088f44b66a50c6a06dac4bde56eb6d614` |
| 25 | `theorem` | [Convex.add_smul_sub_mem_interior](../../../../../mathematics/Topology/GeneralTopology/Topology/Variant51feb7c9429248bf6a8fc43c4fd2d661fb3219e0fe732f70a900d14cfc24a08f.lean/declarations/convex-add-smul-sub-mem-interior--062f057a0e93b4c61c556e6a.md) | 218 | `result-track:062f057a0e93b4c61c556e6a87118203078b197167a58c71e243a67a323b97b1` |
| 26 | `theorem` | [Convex.add_smul_mem_interior'](../../../../../mathematics/Topology/GeneralTopology/Topology/Variant51feb7c9429248bf6a8fc43c4fd2d661fb3219e0fe732f70a900d14cfc24a08f.lean/declarations/convex-add-smul-mem-interior--2d03486389272dc1a6cda65e.md) | 223 | `result-track:2d03486389272dc1a6cda65e8357f2e8152c1e2870bdd48e6f41c2106dac4c36` |
| 27 | `theorem` | [Convex.add_smul_mem_interior](../../../../../mathematics/Topology/GeneralTopology/Topology/Variant51feb7c9429248bf6a8fc43c4fd2d661fb3219e0fe732f70a900d14cfc24a08f.lean/declarations/convex-add-smul-mem-interior--0d6f56ff1d71bd1c2ef7b0e8.md) | 228 | `result-track:0d6f56ff1d71bd1c2ef7b0e877c4433788169ec8661376753da82afef3efa07f` |
| 28 | `theorem` | [Convex.interior](../../../../../mathematics/Topology/GeneralTopology/Topology/Variant51feb7c9429248bf6a8fc43c4fd2d661fb3219e0fe732f70a900d14cfc24a08f.lean/declarations/convex-interior--7ba552fbe35f38cab6b36199.md) | 235 | `result-track:7ba552fbe35f38cab6b36199f873af65f046a55c16a35587eb10a8d67cc004ef` |
| 29 | `theorem` | [Convex.closure](../../../../../mathematics/Topology/GeneralTopology/Topology/Variant51feb7c9429248bf6a8fc43c4fd2d661fb3219e0fe732f70a900d14cfc24a08f.lean/declarations/convex-closure--b5641e20640d8f312b2119d3.md) | 241 | `result-track:b5641e20640d8f312b2119d3c4fc577b3ebbca31b77306eb35d280e02693498e` |
| 30 | `theorem` | [Convex.strictConvex'](../../../../../mathematics/Topology/GeneralTopology/Topology/Variant51feb7c9429248bf6a8fc43c4fd2d661fb3219e0fe732f70a900d14cfc24a08f.lean/declarations/convex-strictconvex--91bdc7f4473404a3f97aec12.md) | 255 | `result-track:91bdc7f4473404a3f97aec1238324dbff78f39e9ee17d4fe2c1ff0b1e77c6fdf` |
| 31 | `theorem` | [Convex.strictConvex](../../../../../mathematics/Topology/GeneralTopology/Topology/Variant51feb7c9429248bf6a8fc43c4fd2d661fb3219e0fe732f70a900d14cfc24a08f.lean/declarations/convex-strictconvex--7e54ab38fa02e3b69d3912dd.md) | 273 | `result-track:7e54ab38fa02e3b69d3912dd27c248908e0bef290f43f894b8ce6af1ea6abfce` |
| 32 | `theorem` | [Convex.closure_interior_eq_closure_of_nonempty_interior](../../../../../mathematics/Topology/GeneralTopology/Topology/Variant51feb7c9429248bf6a8fc43c4fd2d661fb3219e0fe732f70a900d14cfc24a08f.lean/declarations/convex-closure-interior-eq-closure-of-nonempty-interior--ffee24a696364c9e6d0f528c.md) | 290 | `result-track:ffee24a696364c9e6d0f528c8cf5f24715787edaea6a32732f6ec65943a253e5` |
| 33 | `theorem` | [Convex.interior_closure_eq_interior_of_nonempty_interior](../../../../../mathematics/Topology/GeneralTopology/Topology/Variant51feb7c9429248bf6a8fc43c4fd2d661fb3219e0fe732f70a900d14cfc24a08f.lean/declarations/convex-interior-closure-eq-interior-of-nonempty-interior--5a9793762fb8d335d5fefc40.md) | 296 | `result-track:5a9793762fb8d335d5fefc40016e294b7d7504ff30a457a830e71c8fb6faf800` |
| 34 | `theorem` | [convex_closed_sInter](../../../../../mathematics/Topology/GeneralTopology/Topology/Variant51feb7c9429248bf6a8fc43c4fd2d661fb3219e0fe732f70a900d14cfc24a08f.lean/declarations/convex-closed-sinter--97e877998f30a6b7eecec173.md) | 315 | `result-track:97e877998f30a6b7eecec173fa8b4b62456108c4257358bcfa29a882c7c18a88` |
| 35 | `def` | [closedConvexHull](../../../../../mathematics/Topology/GeneralTopology/Topology/Variant51feb7c9429248bf6a8fc43c4fd2d661fb3219e0fe732f70a900d14cfc24a08f.lean/declarations/closedconvexhull--618d76edee6734e8cd6db9e0.md) | 323 | `declaration-track:618d76edee6734e8cd6db9e0d5ae57af030c465c31fe8256164e48d84772bfb3` |
| 36 | `theorem` | [convex_closedConvexHull](../../../../../mathematics/Topology/GeneralTopology/Topology/Variant51feb7c9429248bf6a8fc43c4fd2d661fb3219e0fe732f70a900d14cfc24a08f.lean/declarations/convex-closedconvexhull--ef21a1f342de4aa4304de905.md) | 326 | `result-track:ef21a1f342de4aa4304de9057a8890a338c46771f9d732f34bddb840e4cb1979` |
| 37 | `theorem` | [isClosed_closedConvexHull](../../../../../mathematics/Topology/GeneralTopology/Topology/Variant51feb7c9429248bf6a8fc43c4fd2d661fb3219e0fe732f70a900d14cfc24a08f.lean/declarations/isclosed-closedconvexhull--afa8bf5666e3f39fbb2c0fa1.md) | 329 | `result-track:afa8bf5666e3f39fbb2c0fa147186971ba61a152fd45c90b2eba89dbc5842d21` |
| 38 | `theorem` | [subset_closedConvexHull](../../../../../mathematics/Topology/GeneralTopology/Topology/Variant51feb7c9429248bf6a8fc43c4fd2d661fb3219e0fe732f70a900d14cfc24a08f.lean/declarations/subset-closedconvexhull--ff277e4807650baf786557cb.md) | 332 | `result-track:ff277e4807650baf786557cb50bf8188929a3df30e10f0fdf74b96ba60b3056b` |
| 39 | `theorem` | [closure_subset_closedConvexHull](../../../../../mathematics/Topology/GeneralTopology/Topology/Variant51feb7c9429248bf6a8fc43c4fd2d661fb3219e0fe732f70a900d14cfc24a08f.lean/declarations/closure-subset-closedconvexhull--7a228d71ed79c56d99db7b44.md) | 335 | `result-track:7a228d71ed79c56d99db7b44c463c0e4b786f3965fd2a109311376dd6b355dfc` |
| 40 | `theorem` | [closedConvexHull_min](../../../../../mathematics/Topology/GeneralTopology/Topology/Variant51feb7c9429248bf6a8fc43c4fd2d661fb3219e0fe732f70a900d14cfc24a08f.lean/declarations/closedconvexhull-min--e53264ce8c1d0fbd4bcd5715.md) | 338 | `result-track:e53264ce8c1d0fbd4bcd5715eea6279f08361c87f613b1cf537c2a9817dc7dae` |
| 41 | `theorem` | [convexHull_subset_closedConvexHull](../../../../../mathematics/Topology/GeneralTopology/Topology/Variant51feb7c9429248bf6a8fc43c4fd2d661fb3219e0fe732f70a900d14cfc24a08f.lean/declarations/convexhull-subset-closedconvexhull--a0d26a1d785a0c176ea483be.md) | 342 | `result-track:a0d26a1d785a0c176ea483bedaa1ba4d65e6c2506db89ee03510df5a0fb4678e` |
| 42 | `theorem` | [closedConvexHull_closure_eq_closedConvexHull](../../../../../mathematics/Topology/GeneralTopology/Topology/Variant51feb7c9429248bf6a8fc43c4fd2d661fb3219e0fe732f70a900d14cfc24a08f.lean/declarations/closedconvexhull-closure-eq-closedconvexhull--75c06f901b64af1473bb867e.md) | 347 | `result-track:75c06f901b64af1473bb867ea5d2b892b41251f92e0b226a0f79baf07dd55734` |
| 43 | `theorem` | [closedConvexHull_eq_closure_convexHull](../../../../../mathematics/Topology/GeneralTopology/Topology/Variant51feb7c9429248bf6a8fc43c4fd2d661fb3219e0fe732f70a900d14cfc24a08f.lean/declarations/closedconvexhull-eq-closure-convexhull--14ef03073008994a14a41141.md) | 361 | `result-track:14ef03073008994a14a411414efe991853be65466ec02ac30a992fa8c6a71633` |
| 44 | `theorem` | [Set.Finite.isCompact_convexHull](../../../../../mathematics/Topology/GeneralTopology/Topology/Variant51feb7c9429248bf6a8fc43c4fd2d661fb3219e0fe732f70a900d14cfc24a08f.lean/declarations/set-finite-iscompact-convexhull--cb13e60042f0d369f5eb1a45.md) | 375 | `result-track:cb13e60042f0d369f5eb1a45dee27c6fc4118825799a5f19acacee4558e33f02` |
| 45 | `theorem` | [Set.Finite.isClosed_convexHull](../../../../../mathematics/Topology/GeneralTopology/Topology/Variant51feb7c9429248bf6a8fc43c4fd2d661fb3219e0fe732f70a900d14cfc24a08f.lean/declarations/set-finite-isclosed-convexhull--5b8c1d53a4368d64db63a80a.md) | 383 | `result-track:5b8c1d53a4368d64db63a80a7978acfa50ab07ac75220ec1686125c2361a8be3` |
| 46 | `theorem` | [Convex.closure_subset_image_homothety_interior_of_one_lt](../../../../../mathematics/Topology/GeneralTopology/Topology/Variant51feb7c9429248bf6a8fc43c4fd2d661fb3219e0fe732f70a900d14cfc24a08f.lean/declarations/convex-closure-subset-image-homothety-interior-of-one-lt--0a073ce1411d14500a965321.md) | 393 | `result-track:0a073ce1411d14500a9653218eb9e2432b6307ec9953d04ecea22f70cb822d95` |
| 47 | `theorem` | [Convex.closure_subset_interior_image_homothety_of_one_lt](../../../../../mathematics/Topology/GeneralTopology/Topology/Variant51feb7c9429248bf6a8fc43c4fd2d661fb3219e0fe732f70a900d14cfc24a08f.lean/declarations/convex-closure-subset-interior-image-homothety-of-one-lt--0de83bae709d1b8b41619713.md) | 409 | `result-track:0de83bae709d1b8b41619713eecd48ff428a19eb9c1aed2e4b50a14fddec501c` |
| 48 | `theorem` | [Convex.subset_interior_image_homothety_of_one_lt](../../../../../mathematics/Topology/GeneralTopology/Topology/Variant51feb7c9429248bf6a8fc43c4fd2d661fb3219e0fe732f70a900d14cfc24a08f.lean/declarations/convex-subset-interior-image-homothety-of-one-lt--ef3bcfa2b7e0008d9d790496.md) | 419 | `result-track:ef3bcfa2b7e0008d9d7904961e1cc0def74a2b9cf1961a4270902cfda7f0e666` |
| 49 | `theorem` | [Convex.nontrivial_iff_nonempty_interior](../../../../../mathematics/Topology/GeneralTopology/Topology/Variant51feb7c9429248bf6a8fc43c4fd2d661fb3219e0fe732f70a900d14cfc24a08f.lean/declarations/convex-nontrivial-iff-nonempty-interior--660e6e657837e8799bb2f376.md) | 430 | `result-track:660e6e657837e8799bb2f376c0af1f62b4d6b207799570bcd83b8f548982c089` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
