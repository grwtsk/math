# Verification target: Multilinear Basic

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e7976713db7572543ced2bc2edd97a5aa36369a0",
  "lexical_observation_count": 88,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/Basic/Variant64b2148cf2318134ec736cebbdae297ab4743d13727f9e6dedceb7d263d5420c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/MultilinearBasic.lean/index.md) · [Full source](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/MultilinearBasic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e7976713db7572543ced2bc2edd97a5aa36369a0`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/Basic/Variant64b2148cf2318134ec736cebbdae297ab4743d13727f9e6dedceb7d263d5420c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/Basic/Variant64b2148cf2318134ec736cebbdae297ab4743d13727f9e6dedceb7d263d5420c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Algebra.Module.LinearMapPiProd` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Multilinear.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [ContinuousMultilinearMap](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/MultilinearBasic.lean/declarations/continuousmultilinearmap.md) | 46 | `declaration-track:f3acba98b9b7f5fde69cef330295c4a8ad38da16128f8c6637c75e7dfc972b1b` |
| 2 | `theorem` | [toMultilinearMap_injective](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/MultilinearBasic.lean/declarations/tomultilinearmap-injective.md) | 67 | `result-track:8701c65486c41accf2c56370dcde7a946e2bb888583824269bbf51b3af47b8de` |
| 3 | `instance` | [funLike](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/MultilinearBasic.lean/declarations/funlike.md) | 73 | `declaration-track:dd636c53c1fea35081cfe215eb3c6c9cf33ca1fb2e9e8372a9c0dbb1f3979f33` |
| 4 | `instance` | [continuousMapClass](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/MultilinearBasic.lean/declarations/continuousmapclass.md) | 77 | `declaration-track:314fdb0150b0b58b0cfaca8559f620adb66d409dcd000f036ae58f8d6505408e` |
| 5 | `def` | [Simps.apply](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/MultilinearBasic.lean/declarations/simps-apply.md) | 83 | `declaration-track:104c4194e646a9202fb338f34ace20046b4983dfdc1bca25df4ec98e4d87fa43` |
| 6 | `theorem` | [coe_continuous](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/MultilinearBasic.lean/declarations/coe-continuous.md) | 90 | `result-track:0f9d996103f779dc4e1735401cda1ba8d2f8c0cdbf1bb10e63e67ef3c1871548` |
| 7 | `theorem` | [coe_coe](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/MultilinearBasic.lean/declarations/coe-coe.md) | 94 | `result-track:5b08d23957dd4c6a8e4767d51c16ed9bf0a1ac4bb7e9396d9c4803fbd4423020` |
| 8 | `theorem` | [ext](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/MultilinearBasic.lean/declarations/ext.md) | 98 | `result-track:60363d2435e08f71c947888e7628af57d7c17411cccc888c4a80d1092862a7ed` |
| 9 | `theorem` | [map_update_add](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/MultilinearBasic.lean/declarations/map-update-add.md) | 102 | `result-track:b938fa13ff6a1d496f352b6b1fddfbcd01cd7623f25a6131dac88447f7c81e12` |
| 10 | `theorem` | [map_update_smul](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/MultilinearBasic.lean/declarations/map-update-smul.md) | 110 | `result-track:d4d0c91e636164a99f6a8b1dbdd3ae48070148e385498f1abbee38c327acea20` |
| 11 | `theorem` | [map_coord_zero](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/MultilinearBasic.lean/declarations/map-coord-zero.md) | 117 | `result-track:c1364bb2e67d752c43fd3f783ea502f1e66dcf8ad818dac54d0834d248e8ea8c` |
| 12 | `theorem` | [map_zero](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/MultilinearBasic.lean/declarations/map-zero.md) | 121 | `result-track:31386e6e945b90fcd588e44eaaf15588aa77df966d817b9f1f0cbeaecd8606c8` |
| 13 | `instance` | [(anonymous)](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/MultilinearBasic.lean/declarations/instance-source-edition-3.md) | 124 | `declaration-track:10d5aa87e9f6f8e697df42b88ed362a4649d00efa7dfaf2e4ea3a390402188a1` |
| 14 | `instance` | [(anonymous)](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/MultilinearBasic.lean/declarations/instance-source-edition-10.md) | 127 | `declaration-track:d577d5e5720e970f4279c661b92d48ec1abd555c6918727b8bc3b4e5a38b255a` |
| 15 | `theorem` | [zero_apply](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/MultilinearBasic.lean/declarations/zero-apply.md) | 131 | `result-track:d8f2fd4d10ef5388cc70681ea0449a443d3528a25e3c5e073218c4d15b9f65b0` |
| 16 | `theorem` | [toMultilinearMap_zero](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/MultilinearBasic.lean/declarations/tomultilinearmap-zero.md) | 135 | `result-track:f1eb8b11069d4283d33cf7efc4bb862407ae32f604e005c1ed76e1715902c634` |
| 17 | `instance` | [(anonymous)](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/MultilinearBasic.lean/declarations/instance-source-edition-4.md) | 144 | `declaration-track:12e3d7a3d430ac1f7cb243371ded6db0308a4a1806631bfe10a3706ceb696002` |
| 18 | `theorem` | [smul_apply](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/MultilinearBasic.lean/declarations/smul-apply.md) | 148 | `result-track:ecb6e9d66e9e4347179189f6df629b0206348677a4fc6b8df19b88b4aa575771` |
| 19 | `theorem` | [toMultilinearMap_smul](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/MultilinearBasic.lean/declarations/tomultilinearmap-smul.md) | 153 | `result-track:cd709371977baa5bb224b62da81ac475eda72b9b93ca03004ccd55ca6af6300a` |
| 20 | `instance` | [(anonymous)](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/MultilinearBasic.lean/declarations/instance-source-edition-13.md) | 157 | `declaration-track:e8720f482783547ce9f02b2c574b400d90d747e7fa5cb157eb21a1bfbf84d3ab` |
| 21 | `instance` | [(anonymous)](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/MultilinearBasic.lean/declarations/instance-source-edition-8.md) | 160 | `declaration-track:960d2a081dbe5889f52f0689f871f3783295e2e8fe7108c708518e018c638959` |
| 22 | `instance` | [(anonymous)](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/MultilinearBasic.lean/declarations/instance-source-edition-12.md) | 164 | `declaration-track:deb27cec157eb7f94fa2283458f6f0c2c2f6ec763501cfabb39dc9704913daed` |
| 23 | `instance` | [(anonymous)](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/MultilinearBasic.lean/declarations/instance-source-edition-7.md) | 168 | `declaration-track:53baa3c39725a832330673ff6ea4b677f95e41d55b15ad846c3ffff9e3894da3` |
| 24 | `instance` | [(anonymous)](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/MultilinearBasic.lean/declarations/instance-source-edition-5.md) | 177 | `declaration-track:1b6577b1a42b08e556dcb809a4b564cbba19886bf498a86d42675956d94dee3e` |
| 25 | `theorem` | [add_apply](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/MultilinearBasic.lean/declarations/add-apply.md) | 181 | `result-track:7bc4ac7b550526a8d2be566e60b2c16b47376e9390569ed5b8336cc866dd57f3` |
| 26 | `theorem` | [toMultilinearMap_add](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/MultilinearBasic.lean/declarations/tomultilinearmap-add.md) | 185 | `result-track:2d0b5b3870cb0efc546638359f2185435ed6850d2655b0defc4154e8d8146e98` |
| 27 | `instance` | [addCommMonoid](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/MultilinearBasic.lean/declarations/addcommmonoid.md) | 189 | `declaration-track:68d2afce7eceb4c5e7514aadcdaa019eea225dd2d5fababfd9a399f07bdd819e` |
| 28 | `def` | [applyAddHom](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/MultilinearBasic.lean/declarations/applyaddhom.md) | 193 | `declaration-track:f389b95ded573e7a0fecb8e72df11c8bc8f539a0228058877a9f7059a12c178c` |
| 29 | `theorem` | [sum_apply](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/MultilinearBasic.lean/declarations/sum-apply.md) | 199 | `result-track:17fdafb8a71cc497325c2ebf6293872e94e1539604b8737020f693c33c08e74c` |
| 30 | `def` | [toContinuousLinearMap](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/MultilinearBasic.lean/declarations/tocontinuouslinearmap.md) | 208 | `declaration-track:8dcb0352f719146be4b7fa49a299b1b2e2a7a35ca27c1dd684e0a4a792832051` |
| 31 | `def` | [prod](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/MultilinearBasic.lean/declarations/prod.md) | 213 | `declaration-track:f0065eb4ba9bf357ae43f846b6f0160b5dcb63d0f5c0c5a4e31fbeb02e20ac51` |
| 32 | `theorem` | [prod_apply](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/MultilinearBasic.lean/declarations/prod-apply.md) | 218 | `result-track:e525ec90e20e17ab5be25406931d25b86a59d9495d15c893e0387fe09ed3d2b4` |
| 33 | `def` | [pi](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/MultilinearBasic.lean/declarations/pi.md) | 224 | `declaration-track:7620b6c554f824799bfeff8ebc8519de88af781db939454ff63e5a00a95426de` |
| 34 | `theorem` | [coe_pi](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/MultilinearBasic.lean/declarations/coe-pi.md) | 231 | `result-track:ec0bea37273a7bf92bd94ce7f2c92888448a6099751066eb8fdb6031fb2f728e` |
| 35 | `theorem` | [pi_apply](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/MultilinearBasic.lean/declarations/pi-apply.md) | 236 | `result-track:7571e76fcd750a89368c1ee7ee5c564f6f78b6b8605236d41dc2e01a9294487d` |
| 36 | `def` | [codRestrict](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/MultilinearBasic.lean/declarations/codrestrict.md) | 243 | `declaration-track:7917d18db8425ce2eb70221b898bef18afadb0bdc32c519f89f781c94bbd521f` |
| 37 | `def` | [ofSubsingleton](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/MultilinearBasic.lean/declarations/ofsubsingleton.md) | 254 | `declaration-track:450cc85f1f5f595b578ee69183c2b3c801e6d4f36b75ac0e0b3aff39ea2f3b0b` |
| 38 | `def` | [constOfIsEmpty](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/MultilinearBasic.lean/declarations/constofisempty.md) | 268 | `declaration-track:4212c4035fcae3eba5046023f3a1de86da5b26c6923c1ca0b7a9fe147988854f` |
| 39 | `def` | [compContinuousLinearMap](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/MultilinearBasic.lean/declarations/compcontinuouslinearmap.md) | 277 | `declaration-track:7563e559fcaf96024e6d911b229b0d5d2d9d9a85b2174085396e1b7a8c2eb30f` |
| 40 | `theorem` | [compContinuousLinearMap_apply](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/MultilinearBasic.lean/declarations/compcontinuouslinearmap-apply.md) | 283 | `result-track:e382a3561a1e2d33b2f2131f42cfe2ee977c4cd2535c5513c18eb80c558a0844` |
| 41 | `def` | [_root_.ContinuousLinearMap.compContinuousMultilinearMap](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/MultilinearBasic.lean/declarations/root-continuouslinearmap-compcontinuousmultilinearmap.md) | 290 | `declaration-track:b5b487b5b5671eb4f7d3b122f85bd190723e130e603d80af320a2416e0115363` |
| 42 | `theorem` | [_root_.ContinuousLinearMap.compContinuousMultilinearMap_coe](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/MultilinearBasic.lean/declarations/root-continuouslinearmap-compcontinuousmultilinearmap-coe.md) | 295 | `result-track:a69bf6ca8edcab51ec97984bd0993e6d6e4614fdcbfa3e961ae21c1a8d431652` |
| 43 | `def` | [prodEquiv](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/MultilinearBasic.lean/declarations/prodequiv.md) | 304 | `declaration-track:a4ebd203ba74effd01bcf29ea6ca6854b2c6d8e3b194f8c18793ffaee0d8e828` |
| 44 | `theorem` | [prod_ext_iff](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/MultilinearBasic.lean/declarations/prod-ext-iff.md) | 313 | `result-track:78307b69e2619b68a252dafdc444f3bbb1945ff3b78a0e8b987b83e7e7ea729c` |
| 45 | `theorem` | [prod_ext](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/MultilinearBasic.lean/declarations/prod-ext.md) | 321 | `result-track:f2054bfa722831d7b43d15a09a9e179d227cd4ccc8d5649b451188a1db4e2848` |
| 46 | `theorem` | [eq_prod_iff](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/MultilinearBasic.lean/declarations/eq-prod-iff.md) | 328 | `result-track:3e47f1ff6cc025083d45d2b3625fa37858ecd39f5b2a8713a282a5f45166814f` |
| 47 | `theorem` | [add_prod_add](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/MultilinearBasic.lean/declarations/add-prod-add.md) | 334 | `result-track:5e55e331dd3029b7c72422aa28b596e6d63f9658ce0f8ed6cf0a01702ba3fe0b` |
| 48 | `theorem` | [smul_prod_smul](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/MultilinearBasic.lean/declarations/smul-prod-smul.md) | 339 | `result-track:8972f3108d50e59daa493f9ad820b14d2ef7b1d13e685f45ef3fc8f71aa1f459` |
| 49 | `theorem` | [zero_prod_zero](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/MultilinearBasic.lean/declarations/zero-prod-zero.md) | 347 | `result-track:27e5ebe1e43764f9256ee9d697d38b8555b7bae3977f5f308ecf9f8668512349` |
| 50 | `def` | [piEquiv](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/MultilinearBasic.lean/declarations/piequiv.md) | 353 | `declaration-track:1f6cfce0903ca8e7b262f787f67702cc1f6530a67490b7ad45aa2581633661ec` |
| 51 | `def` | [domDomCongr](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/MultilinearBasic.lean/declarations/domdomcongr.md) | 364 | `declaration-track:d45d9405a7b9f0a1b3431200e79962837c5665ab4518cf66b2fa199d343e3658` |
| 52 | `def` | [domDomCongrEquiv](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/MultilinearBasic.lean/declarations/domdomcongrequiv.md) | 374 | `declaration-track:da70a382b18e4d78449c6b6ec4f124bd172497b9d2217800ff2e6ccb27880282` |
| 53 | `def` | [linearDeriv](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/MultilinearBasic.lean/declarations/linearderiv.md) | 388 | `declaration-track:57ef93deabd7fa66370f4f7856412266fd06f20e6a88f900c93d09343441ff5a` |
| 54 | `lemma` | [linearDeriv_apply](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/MultilinearBasic.lean/declarations/linearderiv-apply.md) | 391 | `result-track:bb853e6386acb177b0e65ecc503470048955b65f5e7fef9ba9dc5c7db7b486b6` |
| 55 | `theorem` | [cons_add](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/MultilinearBasic.lean/declarations/cons-add.md) | 402 | `result-track:beb78d258d290e13c19cbca7830d87b90936818980fc80063699e7b299858bd6` |
| 56 | `theorem` | [cons_smul](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/MultilinearBasic.lean/declarations/cons-smul.md) | 409 | `result-track:41bb04a9d6d03a485f406584d492fe56a47c22284fae99db870098769a5ce73d` |
| 57 | `theorem` | [map_piecewise_add](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/MultilinearBasic.lean/declarations/map-piecewise-add.md) | 413 | `result-track:27b8686f1d03cf5fceb0f65bb472867b0ef55c4c05dc9bcd9eda8ba7becb19c5` |
| 58 | `theorem` | [map_add_univ](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/MultilinearBasic.lean/declarations/map-add-univ.md) | 419 | `result-track:6fa83fb164f61983856b306e072abd80215e83c8ac2a3e7a52223fc1fd780e02` |
| 59 | `theorem` | [map_sum_finset](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/MultilinearBasic.lean/declarations/map-sum-finset.md) | 433 | `result-track:b066baf0648a535d6570d845dd0768255d3cf05c11925dc6984c7ecd7f204a47` |
| 60 | `theorem` | [map_sum](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/MultilinearBasic.lean/declarations/map-sum.md) | 440 | `result-track:f4239fd7a67482b3e15cf145b88aed7a14249542bede0df0fe383e5f32c6ef8f` |
| 61 | `def` | [restrictScalars](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/MultilinearBasic.lean/declarations/restrictscalars.md) | 454 | `declaration-track:8acdf9df806c31380109109ff2059202373edb91eeba5f57ffd2b30379523b81` |
| 62 | `theorem` | [coe_restrictScalars](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/MultilinearBasic.lean/declarations/coe-restrictscalars.md) | 459 | `result-track:3a0ead9fc772ad2e142a35e652de31d799516584762617d818c6824808ce48c4` |
| 63 | `theorem` | [map_update_sub](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/MultilinearBasic.lean/declarations/map-update-sub.md) | 472 | `result-track:2f70798b429612bddca911f1a4d34d6f34ac8ef341a1edbb927a6bf410a369f5` |
| 64 | `instance` | [(anonymous)](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/MultilinearBasic.lean/declarations/instance-source-edition-9.md) | 483 | `declaration-track:a0a962c233f5fe1a867fd8e9fe5037fea945cc79a9216a82c20deacc26ded269` |
| 65 | `theorem` | [neg_apply](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/MultilinearBasic.lean/declarations/neg-apply.md) | 487 | `result-track:04f6e0746996a0c7cedeab70eb9731a2259a600cdc8d43fbca14a7bdeb33abc7` |
| 66 | `instance` | [(anonymous)](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/MultilinearBasic.lean/declarations/instance-source-edition-11.md) | 490 | `declaration-track:d5bcd0d70fded04b1f1b3b7433852ac0f4f2cc1c9691ac33fcf669412d389a58` |
| 67 | `theorem` | [sub_apply](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/MultilinearBasic.lean/declarations/sub-apply.md) | 494 | `result-track:284477d3808768d51786aff53cbf4c10aa9301f5d079b0edddb45d2ca8de6de5` |
| 68 | `instance` | [(anonymous)](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/MultilinearBasic.lean/declarations/instance-source-edition-2.md) | 497 | `declaration-track:023c8d98e77e6653b1a2e39d2e6e397f238570c676af9d519cd5f73c9d7dbe8b` |
| 69 | `theorem` | [neg_prod_neg](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/MultilinearBasic.lean/declarations/neg-prod-neg.md) | 501 | `result-track:41bf7d40def7a6358d9fb44594ebab7d8bafa3f729c186db831178099845c9d1` |
| 70 | `theorem` | [sub_prod_sub](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/MultilinearBasic.lean/declarations/sub-prod-sub.md) | 506 | `result-track:7e33cf294246b8d5fb69074f1528bc33d776ce29733d00de5b0e64d054490300` |
| 71 | `theorem` | [map_piecewise_smul](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/MultilinearBasic.lean/declarations/map-piecewise-smul.md) | 522 | `result-track:cd3b9e08ccc4404ec5dfd7d813a2ea771f9c85b2d6ccf7898d48564ab8d7ed6e` |
| 72 | `theorem` | [map_smul_univ](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/MultilinearBasic.lean/declarations/map-smul-univ.md) | 528 | `result-track:cf8ef38e96a0e50ec051fe650ba791f45d2b8820071f4b7025b6611552c6350d` |
| 73 | `theorem` | [ext_ring](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/MultilinearBasic.lean/declarations/ext-ring.md) | 536 | `result-track:a850873547566bc6d0c240acc865eee4caf0da18d66297061ffc79a65c37638a` |
| 74 | `instance` | [(anonymous)](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/MultilinearBasic.lean/declarations/instance.md) | 550 | `declaration-track:00bf997fb18a3f33eaa5b7025aa90dace0fbf8c05da351c151a7592dc336c86b` |
| 75 | `instance` | [(anonymous)](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/MultilinearBasic.lean/declarations/instance-source-edition-6.md) | 568 | `declaration-track:391e24d83858cc7ffbbb637255940911cdaa66c5dfe86346b6a6db208c8854e8` |
| 76 | `def` | [toMultilinearMapLinear](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/MultilinearBasic.lean/declarations/tomultilinearmaplinear.md) | 578 | `declaration-track:cc897267783501c80d58eaea0d158c30f437c37b4f3885f8b546340d02eac37d` |
| 77 | `def` | [piLinearEquiv](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/MultilinearBasic.lean/declarations/pilinearequiv.md) | 585 | `declaration-track:0d68d28c677b3bef670cb247f80809f3ad32df1a1db46b46b86eb466b98353fc` |
| 78 | `def` | [mkPiAlgebra](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/MultilinearBasic.lean/declarations/mkpialgebra.md) | 604 | `declaration-track:8fae6c791a5faad0c520836c1a1c8bcb5b27c2225fbbcccf6733a4e355bd0d16` |
| 79 | `theorem` | [mkPiAlgebra_apply](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/MultilinearBasic.lean/declarations/mkpialgebra-apply.md) | 609 | `result-track:7ffc37e055aa5b4a720942e58f826810b4bf01d7ec2abc04860dc8b259a23ac1` |
| 80 | `def` | [mkPiAlgebraFin](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/MultilinearBasic.lean/declarations/mkpialgebrafin.md) | 623 | `declaration-track:654ea9c47d87ff2b678cb026054e802a95e96e2a8d6c115ff4fe7dd44cf32782` |
| 81 | `theorem` | [mkPiAlgebraFin_apply](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/MultilinearBasic.lean/declarations/mkpialgebrafin-apply.md) | 633 | `result-track:0e6572ca539580b2bac7d75280cc196c8591f513cf64dd38025ae8ff9a48cf02` |
| 82 | `def` | [smulRight](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/MultilinearBasic.lean/declarations/smulright.md) | 648 | `declaration-track:f430a28d437414e9b911e6c79661ef444b3c57591c774d304253a197b1d4cbdd` |
| 83 | `def` | [mkPiRing](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/MultilinearBasic.lean/declarations/mkpiring.md) | 663 | `declaration-track:83d9ac741192aaa9f2e2ddfa0cc83397474eef35ad11516c82c827edcf5de665` |
| 84 | `theorem` | [mkPiRing_apply](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/MultilinearBasic.lean/declarations/mkpiring-apply.md) | 668 | `result-track:ad6939134d0f0db96f00f1ee937388c98f6f8019c30c99e842ef3595dfd20799` |
| 85 | `theorem` | [mkPiRing_apply_one_eq_self](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/MultilinearBasic.lean/declarations/mkpiring-apply-one-eq-self.md) | 672 | `result-track:384f052e2a2a39fb7ac541f05df19bb82d2030fc118b24ff185aabbfb671b5bb` |
| 86 | `theorem` | [mkPiRing_eq_iff](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/MultilinearBasic.lean/declarations/mkpiring-eq-iff.md) | 676 | `result-track:cb27ff9c4b5f85ebb164afc4541c2a40e527c476f3eb535b656c85d0b04df882` |
| 87 | `theorem` | [mkPiRing_zero](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/MultilinearBasic.lean/declarations/mkpiring-zero.md) | 682 | `result-track:b3062e26eb155dea83e379fc8dc261b7a39476af02f87bb898501083c6fdd536` |
| 88 | `theorem` | [mkPiRing_eq_zero_iff](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/MultilinearBasic.lean/declarations/mkpiring-eq-zero-iff.md) | 685 | `result-track:5e479c071378c047b4b18a8cc953843a1ab39f5d267a50989d129e02cbc9faf6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6a5f2886687222484ba1e33defcecc50330788dcc378d42d37de6bfea6feecbc -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/FunctionalAnalysis/Basic/Variant64b2148cf2318134ec736cebbdae297ab4743d13727f9e6dedceb7d263d5420c.lean","GRWTSK/_verification/specifications/Analysis/FunctionalAnalysis/Basic/Variant64b2148cf2318134ec736cebbdae297ab4743d13727f9e6dedceb7d263d5420c.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
