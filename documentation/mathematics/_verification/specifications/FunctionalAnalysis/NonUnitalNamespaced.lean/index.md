# Verification target: Non Unital Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ecbfcb91b48ba7065b11578de5927f78b4e8ba41",
  "lexical_observation_count": 77,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/NonUnital/Varianta69f47c05d00fec9f564b94c0bdf2f1bb07c8bdcba3afd3b00e0a64f0e6517af.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../FunctionalAnalysis/NonUnitalNamespaced.lean/index.md) · [Full source](../../../../FunctionalAnalysis/NonUnitalNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ecbfcb91b48ba7065b11578de5927f78b4e8ba41`.

Source path: `GRWTSK/Topology/GeneralTopology/NonUnital/Varianta69f47c05d00fec9f564b94c0bdf2f1bb07c8bdcba3afd3b00e0a64f0e6517af.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/NonUnital/Varianta69f47c05d00fec9f564b94c0bdf2f1bb07c8bdcba3afd3b00e0a64f0e6517af.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Algebra.Spectrum.Quasispectrum` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.ContinuousMap.Compact` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.CStarAlgebra.ContinuousFunctionalCalculus.Unital` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.UniformSpace.CompactConvergence` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [NonUnitalContinuousFunctionalCalculus](../../../../FunctionalAnalysis/NonUnitalNamespaced.lean/declarations/nonunitalcontinuousfunctionalcalculus.md) | 78 | `declaration-track:a86b7005da45813e2447d451811b13123df196ad166c72d112598ae771320fc3` |
| 2 | `class` | [ContinuousMapZero.UniqueHom](../../../../FunctionalAnalysis/NonUnitalNamespaced.lean/declarations/continuousmapzero-uniquehom.md) | 100 | `declaration-track:1d8b4ca74619b54721a6df0e3970a05c3ef1137f0c49305640b44d1d13ceeedc` |
| 3 | `lemma` | [NonUnitalContinuousFunctionalCalculus.isCompact_quasispectrum](../../../../FunctionalAnalysis/NonUnitalNamespaced.lean/declarations/nonunitalcontinuousfunctionalcalculus-iscompact-quasispectrum.md) | 119 | `result-track:551004df839beb436666035b0f50e08e177626ff6078a6b795e4359a3af85a88` |
| 4 | `lemma` | [NonUnitalStarAlgHom.ext_continuousMap](../../../../FunctionalAnalysis/NonUnitalNamespaced.lean/declarations/nonunitalstaralghom-ext-continuousmap.md) | 123 | `result-track:22c5c6aaa4965867099e151db02a08b2f6d0e8aa64e781152c980e6140406b22` |
| 5 | `def` | [cfcₙHom](../../../../FunctionalAnalysis/NonUnitalNamespaced.lean/declarations/cfc-hom.md) | 142 | `declaration-track:e92f194ae66aede136ed3591e05f9ee157943e8a4c2e565f6c55806d69427033` |
| 6 | `lemma` | [cfcₙHom_isClosedEmbedding](../../../../FunctionalAnalysis/NonUnitalNamespaced.lean/declarations/cfc-hom-isclosedembedding.md) | 145 | `result-track:7cde579b03c5ab8b5d041830f399e7ac8c59fa46de211caec57d2f4762ff7746` |
| 7 | `lemma` | [cfcₙHom_continuous](../../../../FunctionalAnalysis/NonUnitalNamespaced.lean/declarations/cfc-hom-continuous.md) | 150 | `result-track:d37a32dcea25e3f155eba8b539a54787070e2cb927c941731d67392f0e911f1a` |
| 8 | `lemma` | [cfcₙHom_id](../../../../FunctionalAnalysis/NonUnitalNamespaced.lean/declarations/cfc-hom-id.md) | 153 | `result-track:65ee9020659b71f8428a38783fc172a9b32fba27ff76644390b4f4739cdb8d6b` |
| 9 | `lemma` | [cfcₙHom_map_quasispectrum](../../../../FunctionalAnalysis/NonUnitalNamespaced.lean/declarations/cfc-hom-map-quasispectrum.md) | 158 | `result-track:3b547c4cde7b963061744c647bbe03cac65c208b0aead4a2c4cc4aad42c0f4e1` |
| 10 | `lemma` | [cfcₙHom_predicate](../../../../FunctionalAnalysis/NonUnitalNamespaced.lean/declarations/cfc-hom-predicate.md) | 162 | `result-track:d5ed897abd4ad8637c092cfccc405c067fa708128692f231e0e2f9def2d70c53` |
| 11 | `lemma` | [cfcₙHom_eq_of_continuous_of_map_id](../../../../FunctionalAnalysis/NonUnitalNamespaced.lean/declarations/cfc-hom-eq-of-continuous-of-map-id.md) | 167 | `result-track:91ee221c10426dbb466986d56d84e708f3b4892315092726cf108b7c8d3d6d21` |
| 12 | `theorem` | [cfcₙHom_comp](../../../../FunctionalAnalysis/NonUnitalNamespaced.lean/declarations/cfc-hom-comp.md) | 173 | `result-track:488235dc051a566c876d85c3fae31fd2239f8caed8480c839815d76aff83598a` |
| 13 | `def` | [cfcₙL](../../../../FunctionalAnalysis/NonUnitalNamespaced.lean/declarations/cfc-l.md) | 201 | `declaration-track:b4c7a81da55f5f359bdb1da97c6ff7a061c00065a4f9f38e9f42cf04267aa2d9` |
| 14 | `lemma` | [cfcₙ_apply](../../../../FunctionalAnalysis/NonUnitalNamespaced.lean/declarations/cfc-apply.md) | 231 | `result-track:ac5a227d7772fd960a2744cff43fe8f3a188c6d98a22844ffc203c6e9f71a4c8` |
| 15 | `lemma` | [cfcₙ_apply_pi](../../../../FunctionalAnalysis/NonUnitalNamespaced.lean/declarations/cfc-apply-pi.md) | 234 | `result-track:a85dc5435b9b7cde50df8c0f505c607b471fedd1906399dc509c2cf7b64a8ec6` |
| 16 | `lemma` | [cfcₙ_apply_of_not_and_and](../../../../FunctionalAnalysis/NonUnitalNamespaced.lean/declarations/cfc-apply-of-not-and-and.md) | 241 | `result-track:8496447d58bb8da5f82477acb1b0551c1193c0842e352a3848f35c857a464fe7` |
| 17 | `lemma` | [cfcₙ_apply_of_not_predicate](../../../../FunctionalAnalysis/NonUnitalNamespaced.lean/declarations/cfc-apply-of-not-predicate.md) | 246 | `result-track:0dccfd1f1c0e192e66ca77b5dd7e03a54c954f1f21735e690c8112a12fd6bfe7` |
| 18 | `lemma` | [cfcₙ_apply_of_not_continuousOn](../../../../FunctionalAnalysis/NonUnitalNamespaced.lean/declarations/cfc-apply-of-not-continuouson.md) | 250 | `result-track:2813504d67a801f4614449007f36770819206b27d294fea8238eb24433e112ef` |
| 19 | `lemma` | [cfcₙ_apply_of_not_map_zero](../../../../FunctionalAnalysis/NonUnitalNamespaced.lean/declarations/cfc-apply-of-not-map-zero.md) | 254 | `result-track:7e6824b85faf9ace2c62ef103614e4ec68b4c4695eb06c69f457d9b79772d69b` |
| 20 | `lemma` | [cfcₙHom_eq_cfcₙ_extend](../../../../FunctionalAnalysis/NonUnitalNamespaced.lean/declarations/cfc-hom-eq-cfc-extend.md) | 258 | `result-track:5e4a9871c6aff96f0cefaebdbe1be2e9a7fdba687ff07cdfdcbc94a62313a351` |
| 21 | `lemma` | [cfcₙ_cases](../../../../FunctionalAnalysis/NonUnitalNamespaced.lean/declarations/cfc-cases.md) | 270 | `result-track:45a17580c728bbacbd331f3fd8defb1a77ed0f1d9e39d990940c39e64af9c5f6` |
| 22 | `lemma` | [cfcₙ_commute_cfcₙ](../../../../FunctionalAnalysis/NonUnitalNamespaced.lean/declarations/cfc-commute-cfc.md) | 282 | `result-track:e852ef06445b3f1ff69af26a5cbb960d7e9550d423b6d9589853346f04b2a144` |
| 23 | `lemma` | [cfcₙ_id](../../../../FunctionalAnalysis/NonUnitalNamespaced.lean/declarations/cfc-id-source-edition-2.md) | 289 | `result-track:507b79cfe1db178a9efc38b55140e6e573241ddd7de86d3d9ab58ff6aec05374` |
| 24 | `lemma` | [cfcₙ_id'](../../../../FunctionalAnalysis/NonUnitalNamespaced.lean/declarations/cfc-id.md) | 294 | `result-track:35b7e3a8c539686b7aeca1a70d10ffcccce630475b9fe01071880e1a593d7407` |
| 25 | `lemma` | [cfcₙ_map_quasispectrum](../../../../FunctionalAnalysis/NonUnitalNamespaced.lean/declarations/cfc-map-quasispectrum.md) | 298 | `result-track:99aa4d8544087141a9a0ce3f2ae0ef245594261a1900a5f796d972d29d1dcbc8` |
| 26 | `lemma` | [cfcₙ_predicate_zero](../../../../FunctionalAnalysis/NonUnitalNamespaced.lean/declarations/cfc-predicate-zero.md) | 303 | `result-track:d53b9a8e0974b79766e21c896bb6223f9311fd88c1b15f883eb2abbb57ead34b` |
| 27 | `lemma` | [cfcₙ_predicate](../../../../FunctionalAnalysis/NonUnitalNamespaced.lean/declarations/cfc-predicate.md) | 306 | `result-track:1b12ca0c87aabc3b82f8a453a3c880fb0ba5fd2c670f8137a7e83581aac60f62` |
| 28 | `lemma` | [cfcₙ_congr](../../../../FunctionalAnalysis/NonUnitalNamespaced.lean/declarations/cfc-congr.md) | 309 | `result-track:b27a947c5a823fa84480eb2bcec308b75b1af9a66d9290cf5644a284958cbc00` |
| 29 | `lemma` | [eqOn_of_cfcₙ_eq_cfcₙ](../../../../FunctionalAnalysis/NonUnitalNamespaced.lean/declarations/eqon-of-cfc-eq-cfc.md) | 324 | `result-track:bc6a7963292cd72c34c9a2147a277f5df52cb3f32d625a546cc5c94c0599551f` |
| 30 | `lemma` | [cfcₙ_eq_cfcₙ_iff_eqOn](../../../../FunctionalAnalysis/NonUnitalNamespaced.lean/declarations/cfc-eq-cfc-iff-eqon.md) | 333 | `result-track:c70ac04aa6c007ccee90e6193c14b7dff04a4941620971be4e8221d989b69b0c` |
| 31 | `lemma` | [cfcₙ_zero](../../../../FunctionalAnalysis/NonUnitalNamespaced.lean/declarations/cfc-zero.md) | 342 | `result-track:364f9d0a76b9c78a0046949819e069eb6bc10f84a72e2fd8cc7f7b67e347aa3d` |
| 32 | `lemma` | [cfcₙ_const_zero](../../../../FunctionalAnalysis/NonUnitalNamespaced.lean/declarations/cfc-const-zero.md) | 348 | `result-track:bf62b162f2fa47ad0dc1fcd07af43a6ad284aa9287f4ef89724f31312e0aec6b` |
| 33 | `lemma` | [cfcₙ_mul](../../../../FunctionalAnalysis/NonUnitalNamespaced.lean/declarations/cfc-mul.md) | 353 | `result-track:059d34afbb1b16505ff6c8d641e8171938b4259a8f2b7f882820795235a47b02` |
| 34 | `lemma` | [cfcₙ_add](../../../../FunctionalAnalysis/NonUnitalNamespaced.lean/declarations/cfc-add.md) | 360 | `result-track:9e3679f3b05329501ac5869f301fa2c9d18cfb90f3a4f539fa8dc81177173c2d` |
| 35 | `lemma` | [cfcₙ_sum](../../../../FunctionalAnalysis/NonUnitalNamespaced.lean/declarations/cfc-sum.md) | 368 | `result-track:f58f74cf2db0348e8d57cf1a2900aea93e2fe668d2de170709c342fd721c7321` |
| 36 | `lemma` | [cfcₙ_sum_univ](../../../../FunctionalAnalysis/NonUnitalNamespaced.lean/declarations/cfc-sum-univ.md) | 385 | `result-track:1b46dd570778a3c7e331677a0bfb0fa1a1bbcacb00989dd29b58576991927a34` |
| 37 | `lemma` | [cfcₙ_smul](../../../../FunctionalAnalysis/NonUnitalNamespaced.lean/declarations/cfc-smul.md) | 391 | `result-track:1b8e372c6f54372ca506b1374c0e5630a72328a581c052d4dab525c8ce7e0ba5` |
| 38 | `lemma` | [cfcₙ_const_mul](../../../../FunctionalAnalysis/NonUnitalNamespaced.lean/declarations/cfc-const-mul.md) | 403 | `result-track:e98e1c94b55989873edd67551836d521275d215b127692c1c482d8b99227038f` |
| 39 | `lemma` | [cfcₙ_star](../../../../FunctionalAnalysis/NonUnitalNamespaced.lean/declarations/cfc-star.md) | 408 | `result-track:7d3235643be3023c6f240163f8375e599b76ea4af8dc1740b00fd6fb6bdd9810` |
| 40 | `lemma` | [cfcₙ_smul_id](../../../../FunctionalAnalysis/NonUnitalNamespaced.lean/declarations/cfc-smul-id.md) | 421 | `result-track:98d6ed101cb443fa0c4991eefe6124abad831fe229279a0dbed25213d8affd5f` |
| 41 | `lemma` | [cfcₙ_const_mul_id](../../../../FunctionalAnalysis/NonUnitalNamespaced.lean/declarations/cfc-const-mul-id.md) | 426 | `result-track:6f937d7b3ffe2be0ea7f46db1dc633f75911eba2047e9efce532db112ee2bcf7` |
| 42 | `lemma` | [cfcₙ_star_id](../../../../FunctionalAnalysis/NonUnitalNamespaced.lean/declarations/cfc-star-id.md) | 430 | `result-track:8aab96a738fccf2ec55b0cab79bfbd50c3d64adda78d5ce164c6dbc3dfa4348f` |
| 43 | `lemma` | [cfcₙ_comp](../../../../FunctionalAnalysis/NonUnitalNamespaced.lean/declarations/cfc-comp-source-edition-2.md) | 437 | `result-track:f291dafabb372036eb0b5360449a987434b3ebd752160fcec46553688cb059f9` |
| 44 | `lemma` | [cfcₙ_comp'](../../../../FunctionalAnalysis/NonUnitalNamespaced.lean/declarations/cfc-comp.md) | 456 | `result-track:40be26b6c07e391a8c02557476c68e92944ceebbb80eba8084a2f919c3b09ad9` |
| 45 | `lemma` | [cfcₙ_comp_smul](../../../../FunctionalAnalysis/NonUnitalNamespaced.lean/declarations/cfc-comp-smul.md) | 463 | `result-track:4451fab06f43887d5e7d44bc58d54ddc4c11bce29004fb9edbb67ff2caf1926c` |
| 46 | `lemma` | [cfcₙ_comp_const_mul](../../../../FunctionalAnalysis/NonUnitalNamespaced.lean/declarations/cfc-comp-const-mul.md) | 470 | `result-track:f8de1c570eb8504b3955788f2906b940c86d0a73f8fbbca8f826296acca0da50` |
| 47 | `lemma` | [cfcₙ_comp_star](../../../../FunctionalAnalysis/NonUnitalNamespaced.lean/declarations/cfc-comp-star.md) | 476 | `result-track:b1b2a92fde111fad8d5293b92bc8f5ff1b2ba70f9ff55b6596e6f7e64066437c` |
| 48 | `lemma` | [CFC.eq_zero_of_quasispectrum_eq_zero](../../../../FunctionalAnalysis/NonUnitalNamespaced.lean/declarations/cfc-eq-zero-of-quasispectrum-eq-zero.md) | 483 | `result-track:be59680f9748ba0b958fe26cb3621d6de4a79b446be334603190f9daa0052c3b` |
| 49 | `lemma` | [CFC.quasispectrum_zero_eq](../../../../FunctionalAnalysis/NonUnitalNamespaced.lean/declarations/cfc-quasispectrum-zero-eq.md) | 488 | `result-track:2023338844f311d3421be1e4b56429a13c56c4343a47d566ec04135dbc500f95` |
| 50 | `lemma` | [cfcₙ_apply_zero](../../../../FunctionalAnalysis/NonUnitalNamespaced.lean/declarations/cfc-apply-zero.md) | 494 | `result-track:e39a5350bac5b7b2b4c210670f41afca45b854c0d4d85abdd3a49fb2a8a99be1` |
| 51 | `instance` | [IsStarNormal.cfcₙ_map](../../../../FunctionalAnalysis/NonUnitalNamespaced.lean/declarations/isstarnormal-cfc-map.md) | 502 | `declaration-track:606d23055af44c6a7d679ad08b792222e9a69d4242f2fa3b4fac4ce295cfb189` |
| 52 | `lemma` | [IsSelfAdjoint.cfcₙ](../../../../FunctionalAnalysis/NonUnitalNamespaced.lean/declarations/isselfadjoint-cfc.md) | 512 | `result-track:bf3a809875a5e0c0cf00a9ed7f5070136e455b232777e66bb45ba0a9ff64db3f` |
| 53 | `lemma` | [cfcₙ_nonneg_of_predicate](../../../../FunctionalAnalysis/NonUnitalNamespaced.lean/declarations/cfc-nonneg-of-predicate.md) | 518 | `result-track:7511bac0f35b949dc776207c3b8d2dfa35c8522354c65c50ded4c7ea932ad72c` |
| 54 | `lemma` | [cfcₙ_sub](../../../../FunctionalAnalysis/NonUnitalNamespaced.lean/declarations/cfc-sub.md) | 538 | `result-track:dac25ee75944bf3892c22bab1f4f212b23395beb4dee55efa48dbdbe3e5084ed` |
| 55 | `lemma` | [cfcₙ_neg](../../../../FunctionalAnalysis/NonUnitalNamespaced.lean/declarations/cfc-neg.md) | 544 | `result-track:06902361a94048e09ac12e27549dbca6d4a9d9286ca2423c60033c0b82280c43` |
| 56 | `lemma` | [cfcₙ_neg_id](../../../../FunctionalAnalysis/NonUnitalNamespaced.lean/declarations/cfc-neg-id.md) | 557 | `result-track:1458e5db43af4a4e3227c10eedd376423bca07149bd697ac4381679ab88414ae` |
| 57 | `lemma` | [cfcₙ_comp_neg](../../../../FunctionalAnalysis/NonUnitalNamespaced.lean/declarations/cfc-comp-neg.md) | 563 | `result-track:e98a9f4f874448c77ebf4825b9e27144f1614b4a7fee43ee9c08e83c1718ca53` |
| 58 | `lemma` | [cfcₙHom_mono](../../../../FunctionalAnalysis/NonUnitalNamespaced.lean/declarations/cfc-hom-mono.md) | 581 | `result-track:d08c84fc5411199fcaf74ebafe527cbee73a8d1b7e473b16d8cce560ae0100db` |
| 59 | `lemma` | [cfcₙHom_nonneg_iff](../../../../FunctionalAnalysis/NonUnitalNamespaced.lean/declarations/cfc-hom-nonneg-iff.md) | 585 | `result-track:d23db635be801443ceb6d2f6d988bda590dbd5297352a57bd9bc9f1bbfc85134` |
| 60 | `lemma` | [cfcₙ_mono](../../../../FunctionalAnalysis/NonUnitalNamespaced.lean/declarations/cfc-mono.md) | 593 | `result-track:92ac9adaa75dc0945c2c75df6d19ff0deeca7e90655e9219c017704c7c49ca06` |
| 61 | `lemma` | [cfcₙ_nonneg_iff](../../../../FunctionalAnalysis/NonUnitalNamespaced.lean/declarations/cfc-nonneg-iff.md) | 603 | `result-track:de68a113619fbe115b7b424d571332979b8010be9e3c04e61aac27f4240ddfe4` |
| 62 | `lemma` | [StarOrderedRing.nonneg_iff_quasispectrum_nonneg](../../../../FunctionalAnalysis/NonUnitalNamespaced.lean/declarations/starorderedring-nonneg-iff-quasispectrum-nonneg.md) | 611 | `result-track:9c53615f103dc5d2cf4afe9b1a972ee2c6a355e65fb027cf1af0e8d0d2db6f0f` |
| 63 | `lemma` | [cfcₙ_nonneg](../../../../FunctionalAnalysis/NonUnitalNamespaced.lean/declarations/cfc-nonneg.md) | 616 | `result-track:d24479fa16faadd66cf70d9fb20327e0aced00e038b1ebcba41c46d78226c2ac` |
| 64 | `lemma` | [cfcₙ_nonpos](../../../../FunctionalAnalysis/NonUnitalNamespaced.lean/declarations/cfc-nonpos.md) | 626 | `result-track:7c2415a071235a6b8a00a6702ee4814d0ea9668ba1bffba98e97c30966cfe17f` |
| 65 | `lemma` | [cfcₙHom_le_iff](../../../../FunctionalAnalysis/NonUnitalNamespaced.lean/declarations/cfc-hom-le-iff.md) | 647 | `result-track:ad588c83f691e94ec0bbdf5bc7ac02e57b00aa3488fccf7cb593c41b2378eb55` |
| 66 | `lemma` | [cfcₙ_le_iff](../../../../FunctionalAnalysis/NonUnitalNamespaced.lean/declarations/cfc-le-iff.md) | 651 | `result-track:f6f5005bb83601eccb07f54e61aac726fddf47778d083936bf06a6138660626b` |
| 67 | `lemma` | [cfcₙ_nonpos_iff](../../../../FunctionalAnalysis/NonUnitalNamespaced.lean/declarations/cfc-nonpos-iff.md) | 658 | `result-track:db1552a8b3cbe1ae8d7a5650119dcef6f9b021b18cb7a9197f07784ff14c4268` |
| 68 | `def` | [cfcₙHomSuperset](../../../../FunctionalAnalysis/NonUnitalNamespaced.lean/declarations/cfc-homsuperset.md) | 687 | `declaration-track:cfa44ea6d202ff56021def05a328ab5f9acb054c4ce1c8e75cd97d1a44e7027f` |
| 69 | `lemma` | [cfcₙHomSuperset_continuous](../../../../FunctionalAnalysis/NonUnitalNamespaced.lean/declarations/cfc-homsuperset-continuous.md) | 694 | `result-track:d5e11f3e0ed65856b2c63569fd2241cc73cfed955628e8b8add839613defa36b` |
| 70 | `lemma` | [cfcₙHomSuperset_id](../../../../FunctionalAnalysis/NonUnitalNamespaced.lean/declarations/cfc-homsuperset-id-source-edition-2.md) | 699 | `result-track:93eb1af6125f3c1a6265067ed4dadf6dc51102d686e08c6c029723b5a224e9ce` |
| 71 | `lemma` | [cfcₙHomSuperset_id'](../../../../FunctionalAnalysis/NonUnitalNamespaced.lean/declarations/cfc-homsuperset-id.md) | 705 | `result-track:5cc781124f69846b54439cacb5aaf8b177209b13ac4cdad82951092add13b69c` |
| 72 | `def` | [cfcₙHom_of_cfcHom](../../../../FunctionalAnalysis/NonUnitalNamespaced.lean/declarations/cfc-hom-of-cfchom.md) | 727 | `declaration-track:84ff992b612b5586852a5163f7f4dbc389b332ce425ccea35a56e714b369653c` |
| 73 | `lemma` | [cfcₙHom_of_cfcHom_map_quasispectrum](../../../../FunctionalAnalysis/NonUnitalNamespaced.lean/declarations/cfc-hom-of-cfchom-map-quasispectrum.md) | 735 | `result-track:8bb146917bc81b180654b00ba66f2610b34db9966eafa09223cc8cf6bb6ab1e4` |
| 74 | `lemma` | [isClosedEmbedding_cfcₙHom_of_cfcHom](../../../../FunctionalAnalysis/NonUnitalNamespaced.lean/declarations/isclosedembedding-cfc-hom-of-cfchom.md) | 762 | `result-track:22f981062eb2dec9631794a93a2f48b120d04a7930bff9b3db2b85599d079f09` |
| 75 | `instance` | [ContinuousFunctionalCalculus.toNonUnital](../../../../FunctionalAnalysis/NonUnitalNamespaced.lean/declarations/continuousfunctionalcalculus-tononunital.md) | 782 | `declaration-track:9302d246b8473267203baae5b9406e3d2f2c4ca20b977698446370f734828898` |
| 76 | `lemma` | [cfcₙHom_eq_cfcₙHom_of_cfcHom](../../../../FunctionalAnalysis/NonUnitalNamespaced.lean/declarations/cfc-hom-eq-cfc-hom-of-cfchom.md) | 797 | `result-track:a14be21b6f82792a544ce7d0779b2dd05537567cd67308c245c01cab643f2327` |
| 77 | `lemma` | [cfcₙ_eq_cfc](../../../../FunctionalAnalysis/NonUnitalNamespaced.lean/declarations/cfc-eq-cfc.md) | 808 | `result-track:187ea91cbfce7bc34c4a6dde7a9c13d37523941c7ec0fefc1cd73bed571286c1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=831a443f4566266316f03f783b7ab879983f246f70cb77bedac43d1550f3bc3b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/NonUnital/Varianta69f47c05d00fec9f564b94c0bdf2f1bb07c8bdcba3afd3b00e0a64f0e6517af.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/NonUnital/Varianta69f47c05d00fec9f564b94c0bdf2f1bb07c8bdcba3afd3b00e0a64f0e6517af.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
