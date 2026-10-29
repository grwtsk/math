# Verification target: Prod Basic Prod Map

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b1c452de9c1d9ee16fdf54a5484b409d6a28411e",
  "lexical_observation_count": 69,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Varianta8d6bda1ffbbb337cda07b204f9f33cd361ea3547da01059a32e3c51663b0292.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfData/DataStructures/ProdBasicProdMap.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfData/DataStructures/ProdBasicProdMap.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b1c452de9c1d9ee16fdf54a5484b409d6a28411e`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Varianta8d6bda1ffbbb337cda07b204f9f33cd361ea3547da01059a32e3c51663b0292.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Varianta8d6bda1ffbbb337cda07b204f9f33cd361ea3547da01059a32e3c51663b0292.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Init.Core` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Init.Data.Prod` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Init.Function` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Function.Basic` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Common` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [Prod_map](../../../../../../ComputerScience/TheoryOfData/DataStructures/ProdBasicProdMap.lean/declarations/prod-map.md) | 25 | `result-track:a58a2cac50654bfc0099989f9445a17c2d4767f79b5f1120435c6b4863ef3f88` |
| 2 | `theorem` | [«forall»](../../../../../../ComputerScience/TheoryOfData/DataStructures/ProdBasicProdMap.lean/declarations/forall-source-edition-2.md) | 32 | `result-track:cf806346325bf9c85a3c4575381fd0bbe963b3fdbcb09169cb95a0b4c9bbe592` |
| 3 | `theorem` | [«exists»](../../../../../../ComputerScience/TheoryOfData/DataStructures/ProdBasicProdMap.lean/declarations/exists.md) | 37 | `result-track:36abfefddddacfc21ec16de306d4535c2847fc63caa633e0b3447d77143dd6d2` |
| 4 | `theorem` | [forall'](../../../../../../ComputerScience/TheoryOfData/DataStructures/ProdBasicProdMap.lean/declarations/forall.md) | 41 | `result-track:337d194eae7a71398d879ada19c399a1abd13a74e5fc34bc78971885194f245c` |
| 5 | `theorem` | [exists'](../../../../../../ComputerScience/TheoryOfData/DataStructures/ProdBasicProdMap.lean/declarations/exists-source-edition-2.md) | 45 | `result-track:49b40031f3bb35941eb4a0417b9b96f2919739ce71e27f3559c7cd1accfbcffd` |
| 6 | `theorem` | [snd_comp_mk](../../../../../../ComputerScience/TheoryOfData/DataStructures/ProdBasicProdMap.lean/declarations/snd-comp-mk.md) | 50 | `result-track:d96d0190948ea12abfab204d736f72c63bfc0bb1887eb57c71bde24138ed06e0` |
| 7 | `theorem` | [fst_comp_mk](../../../../../../ComputerScience/TheoryOfData/DataStructures/ProdBasicProdMap.lean/declarations/fst-comp-mk.md) | 55 | `result-track:aff856303c85418219ea04b43768b80cf94e0f9da35d6f4be9576d4a9a958c56` |
| 8 | `theorem` | [map_mk](../../../../../../ComputerScience/TheoryOfData/DataStructures/ProdBasicProdMap.lean/declarations/map-mk.md) | 60 | `result-track:1f84d5959d7894f3d478edbc592f9be81e4a8c6946e5785df565f14f5c6b04fa` |
| 9 | `theorem` | [map_fst](../../../../../../ComputerScience/TheoryOfData/DataStructures/ProdBasicProdMap.lean/declarations/map-fst.md) | 64 | `result-track:903225942d25d12c738e69276a3ee50d4e51df1a5b5551c84db57d9cd415e830` |
| 10 | `theorem` | [map_snd](../../../../../../ComputerScience/TheoryOfData/DataStructures/ProdBasicProdMap.lean/declarations/map-snd-source-edition-2.md) | 68 | `result-track:ba5009fb2d2365ad03204231a225064823f1208272bbccf73069ba6557d243f0` |
| 11 | `theorem` | [map_fst'](../../../../../../ComputerScience/TheoryOfData/DataStructures/ProdBasicProdMap.lean/declarations/map-fst-source-edition-2.md) | 72 | `result-track:c992945440d68dbf315ee818ff11573e5f057783e38e1bb33e8b6fc19eb67148` |
| 12 | `theorem` | [map_snd'](../../../../../../ComputerScience/TheoryOfData/DataStructures/ProdBasicProdMap.lean/declarations/map-snd.md) | 76 | `result-track:0e35f8998fc72ae222c9e194af22633a718c327e2c767d1632b9d545c0200e4c` |
| 13 | `theorem` | [map_comp_map](../../../../../../ComputerScience/TheoryOfData/DataStructures/ProdBasicProdMap.lean/declarations/map-comp-map.md) | 83 | `result-track:60dc4cc008f50280d8f1e0097d9fece52ab7f843543aefbc0fffb8d0597c6635` |
| 14 | `theorem` | [map_map](../../../../../../ComputerScience/TheoryOfData/DataStructures/ProdBasicProdMap.lean/declarations/map-map.md) | 91 | `result-track:0357d55147decc97e3d89fb35ec5196beb1181d1b561043a91f6a17b0df08050` |
| 15 | `theorem` | [mk.inj_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/ProdBasicProdMap.lean/declarations/mk-inj-iff.md) | 99 | `result-track:2acfa03d0f4877e1273fe1aebeb86eb53093c32cdd7c3af18825169dafa15e17` |
| 16 | `theorem` | [mk.inj_left](../../../../../../ComputerScience/TheoryOfData/DataStructures/ProdBasicProdMap.lean/declarations/mk-inj-left.md) | 103 | `result-track:11a3bee42909c1f68cf440012102e282f8435f458b2ab06f8777a6866141e398` |
| 17 | `theorem` | [mk.inj_right](../../../../../../ComputerScience/TheoryOfData/DataStructures/ProdBasicProdMap.lean/declarations/mk-inj-right.md) | 108 | `result-track:4d3e8f2ba225ee64beff7369c0c1a5daabbaf2c4d1eff5352bf9903168f4825a` |
| 18 | `lemma` | [mk_inj_left](../../../../../../ComputerScience/TheoryOfData/DataStructures/ProdBasicProdMap.lean/declarations/mk-inj-left-source-edition-2.md) | 114 | `result-track:1d5903ecf5286bb7fdd436876593d3ab7a3fc32a7d86159e8a5e3d16144780e0` |
| 19 | `lemma` | [mk_inj_right](../../../../../../ComputerScience/TheoryOfData/DataStructures/ProdBasicProdMap.lean/declarations/mk-inj-right-source-edition-2.md) | 117 | `result-track:8cd7d7230c9fecc0097a1fb378b8e122fbb926d4f32120b12a78ea5fda3bcd3a` |
| 20 | `theorem` | [ext_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/ProdBasicProdMap.lean/declarations/ext-iff.md) | 120 | `result-track:2c00b686c73d05184a2a0c3561444a574b65a6d2036217d5cd9525a9a828a0a4` |
| 21 | `theorem` | [ext](../../../../../../ComputerScience/TheoryOfData/DataStructures/ProdBasicProdMap.lean/declarations/ext.md) | 125 | `result-track:4ac31621ca0958d8c7c1d6036366a32fb11791c8a9e677c16b19ddf148f6d534` |
| 22 | `theorem` | [map_def](../../../../../../ComputerScience/TheoryOfData/DataStructures/ProdBasicProdMap.lean/declarations/map-def.md) | 129 | `result-track:418fdac2aee0addb3dae8acbd763c87973887e8e21a38ff821214669809a69f6` |
| 23 | `theorem` | [id_prod](../../../../../../ComputerScience/TheoryOfData/DataStructures/ProdBasicProdMap.lean/declarations/id-prod.md) | 133 | `result-track:bc8ef1809e4983c60d982c0ec129b9271098ebee56a84dc17dd6793689992caa` |
| 24 | `theorem` | [map_id](../../../../../../ComputerScience/TheoryOfData/DataStructures/ProdBasicProdMap.lean/declarations/map-id.md) | 138 | `result-track:a94c12d0c44583da8ed850a4bb0fbb1bad43a1bea8c6840372e850d882f66016` |
| 25 | `theorem` | [fst_surjective](../../../../../../ComputerScience/TheoryOfData/DataStructures/ProdBasicProdMap.lean/declarations/fst-surjective.md) | 142 | `result-track:547bdc25361abce8cf8f75c8ccdcb9e4dcba95eb48aab25b462a39ef7d0caff3` |
| 26 | `theorem` | [snd_surjective](../../../../../../ComputerScience/TheoryOfData/DataStructures/ProdBasicProdMap.lean/declarations/snd-surjective.md) | 146 | `result-track:94ffd0891f9eb971cd99018b12e7aeb3fe00f549340239522c3ad250534442a8` |
| 27 | `theorem` | [fst_injective](../../../../../../ComputerScience/TheoryOfData/DataStructures/ProdBasicProdMap.lean/declarations/fst-injective.md) | 150 | `result-track:f41e8c57c057457b73656e8111722383ea31806d3c0274a70c220f687918a76d` |
| 28 | `theorem` | [snd_injective](../../../../../../ComputerScience/TheoryOfData/DataStructures/ProdBasicProdMap.lean/declarations/snd-injective.md) | 154 | `result-track:a59e784801ff68bc344345bcca9604bb11c9c557cec012f87574415a2d8df644` |
| 29 | `def` | [swap](../../../../../../ComputerScience/TheoryOfData/DataStructures/ProdBasicProdMap.lean/declarations/swap.md) | 159 | `declaration-track:cbb8fb414ed3f4bfc7f08c6c6388b9d67feff44157315271a7b8eb216b65c950` |
| 30 | `theorem` | [swap_swap](../../../../../../ComputerScience/TheoryOfData/DataStructures/ProdBasicProdMap.lean/declarations/swap-swap.md) | 163 | `result-track:d7900cd7863eb717cd93a5130a4424c0c4571d6959a6bfd69af8afe2f0d64875` |
| 31 | `theorem` | [fst_swap](../../../../../../ComputerScience/TheoryOfData/DataStructures/ProdBasicProdMap.lean/declarations/fst-swap.md) | 168 | `result-track:570eb15efc9ebb1c46656f2c850a21cb1910b8b2a8f85767fd84d9962d0ff02e` |
| 32 | `theorem` | [snd_swap](../../../../../../ComputerScience/TheoryOfData/DataStructures/ProdBasicProdMap.lean/declarations/snd-swap.md) | 173 | `result-track:e1d44fdfd0d75a5d93290f24687e2c5a225340c88795d43023c8c34eac58c1f5` |
| 33 | `theorem` | [swap_prod_mk](../../../../../../ComputerScience/TheoryOfData/DataStructures/ProdBasicProdMap.lean/declarations/swap-prod-mk.md) | 178 | `result-track:5f4a1ec8047b7a8f9627db061730f81332011f23c1202f4a85e5cb3f68f7de0c` |
| 34 | `theorem` | [swap_swap_eq](../../../../../../ComputerScience/TheoryOfData/DataStructures/ProdBasicProdMap.lean/declarations/swap-swap-eq.md) | 183 | `result-track:e5103c5924894a28c11e71137b95d1ef4c980503e8dcd4e6351ef8605ccaeef5` |
| 35 | `theorem` | [swap_leftInverse](../../../../../../ComputerScience/TheoryOfData/DataStructures/ProdBasicProdMap.lean/declarations/swap-leftinverse.md) | 188 | `result-track:7f6cd413ab30cf4e911f3315a7b483d885e49690848822904f9913c49a98cd7e` |
| 36 | `theorem` | [swap_rightInverse](../../../../../../ComputerScience/TheoryOfData/DataStructures/ProdBasicProdMap.lean/declarations/swap-rightinverse.md) | 193 | `result-track:3211040dd26d2ff35ba1c8f2c7ccef2b875c5846054312ddb18831668a1da221` |
| 37 | `theorem` | [swap_injective](../../../../../../ComputerScience/TheoryOfData/DataStructures/ProdBasicProdMap.lean/declarations/swap-injective.md) | 197 | `result-track:721777c35906e5e4e2611b6b039b73e10b13b29e25ed53ad249361b47e25c056` |
| 38 | `theorem` | [swap_surjective](../../../../../../ComputerScience/TheoryOfData/DataStructures/ProdBasicProdMap.lean/declarations/swap-surjective.md) | 201 | `result-track:ac690d1711dad9098606fa42297e6c3c11ffaa57d3fd6edb1349eca31a44a40d` |
| 39 | `theorem` | [swap_bijective](../../../../../../ComputerScience/TheoryOfData/DataStructures/ProdBasicProdMap.lean/declarations/swap-bijective.md) | 205 | `result-track:9eb7f2b23b11c92db77d090927a804acbe8b5635ea7b51d306346d04ac8e492d` |
| 40 | `theorem` | [swap_inj](../../../../../../ComputerScience/TheoryOfData/DataStructures/ProdBasicProdMap.lean/declarations/swap-inj.md) | 210 | `result-track:dde086b0cf5b8201f75f23b68aecc387005c979e7f7f304e3ddd8839ba5866c9` |
| 41 | `theorem` | [eq_iff_fst_eq_snd_eq](../../../../../../ComputerScience/TheoryOfData/DataStructures/ProdBasicProdMap.lean/declarations/eq-iff-fst-eq-snd-eq.md) | 214 | `result-track:175aab4f2faecbc4d7d3c84070eeeb21146f67eb4189764ee7ea983df93cf539` |
| 42 | `theorem` | [fst_eq_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/ProdBasicProdMap.lean/declarations/fst-eq-iff.md) | 218 | `result-track:7e2341c5806c464dc4b330aa5ae7ae53d32922c9dc912b64eff9f95396bc0011` |
| 43 | `theorem` | [snd_eq_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/ProdBasicProdMap.lean/declarations/snd-eq-iff.md) | 222 | `result-track:c82bea6a07cd96dea7a5ee962fde70d5516314576146697377c92288e5e25aee` |
| 44 | `theorem` | [lex_def](../../../../../../ComputerScience/TheoryOfData/DataStructures/ProdBasicProdMap.lean/declarations/lex-def.md) | 228 | `result-track:25d35b40b8f72f78043a18e23e8b3096c08d9de69945553026a1dcda709ca97b` |
| 45 | `lemma` | [lex_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/ProdBasicProdMap.lean/declarations/lex-iff.md) | 236 | `result-track:36123f3b521dc8eb545d3c7c72bdaca2d122474e8fb7c678616a2caf720d9ef9` |
| 46 | `instance` | [Lex.decidable](../../../../../../ComputerScience/TheoryOfData/DataStructures/ProdBasicProdMap.lean/declarations/lex-decidable.md) | 239 | `declaration-track:2a834fa2d0af6ea64a508f58a3209b5cc7d911cbc0d94e495a254c75c3c8b474` |
| 47 | `theorem` | [Lex.refl_left](../../../../../../ComputerScience/TheoryOfData/DataStructures/ProdBasicProdMap.lean/declarations/lex-refl-left.md) | 245 | `result-track:a34bec3129140a3cadf3074581eb1d316e50863002434a2ada8cdb049ea42fec` |
| 48 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/ProdBasicProdMap.lean/declarations/instance.md) | 249 | `declaration-track:34b17f3d51678ca0d80f1feae169fa10f70f0caebcb974fce1c3c8fc118fece2` |
| 49 | `theorem` | [Lex.refl_right](../../../../../../ComputerScience/TheoryOfData/DataStructures/ProdBasicProdMap.lean/declarations/lex-refl-right.md) | 253 | `result-track:98159dc5591c791f38c8d86cc38c941becc6b9ec50aac719fd5e779ad8988663` |
| 50 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/ProdBasicProdMap.lean/declarations/instance-source-edition-2.md) | 257 | `declaration-track:431f6490c6843743faeef62ada677fb033c5b9c09ee7152fd73fcb294904257a` |
| 51 | `instance` | [isIrrefl](../../../../../../ComputerScience/TheoryOfData/DataStructures/ProdBasicProdMap.lean/declarations/isirrefl.md) | 260 | `declaration-track:b9fb6c05daeb03443eb936ef7556f25574fa80fbb63007ac2b3570e7a9d82db2` |
| 52 | `theorem` | [Lex.trans](../../../../../../ComputerScience/TheoryOfData/DataStructures/ProdBasicProdMap.lean/declarations/lex-trans.md) | 264 | `result-track:1e20577ce55256d5a3d6428e27a0a7e530ccc279df7b01ad4ef59e2b31a5c4f1` |
| 53 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/ProdBasicProdMap.lean/declarations/instance-source-edition-3.md) | 272 | `declaration-track:685f263e59061477477d5b6c6ba75501de2102933009f84a5c3bdf497f9f4be4` |
| 54 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/ProdBasicProdMap.lean/declarations/instance-source-edition-4.md) | 276 | `declaration-track:6d6092b7db3b427e0158e30bd58d6b896c650d6971e828c0470b72ec5a108909` |
| 55 | `instance` | [isTotal_left](../../../../../../ComputerScience/TheoryOfData/DataStructures/ProdBasicProdMap.lean/declarations/istotal-left.md) | 285 | `declaration-track:1393a29059b1845b91806bebf33028487e86719603c0d32e5f183bd9b472c450` |
| 56 | `instance` | [isTotal_right](../../../../../../ComputerScience/TheoryOfData/DataStructures/ProdBasicProdMap.lean/declarations/istotal-right.md) | 290 | `declaration-track:f938d811c089e6550ae22657f38a0b8969edf6ecd33e2cd0e8ecd5d33e901ec5` |
| 57 | `instance` | [IsTrichotomous](../../../../../../ComputerScience/TheoryOfData/DataStructures/ProdBasicProdMap.lean/declarations/istrichotomous.md) | 299 | `declaration-track:55a43df308a7ecf3b08b9aa90532634b46c495075086b2286916c58fe03487d0` |
| 58 | `theorem` | [Injective.Prod_map](../../../../../../ComputerScience/TheoryOfData/DataStructures/ProdBasicProdMap.lean/declarations/injective-prod-map.md) | 315 | `result-track:8081c7b709186f9a72526769c846fc3133a2582eb0ad4d66fe1e11dad5739fe3` |
| 59 | `theorem` | [Surjective.Prod_map](../../../../../../ComputerScience/TheoryOfData/DataStructures/ProdBasicProdMap.lean/declarations/surjective-prod-map.md) | 319 | `result-track:9ab0b79b5c7d8f0bb38ec18200052967e1bd89365d88f7a08b6e1d09331a15aa` |
| 60 | `theorem` | [Bijective.Prod_map](../../../../../../ComputerScience/TheoryOfData/DataStructures/ProdBasicProdMap.lean/declarations/bijective-prod-map.md) | 326 | `result-track:a3a709ac68228417d5ac9319e1f88f0d8a48670d860df38f15bc4ffd78395396` |
| 61 | `theorem` | [LeftInverse.Prod_map](../../../../../../ComputerScience/TheoryOfData/DataStructures/ProdBasicProdMap.lean/declarations/leftinverse-prod-map.md) | 330 | `result-track:cf2431f07dc6d3803b9ee92f24e31c92062abbb189b442cd09f3b2b54d2be65f` |
| 62 | `theorem` | [RightInverse.Prod_map](../../../../../../ComputerScience/TheoryOfData/DataStructures/ProdBasicProdMap.lean/declarations/rightinverse-prod-map.md) | 335 | `result-track:60d74781f25166687b7a88574e6cb6ab4de714992573980a97651920c222aab9` |
| 63 | `theorem` | [Involutive.Prod_map](../../../../../../ComputerScience/TheoryOfData/DataStructures/ProdBasicProdMap.lean/declarations/involutive-prod-map.md) | 340 | `result-track:b3105982daa857816f2271f959f7a9faeab052e28a98c56f62cb30f0220caa9e` |
| 64 | `theorem` | [map_injective](../../../../../../ComputerScience/TheoryOfData/DataStructures/ProdBasicProdMap.lean/declarations/map-injective.md) | 352 | `result-track:245abefd97f23cb6691ece210af04d52e5c7542b2a72086cc97e3b67b2cddc5a` |
| 65 | `theorem` | [map_surjective](../../../../../../ComputerScience/TheoryOfData/DataStructures/ProdBasicProdMap.lean/declarations/map-surjective.md) | 366 | `result-track:d6ac66b204bc5f4159cdb95b9321dc1a04f05991a102e066a76238fb0fbf89cf` |
| 66 | `theorem` | [map_bijective](../../../../../../ComputerScience/TheoryOfData/DataStructures/ProdBasicProdMap.lean/declarations/map-bijective.md) | 381 | `result-track:3a406036786a1f2ef2b90b34ca78e4ddff558b78fc58a9729992290e95d3d606` |
| 67 | `theorem` | [map_leftInverse](../../../../../../ComputerScience/TheoryOfData/DataStructures/ProdBasicProdMap.lean/declarations/map-leftinverse.md) | 389 | `result-track:26368ee96cc583d9b2507cdd79aab0e61c1ec44c75374dfd61322abae581bafe` |
| 68 | `theorem` | [map_rightInverse](../../../../../../ComputerScience/TheoryOfData/DataStructures/ProdBasicProdMap.lean/declarations/map-rightinverse.md) | 402 | `result-track:f53fef694ac28879332f632d20b370109b3c061a270b551dbb822b00004bef79` |
| 69 | `theorem` | [map_involutive](../../../../../../ComputerScience/TheoryOfData/DataStructures/ProdBasicProdMap.lean/declarations/map-involutive.md) | 408 | `result-track:7c4308b940f8954ac8406bdafc6b2132c5bcb31f00b2821022f9fe47c09d33e5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=7dd365fb0ee4f3199f523862a81116865fb562dc9278b711d2a8f8f59126c040 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Varianta8d6bda1ffbbb337cda07b204f9f33cd361ea3547da01059a32e3c51663b0292.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Varianta8d6bda1ffbbb337cda07b204f9f33cd361ea3547da01059a32e3c51663b0292.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
