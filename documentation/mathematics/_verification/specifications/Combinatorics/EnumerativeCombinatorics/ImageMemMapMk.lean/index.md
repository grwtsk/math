# Verification target: Image Mem Map Mk

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "65c4620da60bd1530170a0508cd47d6fe6cc7f60",
  "lexical_observation_count": 127,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Image/Variant400ab14d254204353798efbeaffb0f8f5e9ea08a55fb677c1490695b0b69909f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../Combinatorics/EnumerativeCombinatorics/ImageMemMapMk.lean/index.md) · [Full source](../../../../../Combinatorics/EnumerativeCombinatorics/ImageMemMapMk.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `65c4620da60bd1530170a0508cd47d6fe6cc7f60`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Image/Variant400ab14d254204353798efbeaffb0f8f5e9ea08a55fb677c1490695b0b69909f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Image/Variant400ab14d254204353798efbeaffb0f8f5e9ea08a55fb677c1490695b0b69909f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.NeZero` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finset.Attach` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finset.Disjoint` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finset.Erase` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finset.Filter` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finset.Range` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finset.SDiff` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [map](../../../../../Combinatorics/EnumerativeCombinatorics/ImageMemMapMk.lean/declarations/map.md) | 51 | `declaration-track:86d2bf0b05e81e0c4de6a394d2db04d4dabb944e46a512570e5a90d7151068d0` |
| 2 | `theorem` | [map_val](../../../../../Combinatorics/EnumerativeCombinatorics/ImageMemMapMk.lean/declarations/map-val.md) | 55 | `result-track:619df1ce39db7fdeb027659186c59cdfabc5f9236b461b69821d85aee425a907` |
| 3 | `theorem` | [map_empty](../../../../../Combinatorics/EnumerativeCombinatorics/ImageMemMapMk.lean/declarations/map-empty.md) | 59 | `result-track:4629cefaee3bf0d3dfb52716e3380f33be47e9da923526b7d3ff29cb954c01a1` |
| 4 | `theorem` | [mem_map](../../../../../Combinatorics/EnumerativeCombinatorics/ImageMemMapMk.lean/declarations/mem-map.md) | 65 | `result-track:030129a0db457a8e96159cb2605b78878f6ae70ba55f7a93617f269356b5e80c` |
| 5 | `theorem` | [mem_map_equiv](../../../../../Combinatorics/EnumerativeCombinatorics/ImageMemMapMk.lean/declarations/mem-map-equiv.md) | 70 | `result-track:73b0a2ec5a5e93517d69d13192542cc09957fb51cafe07d4246cf4d25d91dda8` |
| 6 | `theorem` | [mem_map'](../../../../../Combinatorics/EnumerativeCombinatorics/ImageMemMapMk.lean/declarations/mem-map-source-edition-2.md) | 78 | `result-track:8ae602d68c07ccc8619acb737af5b8cada850e37a9b9c8333e15a8cbbb6c585a` |
| 7 | `theorem` | [mem_map_mk](../../../../../Combinatorics/EnumerativeCombinatorics/ImageMemMapMk.lean/declarations/mem-map-mk.md) | 82 | `result-track:9b14b945ac18ecf057c773171b35e4eccede86a456cfb55cee9fda19506d32d6` |
| 8 | `theorem` | [mem_map_of_mem](../../../../../Combinatorics/EnumerativeCombinatorics/ImageMemMapMk.lean/declarations/mem-map-of-mem.md) | 86 | `result-track:e77ba3e0d6494e4b753a7b94ee8d5f32ff153ccffe2f5ddd0823accda6280bfe` |
| 9 | `theorem` | [forall_mem_map](../../../../../Combinatorics/EnumerativeCombinatorics/ImageMemMapMk.lean/declarations/forall-mem-map.md) | 89 | `result-track:1436755dd86dbda74cf356adb47295d01d1ea9b23f682b6a1628140bbf2d5a21` |
| 10 | `theorem` | [apply_coe_mem_map](../../../../../Combinatorics/EnumerativeCombinatorics/ImageMemMapMk.lean/declarations/apply-coe-mem-map.md) | 96 | `result-track:a45b35411411f532b8f8912084296446088e59e0de6521049d574010197c6c22` |
| 11 | `theorem` | [coe_map](../../../../../Combinatorics/EnumerativeCombinatorics/ImageMemMapMk.lean/declarations/coe-map.md) | 100 | `result-track:e4bbcc4672e8ceaee1b1778ab20033546b4720f5d114cb30000468f1c686cc23` |
| 12 | `theorem` | [coe_map_subset_range](../../../../../Combinatorics/EnumerativeCombinatorics/ImageMemMapMk.lean/declarations/coe-map-subset-range.md) | 103 | `result-track:0b7daba9ef3036fb4293bae581ae01a17386d1a5072f9204dc32b3bb60eeccb1` |
| 13 | `theorem` | [map_perm](../../../../../Combinatorics/EnumerativeCombinatorics/ImageMemMapMk.lean/declarations/map-perm.md) | 110 | `result-track:062b45f952d1121e9476f53b8df7f7a7cce283c3df3ec71b4c5d9d2df1cd48e1` |
| 14 | `theorem` | [map_toFinset](../../../../../Combinatorics/EnumerativeCombinatorics/ImageMemMapMk.lean/declarations/map-tofinset.md) | 113 | `result-track:1aafa44dd8c770b49a035d17280938e7348418064f9c8c5f0a7a384091dfa495` |
| 15 | `theorem` | [map_refl](../../../../../Combinatorics/EnumerativeCombinatorics/ImageMemMapMk.lean/declarations/map-refl.md) | 118 | `result-track:099e21458c8071e7840206d8fe732953e7ad8e00950b9b5ecbb1297ff755a25d` |
| 16 | `theorem` | [map_cast_heq](../../../../../Combinatorics/EnumerativeCombinatorics/ImageMemMapMk.lean/declarations/map-cast-heq.md) | 122 | `result-track:d94b63e270520eb1fd0d46372470a0dd8fb32c9069a7128be2e73dc71b856f10` |
| 17 | `theorem` | [map_map](../../../../../Combinatorics/EnumerativeCombinatorics/ImageMemMapMk.lean/declarations/map-map.md) | 127 | `result-track:e01d3aafd9346c42d30e9d7b0c828e4f39fa9e067d0de83a60f1ec130f04cf56` |
| 18 | `theorem` | [map_comm](../../../../../Combinatorics/EnumerativeCombinatorics/ImageMemMapMk.lean/declarations/map-comm.md) | 130 | `result-track:336b13c6af7bd57f5034fc8de22bd63641a12a40c0e622c046bcb7d4995e18f8` |
| 19 | `theorem` | [_root_.Function.Semiconj.finset_map](../../../../../Combinatorics/EnumerativeCombinatorics/ImageMemMapMk.lean/declarations/root-function-semiconj-finset-map.md) | 134 | `result-track:be779086f6c3f0e96fbc36aee0b09163bdd5d212f0965f1e43f84eb2b3e0edbe` |
| 20 | `theorem` | [_root_.Function.Commute.finset_map](../../../../../Combinatorics/EnumerativeCombinatorics/ImageMemMapMk.lean/declarations/root-function-commute-finset-map.md) | 138 | `result-track:32c4bf7d5c7e570771a3293ac7407423fcd82f03aabbf8dc26a96d4841f61f0f` |
| 21 | `theorem` | [map_subset_map](../../../../../Combinatorics/EnumerativeCombinatorics/ImageMemMapMk.lean/declarations/map-subset-map.md) | 143 | `result-track:6bbea2e65c4ef506ccf644cdc8f9de9359c6113ae97e272841b15f7807641cbd` |
| 22 | `theorem` | [subset_map_symm](../../../../../Combinatorics/EnumerativeCombinatorics/ImageMemMapMk.lean/declarations/subset-map-symm.md) | 150 | `result-track:606479c1531713f1e65df3bf42017f63e54b8162e6fc996c554ce57ab0a0c4ce` |
| 23 | `theorem` | [map_symm_subset](../../../../../Combinatorics/EnumerativeCombinatorics/ImageMemMapMk.lean/declarations/map-symm-subset.md) | 158 | `result-track:b1025d68f73f86e75a698f53c7efdc820434832afc97ac05b3706d7b67954a96` |
| 24 | `def` | [mapEmbedding](../../../../../Combinatorics/EnumerativeCombinatorics/ImageMemMapMk.lean/declarations/mapembedding.md) | 163 | `declaration-track:7fb70f239414f8d7fc715368e3224da829802b308081cbd079c86db8ae7b75be` |
| 25 | `theorem` | [map_inj](../../../../../Combinatorics/EnumerativeCombinatorics/ImageMemMapMk.lean/declarations/map-inj.md) | 167 | `result-track:2ddde64568c4632d0aadf234e79248c81b4da89ed753e344b22fae05a9d4925d` |
| 26 | `theorem` | [map_injective](../../../../../Combinatorics/EnumerativeCombinatorics/ImageMemMapMk.lean/declarations/map-injective.md) | 170 | `result-track:6e00aa40dfe70913f4adfa040da1ebe3fd96b595f71d2fa3c0427697a927017a` |
| 27 | `theorem` | [map_ssubset_map](../../../../../Combinatorics/EnumerativeCombinatorics/ImageMemMapMk.lean/declarations/map-ssubset-map.md) | 174 | `result-track:fb6fe3e2dd293528a6c0573ef101dea1084e5a36d2c31bdaa0157904b0783de3` |
| 28 | `theorem` | [mapEmbedding_apply](../../../../../Combinatorics/EnumerativeCombinatorics/ImageMemMapMk.lean/declarations/mapembedding-apply.md) | 179 | `result-track:3ed479cfe79f3d5196ab97f5e6afb1b704f5ef43ad4f6ff84dbef6b9542d995a` |
| 29 | `theorem` | [filter_map](../../../../../Combinatorics/EnumerativeCombinatorics/ImageMemMapMk.lean/declarations/filter-map.md) | 182 | `result-track:e871b28d3d5298a43af85d78dd41af80228f66f23fcdd61e213362179a4de5da` |
| 30 | `lemma` | [map_filter'](../../../../../Combinatorics/EnumerativeCombinatorics/ImageMemMapMk.lean/declarations/map-filter-source-edition-2.md) | 186 | `result-track:ff6c7445e89ce5a488614556b9aa822e50174b1ee48261368d26d32da2a7c49a` |
| 31 | `lemma` | [filter_attach'](../../../../../Combinatorics/EnumerativeCombinatorics/ImageMemMapMk.lean/declarations/filter-attach.md) | 191 | `result-track:5a51f662923071c246e05cdabf0b3a7d8286c309d54e021cac4abd67ba6422cc` |
| 32 | `lemma` | [filter_attach](../../../../../Combinatorics/EnumerativeCombinatorics/ImageMemMapMk.lean/declarations/filter-attach-source-edition-2.md) | 197 | `result-track:d94455329d69fb8feb512ed37bc18b3ed64327168d332b9a8e0606e33d518d6b` |
| 33 | `theorem` | [map_filter](../../../../../Combinatorics/EnumerativeCombinatorics/ImageMemMapMk.lean/declarations/map-filter.md) | 202 | `result-track:07da161837475a7ac0ae0c06d499afe88e467a56b0b6c1473e8db67410b8b1df` |
| 34 | `theorem` | [disjoint_map](../../../../../Combinatorics/EnumerativeCombinatorics/ImageMemMapMk.lean/declarations/disjoint-map.md) | 207 | `result-track:1723f87a41fa2b01fad3d71b3a4d21cebd0403f2716cc41537692465552c65c4` |
| 35 | `theorem` | [map_disjUnion](../../../../../Combinatorics/EnumerativeCombinatorics/ImageMemMapMk.lean/declarations/map-disjunion-source-edition-2.md) | 211 | `result-track:8aa6192388b50e09560b6448cc920d1501e4f9871a6c7af8f46244a396abbece` |
| 36 | `theorem` | [map_disjUnion'](../../../../../Combinatorics/EnumerativeCombinatorics/ImageMemMapMk.lean/declarations/map-disjunion.md) | 216 | `result-track:878eaede18f8c05294013bcdcb75c7373e9f93bfe94d7c5a375e532d184c9e82` |
| 37 | `theorem` | [map_union](../../../../../Combinatorics/EnumerativeCombinatorics/ImageMemMapMk.lean/declarations/map-union.md) | 220 | `result-track:ab50a8641776f05b0d8b7260d23bab783062a48107b86a972386178dfb1d5195` |
| 38 | `theorem` | [map_inter](../../../../../Combinatorics/EnumerativeCombinatorics/ImageMemMapMk.lean/declarations/map-inter.md) | 224 | `result-track:2a41f3fe08763cfae82d1986644d87af81e93fd2797d1286ac3bcef2fb3398d6` |
| 39 | `theorem` | [map_singleton](../../../../../Combinatorics/EnumerativeCombinatorics/ImageMemMapMk.lean/declarations/map-singleton.md) | 229 | `result-track:a25acc861c062bd4d1e1b0ed599bb3130f5eca53daf61a56ad13c7a95e7ba7ae` |
| 40 | `theorem` | [map_insert](../../../../../Combinatorics/EnumerativeCombinatorics/ImageMemMapMk.lean/declarations/map-insert.md) | 233 | `result-track:e5e8744372d08a17c779d33fa33e64acd47104a700597f516b17e5990327513c` |
| 41 | `theorem` | [map_cons](../../../../../Combinatorics/EnumerativeCombinatorics/ImageMemMapMk.lean/declarations/map-cons.md) | 238 | `result-track:f1ea9f15de8530bbddd368da2f98e92092300bfcd3e8434eba5004be5ae4443f` |
| 42 | `theorem` | [map_eq_empty](../../../../../Combinatorics/EnumerativeCombinatorics/ImageMemMapMk.lean/declarations/map-eq-empty.md) | 243 | `result-track:7abfa089df0c543f4f5a4b751cbabb63791802c1772c9d71423540d997cf0893` |
| 43 | `theorem` | [map_nonempty](../../../../../Combinatorics/EnumerativeCombinatorics/ImageMemMapMk.lean/declarations/map-nonempty.md) | 246 | `result-track:6f85613c28c9d51ef4531e966bb8b2baddf8fdfb1fd3d9181f7a6b80f342c624` |
| 44 | `theorem` | [map_nontrivial](../../../../../Combinatorics/EnumerativeCombinatorics/ImageMemMapMk.lean/declarations/map-nontrivial.md) | 253 | `result-track:bd77ba1b4e1720b37f25304f6eaa3393c941749082240f4ae1e394f08614b362` |
| 45 | `theorem` | [attach_map_val](../../../../../Combinatorics/EnumerativeCombinatorics/ImageMemMapMk.lean/declarations/attach-map-val.md) | 256 | `result-track:4ef6784226ceeb48b1126b4d5a850c37f0fa2e1aeef994b1d0039f4726408385` |
| 46 | `theorem` | [range_add_one'](../../../../../Combinatorics/EnumerativeCombinatorics/ImageMemMapMk.lean/declarations/range-add-one.md) | 261 | `result-track:a354b58c649461db02cbd0b3e6529e953b893acc0aa1756be50ef495f8d854a2` |
| 47 | `def` | [image](../../../../../Combinatorics/EnumerativeCombinatorics/ImageMemMapMk.lean/declarations/image.md) | 273 | `declaration-track:56d04dbb683103d35969939cc03cd722a430925cc402da95b155706f7635d0cc` |
| 48 | `theorem` | [image_val](../../../../../Combinatorics/EnumerativeCombinatorics/ImageMemMapMk.lean/declarations/image-val.md) | 277 | `result-track:320723198e52ba127cb71107910e45d9b47455732ec62236fbeec6eeb053cee3` |
| 49 | `theorem` | [image_empty](../../../../../Combinatorics/EnumerativeCombinatorics/ImageMemMapMk.lean/declarations/image-empty.md) | 281 | `result-track:9cb0b4bb3cb096c0545c17c006ec2bf657392f1d833fc023b4e2b4b550851fde` |
| 50 | `theorem` | [mem_image](../../../../../Combinatorics/EnumerativeCombinatorics/ImageMemMapMk.lean/declarations/mem-image.md) | 287 | `result-track:abfcd554a823d921193c3f677705e95c6169bfe2f3808a6a959aebb039d7ad51` |
| 51 | `theorem` | [mem_image_of_mem](../../../../../Combinatorics/EnumerativeCombinatorics/ImageMemMapMk.lean/declarations/mem-image-of-mem.md) | 290 | `result-track:9b453b5e05f63fcf3bafc2b6cfc5231597a658b17149431972a94d492b53abaa` |
| 52 | `lemma` | [forall_mem_image](../../../../../Combinatorics/EnumerativeCombinatorics/ImageMemMapMk.lean/declarations/forall-mem-image.md) | 293 | `result-track:891c4ad55a1b11b4747c8f4dca54a397424e23472414dc2a2510fee91d9ef921` |
| 53 | `lemma` | [exists_mem_image](../../../../../Combinatorics/EnumerativeCombinatorics/ImageMemMapMk.lean/declarations/exists-mem-image.md) | 294 | `result-track:31a4fb10131706f89dd082cfd6df847d6a4ac4a30f524849f1fd3346d9692009` |
| 54 | `theorem` | [map_eq_image](../../../../../Combinatorics/EnumerativeCombinatorics/ImageMemMapMk.lean/declarations/map-eq-image.md) | 298 | `result-track:af8603e9fd6bc60fd52b14459c24d9ca876032dd26e6ca71c10f4531865fd989` |
| 55 | `theorem` | [mem_image_const](../../../../../Combinatorics/EnumerativeCombinatorics/ImageMemMapMk.lean/declarations/mem-image-const.md) | 302 | `result-track:491ab81807102684b9b1373275e2e9a2efd9e7dc85b0ea702b099cb14e65d980` |
| 56 | `theorem` | [mem_image_const_self](../../../../../Combinatorics/EnumerativeCombinatorics/ImageMemMapMk.lean/declarations/mem-image-const-self.md) | 307 | `result-track:4773557874d0e4a446204368642f700491960e49c02e2c3f0c0669133269a339` |
| 57 | `instance` | [canLift](../../../../../Combinatorics/EnumerativeCombinatorics/ImageMemMapMk.lean/declarations/canlift.md) | 310 | `declaration-track:4e7c0c1486ea21be22d6d0a5309a4aa52f74dd79bbab41c5a764b32d61575e30` |
| 58 | `theorem` | [image_congr](../../../../../Combinatorics/EnumerativeCombinatorics/ImageMemMapMk.lean/declarations/image-congr.md) | 317 | `result-track:9728c7e8abaf858e1e94230d838a4871c531fcb1a1c188b7e8ae239534ecf4c1` |
| 59 | `theorem` | [_root_.Function.Injective.mem_finset_image](../../../../../Combinatorics/EnumerativeCombinatorics/ImageMemMapMk.lean/declarations/root-function-injective-mem-finset-image.md) | 322 | `result-track:49b57f1173345aabf3e38dfb79352429c37dc37a452d320f96106ee96b068b43` |
| 60 | `theorem` | [coe_image](../../../../../Combinatorics/EnumerativeCombinatorics/ImageMemMapMk.lean/declarations/coe-image.md) | 330 | `result-track:1222a30b12e039f53b45b54a085f82841e2683b624ff61cb81a1e6ea7cb1cc97` |
| 61 | `lemma` | [image_nonempty](../../../../../Combinatorics/EnumerativeCombinatorics/ImageMemMapMk.lean/declarations/image-nonempty.md) | 334 | `result-track:ec2a8a8db07f80b84e902e03f9de6cc79ba311a7fc7da719ea23876929ed8637` |
| 62 | `theorem` | [Nonempty.image](../../../../../Combinatorics/EnumerativeCombinatorics/ImageMemMapMk.lean/declarations/nonempty-image.md) | 338 | `result-track:719ece07db4d87ae830176ea66c84b09d2b362897e91510156b53bbb80f9a4c4` |
| 63 | `theorem` | [image_toFinset](../../../../../Combinatorics/EnumerativeCombinatorics/ImageMemMapMk.lean/declarations/image-tofinset.md) | 343 | `result-track:d44acc13534c2b36742fd551ac2fb4a87d63c048c1879392a706ca674d095f04` |
| 64 | `theorem` | [image_val_of_injOn](../../../../../Combinatorics/EnumerativeCombinatorics/ImageMemMapMk.lean/declarations/image-val-of-injon.md) | 347 | `result-track:32fedefb62a19753a06615f7b45841439de8e719f8aaa2b31276853ceb75d81b` |
| 65 | `theorem` | [image_id](../../../../../Combinatorics/EnumerativeCombinatorics/ImageMemMapMk.lean/declarations/image-id.md) | 351 | `result-track:3558ee2338b5555d398762194a5cc9accf4014d5fa92e23b4bcd6df395e0ff5a` |
| 66 | `theorem` | [image_id'](../../../../../Combinatorics/EnumerativeCombinatorics/ImageMemMapMk.lean/declarations/image-id-source-edition-2.md) | 355 | `result-track:44cffd905b4957e9c1cf3d06dc9f330634d4f456b9dc8fc3e7990480f128a3be` |
| 67 | `theorem` | [image_image](../../../../../Combinatorics/EnumerativeCombinatorics/ImageMemMapMk.lean/declarations/image-image.md) | 358 | `result-track:190be04346fb07629a640e18a7bdeae7518fb17a57ab541e7a2a2238f2d78370` |
| 68 | `theorem` | [image_comm](../../../../../Combinatorics/EnumerativeCombinatorics/ImageMemMapMk.lean/declarations/image-comm.md) | 361 | `result-track:57f3903d500c75b173a7a54fe43f654d6ffccd55c7f1906c0a2c3f3e6023a5ad` |
| 69 | `theorem` | [_root_.Function.Semiconj.finset_image](../../../../../Combinatorics/EnumerativeCombinatorics/ImageMemMapMk.lean/declarations/root-function-semiconj-finset-image.md) | 365 | `result-track:559250a296bdded28940d4e90420e69307038919dcb8b36a49f29a50d3464a59` |
| 70 | `theorem` | [_root_.Function.Commute.finset_image](../../../../../Combinatorics/EnumerativeCombinatorics/ImageMemMapMk.lean/declarations/root-function-commute-finset-image.md) | 369 | `result-track:4a9b354d6b4dfb2b39224e673d22c52ed104372e9114f37973027c13d1ba57d2` |
| 71 | `theorem` | [image_subset_image](../../../../../Combinatorics/EnumerativeCombinatorics/ImageMemMapMk.lean/declarations/image-subset-image.md) | 373 | `result-track:f5f1108e610743a7738fef319ad8b9b21630a327de00d8d582e89e1c37ee2143` |
| 72 | `theorem` | [image_subset_iff](../../../../../Combinatorics/EnumerativeCombinatorics/ImageMemMapMk.lean/declarations/image-subset-iff.md) | 376 | `result-track:ae1eea9406cc1aa9f23d44939d962106fd61d697c95e8f7d7c989fa002cf1d98` |
| 73 | `theorem` | [image_mono](../../../../../Combinatorics/EnumerativeCombinatorics/ImageMemMapMk.lean/declarations/image-mono.md) | 381 | `result-track:857bd1bcdeaee7c522fed3256bbbedb28bfde808521624c0fe75e22bd9be9eca` |
| 74 | `lemma` | [image_injective](../../../../../Combinatorics/EnumerativeCombinatorics/ImageMemMapMk.lean/declarations/image-injective.md) | 383 | `result-track:2f3bbbaf67e2a60d7032f523faff8c5af879cf18d195152d0f253d88cb49e95c` |
| 75 | `lemma` | [image_inj](../../../../../Combinatorics/EnumerativeCombinatorics/ImageMemMapMk.lean/declarations/image-inj.md) | 386 | `result-track:4e0d08d2db18a445a194090cfe2074782973c80970257d411ae7d0979631b578` |
| 76 | `theorem` | [image_subset_image_iff](../../../../../Combinatorics/EnumerativeCombinatorics/ImageMemMapMk.lean/declarations/image-subset-image-iff.md) | 389 | `result-track:64d3e4887b60636ebf32c57943364fb1b85e2501c2a509d0be1e8752a4d7e55d` |
| 77 | `lemma` | [image_ssubset_image](../../../../../Combinatorics/EnumerativeCombinatorics/ImageMemMapMk.lean/declarations/image-ssubset-image.md) | 393 | `result-track:4e59e54336613283f2350d2e798825ebd3213883f252e9d15803784c642a4eab` |
| 78 | `theorem` | [coe_image_subset_range](../../../../../Combinatorics/EnumerativeCombinatorics/ImageMemMapMk.lean/declarations/coe-image-subset-range.md) | 397 | `result-track:464ac4bc22cc620aacd623e9ca5c9bbabb18fac9ac4c7aaf158590ea74aff6ef` |
| 79 | `theorem` | [filter_image](../../../../../Combinatorics/EnumerativeCombinatorics/ImageMemMapMk.lean/declarations/filter-image.md) | 402 | `result-track:cc25c012ea42bd2a743c7797f015fd6db2610edf6b6c6b1ab3d1a32c9d6d979b` |
| 80 | `theorem` | [fiber_nonempty_iff_mem_image](../../../../../Combinatorics/EnumerativeCombinatorics/ImageMemMapMk.lean/declarations/fiber-nonempty-iff-mem-image.md) | 410 | `result-track:a879e366ad595d683cd63204c25e9b211f70286ea61d43cba673f93eb0d0099c` |
| 81 | `theorem` | [image_union](../../../../../Combinatorics/EnumerativeCombinatorics/ImageMemMapMk.lean/declarations/image-union.md) | 413 | `result-track:e18618046c5292aa5c023ed0f2d21599adab2cc2b84ad25815a8c9a84886e69e` |
| 82 | `theorem` | [image_inter_subset](../../../../../Combinatorics/EnumerativeCombinatorics/ImageMemMapMk.lean/declarations/image-inter-subset.md) | 417 | `result-track:f6863aa8aa441a8c3fc51fedff8669259406064c69d916ee512b3c85a665fd5a` |
| 83 | `theorem` | [image_inter_of_injOn](../../../../../Combinatorics/EnumerativeCombinatorics/ImageMemMapMk.lean/declarations/image-inter-of-injon.md) | 421 | `result-track:bca111b64313b787d380abb8db3c7c8ab24fc871a21275b00ca528a9a9a8d23b` |
| 84 | `theorem` | [image_inter](../../../../../Combinatorics/EnumerativeCombinatorics/ImageMemMapMk.lean/declarations/image-inter.md) | 427 | `result-track:c60eaf7e8aa3e97e0c808dd931ba2d875d5c1129d1cd21ccc2b24c5587905b31` |
| 85 | `theorem` | [image_singleton](../../../../../Combinatorics/EnumerativeCombinatorics/ImageMemMapMk.lean/declarations/image-singleton.md) | 432 | `result-track:88c17a580a2df77882591072ba059cd3a59a5602bfa6141604279c11f7fba9e0` |
| 86 | `theorem` | [image_insert](../../../../../Combinatorics/EnumerativeCombinatorics/ImageMemMapMk.lean/declarations/image-insert.md) | 436 | `result-track:3bce9db5067e2cb2e956bc6d7c4ae0464140a27014f9c877db525f14a2ff0563` |
| 87 | `theorem` | [erase_image_subset_image_erase](../../../../../Combinatorics/EnumerativeCombinatorics/ImageMemMapMk.lean/declarations/erase-image-subset-image-erase.md) | 440 | `result-track:a5920302a4a57a3f57da1246766b344d375d385accf9cf2be32c180f2a469732` |
| 88 | `theorem` | [image_erase](../../../../../Combinatorics/EnumerativeCombinatorics/ImageMemMapMk.lean/declarations/image-erase.md) | 447 | `result-track:f95fed7eb2e9257d573ecfbbdac22ce26ea9522e269f9559db228db331b80154` |
| 89 | `theorem` | [image_eq_empty](../../../../../Combinatorics/EnumerativeCombinatorics/ImageMemMapMk.lean/declarations/image-eq-empty.md) | 452 | `result-track:c5b5a9e03a7a9f0d632940bfa2cbff812cb327746b26baed99a973892714e9e4` |
| 90 | `theorem` | [image_sdiff](../../../../../Combinatorics/EnumerativeCombinatorics/ImageMemMapMk.lean/declarations/image-sdiff.md) | 454 | `result-track:61c33bff92eb2d7a248a2212fa4b4c190cbb61ccdd76459b676765e4916d4df1` |
| 91 | `lemma` | [image_sdiff_of_injOn](../../../../../Combinatorics/EnumerativeCombinatorics/ImageMemMapMk.lean/declarations/image-sdiff-of-injon.md) | 458 | `result-track:b4b21de878212f873584e86cae59cfde2dbcbedc6597c17203a81af4110397b4` |
| 92 | `theorem` | [_root_.Disjoint.of_image_finset](../../../../../Combinatorics/EnumerativeCombinatorics/ImageMemMapMk.lean/declarations/root-disjoint-of-image-finset.md) | 462 | `result-track:adb27de8b3ee1ee6e2d10077c2393554187ae9b081ad08131c2dea3320af47cc` |
| 93 | `theorem` | [mem_range_iff_mem_finset_range_of_mod_eq'](../../../../../Combinatorics/EnumerativeCombinatorics/ImageMemMapMk.lean/declarations/mem-range-iff-mem-finset-range-of-mod-eq.md) | 467 | `result-track:c051ca8297c70326695f9f47630b8b12b61bcd1e29df83435b033a324dd93463` |
| 94 | `theorem` | [mem_range_iff_mem_finset_range_of_mod_eq](../../../../../Combinatorics/EnumerativeCombinatorics/ImageMemMapMk.lean/declarations/mem-range-iff-mem-finset-range-of-mod-eq-source-edition-2.md) | 479 | `result-track:cf2fa0099964649e43e3675bb9b8a1a349761f029fff766076d6ff19b4b818f9` |
| 95 | `theorem` | [attach_image_val](../../../../../Combinatorics/EnumerativeCombinatorics/ImageMemMapMk.lean/declarations/attach-image-val.md) | 493 | `result-track:9bdf47bbe31f52450c0650c996acdbbbbfa9c2f96d8c7bfa67935f7a0473b475` |
| 96 | `theorem` | [attach_insert](../../../../../Combinatorics/EnumerativeCombinatorics/ImageMemMapMk.lean/declarations/attach-insert.md) | 497 | `result-track:112ff63d9a9622dfbbcf936c292ce7c86d395a2ba6514ec2e3e3ed9b46b49e4e` |
| 97 | `theorem` | [disjoint_image](../../../../../Combinatorics/EnumerativeCombinatorics/ImageMemMapMk.lean/declarations/disjoint-image.md) | 508 | `result-track:a4bb0f138756a9c09786d8a05a4e533d662ae2c75786e0680a8e7a5a3d7ef1d6` |
| 98 | `theorem` | [image_const](../../../../../Combinatorics/EnumerativeCombinatorics/ImageMemMapMk.lean/declarations/image-const.md) | 512 | `result-track:23d4cc74554d4f6f8dc53cbf6f1d681d3c313f4aa20dc638dcfec7995089dd05` |
| 99 | `theorem` | [map_erase](../../../../../Combinatorics/EnumerativeCombinatorics/ImageMemMapMk.lean/declarations/map-erase.md) | 516 | `result-track:850874049bc0cf7a78a9020e2fcee2678ac4c03e29b245265c4dcd1e06c414a9` |
| 100 | `def` | [filterMap](../../../../../Combinatorics/EnumerativeCombinatorics/ImageMemMapMk.lean/declarations/filtermap.md) | 534 | `declaration-track:3c4ae1aa4232dbb709c1ffd18a02b82b969c1400343ff6a7258dab75e17503cd` |
| 101 | `theorem` | [filterMap_val](../../../../../Combinatorics/EnumerativeCombinatorics/ImageMemMapMk.lean/declarations/filtermap-val.md) | 542 | `result-track:9d17143f24a4a0c045107be92c32f1de131c29280f1bde13b38e58703793cfbb` |
| 102 | `theorem` | [filterMap_empty](../../../../../Combinatorics/EnumerativeCombinatorics/ImageMemMapMk.lean/declarations/filtermap-empty.md) | 545 | `result-track:c1c49aa980de715b6f2cc5ab378dd47812b101073523a273883110a24cbaf6bf` |
| 103 | `theorem` | [mem_filterMap](../../../../../Combinatorics/EnumerativeCombinatorics/ImageMemMapMk.lean/declarations/mem-filtermap.md) | 548 | `result-track:e3399aa5251d670b5e1d419d16ae492204d5902cc6228b2bbd5d704a963a4bb6` |
| 104 | `theorem` | [coe_filterMap](../../../../../Combinatorics/EnumerativeCombinatorics/ImageMemMapMk.lean/declarations/coe-filtermap.md) | 552 | `result-track:f59978e8f0174391d8d4a23ad93294acce08788740a05f69ece0bffd062feddc` |
| 105 | `theorem` | [filterMap_some](../../../../../Combinatorics/EnumerativeCombinatorics/ImageMemMapMk.lean/declarations/filtermap-some.md) | 556 | `result-track:4283886bb23cc324a6f15fa82fa89e747089fd4abf3a395e6359cd989c89cf16` |
| 106 | `theorem` | [filterMap_mono](../../../../../Combinatorics/EnumerativeCombinatorics/ImageMemMapMk.lean/declarations/filtermap-mono.md) | 559 | `result-track:a96c52fe81542f7134ffbc708bc3fd37347f2c9743c52a9d17a4c1ebf81bc0ae` |
| 107 | `theorem` | [_root_.List.toFinset_filterMap](../../../../../Combinatorics/EnumerativeCombinatorics/ImageMemMapMk.lean/declarations/root-list-tofinset-filtermap.md) | 565 | `result-track:8f96b58abdeecad880caadd02f28b2a3cb025b4d0b65a6a1b2d4e7004a7a1881` |
| 108 | `def` | [subtype](../../../../../Combinatorics/EnumerativeCombinatorics/ImageMemMapMk.lean/declarations/subtype.md) | 578 | `declaration-track:92d7ba4000b8909b35702cfab096b9d2572cffd7d16fb394da87dec64f0e1935` |
| 109 | `theorem` | [mem_subtype](../../../../../Combinatorics/EnumerativeCombinatorics/ImageMemMapMk.lean/declarations/mem-subtype.md) | 584 | `result-track:6c1c9b34e9738ad169da9e0fbf10e85c7c82f229f6eca8c2ecfd48dd0598506d` |
| 110 | `theorem` | [subtype_eq_empty](../../../../../Combinatorics/EnumerativeCombinatorics/ImageMemMapMk.lean/declarations/subtype-eq-empty.md) | 588 | `result-track:57ddd384da4e12e389cabf3766d6305b93aec522942a30c195f436a246b44f2f` |
| 111 | `theorem` | [subtype_mono](../../../../../Combinatorics/EnumerativeCombinatorics/ImageMemMapMk.lean/declarations/subtype-mono.md) | 592 | `result-track:4ad7742a02f3f4984482cc7ed4b8c3427a849d842c730db885961c97e9848877` |
| 112 | `theorem` | [subtype_map](../../../../../Combinatorics/EnumerativeCombinatorics/ImageMemMapMk.lean/declarations/subtype-map.md) | 598 | `result-track:9c91b2844e761fb6f130c95a5ffc8b81f08a509452996870017de522c012b266` |
| 113 | `theorem` | [subtype_map_of_mem](../../../../../Combinatorics/EnumerativeCombinatorics/ImageMemMapMk.lean/declarations/subtype-map-of-mem.md) | 605 | `result-track:b3d0ea4ef552cc465d4658541cca3e23a236926aed36fefb9ff54e52a8be694f` |
| 114 | `theorem` | [property_of_mem_map_subtype](../../../../../Combinatorics/EnumerativeCombinatorics/ImageMemMapMk.lean/declarations/property-of-mem-map-subtype.md) | 611 | `result-track:5f650ed2702afe904fb72df621177f0d6e9874971776b17e39301ab6672beb73` |
| 115 | `theorem` | [notMem_map_subtype_of_not_property](../../../../../Combinatorics/EnumerativeCombinatorics/ImageMemMapMk.lean/declarations/notmem-map-subtype-of-not-property.md) | 619 | `result-track:170654b5810ac670196276c97b6e75502424bfa3bd11e5a98b2b4437af56cc96` |
| 116 | `theorem` | [map_subtype_subset](../../../../../Combinatorics/EnumerativeCombinatorics/ImageMemMapMk.lean/declarations/map-subtype-subset.md) | 629 | `result-track:371f06da767730af887a2d6d96330c08948a61a256dafd7dbe75e7cea2010b03` |
| 117 | `theorem` | [subset_set_image_iff](../../../../../Combinatorics/EnumerativeCombinatorics/ImageMemMapMk.lean/declarations/subset-set-image-iff.md) | 638 | `result-track:78b1a95fbf9b22389691cc5aafcdf73aa403452476154a7e725b5e8529cb6459` |
| 118 | `theorem` | [subset_image_iff](../../../../../Combinatorics/EnumerativeCombinatorics/ImageMemMapMk.lean/declarations/subset-image-iff.md) | 656 | `result-track:b0ea7e46c36878a976374b9544656b5087c4efdf5e9657228192a7ffabf869a9` |
| 119 | `theorem` | [range_sdiff_zero](../../../../../Combinatorics/EnumerativeCombinatorics/ImageMemMapMk.lean/declarations/range-sdiff-zero.md) | 660 | `result-track:e5ae82ad4f624d7e70d8b7f30eecb2768b5054f8aa6819d074cad60c7e11449f` |
| 120 | `theorem` | [Multiset.toFinset_map](../../../../../Combinatorics/EnumerativeCombinatorics/ImageMemMapMk.lean/declarations/multiset-tofinset-map.md) | 669 | `result-track:e381e6bd4faf3c244798f99c00e7be99745577b6bbf864096b8d8f9a0e47e706` |
| 121 | `def` | [finsetCongr](../../../../../Combinatorics/EnumerativeCombinatorics/ImageMemMapMk.lean/declarations/finsetcongr.md) | 676 | `declaration-track:44d142e0e12f6f1b8f9f9ed7a9bdf76972f4fabe9792ad79e6dd005db792e6b4` |
| 122 | `theorem` | [finsetCongr_apply](../../../../../Combinatorics/EnumerativeCombinatorics/ImageMemMapMk.lean/declarations/finsetcongr-apply.md) | 683 | `result-track:e7ec4ecb5cd2e4dd77d2639e36c611762f0ac30b7d1b392ac78519081ce74784` |
| 123 | `theorem` | [finsetCongr_refl](../../../../../Combinatorics/EnumerativeCombinatorics/ImageMemMapMk.lean/declarations/finsetcongr-refl.md) | 687 | `result-track:2a0feebdfa3dd48d012b79c4503adaa0441ca1d510e355d760f63fca448c160d` |
| 124 | `theorem` | [finsetCongr_symm](../../../../../Combinatorics/EnumerativeCombinatorics/ImageMemMapMk.lean/declarations/finsetcongr-symm.md) | 692 | `result-track:30e3ff229f1b0d9556a04d552d22fde971c8954251e0023994c33d7643fa6f5f` |
| 125 | `theorem` | [finsetCongr_trans](../../../../../Combinatorics/EnumerativeCombinatorics/ImageMemMapMk.lean/declarations/finsetcongr-trans.md) | 696 | `result-track:18d61cc739ebc2240e41f029b4b7f4a04945e3b5278a64aca765468d0b67c8b9` |
| 126 | `theorem` | [finsetCongr_toEmbedding](../../../../../Combinatorics/EnumerativeCombinatorics/ImageMemMapMk.lean/declarations/finsetcongr-toembedding.md) | 701 | `result-track:ea5e42168319a394a3cf1351edd0215fb01dd51349083b1d8f7c4801f2b80065` |
| 127 | `def` | [finsetSubtypeComm](../../../../../Combinatorics/EnumerativeCombinatorics/ImageMemMapMk.lean/declarations/finsetsubtypecomm.md) | 709 | `declaration-track:868b01fd9797ee897798b193bf5e08740b2cfacdd25bc429b0645ff29cffa267` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=643534800c87f9eb04eb35276ac3eae76306bea7a15646afec504ba8899a72dc -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/Image/Variant400ab14d254204353798efbeaffb0f8f5e9ea08a55fb677c1490695b0b69909f.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/Image/Variant400ab14d254204353798efbeaffb0f8f5e9ea08a55fb677c1490695b0b69909f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
