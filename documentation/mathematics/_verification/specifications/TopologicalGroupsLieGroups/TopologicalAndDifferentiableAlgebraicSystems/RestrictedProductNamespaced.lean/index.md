# Verification target: Restricted Product Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "18b3a7bb3cd2e819fddd5ed78049567f5330d914",
  "lexical_observation_count": 88,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/RestrictedProduct/Variant14ae14c355d2251c56a03d3b4ad0fc341b96e46177242d1475b8166208be8929.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/RestrictedProductNamespaced.lean/index.md) · [Full source](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/RestrictedProductNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `18b3a7bb3cd2e819fddd5ed78049567f5330d914`.

Source path: `GRWTSK/Topology/GeneralTopology/RestrictedProduct/Variant14ae14c355d2251c56a03d3b4ad0fc341b96e46177242d1475b8166208be8929.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/RestrictedProduct/Variant14ae14c355d2251c56a03d3b4ad0fc341b96e46177242d1475b8166208be8929.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Algebra.Group.Pointwise` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Ring.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [RestrictedProduct](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/RestrictedProductNamespaced.lean/declarations/restrictedproduct.md) | 142 | `declaration-track:67e78a71e0aef47ae4b4661475471fc7ce46730217a6bdee4670083ed5121d17` |
| 2 | `instance` | [(anonymous)](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/RestrictedProductNamespaced.lean/declarations/instance.md) | 162 | `declaration-track:3af119846be55341df5e4f29f0fa5eac2b50eed9074966d97f6f5e89366251ab` |
| 3 | `lemma` | [ext](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/RestrictedProductNamespaced.lean/declarations/ext.md) | 167 | `result-track:c2c119600e88106900af0e97a3572ef3a44d57c569139a1255332043372b7f72` |
| 4 | `lemma` | [range_coe](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/RestrictedProductNamespaced.lean/declarations/range-coe.md) | 170 | `result-track:fbcce0d7a0c0ffea1e62ea5c0106633502d580247fdf535786e897d7585b3af6` |
| 5 | `lemma` | [range_coe_principal](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/RestrictedProductNamespaced.lean/declarations/range-coe-principal.md) | 174 | `result-track:361f9f1fa41a78c2b79065e12555aab8c98c35f4bee148a6d190f6cebb61ba28` |
| 6 | `def` | [structureMap](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/RestrictedProductNamespaced.lean/declarations/structuremap.md) | 181 | `declaration-track:9ef753fafdf4f787d68a430e2218f87875d1c2b4be8e18520d0b56a982102738` |
| 7 | `def` | [inclusion](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/RestrictedProductNamespaced.lean/declarations/inclusion.md) | 186 | `declaration-track:13052f2a4e82192d72e8a73716f0f50d397480dcf81d53200af1d36cb34146ae` |
| 8 | `lemma` | [inclusion_eq_id](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/RestrictedProductNamespaced.lean/declarations/inclusion-eq-id.md) | 191 | `result-track:d9b1345e79b98988f901e5abed23c30594dd8fad22b4c9088f47ebce6ed473de` |
| 9 | `lemma` | [exists_inclusion_eq_of_eventually](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/RestrictedProductNamespaced.lean/declarations/exists-inclusion-eq-of-eventually.md) | 193 | `result-track:c4fb8c36d47a2ed7c939e87a147a1154d3c1cbe21a8b49a09af0ca866861239c` |
| 10 | `lemma` | [exists_structureMap_eq_of_forall](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/RestrictedProductNamespaced.lean/declarations/exists-structuremap-eq-of-forall.md) | 198 | `result-track:f6b723e4198b8e1f39b2b84e941ce123044e9900585d091beeec26c3d3d4c61c` |
| 11 | `lemma` | [range_inclusion](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/RestrictedProductNamespaced.lean/declarations/range-inclusion.md) | 203 | `result-track:92493541c92df99458555f9f025d5b1ad9c05200c1bb3a8cc72c045174c7aaeb` |
| 12 | `lemma` | [range_structureMap](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/RestrictedProductNamespaced.lean/declarations/range-structuremap.md) | 208 | `result-track:bb5a20cb09683a738604554ea5a44e72b8b7dc64a546e76ff9acd29e88ffbe32` |
| 13 | `instance` | [(anonymous)](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/RestrictedProductNamespaced.lean/declarations/instance-source-edition-24.md) | 226 | `declaration-track:c40dae426d7db373a83d667d676ddc49607296b6456a4df9901655b14a83cebc` |
| 14 | `instance` | [(anonymous)](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/RestrictedProductNamespaced.lean/declarations/instance-source-edition-4.md) | 230 | `declaration-track:4572a98386cd1c3dfb4c744ec60cae57c6ec4c7dbdee653e66332242df44ab2d` |
| 15 | `instance` | [(anonymous)](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/RestrictedProductNamespaced.lean/declarations/instance-source-edition-27.md) | 234 | `declaration-track:e607d7d835d22c6d9cda2c4c5591e4c2501f08f9bd00f0e2189fdcb8dc20d326` |
| 16 | `instance` | [(anonymous)](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/RestrictedProductNamespaced.lean/declarations/instance-source-edition-14.md) | 238 | `declaration-track:89ce58040908a1a44446a5da4684d95089bb35f5153d02e9d03ac17c9f801865` |
| 17 | `instance` | [(anonymous)](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/RestrictedProductNamespaced.lean/declarations/instance-source-edition-19.md) | 243 | `declaration-track:a4b45ddc094604de24d1064ffcb0446d157d9157e76d1c168016d5e5055a9e76` |
| 18 | `instance` | [(anonymous)](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/RestrictedProductNamespaced.lean/declarations/instance-source-edition-2.md) | 247 | `declaration-track:3b197305766dfb18cef312b132dff90140a207ed7688f40abc4b9ca822e3d205` |
| 19 | `instance` | [(anonymous)](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/RestrictedProductNamespaced.lean/declarations/instance-source-edition-3.md) | 251 | `declaration-track:3e3d8f395e7f7e0214aae35682f9a8be758bda4f01c88971caff98e056b94190` |
| 20 | `instance` | [(anonymous)](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/RestrictedProductNamespaced.lean/declarations/instance-source-edition-20.md) | 257 | `declaration-track:a6abe65785f317f65bb98fb7a8c34152f79b62267908dc12cefeddd79c9a01cc` |
| 21 | `instance` | [(anonymous)](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/RestrictedProductNamespaced.lean/declarations/instance-source-edition-11.md) | 261 | `declaration-track:78d415135e06322c24d97dafa8409f5700f63747d3b4fda829e93c3561e1b422` |
| 22 | `instance` | [(anonymous)](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/RestrictedProductNamespaced.lean/declarations/instance-source-edition-17.md) | 265 | `declaration-track:9576610243df7c74129b0e187997f879a1414780e00327e7743f4901be452d9d` |
| 23 | `instance` | [(anonymous)](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/RestrictedProductNamespaced.lean/declarations/instance-source-edition-23.md) | 269 | `declaration-track:c28c935716c6d92522bcac26e4ffbe5fa26b06a09785bc79b592ab0e4094087c` |
| 24 | `instance` | [(anonymous)](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/RestrictedProductNamespaced.lean/declarations/instance-source-edition-25.md) | 273 | `declaration-track:cf7ad47accd02231753460a797a351af23103d972b03c77ea5b7a9b46473b5b5` |
| 25 | `instance` | [(anonymous)](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/RestrictedProductNamespaced.lean/declarations/instance-source-edition-8.md) | 281 | `declaration-track:591fd430eaca980f7b4d2abc8bd844778f5efb2f44c7ebee90d0bfe0e3d5f4c1` |
| 26 | `instance` | [(anonymous)](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/RestrictedProductNamespaced.lean/declarations/instance-source-edition-22.md) | 286 | `declaration-track:c1f0fda687ecf8c57adda9b859ac3209b6d5c05792e6b75f719dfa8aef756cc5` |
| 27 | `instance` | [(anonymous)](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/RestrictedProductNamespaced.lean/declarations/instance-source-edition-6.md) | 291 | `declaration-track:5589d87b6e6d46cf306b70bb5f07e14dd3906b0454157208f8c66b61228766ce` |
| 28 | `def` | [evalMonoidHom](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/RestrictedProductNamespaced.lean/declarations/evalmonoidhom.md) | 308 | `declaration-track:c37a790246849af440a5a949585c709bb29c297e1dfa3b100113ac9f146670cb` |
| 29 | `lemma` | [evalMonoidHom_apply](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/RestrictedProductNamespaced.lean/declarations/evalmonoidhom-apply.md) | 315 | `result-track:75c09e9c370c2c2e75ef385fbfa8efaf6e4513159f675b100ed122551c96a67b` |
| 30 | `def` | [evalRingHom](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/RestrictedProductNamespaced.lean/declarations/evalringhom.md) | 322 | `declaration-track:0a79b1fa20b205978a659d64f5c234e6d90835fe8cdbd68346ce851d07a41417` |
| 31 | `lemma` | [evalRingHom_apply](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/RestrictedProductNamespaced.lean/declarations/evalringhom-apply.md) | 328 | `result-track:29b5ea9c454d9dc4d4eb8512c6d06214e30fc050afa3c06ed9ab15d971b320ca` |
| 32 | `def` | [map](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/RestrictedProductNamespaced.lean/declarations/map.md) | 357 | `declaration-track:81b94f84f2265a1d8f0a62a6d44521fe79682f55d66ae6f85ac6b6ee959d5a5c` |
| 33 | `lemma` | [map_apply](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/RestrictedProductNamespaced.lean/declarations/map-apply.md) | 361 | `result-track:f24fc029712749326b47b4f067f08cea39cf59582193b0f66d6b593a41c1aa16` |
| 34 | `def` | [mapMonoidHom](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/RestrictedProductNamespaced.lean/declarations/mapmonoidhom.md) | 386 | `declaration-track:ad1b1edb7f86ed6c6cdb5b1b9177df4b5570daec469d6e455180e42c168bdedb` |
| 35 | `lemma` | [mapMonoidHom_apply](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/RestrictedProductNamespaced.lean/declarations/mapmonoidhom-apply.md) | 396 | `result-track:1874783a288206962a8ffe9868eb1083bc32347931099caedb43616f8e73904f` |
| 36 | `def` | [mapRingHom](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/RestrictedProductNamespaced.lean/declarations/mapringhom.md) | 414 | `declaration-track:f287094c012fc411c8e8935aff49d535b6a90409c3a3d51cf63649099a38f808` |
| 37 | `lemma` | [mapRingHom_apply](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/RestrictedProductNamespaced.lean/declarations/mapringhom-apply.md) | 419 | `result-track:96abdd89b434f237d9cba73c8761b28eadb7f2a36a388907098bf6cded2f32c1` |
| 38 | `instance` | [topologicalSpace](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/RestrictedProductNamespaced.lean/declarations/topologicalspace.md) | 467 | `declaration-track:568d91cd252f351a4250b798b2814b91cfcddbb754a77292a65071d5f81a7a3c` |
| 39 | `theorem` | [continuous_coe](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/RestrictedProductNamespaced.lean/declarations/continuous-coe.md) | 471 | `result-track:78fd936ace1ec91421324efad289db084bca23f3d3d51fbdba288223580fe7f6` |
| 40 | `theorem` | [continuous_inclusion](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/RestrictedProductNamespaced.lean/declarations/continuous-inclusion.md) | 476 | `result-track:f3414cfd7167c9bda236946bf06eaa86469219076cbd6babfdb2d04527a45d78` |
| 41 | `instance` | [(anonymous)](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/RestrictedProductNamespaced.lean/declarations/instance-source-edition-12.md) | 481 | `declaration-track:7abcd127e2804fa1619f7ad031e8848963b207bf2d4d40c9ef75b96b9c8a03c6` |
| 42 | `instance` | [(anonymous)](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/RestrictedProductNamespaced.lean/declarations/instance-source-edition-26.md) | 484 | `declaration-track:d36e84cf61fa40be97041a081a430e44c1d4f0212296d993a4d22f478447b315` |
| 43 | `instance` | [(anonymous)](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/RestrictedProductNamespaced.lean/declarations/instance-source-edition-28.md) | 487 | `declaration-track:e74f6682c2963e1876a0ff20a3a186b4248207f39040f102517521487b2684ef` |
| 44 | `theorem` | [topologicalSpace_eq_of_principal](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/RestrictedProductNamespaced.lean/declarations/topologicalspace-eq-of-principal.md) | 497 | `result-track:6a5ef92f61409486f356bcdad44273e5c3d00590308176359a786ee0d8f4a52d` |
| 45 | `theorem` | [topologicalSpace_eq_of_top](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/RestrictedProductNamespaced.lean/declarations/topologicalspace-eq-of-top.md) | 503 | `result-track:fab16bc29a506a6f49d89344926c38582aa87913705e95dc689fbb0c0f5410f1` |
| 46 | `theorem` | [topologicalSpace_eq_of_bot](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/RestrictedProductNamespaced.lean/declarations/topologicalspace-eq-of-bot.md) | 508 | `result-track:b7898d936d5c936c5597ec67d5d70331c5a4b9ab7e750dcb3ef89d2e77ab8fe0` |
| 47 | `theorem` | [isEmbedding_coe_of_principal](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/RestrictedProductNamespaced.lean/declarations/isembedding-coe-of-principal.md) | 513 | `result-track:3c287d1731887b6e4a04acdfd789bc030308fed53a974ffbe2446002299d0643` |
| 48 | `theorem` | [isEmbedding_coe_of_top](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/RestrictedProductNamespaced.lean/declarations/isembedding-coe-of-top.md) | 518 | `result-track:980842d5409c6658a409c1ca72005a026baec2362c053c5fcd569483d5a991f5` |
| 49 | `theorem` | [isEmbedding_coe_of_bot](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/RestrictedProductNamespaced.lean/declarations/isembedding-coe-of-bot.md) | 522 | `result-track:2883fc99d84c30cf3f2e5b89ebf0348fdad51d75a4149d87f9980a88cd520afd` |
| 50 | `theorem` | [continuous_rng_of_principal](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/RestrictedProductNamespaced.lean/declarations/continuous-rng-of-principal.md) | 526 | `result-track:31621d850facde8f4b152af88970e2b4aaf381cb4a12e9e33bb6830ef344bb98` |
| 51 | `theorem` | [continuous_rng_of_top](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/RestrictedProductNamespaced.lean/declarations/continuous-rng-of-top.md) | 531 | `result-track:039a16f69cb5095ffe0c9ef9c0d4d4b475929515c29c256f02616aa6ca5c52b5` |
| 52 | `theorem` | [continuous_rng_of_bot](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/RestrictedProductNamespaced.lean/declarations/continuous-rng-of-bot.md) | 536 | `result-track:e8389421c2a8952c44e74ac7c7bd773503a6b108beacec65fe68b60a79066393` |
| 53 | `def` | [homeoTop](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/RestrictedProductNamespaced.lean/declarations/homeotop.md) | 542 | `declaration-track:5413be3106cd380a1f7b288e61bfee2b29baab0cd2f11b96f052c2222bed5c50` |
| 54 | `def` | [homeoBot](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/RestrictedProductNamespaced.lean/declarations/homeobot.md) | 553 | `declaration-track:c49d1162a186e4aa3049a8672ef8fb85252144a2be59b69d1403f96dfb77f824` |
| 55 | `theorem` | [weaklyLocallyCompactSpace_of_principal](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/RestrictedProductNamespaced.lean/declarations/weaklylocallycompactspace-of-principal.md) | 566 | `result-track:f489ca46be8079696bf3efcd903839fa6237bf62d77611b49d9107de05b04648` |
| 56 | `instance` | [(anonymous)](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/RestrictedProductNamespaced.lean/declarations/instance-source-edition-7.md) | 592 | `declaration-track:56ed0c038b99466147dbbe82199fcfce405f84a3745ed9bcdcbc5cd370994ba8` |
| 57 | `theorem` | [topologicalSpace_eq_iSup](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/RestrictedProductNamespaced.lean/declarations/topologicalspace-eq-isup.md) | 606 | `result-track:6aa12e32af6ede4311e105aa1e88fcf40ee1bcffcae36a4cce1c0929c75b5593` |
| 58 | `theorem` | [continuous_dom](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/RestrictedProductNamespaced.lean/declarations/continuous-dom.md) | 616 | `result-track:df229761f6e8fdcf458dd7eb97e1ff8beda8f685cbfc8eff844c6fb7c0c20385` |
| 59 | `theorem` | [isEmbedding_inclusion_principal](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/RestrictedProductNamespaced.lean/declarations/isembedding-inclusion-principal.md) | 621 | `result-track:189a50d84bb88fafa21846d7fb4646a40e567ec8ee8f875764cf2377e7d3b5e6` |
| 60 | `theorem` | [isEmbedding_inclusion_top](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/RestrictedProductNamespaced.lean/declarations/isembedding-inclusion-top.md) | 625 | `result-track:f759809f8ed300db6c4a4d1f87a956cae968ad0168d9cf7131c672534630cb70` |
| 61 | `theorem` | [isEmbedding_structureMap](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/RestrictedProductNamespaced.lean/declarations/isembedding-structuremap.md) | 630 | `result-track:8666395820332a6475b6856171f0dd6a2616e385c429ab6da3b9bb870bd7ad6e` |
| 62 | `theorem` | [isOpen_forall_imp_mem_of_principal](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/RestrictedProductNamespaced.lean/declarations/isopen-forall-imp-mem-of-principal.md) | 656 | `result-track:408b48c2fb1282fa0452f96ee7908e1e1524c1e5f130a625b949484fb3005fef` |
| 63 | `theorem` | [isOpen_forall_mem_of_principal](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/RestrictedProductNamespaced.lean/declarations/isopen-forall-mem-of-principal.md) | 667 | `result-track:ef47fa707262ac37b0bbeeb1e8decdedfd35ac59be2b60c16a8f2b7535f3ac6b` |
| 64 | `theorem` | [isOpen_forall_imp_mem](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/RestrictedProductNamespaced.lean/declarations/isopen-forall-imp-mem.md) | 673 | `result-track:45a14e81039d2542f7be6ae0a88a48049d80195819c7030d5d630b81bfeebd4b` |
| 65 | `theorem` | [isOpen_forall_mem](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/RestrictedProductNamespaced.lean/declarations/isopen-forall-mem.md) | 679 | `result-track:d6aaee6113a07e6b956e92fc13c5d0ec3330bf239e05d6470244a01c61c542b3` |
| 66 | `theorem` | [isOpenEmbedding_inclusion_principal](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/RestrictedProductNamespaced.lean/declarations/isopenembedding-inclusion-principal.md) | 685 | `result-track:f9a9f15330e689c1f5ee1b8a3cd0e56011fa8eadc3818af631fa19ec0bfaec7b` |
| 67 | `theorem` | [isOpenEmbedding_structureMap](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/RestrictedProductNamespaced.lean/declarations/isopenembedding-structuremap.md) | 694 | `result-track:fcd5620d6914228cabdb9353e2b2b0c5f1ed690222f8c2c81e0ad370d2faf265` |
| 68 | `theorem` | [nhds_eq_map_inclusion](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/RestrictedProductNamespaced.lean/declarations/nhds-eq-map-inclusion.md) | 702 | `result-track:c56117457cf7c43c2c4e203d179b38b3afc626122b93ce1962e0528331ec98ba` |
| 69 | `theorem` | [nhds_eq_map_structureMap](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/RestrictedProductNamespaced.lean/declarations/nhds-eq-map-structuremap.md) | 708 | `result-track:b48ec10521cf3e7048347b4f791cdefb9ac17cfe0c0fa28822c14e672705ec09` |
| 70 | `theorem` | [weaklyLocallyCompactSpace_of_cofinite](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/RestrictedProductNamespaced.lean/declarations/weaklylocallycompactspace-of-cofinite.md) | 716 | `result-track:faa332ee5701b1cba67933f2e881a123f058a647c6be20203c45b946a54ac03a` |
| 71 | `instance` | [(anonymous)](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/RestrictedProductNamespaced.lean/declarations/instance-source-edition-10.md) | 730 | `declaration-track:74899c64a4887b60930dfc1fad93295e50515ce9edd27d75c666c6edfb6d0176` |
| 72 | `theorem` | [continuous_dom_prod_right](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/RestrictedProductNamespaced.lean/declarations/continuous-dom-prod-right.md) | 740 | `result-track:4ca5d4dd218a1628ee4307df44a71fe5dfc254ad8d615d1d8442785929a9ef6e` |
| 73 | `theorem` | [continuous_dom_prod_left](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/RestrictedProductNamespaced.lean/declarations/continuous-dom-prod-left.md) | 761 | `result-track:15b27890c84b7e3f0681984a763fdfe4c7856010e9d123976f48c57280139e54` |
| 74 | `theorem` | [continuous_dom_prod](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/RestrictedProductNamespaced.lean/declarations/continuous-dom-prod.md) | 783 | `result-track:ecc45f53144f857d88029dbdc5d0355032fb57784b7efa069d6f81e6912ec0a8` |
| 75 | `instance` | [(anonymous)](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/RestrictedProductNamespaced.lean/declarations/instance-source-edition-29.md) | 815 | `declaration-track:eaab4272d2485134cb7f5fd039b78153a23e297e03f7cc5a50448f6612c271ed` |
| 76 | `instance` | [(anonymous)](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/RestrictedProductNamespaced.lean/declarations/instance-source-edition-18.md) | 825 | `declaration-track:9cab790f424cae2c1dfda88d58b1e0c16c6577270a99e622cfde55e3d4b1663a` |
| 77 | `instance` | [(anonymous)](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/RestrictedProductNamespaced.lean/declarations/instance-source-edition-16.md) | 840 | `declaration-track:907bbde8f3b676513474bfb7018fbb3543c8f35b867beb0ee61841129003e604` |
| 78 | `instance` | [(anonymous)](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/RestrictedProductNamespaced.lean/declarations/instance-source-edition-5.md) | 848 | `declaration-track:479aafa40322d1255d66a97644de80d32e479eb9597b3eea63bbf5a0f85f7a80` |
| 79 | `instance` | [(anonymous)](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/RestrictedProductNamespaced.lean/declarations/instance-source-edition-9.md) | 854 | `declaration-track:707f7411241483b5d518278d3b80e12a3467ccb128d4b29c404c155f5116c8ac` |
| 80 | `instance` | [(anonymous)](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/RestrictedProductNamespaced.lean/declarations/instance-source-edition-15.md) | 857 | `declaration-track:8e4aa5902e06488970b0a3c5a6c23fb39c23fe3513252fc4abe9a02261038eb5` |
| 81 | `theorem` | [nhds_zero_eq_map_ofPre](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/RestrictedProductNamespaced.lean/declarations/nhds-zero-eq-map-ofpre.md) | 864 | `result-track:02359bd89cb219886d2634c69b95fee422b834f4507e725f69e5e3dbe201ca63` |
| 82 | `theorem` | [nhds_zero_eq_map_structureMap](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/RestrictedProductNamespaced.lean/declarations/nhds-zero-eq-map-structuremap.md) | 869 | `result-track:62b3786bca155e6347fd294451d8558da6bc3c8bf5f31b4dd5f9cc72ca7f2253` |
| 83 | `instance` | [(anonymous)](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/RestrictedProductNamespaced.lean/declarations/instance-source-edition-21.md) | 879 | `declaration-track:bd4e5a40733f7b98cffcd90a41ee3dcd2fd17b2406bc22ed08a070aafd59a866` |
| 84 | `instance` | [continuousSMul](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/RestrictedProductNamespaced.lean/declarations/continuoussmul.md) | 886 | `declaration-track:2a8ef7556739c9f7dfa3292b549ef79f7222c53b97c6e1221a6b0e5903ba7848` |
| 85 | `instance` | [isTopologicalGroup](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/RestrictedProductNamespaced.lean/declarations/istopologicalgroup.md) | 894 | `declaration-track:1e499cf082d13a2f41c0c8d9a6c2ccc6ec94793addbcdfc1169be88d06cdd86c` |
| 86 | `instance` | [isTopologicalRing](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/RestrictedProductNamespaced.lean/declarations/istopologicalring.md) | 898 | `declaration-track:058d712c3e763ca80a610ac5a4b74322db6a66d992d3696422efff58a886abd7` |
| 87 | `theorem` | [locallyCompactSpace_of_group](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/RestrictedProductNamespaced.lean/declarations/locallycompactspace-of-group.md) | 909 | `result-track:efe769083e5c33e6683df3eceb0a682879765feac8832601c1c8c83522755419` |
| 88 | `instance` | [(anonymous)](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/RestrictedProductNamespaced.lean/declarations/instance-source-edition-13.md) | 919 | `declaration-track:855e97ffe6345ce58d85c274102b5202f178a446b7e4ffb2fa0300d422b3a974` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=4889eb87be72909476812c062882b310691fd1ca8070656c6f3ed3f9b7a2b74b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/RestrictedProduct/Variant14ae14c355d2251c56a03d3b4ad0fc341b96e46177242d1475b8166208be8929.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/RestrictedProduct/Variant14ae14c355d2251c56a03d3b4ad0fc341b96e46177242d1475b8166208be8929.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
