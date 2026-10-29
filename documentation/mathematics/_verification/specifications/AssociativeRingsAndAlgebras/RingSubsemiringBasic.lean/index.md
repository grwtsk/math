# Verification target: Ring Subsemiring Basic

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "077aeca1e08fcafaa55af40152ddec3f0329c8f2",
  "lexical_observation_count": 173,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantc1d1f0cf660cdf82ae7b1b295b2b28bc4cdbbc2c3da21d4e16d85fcd1074d76c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasic.lean/index.md) · [Full source](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `077aeca1e08fcafaa55af40152ddec3f0329c8f2`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantc1d1f0cf660cdf82ae7b1b295b2b28bc4cdbbc2c3da21d4e16d85fcd1074d76c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantc1d1f0cf660cdf82ae7b1b295b2b28bc4cdbbc2c3da21d4e16d85fcd1074d76c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Submonoid.BigOperators` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.Action.Subobjects` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.Equiv` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.Prod` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.Subsemiring.Defs` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.Submonoid.Centralizer` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.NonUnitalSubsemiring.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Module.Defs` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [instCharZero](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasic.lean/declarations/instcharzero.md) | 33 | `declaration-track:b8de770dda049c0064a85955762e7ab3083506e3b02e5a16e204c841b1273a78` |
| 2 | `theorem` | [toSubmonoid_strictMono](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasic.lean/declarations/tosubmonoid-strictmono.md) | 47 | `result-track:f3ae60bd1487e9928392504e827f1c359b0619b4662418d070dd042894eb38a6` |
| 3 | `theorem` | [toSubmonoid_mono](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasic.lean/declarations/tosubmonoid-mono.md) | 51 | `result-track:f953d75bfef43710c4fa27574783cf4fd670421a852041e8fba771e64c34e9a9` |
| 4 | `theorem` | [toAddSubmonoid_strictMono](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasic.lean/declarations/toaddsubmonoid-strictmono.md) | 55 | `result-track:9ad107c65633d31affe02b22bf1494d35eb9eb5c882bb481e1bd6ce1a5ca3bc2` |
| 5 | `theorem` | [toAddSubmonoid_mono](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasic.lean/declarations/toaddsubmonoid-mono.md) | 59 | `result-track:fe8eecb1260bfebff3d717df697d6a3252547fde669537618b8ffd9c35928728` |
| 6 | `theorem` | [list_prod_mem](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasic.lean/declarations/list-prod-mem.md) | 63 | `result-track:53cb509de88cdfc3bd3002f024a7c34e68a19c8639bde7f5064af1dcd60dac08` |
| 7 | `theorem` | [list_sum_mem](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasic.lean/declarations/list-sum-mem.md) | 68 | `result-track:da70929f85750d0027acd34260bd2fb962b7b9b8852dbd26273b859910e7d9fa` |
| 8 | `theorem` | [multiset_prod_mem](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasic.lean/declarations/multiset-prod-mem.md) | 73 | `result-track:f95a4845b7f57e9fe5885c1300fa4c5c1125815a0ba7c9278def6e3ae6d8cfc2` |
| 9 | `theorem` | [multiset_sum_mem](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasic.lean/declarations/multiset-sum-mem.md) | 79 | `result-track:1a1bda16bffb80c209d54c18a10585e536c877f7a13e3547da4748e160ef5f79` |
| 10 | `theorem` | [prod_mem](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasic.lean/declarations/prod-mem.md) | 84 | `result-track:b027b1213a3c78be615623285db4dcbb23bbb991d50b06ba52c1ea0dc0ba7126` |
| 11 | `theorem` | [sum_mem](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasic.lean/declarations/sum-mem.md) | 90 | `result-track:6ed106105ff3267dcc19dd62552f8c3041be8334eb3a6152924488e3dd91caa2` |
| 12 | `def` | [topEquiv](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasic.lean/declarations/topequiv.md) | 96 | `declaration-track:eb6fc46c54d39ce2915348aa166802a958beab2f46b5e6fa0f4229c9a6285bdf` |
| 13 | `def` | [comap](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasic.lean/declarations/comap.md) | 106 | `declaration-track:6dc253fbd700b72c5b7db5c8b0542755f4c1b49011c353b4ba7ac65b0632733b` |
| 14 | `theorem` | [mem_comap](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasic.lean/declarations/mem-comap.md) | 110 | `result-track:09814041b802bff13db8a9291a8ba3642dd3839bbe5113857f2b8a467fd1194b` |
| 15 | `theorem` | [comap_comap](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasic.lean/declarations/comap-comap.md) | 113 | `result-track:4028815dca045d631e9fece2c841622926cafe6e99e3e70482925dd29d750066` |
| 16 | `def` | [map](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasic.lean/declarations/map.md) | 119 | `declaration-track:5dcda998b6d5fc09a14e339b39e2dc1e8353acf582ead5cf8a7fb1ed4539397a` |
| 17 | `lemma` | [mem_map](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasic.lean/declarations/mem-map.md) | 123 | `result-track:f6305cf0d0294a8f3a47a8ee5b74e4431a90b4105a942a6840cc7b996af58230` |
| 18 | `theorem` | [map_id](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasic.lean/declarations/map-id.md) | 126 | `result-track:88986da0265968d28bee696b579d065860344ac3bb915167a5b443805d9e52da` |
| 19 | `theorem` | [map_map](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasic.lean/declarations/map-map.md) | 129 | `result-track:4defe34286bd5b4f9f2b8e63f4b8d1addaab7c162d27b8e7f374aa422f1afc25` |
| 20 | `theorem` | [map_le_iff_le_comap](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasic.lean/declarations/map-le-iff-le-comap.md) | 132 | `result-track:a6b772986080f4ea4ed55ec9807f2b4bdcaece9ffdd799cecc00178b4772c3fa` |
| 21 | `theorem` | [gc_map_comap](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasic.lean/declarations/gc-map-comap.md) | 136 | `result-track:4a26257674780f6674a19ac51a06e788d0e07cfb2ba983029fb4caa67921fed3` |
| 22 | `def` | [equivMapOfInjective](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasic.lean/declarations/equivmapofinjective.md) | 140 | `declaration-track:be75ce1000adb083a4adfb31f6e0fd2fdf8a5b87fa8b3598ced943079610ee85` |
| 23 | `theorem` | [coe_equivMapOfInjective_apply](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasic.lean/declarations/coe-equivmapofinjective-apply.md) | 146 | `result-track:6926cd5e771551de58c704fb5ffaf88461cf0cf2437fe87fb771d295269de9f5` |
| 24 | `def` | [rangeS](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasic.lean/declarations/ranges.md) | 158 | `declaration-track:a285cb455b4459836b3547841218fef269e1475f3996cd5209b6fd264ee1beb3` |
| 25 | `theorem` | [mem_rangeS](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasic.lean/declarations/mem-ranges.md) | 162 | `result-track:23015843d9afc69c72bd0c92461003e40a9976eb2ab18630f74d36fa86e4ea43` |
| 26 | `theorem` | [rangeS_eq_map](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasic.lean/declarations/ranges-eq-map.md) | 165 | `result-track:48e938d4039b5638f104478951fd7c4d1653ea698a9a40fcf8a55635a73de6e8` |
| 27 | `theorem` | [mem_rangeS_self](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasic.lean/declarations/mem-ranges-self.md) | 169 | `result-track:3196988a3c40a0c03b70ff1dcb1452cfa0eb835930af1aee4591c54c96542cb6` |
| 28 | `theorem` | [map_rangeS](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasic.lean/declarations/map-ranges.md) | 172 | `result-track:638f3d458203552d1c0943449e475d3f1d37a8bca3ae30477b5fb9bd75afef59` |
| 29 | `instance` | [fintypeRangeS](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasic.lean/declarations/fintyperanges.md) | 178 | `declaration-track:9f50d78969c7349fd55a332e54239801d97397b4cd2af9940d22ab181f103af0` |
| 30 | `instance` | [(anonymous)](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasic.lean/declarations/instance-source-edition-7.md) | 185 | `declaration-track:8b961a7039320cf5be743c6324ea004daee4f89e7b2eac110e8dd1eb42d32cfe` |
| 31 | `instance` | [(anonymous)](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasic.lean/declarations/instance-source-edition-4.md) | 188 | `declaration-track:3f024bc46778fe3f69a716145c61a836e3812012fcaaf434a87613dcb6077b34` |
| 32 | `theorem` | [coe_bot](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasic.lean/declarations/coe-bot.md) | 191 | `result-track:ff1ae7ecf4ed7f63a0fc6fdefccf3b6a0d30318ac3bd142c0f1c503503a42a08` |
| 33 | `theorem` | [mem_bot](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasic.lean/declarations/mem-bot.md) | 194 | `result-track:f62e6be14476819e0f7d7c00bb3031653d41c6b199a346556f870b25622417e6` |
| 34 | `instance` | [(anonymous)](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasic.lean/declarations/instance.md) | 197 | `declaration-track:00e0efea6e41755a748df6c3cdacadcbda5fc9d9ac21c931e2d780e9bd1eb870` |
| 35 | `theorem` | [coe_sInf](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasic.lean/declarations/coe-sinf.md) | 204 | `result-track:e34f7708429b388ee226cb18b3b9b19b0ff9a64016b179eb0f2fcc3750c2d756` |
| 36 | `theorem` | [mem_sInf](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasic.lean/declarations/mem-sinf.md) | 207 | `result-track:0d5b0e3841ec5b740bd362987c526cae7726c39597e6b284ac5daa5df7a7e819` |
| 37 | `theorem` | [coe_iInf](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasic.lean/declarations/coe-iinf.md) | 211 | `result-track:166215a95392c8e46d2e58b48def798692d900a4b09fd87fa0d62e63deb6fdfe` |
| 38 | `theorem` | [mem_iInf](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasic.lean/declarations/mem-iinf.md) | 214 | `result-track:6c7c09903db4fc169e81888e1f832d76f8164c83564a2217a911962be67ec092` |
| 39 | `theorem` | [sInf_toSubmonoid](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasic.lean/declarations/sinf-tosubmonoid.md) | 218 | `result-track:e4496ad0b126eb8f23d3a91e7022884f4f0ac2bd764a81f3dd707b1894267b9c` |
| 40 | `theorem` | [sInf_toAddSubmonoid](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasic.lean/declarations/sinf-toaddsubmonoid.md) | 223 | `result-track:8d0f2aedcaad0d009c4865272aef8962f8e788a5cbb6a8bf817647239816297f` |
| 41 | `instance` | [(anonymous)](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasic.lean/declarations/instance-source-edition-5.md) | 228 | `declaration-track:480c97a8fc219fcaa7ec68b38695ce95f3c554f0f2ccf89e71a447f53c0d4458` |
| 42 | `theorem` | [eq_top_iff'](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasic.lean/declarations/eq-top-iff.md) | 244 | `result-track:70c5a4569ba099708825a444cda882027442d36c449b0508cf019d2000580264` |
| 43 | `def` | [center](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasic.lean/declarations/center.md) | 254 | `declaration-track:f3f9b5e8b2e4b2030f0e672050cda1105cc23cff3e612129a6bafca93ea305a5` |
| 44 | `abbrev` | [center.commSemiring'](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasic.lean/declarations/center-commsemiring.md) | 262 | `declaration-track:894208a76dd083d3c2b6e7dd96b8abd7c148ecea3032a75dbc3d84d954b2d2b9` |
| 45 | `def` | [centerCongr](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasic.lean/declarations/centercongr.md) | 268 | `declaration-track:cde55b78ef68ccf5876d59098d51efc33be17c6bcc89a32435419659cc50b082` |
| 46 | `def` | [centerToMulOpposite](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasic.lean/declarations/centertomulopposite.md) | 273 | `declaration-track:dbb1c0858207fed95f64ea03811c898d0df0132855cdd4066697c06f0ac853e3` |
| 47 | `instance` | [center.commSemiring](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasic.lean/declarations/center-commsemiring-source-edition-2.md) | 281 | `declaration-track:8d067979f76f822af7d4176e3b161f88c893e5171b9e052aca99c932730382f0` |
| 48 | `example` | [(anonymous)](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasic.lean/declarations/example.md) | 285 | `declaration-track:f9ee1c62b3a838aff6490b4f708d4986d575608811218feafc5e34f6b071a7cd` |
| 49 | `theorem` | [mem_center_iff](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasic.lean/declarations/mem-center-iff.md) | 289 | `result-track:2ccdca1e97e5612e8c456ffd797ea823fe1b11a54d0cc1a9a296897f7d6e6c80` |
| 50 | `instance` | [decidableMemCenter](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasic.lean/declarations/decidablememcenter.md) | 292 | `declaration-track:fd2bc9cd284d2477716e485ac3a0bc4f6c8149167ca6b659c4a19f4514dae96f` |
| 51 | `theorem` | [center_eq_top](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasic.lean/declarations/center-eq-top.md) | 296 | `result-track:005cafe8996bffc6afe06115a7c8ac7fa260455bbd2f4e01b4ed550c27333616` |
| 52 | `def` | [centralizer](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasic.lean/declarations/centralizer.md) | 304 | `declaration-track:5829f75afd2056983fa3a0509d868dd562f54e645d6cf3bb2f7d530881a7eb9d` |
| 53 | `theorem` | [coe_centralizer](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasic.lean/declarations/coe-centralizer.md) | 311 | `result-track:8ea6d753d5653ba106c72ae535c65c6d275e8f10b865bd4fbde5d9a4708cbaa9` |
| 54 | `theorem` | [centralizer_toSubmonoid](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasic.lean/declarations/centralizer-tosubmonoid.md) | 314 | `result-track:391f22819514ab82f9fb708f8bfb2a84f5455849b7aad3519558bd4286d0be05` |
| 55 | `theorem` | [mem_centralizer_iff](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasic.lean/declarations/mem-centralizer-iff.md) | 318 | `result-track:e5823e46bb107027316aab66a4d1791e879cdfb86cb0636858a11d2e670195aa` |
| 56 | `theorem` | [center_le_centralizer](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasic.lean/declarations/center-le-centralizer.md) | 322 | `result-track:199215334fbb3e401cddcf74881e532ee15de3fd1833dbd23c839b89e79d7801` |
| 57 | `theorem` | [centralizer_le](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasic.lean/declarations/centralizer-le.md) | 325 | `result-track:39c2bfaf2c43b6b47a7235b7977a5904788179ea65d90610cf70359bc785d190` |
| 58 | `theorem` | [centralizer_eq_top_iff_subset](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasic.lean/declarations/centralizer-eq-top-iff-subset.md) | 329 | `result-track:025d17d30c581e3eb4b3e433e790a18b5d2a2e4c0e0651f5d8ae4defd8ff6701` |
| 59 | `theorem` | [centralizer_univ](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasic.lean/declarations/centralizer-univ.md) | 334 | `result-track:20c1b82f4b7deb36dbba2a327d8f5f44ce4d9634e22f0d2bc9c14762b21f792e` |
| 60 | `lemma` | [le_centralizer_centralizer](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasic.lean/declarations/le-centralizer-centralizer.md) | 337 | `result-track:2cb4ff02df58dc6a5815e7005958d2c4ec70e123f8debab913fe4cd59ed088ff` |
| 61 | `lemma` | [centralizer_centralizer_centralizer](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasic.lean/declarations/centralizer-centralizer-centralizer.md) | 342 | `result-track:8e0246c2fd694032a2d40129d5ef0dd53dcfbe413b07b99d8f9de3d0c9109f16` |
| 62 | `def` | [closure](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasic.lean/declarations/closure.md) | 350 | `declaration-track:216359ca4255001efc615b1724efe7ea56a1284bbaa6f52ea9f704c584388438` |
| 63 | `theorem` | [mem_closure](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasic.lean/declarations/mem-closure.md) | 353 | `result-track:8f19969d1f35c86c060c60f21d399602a6662b5948a3eb4a93648451c67fe42c` |
| 64 | `theorem` | [subset_closure](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasic.lean/declarations/subset-closure.md) | 358 | `result-track:d3850b20beecfddd199af43bb2123bb367e608d38692fc651aafadb93912bc8e` |
| 65 | `theorem` | [notMem_of_notMem_closure](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasic.lean/declarations/notmem-of-notmem-closure.md) | 360 | `result-track:ce47c73ce9ced6b12c4819de211652e19ade959bcfa9e818ded6ca62b8e3212b` |
| 66 | `theorem` | [closure_le](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasic.lean/declarations/closure-le.md) | 367 | `result-track:cde515e65992eba8fce09d3d838a3ac6c95b3f710466fc38b164949bb49af2c3` |
| 67 | `theorem` | [closure_mono](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasic.lean/declarations/closure-mono.md) | 373 | `result-track:67b384655cada73fd523fbeb5fcd72ea0101978dc7421bdbd78337deab189199` |
| 68 | `theorem` | [closure_eq_of_le](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasic.lean/declarations/closure-eq-of-le.md) | 376 | `result-track:22daf6cd0a2de0bb2013f7adb3fb306aaf98f5835d710f3344d934a29bdf1591` |
| 69 | `theorem` | [mem_map_equiv](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasic.lean/declarations/mem-map-equiv.md) | 380 | `result-track:f45b40808836cd8727d299592c208a5abfe5403159858152f774470371e64fd1` |
| 70 | `theorem` | [map_equiv_eq_comap_symm](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasic.lean/declarations/map-equiv-eq-comap-symm.md) | 384 | `result-track:be83d1d44c1887877f490136f019add222187fbd480adbba36c293efcd87076a` |
| 71 | `theorem` | [comap_equiv_eq_map_symm](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasic.lean/declarations/comap-equiv-eq-map-symm.md) | 388 | `result-track:167a8578b1868ab890c6a93bbbccfacfda950e54eb4cb84893ec3ff4e8763c97` |
| 72 | `def` | [subsemiringClosure](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasic.lean/declarations/subsemiringclosure.md) | 397 | `declaration-track:68137a6270e7a61c07bfc0159f3076c07d0d4ef20032ea96590bcedd1a85b648` |
| 73 | `theorem` | [subsemiringClosure_coe](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasic.lean/declarations/subsemiringclosure-coe.md) | 402 | `result-track:9d725ae0c52267bd7ea1d79b261395cf50ee77ace00f9d6ecc1cd28a6d3a8006` |
| 74 | `theorem` | [subsemiringClosure_mem](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasic.lean/declarations/subsemiringclosure-mem.md) | 406 | `result-track:7c810d34ac2458bdbfd2b623dbd542b153f9c5fb985d1898cf2643bc6a909eb3` |
| 75 | `theorem` | [subsemiringClosure_toAddSubmonoid](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasic.lean/declarations/subsemiringclosure-toaddsubmonoid.md) | 410 | `result-track:278a4cc483e1a449eb4e2b3013a3799447e440d64525cd236a4633ad95010ebe` |
| 76 | `lemma` | [subsemiringClosure_toNonUnitalSubsemiring](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasic.lean/declarations/subsemiringclosure-tononunitalsubsemiring.md) | 414 | `result-track:e63a38c3f2f374029f0048ed2fffb679492318bacced5235e47db2cd3b5db3ca` |
| 77 | `theorem` | [subsemiringClosure_eq_closure](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasic.lean/declarations/subsemiringclosure-eq-closure.md) | 423 | `result-track:1cfa68b22cdd5f5721e8b2b0df95dccca98d208891036785891262ea2a92e775` |
| 78 | `theorem` | [closure_submonoid_closure](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasic.lean/declarations/closure-submonoid-closure.md) | 438 | `result-track:72fe536bc7c940f5552d640b7c8f46fdb4f5eea3323d74e7cac26fdf1bb6d062` |
| 79 | `theorem` | [coe_closure_eq](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasic.lean/declarations/coe-closure-eq.md) | 446 | `result-track:21eb72c37b809cd04007993d523a0fa5006a6718a66542138dc0c4ed77a87f28` |
| 80 | `theorem` | [mem_closure_iff](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasic.lean/declarations/mem-closure-iff.md) | 450 | `result-track:2617800273577d252af7215422fe29d64bc86dcaf7215567cc01ecf5e5e14745` |
| 81 | `theorem` | [closure_addSubmonoid_closure](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasic.lean/declarations/closure-addsubmonoid-closure.md) | 455 | `result-track:436eec61457a360dfcd74ba5ce0192bbcb577bd5288de4e3c9b9689a3c6bd1b4` |
| 82 | `theorem` | [closure_induction](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasic.lean/declarations/closure-induction-source-edition-2.md) | 469 | `result-track:d6001a20e1c1ad5bb4c6ce85eb187cf60ff8c00afab6b64532b3866a501b5205` |
| 83 | `theorem` | [closure_induction₂](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasic.lean/declarations/closure-induction.md) | 485 | `result-track:711374edc7449880c52996f55f3d5d846e0f7d6ac495a23448bec164527800a4` |
| 84 | `theorem` | [mem_closure_iff_exists_list](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasic.lean/declarations/mem-closure-iff-exists-list.md) | 507 | `result-track:cfccf2ca94cb204c271729b334cc1fa50a4ab938c01c0ef20bd437770bb9aca3` |
| 85 | `def` | [gi](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasic.lean/declarations/gi.md) | 537 | `declaration-track:bc938dcbb9f136ae1546491172a6ec1d614c4d83c1a977a7d258281ca37bb5bc` |
| 86 | `theorem` | [closure_eq](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasic.lean/declarations/closure-eq.md) | 545 | `result-track:11b9b5e2ec889e7a2e4ed8b389fcd3836cbecc6d19d10d9b8658764e6334d05a` |
| 87 | `theorem` | [closure_empty](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasic.lean/declarations/closure-empty.md) | 549 | `result-track:30b11839cb5e6ccc9769b3bbaf62e8b285b629b569a5b71892f16c345f551980` |
| 88 | `theorem` | [closure_univ](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasic.lean/declarations/closure-univ.md) | 553 | `result-track:9e5e4964f176932904ec8034a38c0c95ff447b328f73d1422501220a55bfe7dd` |
| 89 | `theorem` | [closure_union](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasic.lean/declarations/closure-union.md) | 556 | `result-track:abad542dda1a9f8d2ab8d8c1102a0de62cd344c2db4d589f1cfa6824aef1aa0d` |
| 90 | `theorem` | [closure_iUnion](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasic.lean/declarations/closure-iunion.md) | 559 | `result-track:4ee8a2fd2b5523530c838b6e9f05e7365d226c438af12eeabb83c2621ed21ab1` |
| 91 | `theorem` | [closure_sUnion](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasic.lean/declarations/closure-sunion.md) | 562 | `result-track:6e31e3270f9c65d21a180382b15b4903f94d4c23552df7e4f9ff82e568b78605` |
| 92 | `theorem` | [closure_singleton_natCast](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasic.lean/declarations/closure-singleton-natcast.md) | 566 | `result-track:b40fcde203acfcc841caf87d5d9d2329a06cd9111256161506086456efbb3a54` |
| 93 | `theorem` | [closure_singleton_zero](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasic.lean/declarations/closure-singleton-zero.md) | 570 | `result-track:2fe5e6b600bcaea1352c80532237336fd36d04fee1ee93ac28dbf1c58f371454` |
| 94 | `theorem` | [closure_singleton_one](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasic.lean/declarations/closure-singleton-one.md) | 573 | `result-track:aedd7d0e05c49c41fe5228da59a2bb29e0cdd082f0d051783f0b6a4c21007abf` |
| 95 | `theorem` | [closure_insert_natCast](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasic.lean/declarations/closure-insert-natcast.md) | 576 | `result-track:4bb910fd591be2f5941d1fe380e225eb67fffbd2a26e066b780fd5a53376f5ed` |
| 96 | `theorem` | [closure_insert_zero](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasic.lean/declarations/closure-insert-zero.md) | 581 | `result-track:02bb1523cde5be7cd7e19e8c69ee8ec26d5172e0dcbdbfee517d1107a74c178b` |
| 97 | `theorem` | [closure_insert_one](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasic.lean/declarations/closure-insert-one.md) | 585 | `result-track:e5243025256c8672fdf76ae607eea055e4012ae79ab29a0f80588b0610f7a2af` |
| 98 | `theorem` | [map_sup](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasic.lean/declarations/map-sup.md) | 588 | `result-track:bb84e24358648249ba8c58cb0255e236bc4546fa9ddc1b5b77da415ad0f1c27c` |
| 99 | `theorem` | [map_iSup](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasic.lean/declarations/map-isup.md) | 591 | `result-track:4e6a5eeb893569030243a333a4f31021ba0942c243d969e4fd1232484e78b089` |
| 100 | `theorem` | [map_inf](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasic.lean/declarations/map-inf.md) | 595 | `result-track:6ba0695f9ee94f355298413fe8843b072a12c590b5a1c7b44c0075a09e970a46` |
| 101 | `theorem` | [map_iInf](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasic.lean/declarations/map-iinf.md) | 598 | `result-track:53d82226424e5f88d162b89b459359950b06896cc20fc543e5a17cd5a28fb4bb` |
| 102 | `theorem` | [comap_inf](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasic.lean/declarations/comap-inf.md) | 603 | `result-track:e86cc3c9424404e1fa46641f891790565353330d55b38f46f973b04e2db9e892` |
| 103 | `theorem` | [comap_iInf](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasic.lean/declarations/comap-iinf.md) | 606 | `result-track:1e366a81f01348dd9897a40298b9fa14d4a39e326de13e9a94b52c866601f772` |
| 104 | `theorem` | [map_bot](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasic.lean/declarations/map-bot.md) | 611 | `result-track:a348974c7e23ad36250a42814ff28770781a84335b5822260ae230dddef46cd9` |
| 105 | `theorem` | [comap_top](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasic.lean/declarations/comap-top.md) | 615 | `result-track:fd453d4c9d5fc17a39bda4703cb2021c281252e8b5dafab4cb2211f207209240` |
| 106 | `def` | [prod](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasic.lean/declarations/prod.md) | 620 | `declaration-track:31b54c291a9e5f9fec258549646c16a785cb28abd36730e1f591cc1aa20c73ac` |
| 107 | `theorem` | [coe_prod](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasic.lean/declarations/coe-prod.md) | 625 | `result-track:0d965256a97c64c5af4c783145916c696734d4a6e3a509496f6e1cadea22d83c` |
| 108 | `theorem` | [mem_prod](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasic.lean/declarations/mem-prod.md) | 629 | `result-track:378b3660e1867d712cee1c81e70ba10f64aa8b05fff6ec0d04011b3b35ee5e93` |
| 109 | `theorem` | [prod_mono](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasic.lean/declarations/prod-mono.md) | 634 | `result-track:bf5760c74bb216b83468cecbcc20f359fb623651a35ae1d63f82a2858e38b0ee` |
| 110 | `theorem` | [prod_mono_right](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasic.lean/declarations/prod-mono-right.md) | 638 | `result-track:397cefd32577e5b59b2df5fe99729e2cb96d15f96ac8fd78c648891031624a7b` |
| 111 | `theorem` | [prod_mono_left](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasic.lean/declarations/prod-mono-left.md) | 641 | `result-track:17afdaf6b1c2f741063d899c16f488080ad0a7b148c9ef1255af680d31fe8ddb` |
| 112 | `theorem` | [prod_top](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasic.lean/declarations/prod-top.md) | 644 | `result-track:b0724e849fbf5405f419721e387b1dec3ead1024064f0d25a45f61754496a560` |
| 113 | `theorem` | [top_prod](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasic.lean/declarations/top-prod.md) | 647 | `result-track:d9e5eced0a62523cf1500cf163334aa1fa9b2d06d661da6013a674fe5d6d2d64` |
| 114 | `theorem` | [top_prod_top](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasic.lean/declarations/top-prod-top.md) | 651 | `result-track:14599b777b123dd9505850cf5e4a2b48185a421308a598df2e5063eb64397746` |
| 115 | `def` | [prodEquiv](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasic.lean/declarations/prodequiv.md) | 655 | `declaration-track:58dac2a15bd8da2f33e0d92fca9fdf9a6949dc6da5a1005b524bf791e058f301` |
| 116 | `theorem` | [mem_iSup_of_directed](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasic.lean/declarations/mem-isup-of-directed.md) | 660 | `result-track:6ba59ad67296d0c0dba29ffc355d6a37db552b4430aa481da67ab8b027b72816` |
| 117 | `theorem` | [coe_iSup_of_directed](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasic.lean/declarations/coe-isup-of-directed.md) | 670 | `result-track:64ead56328d9f97970662275de4a1bb349a36168fb33aa474658a6933db6d0e8` |
| 118 | `theorem` | [mem_sSup_of_directedOn](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasic.lean/declarations/mem-ssup-of-directedon.md) | 674 | `result-track:37bfb0a9c70b27e395b46bd7ec6c337c74e0bec8e7266581b8abec75af37b310` |
| 119 | `theorem` | [coe_sSup_of_directedOn](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasic.lean/declarations/coe-ssup-of-directedon.md) | 680 | `result-track:765c0de16cb5a0d715ce9bbc2e47c1b639d405f8f630a6c843a01792564f7c7b` |
| 120 | `def` | [codRestrict](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasic.lean/declarations/codrestrict.md) | 695 | `declaration-track:bfa019a4646df1ac7abac7c582640b136f23859136324d079c67d91aae448181` |
| 121 | `theorem` | [codRestrict_apply](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasic.lean/declarations/codrestrict-apply.md) | 699 | `result-track:7c5fb8792d1f408b7e4915c3cdc5bf10796bfd6717430d5ad2ce3f43c7ce447c` |
| 122 | `def` | [restrict](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasic.lean/declarations/restrict.md) | 704 | `declaration-track:82a469ff602b3d67ea474f322aaf59bb395d948029e2a48522e1d7df67bdc2c9` |
| 123 | `theorem` | [coe_restrict_apply](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasic.lean/declarations/coe-restrict-apply.md) | 708 | `result-track:21db15afd584885f56a29b0dcc90b00f86eb88704a2ee4bc722ee8e48ee4332a` |
| 124 | `theorem` | [comp_restrict](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasic.lean/declarations/comp-restrict.md) | 713 | `result-track:1b309f1e98ad764e159001b44cf12ff9ed70b623c95791b8249b31f431b5145b` |
| 125 | `def` | [rangeSRestrict](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasic.lean/declarations/rangesrestrict.md) | 720 | `declaration-track:394cf4d817686181f43e6a03f53869d727a1acb3daede70e1188aa45eb7dd858` |
| 126 | `theorem` | [coe_rangeSRestrict](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasic.lean/declarations/coe-rangesrestrict.md) | 724 | `result-track:ea71293eef46846fc50dd100bf2f7fd05ae665a4fab6fae86b1f0ece830c1389` |
| 127 | `theorem` | [rangeSRestrict_surjective](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasic.lean/declarations/rangesrestrict-surjective.md) | 727 | `result-track:78db692b0e3433fe74db197a08e653174a04f6c9dcc7071813ddd7351d008d5d` |
| 128 | `theorem` | [rangeS_top_iff_surjective](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasic.lean/declarations/ranges-top-iff-surjective.md) | 732 | `result-track:f7de91ae1befd20083846072665e844b27a5f1fd0f50fee35087eaf3be4e9634` |
| 129 | `theorem` | [rangeS_top_of_surjective](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasic.lean/declarations/ranges-top-of-surjective.md) | 738 | `result-track:0f77a6b615b7cfda18b78deaf5e3c4e4c54ba48f1e7c3e96eca3b2f87b79cd6e` |
| 130 | `theorem` | [eqOn_sclosure](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasic.lean/declarations/eqon-sclosure.md) | 743 | `result-track:60fbf5260884e86a618b434e583547832366fece56b56df346464b7b93a2e3f7` |
| 131 | `theorem` | [eq_of_eqOn_stop](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasic.lean/declarations/eq-of-eqon-stop.md) | 746 | `result-track:9f27a0ffb3c9c896ad768b5fa37b2a5a95474a2f00df495f8f8edaab5279314f` |
| 132 | `theorem` | [eq_of_eqOn_sdense](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasic.lean/declarations/eq-of-eqon-sdense.md) | 749 | `result-track:52b74a89c83a17780d75b0180afc97ad069d7ddeaf70dbe03910ec3ef1d9bb96` |
| 133 | `theorem` | [sclosure_preimage_le](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasic.lean/declarations/sclosure-preimage-le.md) | 753 | `result-track:7ab46f05db8309bcd375e515fc90aaf30dfb9d10df0adc0578056dc3439d5ed8` |
| 134 | `theorem` | [map_closureS](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasic.lean/declarations/map-closures.md) | 758 | `result-track:210ae8a02a3f3f4643d03248d6ff388a44c3ed6356271356b641ce5c914c5795` |
| 135 | `def` | [inclusion](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasic.lean/declarations/inclusion.md) | 769 | `declaration-track:0a1336a2d0f9af3f1d5fffe41d202b5bc724a9380ddf09e1f8fffec1eaf0e1cd` |
| 136 | `theorem` | [inclusion_injective](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasic.lean/declarations/inclusion-injective.md) | 772 | `result-track:4da9a14c28ce3a722aa399c18dd384f8682bf52099efdae25bbe77b4a3065955` |
| 137 | `theorem` | [rangeS_subtype](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasic.lean/declarations/ranges-subtype.md) | 776 | `result-track:f486bf4bac491387d53abe307aa8589eb6417df2d6808ab62272ad0d51368cd1` |
| 138 | `theorem` | [range_fst](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasic.lean/declarations/range-fst.md) | 780 | `result-track:49e795d7421b01f75f872fe1ddd27f647701242706ce7561b7a0fb3440601f64` |
| 139 | `theorem` | [range_snd](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasic.lean/declarations/range-snd.md) | 784 | `result-track:ad63b48570903584c049697e0745f7f07e5715ab01be692faa1bc4fad382bdf4` |
| 140 | `theorem` | [prod_bot_sup_bot_prod](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasic.lean/declarations/prod-bot-sup-bot-prod.md) | 788 | `result-track:c623ee45883beff211450af3a3081c47c3f9dc477475379d33793490be4bbbf1` |
| 141 | `def` | [subsemiringCongr](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasic.lean/declarations/subsemiringcongr.md) | 804 | `declaration-track:0c2f7f53cc1bcd6820e2d3109057a276b2aea5438bdabcd4e6c6127cc9f9134c` |
| 142 | `def` | [ofLeftInverseS](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasic.lean/declarations/ofleftinverses.md) | 811 | `declaration-track:3df3b022914e6ddd21dbd4528dd685123f10ee36132b28c8a2e208150d7de8d0` |
| 143 | `theorem` | [ofLeftInverseS_apply](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasic.lean/declarations/ofleftinverses-apply.md) | 822 | `result-track:f50b2590594b7719dd66f8cbf0cdcdb709401c25bf0bf209b4ab68a47cfb6971` |
| 144 | `theorem` | [ofLeftInverseS_symm_apply](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasic.lean/declarations/ofleftinverses-symm-apply.md) | 827 | `result-track:16356398e59623688754eb9f101dda61b87ffa1e16dac9d4a6b85468050676c4` |
| 145 | `def` | [subsemiringMap](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasic.lean/declarations/subsemiringmap.md) | 833 | `declaration-track:91589023364da267b2547c7d4cf194b894462282faf7a73965afdcfefdf54395` |
| 146 | `theorem` | [subsemiringMap_apply_coe](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasic.lean/declarations/subsemiringmap-apply-coe.md) | 837 | `result-track:d6b8c5069c25656cea42e3465da7ab480248652cdd00f8a0147d082bc63c9070` |
| 147 | `theorem` | [subsemiringMap_symm_apply_coe](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasic.lean/declarations/subsemiringmap-symm-apply-coe.md) | 842 | `result-track:3994b3ebbf6e5fc174c114376418b8cbe149f40f7e0851f1a8f7ef7c51d4c55b` |
| 148 | `instance` | [smul](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasic.lean/declarations/smul.md) | 871 | `declaration-track:904a1c1761aa8104f84204775cf3d2f9f8082072e0a0dabb593b2ca574296a41` |
| 149 | `theorem` | [smul_def](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasic.lean/declarations/smul-def.md) | 874 | `result-track:82c2901350a4b3cabd88e9e96b8bd81d9946eda830a301d6c95d921e6138ef4f` |
| 150 | `instance` | [smulCommClass_left](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasic.lean/declarations/smulcommclass-left.md) | 877 | `declaration-track:c21f622590d84709a864fdd7047e2e4e722137fe250386fc4622e1715e438d13` |
| 151 | `instance` | [smulCommClass_right](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasic.lean/declarations/smulcommclass-right.md) | 881 | `declaration-track:d2fcbab9c21e934a2382cb9872900fe553e10eb075a5ea793f5740e557c2278d` |
| 152 | `instance` | [isScalarTower](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasic.lean/declarations/isscalartower.md) | 886 | `declaration-track:9a797cf63c94681fa082068c5109ed2925d153a49351cbbaabaacfc222d7185a` |
| 153 | `instance` | [(anonymous)](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasic.lean/declarations/instance-source-edition-8.md) | 891 | `declaration-track:a5642213403cd4f4f510be287576e378a3fdb78bbb79997d1590cd01b73250cf` |
| 154 | `instance` | [faithfulSMul](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasic.lean/declarations/faithfulsmul.md) | 895 | `declaration-track:d6205b0ad0d3bcce68cbdbb755c1092f884b2c581d201ff26e42dcf288751d01` |
| 155 | `instance` | [(anonymous)](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasic.lean/declarations/instance-source-edition-3.md) | 898 | `declaration-track:34c978ff18543e4c2ed79f3ac3974df2655f13ccfa2c793c659830edf2746a54` |
| 156 | `instance` | [(anonymous)](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasic.lean/declarations/instance-source-edition-6.md) | 904 | `declaration-track:81d335283d28430a3691fc7ca6022299888ca4ecafd7e34c209f560846590945` |
| 157 | `instance` | [mulAction](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasic.lean/declarations/mulaction.md) | 912 | `declaration-track:b7cbfa25357ffcabc544985fcfc0ad042f0b780add909468cc83be035a660d1d` |
| 158 | `instance` | [distribMulAction](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasic.lean/declarations/distribmulaction.md) | 916 | `declaration-track:4fff4b06ff9408f9c1aa8b92ee76ef52c625d266e8bbbe7078147522ecf0ce63` |
| 159 | `instance` | [(anonymous)](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasic.lean/declarations/instance-source-edition-11.md) | 920 | `declaration-track:fa5b4a2bba6dc2831f956744074178a94429baf06c957012f5c009b58a542744` |
| 160 | `instance` | [mulDistribMulAction](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasic.lean/declarations/muldistribmulaction.md) | 926 | `declaration-track:cb77baa52c44b91442ecf29e0ba73198ad1c724b7482273b38ab86f31777775a` |
| 161 | `instance` | [(anonymous)](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasic.lean/declarations/instance-source-edition-9.md) | 930 | `declaration-track:b303c2bb391b25419ec04dbcbc18c1f61e4b984ea248c099c02d568eea895e85` |
| 162 | `instance` | [mulActionWithZero](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasic.lean/declarations/mulactionwithzero.md) | 936 | `declaration-track:eac014a3316e2b64d808dcbdc65cbcf3d3eadf70fb402a73cf0d2894262aa40d` |
| 163 | `instance` | [(anonymous)](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasic.lean/declarations/instance-source-edition-2.md) | 940 | `declaration-track:33f0b2720af31743c9d6fafd3b8b2da2cdedb408bdc3848ee9c5e316e15baf78` |
| 164 | `instance` | [module](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasic.lean/declarations/module.md) | 947 | `declaration-track:20dbfd86803cee11aed976397eb5ed32542d6b18664c370b973d501a82e9ce45` |
| 165 | `instance` | [(anonymous)](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasic.lean/declarations/instance-source-edition-10.md) | 951 | `declaration-track:bbc8adac9cc48369b8739e6ac9c4114ecbab226dadd7752d84eb342ce443669b` |
| 166 | `instance` | [center.smulCommClass_left](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasic.lean/declarations/center-smulcommclass-left.md) | 955 | `declaration-track:a6f3675637d963ba916fdcb6d4922e8463c68245ad5afde95ae1f74e167d08a3` |
| 167 | `instance` | [center.smulCommClass_right](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasic.lean/declarations/center-smulcommclass-right.md) | 959 | `declaration-track:a0ff156c8604511b498e491f6953b7f2a34e4fe7d304df945f66d8b59272f3b7` |
| 168 | `lemma` | [closure_le_centralizer_centralizer](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasic.lean/declarations/closure-le-centralizer-centralizer.md) | 962 | `result-track:c4c18b0701c07fec56261e3f4ee92e41eb108deca586cc36ec5ef0bc5007107a` |
| 169 | `abbrev` | [closureCommSemiringOfComm](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasic.lean/declarations/closurecommsemiringofcomm.md) | 967 | `declaration-track:6fec78468e58b5423461194f885c62b6dad2cce987f2c329fdf2f2fd609ee25c` |
| 170 | `theorem` | [map_comap_eq](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasic.lean/declarations/map-comap-eq.md) | 980 | `result-track:419e283da493c26f09c55332a565d78548f53939479b3de49d96e46f6f1ba5b2` |
| 171 | `theorem` | [map_comap_eq_self](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasic.lean/declarations/map-comap-eq-self.md) | 983 | `result-track:ba8848ab8b438a9fe6cc16d2aea5b1ab715e6b0d280bc87cbc57bbd0700566d7` |
| 172 | `theorem` | [map_comap_eq_self_of_surjective](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasic.lean/declarations/map-comap-eq-self-of-surjective.md) | 987 | `result-track:ebc4df223cc9ab86bdbee2a7ad5c6ede1a9695e844f629d2fc98af1b3eb32bb4` |
| 173 | `theorem` | [comap_map_eq_self_of_injective](../../../../AssociativeRingsAndAlgebras/RingSubsemiringBasic.lean/declarations/comap-map-eq-self-of-injective.md) | 991 | `result-track:fedc5452e866a6d3de8afd74cf7770f877ee9c11c1412db40e427e19ebaec8a5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b104f71abb84a3c26a1467e7bb42c758ae6645be829dae315e0e2400b397fb54 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantc1d1f0cf660cdf82ae7b1b295b2b28bc4cdbbc2c3da21d4e16d85fcd1074d76c.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantc1d1f0cf660cdf82ae7b1b295b2b28bc4cdbbc2c3da21d4e16d85fcd1074d76c.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
