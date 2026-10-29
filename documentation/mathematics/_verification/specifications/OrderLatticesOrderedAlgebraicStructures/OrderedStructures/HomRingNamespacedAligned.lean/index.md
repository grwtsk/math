# Verification target: Hom Ring Namespaced Aligned

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e708a935fd9d819d9958a8954d3282639f777401",
  "lexical_observation_count": 79,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Ring/Variant28e04ac9b22127635bb29766d26219e012517efa54fa8aa807e3b184a939987e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomRingNamespacedAligned.lean/index.md) · [Full source](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomRingNamespacedAligned.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e708a935fd9d819d9958a8954d3282639f777401`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Ring/Variant28e04ac9b22127635bb29766d26219e012517efa54fa8aa807e3b184a939987e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Ring/Variant28e04ac9b22127635bb29766d26219e012517efa54fa8aa807e3b184a939987e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Archimedean` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Hom.Monoid` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Ring.Defs` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.Equiv` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [OrderRingHom](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomRingNamespacedAligned.lean/declarations/orderringhom.md) | 52 | `declaration-track:20ac99b33bf6c0a600f3f0bed7dceace53f754c638914adf0445bb5215d89c31` |
| 2 | `structure` | [OrderRingIso](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomRingNamespacedAligned.lean/declarations/orderringiso.md) | 77 | `declaration-track:362efd3019b1d2df6f731764d5c0f5220b84d8be94842df471f962e2180e661f` |
| 3 | `class` | [OrderRingHomClass](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomRingNamespacedAligned.lean/declarations/orderringhomclass.md) | 88 | `declaration-track:869c9922509518f52e62d548ad587c4ec8c837b0e9bb8ca1deb3038198480f87` |
| 4 | `class` | [OrderRingIsoClass](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomRingNamespacedAligned.lean/declarations/orderringisoclass.md) | 96 | `declaration-track:0e043d1515239271082aa7d70f6a64b23fceaaa8216b0ac735a172d0402a6eba` |
| 5 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomRingNamespacedAligned.lean/declarations/instance-source-edition-9.md) | 103 | `declaration-track:c5c708d5a45eb5148c58aa1c1c200703e5fc3b23d95aaa83d0d30350f9979389` |
| 6 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomRingNamespacedAligned.lean/declarations/instance-source-edition-3.md) | 110 | `declaration-track:42b5578d69c07a6d0594fd60b1b373f5289ec7243d0caa436801a8d07db7676d` |
| 7 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomRingNamespacedAligned.lean/declarations/instance-source-edition-8.md) | 117 | `declaration-track:adea2a382874659e0566355a241e8db8e11fca81f2912a967824682c6f8e43a3` |
| 8 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomRingNamespacedAligned.lean/declarations/instance-source-edition-6.md) | 123 | `declaration-track:886bc39de4ec3a777f16eb733c33535e548df8816652f02ae289ef3411866199` |
| 9 | `def` | [OrderRingHomClass.toOrderRingHom](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomRingNamespacedAligned.lean/declarations/orderringhomclass-toorderringhom.md) | 136 | `declaration-track:684eb1438d95ae18f43b57b8748ffb3ffe31f61065cd9e9c387be348adc74bb7` |
| 10 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomRingNamespacedAligned.lean/declarations/instance-source-edition-11.md) | 142 | `declaration-track:dc01aa2060f23d91f990773516e481321c08736e5663502428fcce25a07f3ebc` |
| 11 | `def` | [OrderRingIsoClass.toOrderRingIso](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomRingNamespacedAligned.lean/declarations/orderringisoclass-toorderringiso.md) | 150 | `declaration-track:ad781273a0231140436d43dbcf378f633ed464d82fc5f9920fc357039f2da92e` |
| 12 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomRingNamespacedAligned.lean/declarations/instance.md) | 156 | `declaration-track:1d9bf1242bd43f18bd89e2be5f79ba19fc78df9ad203349c646aab53dacfbbdc` |
| 13 | `def` | [toOrderAddMonoidHom](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomRingNamespacedAligned.lean/declarations/toorderaddmonoidhom.md) | 172 | `declaration-track:75dc95e13e242ca36476807e7e0db816209ff87be757ea4508881d223af5cb7b` |
| 14 | `def` | [toOrderMonoidWithZeroHom](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomRingNamespacedAligned.lean/declarations/toordermonoidwithzerohom.md) | 177 | `declaration-track:5553f100e29cc1e7d25897386d309a0d652bb8bd7ab4041e6935bf6b8c256d2e` |
| 15 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomRingNamespacedAligned.lean/declarations/instance-source-edition-5.md) | 181 | `declaration-track:7c1b959335b2f7cdeb67cb7bb6012e42f00bc99f595ba5418555b21798045fbf` |
| 16 | `theorem` | [toFun_eq_coe](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomRingNamespacedAligned.lean/declarations/tofun-eq-coe.md) | 200 | `result-track:0de00f6190487bb145f4a9fda3b929163ad5aa21c8392cdfa7f753d705da662c` |
| 17 | `theorem` | [ext](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomRingNamespacedAligned.lean/declarations/ext.md) | 205 | `result-track:b32aa4008aadb33843a801cdc22793ad037a3c492daeddcc81ae67a20668d476` |
| 18 | `theorem` | [toRingHom_eq_coe](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomRingNamespacedAligned.lean/declarations/toringhom-eq-coe.md) | 210 | `result-track:76ee6a09bdaf251259d7b9c943788a585c644455c9b4d90cf95c5cf56318a482` |
| 19 | `theorem` | [toOrderAddMonoidHom_eq_coe](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomRingNamespacedAligned.lean/declarations/toorderaddmonoidhom-eq-coe.md) | 215 | `result-track:93e95954a3a439528976f88e3a49e0aa8afadad7b69bb3a049faddd99a26d0e3` |
| 20 | `theorem` | [toOrderMonoidWithZeroHom_eq_coe](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomRingNamespacedAligned.lean/declarations/toordermonoidwithzerohom-eq-coe.md) | 220 | `result-track:a6b0303cb6774cb3843d45a29619ce85adb45a91b4bc859e56d7dfaae4a3a691` |
| 21 | `theorem` | [coe_coe_ringHom](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomRingNamespacedAligned.lean/declarations/coe-coe-ringhom.md) | 225 | `result-track:33687c920796e796aa779df0069cd5e935374baf0130227c035f6283973c309c` |
| 22 | `theorem` | [coe_coe_orderAddMonoidHom](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomRingNamespacedAligned.lean/declarations/coe-coe-orderaddmonoidhom.md) | 230 | `result-track:285fa6cfa2c4edcfa912931bc1cc3426182d91b9e73d6bb014887557693bb392` |
| 23 | `theorem` | [coe_coe_orderMonoidWithZeroHom](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomRingNamespacedAligned.lean/declarations/coe-coe-ordermonoidwithzerohom.md) | 235 | `result-track:1ec61e517b290886b04181526ad0b3981e03df0f4e0ddacb494e4668bdbf27dd` |
| 24 | `theorem` | [coe_ringHom_apply](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomRingNamespacedAligned.lean/declarations/coe-ringhom-apply.md) | 240 | `result-track:e06181ebbefa75c8d6bb652f5711c16e62ea3af28d6f7e6f6734b36b335d8535` |
| 25 | `theorem` | [coe_orderAddMonoidHom_apply](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomRingNamespacedAligned.lean/declarations/coe-orderaddmonoidhom-apply.md) | 245 | `result-track:cec5b499e3086389459270a107cb6e0f77e76012cd14dda43938fa5af6fab6d5` |
| 26 | `theorem` | [coe_orderMonoidWithZeroHom_apply](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomRingNamespacedAligned.lean/declarations/coe-ordermonoidwithzerohom-apply.md) | 250 | `result-track:f00082b3a46dedf77a5b98b6364091c2f19ce7a0be716205c1cbc0cada76d5ad` |
| 27 | `def` | [copy](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomRingNamespacedAligned.lean/declarations/copy.md) | 256 | `declaration-track:93145ba64a1ab7c720fcb0a5c66863971d4d4eb8f2028b21f497dadfba65d65d` |
| 28 | `theorem` | [coe_copy](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomRingNamespacedAligned.lean/declarations/coe-copy.md) | 261 | `result-track:38502801fec528722d4e4dda381d733807ebe5d0afd8b347e537d01ebeb1719d` |
| 29 | `theorem` | [copy_eq](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomRingNamespacedAligned.lean/declarations/copy-eq.md) | 265 | `result-track:e0a80568fe6a140cc95782283fd9fdfcd5b8f3fc8d2449f08ab4d6dc7c490100` |
| 30 | `def` | [id](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomRingNamespacedAligned.lean/declarations/id.md) | 272 | `declaration-track:828948cb4326adc2d1992bdf5d83f0b919ff5b32e3e98b726723faa938e14e0f` |
| 31 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomRingNamespacedAligned.lean/declarations/instance-source-edition-4.md) | 276 | `declaration-track:65a92bf2ee99f05229efcafc2fac0a05d34c93c0d15a754b24636a7d8a19bde9` |
| 32 | `theorem` | [coe_id](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomRingNamespacedAligned.lean/declarations/coe-id.md) | 280 | `result-track:22e1e6df81fe451a314f5e8c4f30bf5037597e211860ed3732c353922a77bb35` |
| 33 | `theorem` | [id_apply](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomRingNamespacedAligned.lean/declarations/id-apply.md) | 287 | `result-track:1ece0831e0649cf4ab41f3b911d5ce404eb7327f0cbca8eaa7effd45a8c81b3a` |
| 34 | `theorem` | [coe_ringHom_id](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomRingNamespacedAligned.lean/declarations/coe-ringhom-id.md) | 292 | `result-track:765d1d21f8e14562489ed237b99721e38b26c52accdee3f909b97ea3ecb29501` |
| 35 | `theorem` | [coe_orderAddMonoidHom_id](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomRingNamespacedAligned.lean/declarations/coe-orderaddmonoidhom-id.md) | 297 | `result-track:4ab49be0316a9d7f18fe6ee95f3af80653ed874e36a3c58223e5299c63524f1c` |
| 36 | `theorem` | [coe_orderMonoidWithZeroHom_id](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomRingNamespacedAligned.lean/declarations/coe-ordermonoidwithzerohom-id.md) | 302 | `result-track:9d8156c9acc8f1ca1c78a3da2f1f3c5089d43d0538500ead0af0cb6f8e390325` |
| 37 | `def` | [comp](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomRingNamespacedAligned.lean/declarations/comp.md) | 308 | `declaration-track:e2b47dca1bdfd4f87572a85c04df7d073aa0f1a6d35a2610cd27b38d122ba06a` |
| 38 | `theorem` | [coe_comp](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomRingNamespacedAligned.lean/declarations/coe-comp.md) | 313 | `result-track:5a37269ad8b79b5c6e0f7674e0f5fb8fc96a714b03b52be695e4c5384316217c` |
| 39 | `theorem` | [comp_apply](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomRingNamespacedAligned.lean/declarations/comp-apply.md) | 318 | `result-track:e46bb686bb06875fb753eeab52984e87d921c33961629c0ee6bffe41b423e3ca` |
| 40 | `theorem` | [comp_assoc](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomRingNamespacedAligned.lean/declarations/comp-assoc.md) | 322 | `result-track:a4d23711d3b6ded656950e92d4b6142146c8aa5a5edccdb56d85974094130049` |
| 41 | `theorem` | [comp_id](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomRingNamespacedAligned.lean/declarations/comp-id.md) | 328 | `result-track:ef2f1b785aa1d45b37d1348d3772b5131a48e331c78cf2bd3288fc8733690502` |
| 42 | `theorem` | [id_comp](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomRingNamespacedAligned.lean/declarations/id-comp.md) | 333 | `result-track:a8ab0e4ebd6db57746d29983aeb0a670933536c36964e2620f374aef47e96737` |
| 43 | `theorem` | [cancel_right](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomRingNamespacedAligned.lean/declarations/cancel-right.md) | 337 | `result-track:0f200e77f622d4d583ba257f5fe880568c1d9bc007badca32b0f86b3cb492cc3` |
| 44 | `theorem` | [cancel_left](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomRingNamespacedAligned.lean/declarations/cancel-left.md) | 341 | `result-track:ebdc6e5fa4ccf90d0ca5311ed8eeb568c9b31e103d1045e331c57d76c198dbdc` |
| 45 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomRingNamespacedAligned.lean/declarations/instance-source-edition-12.md) | 350 | `declaration-track:ef65220eaf0533fc529d781a2d707dcd71d27aa5fb60d1859d1a1352bfbc2239` |
| 46 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomRingNamespacedAligned.lean/declarations/instance-source-edition-10.md) | 353 | `declaration-track:cc97eecff57657bf13ffec9242e6247954ad484ed6101a44a6757097cfc96434` |
| 47 | `def` | [toOrderIso](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomRingNamespacedAligned.lean/declarations/toorderiso.md) | 370 | `declaration-track:32bcf6061da3470a66f585a4a9e2c2c35c68187dc1dfaf908cd348f5a4ccaa12` |
| 48 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomRingNamespacedAligned.lean/declarations/instance-source-edition-2.md) | 374 | `declaration-track:28b59c415dfc6947b51a508ce0b30b4684fafb0306ab66dd6f6822dec3fa9e92` |
| 49 | `theorem` | [toFun_eq_coe](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomRingNamespacedAligned.lean/declarations/tofun-eq-coe-source-edition-2.md) | 394 | `result-track:a4d4c9e63a6fb50723757513dbb12060dfcb40fef10035d8b55a1870689aa697` |
| 50 | `theorem` | [ext](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomRingNamespacedAligned.lean/declarations/ext-source-edition-2.md) | 399 | `result-track:dc794b5d62cee4d08a2d2101be03277006379294bd879e91c3fa8ad03e3946c8` |
| 51 | `theorem` | [coe_mk](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomRingNamespacedAligned.lean/declarations/coe-mk.md) | 404 | `result-track:9c1234e2ba7608a2c1399456e2ef5023988372b58c5e4f1a3208ae3dfb8690ef` |
| 52 | `theorem` | [mk_coe](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomRingNamespacedAligned.lean/declarations/mk-coe.md) | 409 | `result-track:7132c214cd1549fe698407d0ff9d561c04aa77846482e5b77b0f90ae67b244be` |
| 53 | `theorem` | [toRingEquiv_eq_coe](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomRingNamespacedAligned.lean/declarations/toringequiv-eq-coe.md) | 414 | `result-track:f91ef88c2ba19ebecb6c0c50e1c127a5ffc8e6a8af793a6a2f36d200433c0b14` |
| 54 | `theorem` | [toOrderIso_eq_coe](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomRingNamespacedAligned.lean/declarations/toorderiso-eq-coe.md) | 419 | `result-track:9b321548a822453884ecfe09a5f6c31d9437d22e3d149c7896663d73bdbc1585` |
| 55 | `theorem` | [coe_toRingEquiv](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomRingNamespacedAligned.lean/declarations/coe-toringequiv.md) | 424 | `result-track:f0706390f0582ea97a9279d8253adc7dfe6a37e5f162539819aa31167c579ef9` |
| 56 | `theorem` | [coe_toOrderIso](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomRingNamespacedAligned.lean/declarations/coe-toorderiso.md) | 430 | `result-track:f5ca350a934a4f5a8c692d11b1ce18ecbc97e6a364cd8d82a7be65a6b1562f45` |
| 57 | `def` | [refl](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomRingNamespacedAligned.lean/declarations/refl.md) | 438 | `declaration-track:458c65e4e927036eb6637703871ddaac3ba5e304f5cd49b801ba099767fb69fd` |
| 58 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomRingNamespacedAligned.lean/declarations/instance-source-edition-7.md) | 442 | `declaration-track:8e3d627865443ccb2552774db81a0faf01c3f472f219dfe1545fa924e438a3c8` |
| 59 | `theorem` | [refl_apply](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomRingNamespacedAligned.lean/declarations/refl-apply.md) | 446 | `result-track:4cb141952ea3606c8d5c69c7f00aabd5b9200fc4cb8472b72475d567e242bad2` |
| 60 | `theorem` | [coe_ringEquiv_refl](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomRingNamespacedAligned.lean/declarations/coe-ringequiv-refl.md) | 451 | `result-track:b5a372b7941ccd419aabe709b00795025f434df528df8e369f59371f5140cafd` |
| 61 | `theorem` | [coe_orderIso_refl](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomRingNamespacedAligned.lean/declarations/coe-orderiso-refl.md) | 456 | `result-track:985724e365a58f5288c504d402c7026a8067ec1a87b451fd27c775fa665b3b14` |
| 62 | `def` | [symm](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomRingNamespacedAligned.lean/declarations/symm.md) | 464 | `declaration-track:9e99a786222ef31a88b44ffa44c994bb60bb7b11277b5866a50ef71d9758b71c` |
| 63 | `def` | [Simps.symm_apply](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomRingNamespacedAligned.lean/declarations/simps-symm-apply.md) | 471 | `declaration-track:3d8cdaa4b9b948843574940061bdd7465fb36bab5b2fbf2b7fd86bd146087af0` |
| 64 | `theorem` | [symm_symm](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomRingNamespacedAligned.lean/declarations/symm-symm.md) | 476 | `result-track:c82ce6ed603cd15ae8b3888c8b456b9737eae818320e3c2cd9f730252563e9a8` |
| 65 | `def` | [trans](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomRingNamespacedAligned.lean/declarations/trans.md) | 482 | `declaration-track:7556b4ce1ab2ba8acd50391360e797fd2fd2b197e04c94913389a7720f4cceca` |
| 66 | `theorem` | [trans_toRingEquiv](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomRingNamespacedAligned.lean/declarations/trans-toringequiv.md) | 488 | `result-track:f1f4146051af15d3eb77a0616a8b7fcdc8c83ed7007cb0f724a930a06cebb3bd` |
| 67 | `theorem` | [trans_toRingEquiv_aux](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomRingNamespacedAligned.lean/declarations/trans-toringequiv-aux.md) | 493 | `result-track:3a5acf3d48eeb36032489eb1feb7b2a4d5623ab261066f5a5dafad4a7d0bb59e` |
| 68 | `theorem` | [trans_apply](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomRingNamespacedAligned.lean/declarations/trans-apply.md) | 499 | `result-track:104daef8f34ffd9bc9561b7e505776962c53ae07858e31e5f4f1236cec52bfac` |
| 69 | `theorem` | [self_trans_symm](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomRingNamespacedAligned.lean/declarations/self-trans-symm.md) | 504 | `result-track:01d3f31cf6306dd5c8ee62046b70ec99f2d05bc2f6333d9ddbd489dd5a31c03c` |
| 70 | `theorem` | [symm_trans_self](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomRingNamespacedAligned.lean/declarations/symm-trans-self.md) | 509 | `result-track:42046ba7198b3385d61de1c7c4f9fcd6ee7ac976e45e97c92167c24b5882def7` |
| 71 | `theorem` | [symm_bijective](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomRingNamespacedAligned.lean/declarations/symm-bijective.md) | 513 | `result-track:ad400c467fe6fdb227a68fff89706125e54d2ef09e8009827739471bf13f6c9a` |
| 72 | `def` | [toOrderRingHom](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomRingNamespacedAligned.lean/declarations/toorderringhom.md) | 526 | `declaration-track:1e5a753c3adbc42da36bbe0c1024a90ed79742f4c94e7ae1c7dd80f0128fd680` |
| 73 | `theorem` | [toOrderRingHom_eq_coe](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomRingNamespacedAligned.lean/declarations/toorderringhom-eq-coe.md) | 531 | `result-track:7b964c31730882c00d3b58de68ea742a312b991cc9c3e66379ab206155731341` |
| 74 | `theorem` | [coe_toOrderRingHom](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomRingNamespacedAligned.lean/declarations/coe-toorderringhom.md) | 536 | `result-track:5b42d4e292e1ac239a100e15a30e3fc3ccac5690f1a3ed52524139ab42ee3a83` |
| 75 | `theorem` | [coe_toOrderRingHom_refl](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomRingNamespacedAligned.lean/declarations/coe-toorderringhom-refl.md) | 541 | `result-track:dc695ab4234a95b8d94421f17a0d328475d258811359226b8e17101e7613ba9e` |
| 76 | `theorem` | [toOrderRingHom_injective](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomRingNamespacedAligned.lean/declarations/toorderringhom-injective.md) | 545 | `result-track:8bc4ae3fe4126de989baaefe28b12b71340506dff9675175bbc18906f17a5107` |
| 77 | `instance` | [OrderRingHom.subsingleton](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomRingNamespacedAligned.lean/declarations/orderringhom-subsingleton.md) | 563 | `declaration-track:3be80b86e81ac95543a47b32447f38c7ff40551c9a95e4df54cfd264aa8af8a6` |
| 78 | `instance` | [OrderRingIso.subsingleton_right](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomRingNamespacedAligned.lean/declarations/orderringiso-subsingleton-right.md) | 582 | `declaration-track:fb0e377e6782e45d583c3054b4273ec782a258b22f305ac0b36f1287ffd311f9` |
| 79 | `instance` | [OrderRingIso.subsingleton_left](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomRingNamespacedAligned.lean/declarations/orderringiso-subsingleton-left.md) | 589 | `declaration-track:09b8f7b35c0bb5cb302d8626735ba7c7787ebd3f41598b81e9ec78982a75c3d8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=028394dd74e645593e90262a56917fbabd8aeccaccfc9285bcff4a2bd38a15a4 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Ring/Variant28e04ac9b22127635bb29766d26219e012517efa54fa8aa807e3b184a939987e.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Ring/Variant28e04ac9b22127635bb29766d26219e012517efa54fa8aa807e3b184a939987e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
