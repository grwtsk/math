# Verification target: Vector Basic Get Eq Get

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "16eb67b3a8e3d4612b3bfefc182867c9f3625942",
  "lexical_observation_count": 97,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant144dc40ec7e2bf3b3784e08cdb7397aa1eefe3e5c242d660ffde75b136c35fc5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicGetEqGet.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicGetEqGet.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `16eb67b3a8e3d4612b3bfefc182867c9f3625942`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant144dc40ec7e2bf3b3784e08cdb7397aa1eefe3e5c242d660ffde75b136c35fc5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant144dc40ec7e2bf3b3784e08cdb7397aa1eefe3e5c242d660ffde75b136c35fc5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Vector` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.List.Nodup` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.List.OfFn` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Control.Applicative` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Control.Traversable.Basic` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicGetEqGet.lean/declarations/instance-source-edition-2.md) | 36 | `declaration-track:9519a37843a0db6fc731884c0c59f30e0d2da657d021e8c24e3e5b6b41267d89` |
| 2 | `theorem` | [toList_injective](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicGetEqGet.lean/declarations/tolist-injective.md) | 39 | `result-track:bec3deaf5e99bf9f703fe94f092c0349e1b0684b2def49f47eb66d946103ba8f` |
| 3 | `theorem` | [ext](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicGetEqGet.lean/declarations/ext.md) | 45 | `result-track:e87cea050b8a83c36bd77002491cc8d76642af76e7fa91fe41759f729b805a9d` |
| 4 | `instance` | [zero_subsingleton](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicGetEqGet.lean/declarations/zero-subsingleton.md) | 51 | `declaration-track:41827fc5fc0b88dcc3a4f1db2f342b4f97c913048ca5e1f88b55bade5918af3d` |
| 5 | `theorem` | [cons_val](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicGetEqGet.lean/declarations/cons-val.md) | 56 | `result-track:3ac7846528efba071285999e9ece4d3cf6bc7191a25e91ecb5bf823a610e6ecc` |
| 6 | `theorem` | [eq_cons_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicGetEqGet.lean/declarations/eq-cons-iff.md) | 63 | `result-track:f02f843c443a4b18eaccd7b363ec2746d1cadb4d8d2ab1120ea7a39559df32e3` |
| 7 | `theorem` | [ne_cons_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicGetEqGet.lean/declarations/ne-cons-iff.md) | 69 | `result-track:908742af7b9948156de3b44b3388566fbf47073df6559cb2622de706446ba521` |
| 8 | `theorem` | [exists_eq_cons](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicGetEqGet.lean/declarations/exists-eq-cons.md) | 73 | `result-track:ac887d8448bc7c7f07d842d2aa52dfa622b3c914e0e69fd74e31ad2948a34872` |
| 9 | `theorem` | [toList_ofFn](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicGetEqGet.lean/declarations/tolist-offn.md) | 78 | `result-track:e04e94cd9ea007768b0320ff0ace0d69d48189c4df13adedf76c8e0629010b23` |
| 10 | `theorem` | [mk_toList](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicGetEqGet.lean/declarations/mk-tolist.md) | 84 | `result-track:19979c50bbedcd969935ea2c2208c636ea745ab22eb3ddc2e2e1fbad3deff6ef` |
| 11 | `theorem` | [length_val](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicGetEqGet.lean/declarations/length-val.md) | 89 | `result-track:59c5c740faeb6abcdb8165694507d6104315767aad73eb1738befe2864c39de3` |
| 12 | `theorem` | [toList_map](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicGetEqGet.lean/declarations/tolist-map.md) | 99 | `result-track:bd9871e770cfc3feec44996e21cb5d8a124811cd9879126b4472e4805e5dbe9a` |
| 13 | `theorem` | [head_map](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicGetEqGet.lean/declarations/head-map.md) | 104 | `result-track:b1ce29c0f2c42c842dc0bf67285b93137d406b760e2387742e33d5b72e97f52f` |
| 14 | `theorem` | [tail_map](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicGetEqGet.lean/declarations/tail-map.md) | 110 | `result-track:000fa43c160f6875ffe22d4fa68d088abcf04d66091f5b7f960b01d90688a3c0` |
| 15 | `theorem` | [get_eq_get](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicGetEqGet.lean/declarations/get-eq-get.md) | 116 | `result-track:8b2570096003a9ad41f9911db086d612506d59447a55ffb3fc5ec803284dfe45` |
| 16 | `theorem` | [nth_eq_nthLe](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicGetEqGet.lean/declarations/nth-eq-nthle.md) | 123 | `result-track:bc958baa05532e9e9ab1b837d7bbd99465262ab80a9e459c027bd0c95113b4e8` |
| 17 | `theorem` | [get_replicate](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicGetEqGet.lean/declarations/get-replicate.md) | 128 | `result-track:cc3ce6098874be615cf0706126bad92f45fdc1445fd77988379cd193cdb5a690` |
| 18 | `theorem` | [get_map](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicGetEqGet.lean/declarations/get-map-source-edition-2.md) | 133 | `result-track:e11ba222d7f1edb09417aa9defcf550db076642b56065648200f67f239927189` |
| 19 | `theorem` | [map₂_nil](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicGetEqGet.lean/declarations/map-nil.md) | 139 | `result-track:45afd7d3d8bb0d12eda3d85d5728dd1227e451c6cb162dbbfe2fa6b756a88799` |
| 20 | `theorem` | [map₂_cons](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicGetEqGet.lean/declarations/map-cons.md) | 143 | `result-track:d803aa4b52c3bad36ac26f75293fbe972ac13e2672430370a5f6975875523708` |
| 21 | `theorem` | [get_ofFn](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicGetEqGet.lean/declarations/get-offn.md) | 148 | `result-track:0a86a40b0c3ce378a344fbcacd231ea40fa9ba63e8189a5a73da040e85879a24` |
| 22 | `theorem` | [ofFn_get](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicGetEqGet.lean/declarations/offn-get.md) | 155 | `result-track:9c5c650c63a4ca83ffcf72f5c9018e12cdf0e046d907d62c3b0de12d8cb2d309` |
| 23 | `def` | [_root_.Equiv.vectorEquivFin](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicGetEqGet.lean/declarations/root-equiv-vectorequivfin.md) | 163 | `declaration-track:ff8dc6c63341caaa0ba30aea932277951d700a3855e73a14576c495452d2a581` |
| 24 | `theorem` | [get_tail](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicGetEqGet.lean/declarations/get-tail.md) | 167 | `result-track:6141395b0c80b1ff5bcba94d3c157d22b66f6fc7d728f1b475fc1e11c8047a7b` |
| 25 | `theorem` | [get_tail_succ](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicGetEqGet.lean/declarations/get-tail-succ.md) | 177 | `result-track:ecd0b92e0fba624387339dacca8e846948cf4349657a27cdb526a982384b68e4` |
| 26 | `theorem` | [tail_val](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicGetEqGet.lean/declarations/tail-val.md) | 182 | `result-track:50d9fb50a245b55b40e03b274cb267a922be041852b6bef4d2f18e67734cb86b` |
| 27 | `theorem` | [tail_nil](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicGetEqGet.lean/declarations/tail-nil.md) | 188 | `result-track:587da514a18bf7a44d93d8a0a7601f2a7f952970a2ccc03cf9f6300c15506d04` |
| 28 | `theorem` | [singleton_tail](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicGetEqGet.lean/declarations/singleton-tail.md) | 194 | `result-track:6d91120207816568b722a2148635b42ad5eea34da81d1f0d1201edd808e42ec3` |
| 29 | `theorem` | [tail_ofFn](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicGetEqGet.lean/declarations/tail-offn.md) | 199 | `result-track:c04a621be5bb678d44fdee3384d017e88ce593282cfc2b0f260348b9bfbaa9a7` |
| 30 | `theorem` | [toList_empty](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicGetEqGet.lean/declarations/tolist-empty.md) | 208 | `result-track:9e120f7911f3b25b337ec54cb5a9ccf9dfb8fa5e9ae3d4dc84202a755a417b6b` |
| 31 | `theorem` | [toList_singleton](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicGetEqGet.lean/declarations/tolist-singleton.md) | 215 | `result-track:b050795535b829b091ac0d2402f7cecd673ceba72c4f45ec648425d9b1d08cbe` |
| 32 | `theorem` | [empty_toList_eq_ff](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicGetEqGet.lean/declarations/empty-tolist-eq-ff.md) | 221 | `result-track:129dab46c71d37df1019a5df002e5282488c87914d506aba9fb53861bc4c4828` |
| 33 | `theorem` | [not_empty_toList](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicGetEqGet.lean/declarations/not-empty-tolist.md) | 226 | `result-track:f4d05495078d0ab096988cf990d21a5449862c5f286c9d362b746a86918ca6b5` |
| 34 | `theorem` | [map_id](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicGetEqGet.lean/declarations/map-id.md) | 232 | `result-track:332ff725b9edf6549ede515ec42000654c8af71f8efc12ea0f7d7b991e2daffe` |
| 35 | `theorem` | [nodup_iff_injective_get](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicGetEqGet.lean/declarations/nodup-iff-injective-get.md) | 236 | `result-track:da0b2c5709ded7780b3e775e594251fb4839b014aa01cfbe669ae05a2a6ef532` |
| 36 | `theorem` | [head?_toList](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicGetEqGet.lean/declarations/head-tolist.md) | 242 | `result-track:b187bf54daaa1c84f4e3a20b72ab845c3ba4e2693941e3978aafa15e6ce3c780` |
| 37 | `def` | [reverse](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicGetEqGet.lean/declarations/reverse.md) | 247 | `declaration-track:c35aeb77d2de8d496fb252e1148201809c29dc338f0b446947a02b6981632ea0` |
| 38 | `theorem` | [toList_reverse](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicGetEqGet.lean/declarations/tolist-reverse.md) | 253 | `result-track:a963626bc6a5104b6319ff5cb7f42e44fa0f91c56dfc71934fed8fd7414ed7f1` |
| 39 | `theorem` | [reverse_reverse](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicGetEqGet.lean/declarations/reverse-reverse.md) | 258 | `result-track:033b913254d04bb6ff49a15dd90f1f26fff99873879f7fa52028a338fe5df00a` |
| 40 | `theorem` | [get_zero](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicGetEqGet.lean/declarations/get-zero.md) | 264 | `result-track:3b45a1bc43f082c39f7668a97435834d7d5bde88a244da36cf2e20a8c3eade76` |
| 41 | `theorem` | [head_ofFn](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicGetEqGet.lean/declarations/head-offn.md) | 269 | `result-track:0d12beaefd337f55240faf4852f596aa6e1fe3442a3d8e875976d036fe19f9b2` |
| 42 | `theorem` | [get_cons_zero](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicGetEqGet.lean/declarations/get-cons-zero.md) | 274 | `result-track:f2c3e215b6d82e02ed9b336fbfffee02545f04ccbb12c41731a4932561c4ed67` |
| 43 | `theorem` | [get_cons_nil](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicGetEqGet.lean/declarations/get-cons-nil.md) | 280 | `result-track:1d9205bf0fd72a940af2e96ca4098d78cb5c1c47771505d2cb684e10ea25fe51` |
| 44 | `theorem` | [get_cons_succ](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicGetEqGet.lean/declarations/get-cons-succ.md) | 285 | `result-track:d47ccd0008514bc89866d244729ab5ec0da43f6ed3399071733a301422b8676f` |
| 45 | `def` | [last](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicGetEqGet.lean/declarations/last.md) | 290 | `declaration-track:76b292485b1d90125d2138dcf965f6611a23949b1185c05a86f844be9203d52a` |
| 46 | `theorem` | [last_def](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicGetEqGet.lean/declarations/last-def.md) | 295 | `result-track:598700ba2eaf1c38b071eda834798d094eec8de0a58a67cb35e409f8e0c39ff0` |
| 47 | `theorem` | [reverse_get_zero](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicGetEqGet.lean/declarations/reverse-get-zero.md) | 300 | `result-track:faf12e60b2ecf3cb18b8c13d6259669de926bb5d7d6ec1c7b44a31de5971b397` |
| 48 | `def` | [scanl](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicGetEqGet.lean/declarations/scanl.md) | 320 | `declaration-track:2519b9d733b890fb2bbcd98f3040bf54a9ad1e42d7ba53471b3d7285aaa7c20a` |
| 49 | `theorem` | [scanl_nil](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicGetEqGet.lean/declarations/scanl-nil.md) | 326 | `result-track:2c9ae0d1a7e6856355357837095cb33676bf22e2e8e845eb0f0be93fcdfae7cc` |
| 50 | `theorem` | [scanl_cons](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicGetEqGet.lean/declarations/scanl-cons.md) | 337 | `result-track:376e75228cb095fd758dec1fb64f4b4568af9483c8a2670720e33beff2a2af00` |
| 51 | `theorem` | [scanl_val](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicGetEqGet.lean/declarations/scanl-val.md) | 346 | `result-track:6486d4f986dcc7a9c1122ec1edf3624c71c81d7707fc3997ed4972775475070b` |
| 52 | `theorem` | [toList_scanl](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicGetEqGet.lean/declarations/tolist-scanl.md) | 354 | `result-track:3e88e027f39d15bbe299f55b8875ea74013b667703bed08dd284052f7b8eeb4d` |
| 53 | `theorem` | [scanl_singleton](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicGetEqGet.lean/declarations/scanl-singleton.md) | 363 | `result-track:42de845116a910e51b8a9d525e5a2f3bf70342ab7a6a0723d88d5b2e5e24d980` |
| 54 | `theorem` | [scanl_head](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicGetEqGet.lean/declarations/scanl-head.md) | 372 | `result-track:82e7332e102980634cb8eaec256eebd732e549c28442ba9b1ef2a480a6aa26e8` |
| 55 | `theorem` | [scanl_get](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicGetEqGet.lean/declarations/scanl-get.md) | 389 | `result-track:2faf9878212bbfbbfb3121f870741fa633c26bce270235b01a9670c8bce9dc4e` |
| 56 | `def` | [mOfFn](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicGetEqGet.lean/declarations/moffn.md) | 407 | `declaration-track:3524a734408343fcaafb92e2f7c393c52be30ff0b90b6aadf6b760cef85b32a2` |
| 57 | `theorem` | [mOfFn_pure](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicGetEqGet.lean/declarations/moffn-pure.md) | 415 | `result-track:7a6e449286a453d327416f4152952a12f09721c0b852d29bd061db99d5b6b386` |
| 58 | `def` | [mmap](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicGetEqGet.lean/declarations/mmap.md) | 425 | `declaration-track:0214f77a7c342c51be74bb050680abcf4448de4f1d3696f0467d44f6518d4444` |
| 59 | `theorem` | [mmap_nil](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicGetEqGet.lean/declarations/mmap-nil.md) | 434 | `result-track:fee53a07e3efffb5b2abbc899db3992cb4d15a68a331f9d377506323e096c0f7` |
| 60 | `theorem` | [mmap_cons](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicGetEqGet.lean/declarations/mmap-cons.md) | 439 | `result-track:187668257ff17220e68af93d8cca054546faecce1cb5377612a133474ca341a4` |
| 61 | `def` | [inductionOn](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicGetEqGet.lean/declarations/inductionon-source-edition-3.md) | 455 | `declaration-track:f003a0bb069e700141b168e4e94e0f16992a3153d43e3d91307f0f143f694d9e` |
| 62 | `example` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicGetEqGet.lean/declarations/example.md) | 468 | `declaration-track:4394fe79ae2d259201d895e0b8a162ccde9c3b4024944e3780e559e7c065d446` |
| 63 | `def` | [inductionOn₂](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicGetEqGet.lean/declarations/inductionon.md) | 474 | `declaration-track:7e5c67aadf26ecb5c976d26880f1dc5eeb493e17033b86ccbd8862a6e3a88309` |
| 64 | `def` | [inductionOn₃](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicGetEqGet.lean/declarations/inductionon-source-edition-2.md) | 494 | `declaration-track:7f171f29f40d80c326581456223144d5b1b73aaf5287108def2be5e64117ebea` |
| 65 | `def` | [casesOn](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicGetEqGet.lean/declarations/caseson-source-edition-2.md) | 517 | `declaration-track:35227d61da5ca85fe28ddb70542195c1d814a29e42bba9b0b7128762bc3da8e4` |
| 66 | `def` | [casesOn₂](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicGetEqGet.lean/declarations/caseson-source-edition-3.md) | 523 | `declaration-track:7f91efa0dd4a270c2fa3efc28d85a4e418b5196dbcbe81369634a43f2f586b1c` |
| 67 | `def` | [casesOn₃](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicGetEqGet.lean/declarations/caseson.md) | 532 | `declaration-track:091f41f5272d7c09d1e51d09136d79270065debc94808fe4ee30419752c909ff` |
| 68 | `def` | [toArray](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicGetEqGet.lean/declarations/toarray.md) | 540 | `declaration-track:0e5ba0ed07ece5c4ba27b5ee37f1590bab23c8dd2e559b1a5d6a1550fbc149e5` |
| 69 | `def` | [insertNth](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicGetEqGet.lean/declarations/insertnth.md) | 550 | `declaration-track:ade38ec9bad60db0af275ed83952584cbd3f4c9fb39ecd3c479761c2490028fd` |
| 70 | `theorem` | [insertNth_val](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicGetEqGet.lean/declarations/insertnth-val.md) | 557 | `result-track:32283fcded1c1ef8d4d3e257d4fc8c47cf5127e79e7fb1d07ded8d8155587e6b` |
| 71 | `theorem` | [removeNth_val](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicGetEqGet.lean/declarations/removenth-val.md) | 563 | `result-track:6db39ef5ab005ca95fed415e991fd559d98c7f02db8bcff57adcc62a8c7cddf4` |
| 72 | `theorem` | [removeNth_insertNth](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicGetEqGet.lean/declarations/removenth-insertnth.md) | 567 | `result-track:0ef66bc821d3bf8525ce84461bc6188f3a8cf0c7c96260886ec36dd39d6c466e` |
| 73 | `theorem` | [removeNth_insertNth'](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicGetEqGet.lean/declarations/removenth-insertnth-source-edition-2.md) | 572 | `result-track:23f712338d92cef9219de9cbaec395ba29319c48edea8a6d9e45f3e6ab4bf5fa` |
| 74 | `theorem` | [insertNth_comm](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicGetEqGet.lean/declarations/insertnth-comm.md) | 593 | `result-track:9435818498aa27eaccb7022c216cc834ad9bb99ad91c2beb46a50c3048696a51` |
| 75 | `def` | [set](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicGetEqGet.lean/declarations/set.md) | 611 | `declaration-track:cce2fdb7b4b93748079c3181481c703493ebf2831380a2cbaf5c49389d34f480` |
| 76 | `theorem` | [toList_set](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicGetEqGet.lean/declarations/tolist-set.md) | 616 | `result-track:bb167319ed0dc8c11c8fddecbbfc3a381f2a7270f4a4dc8c751d169800347b23` |
| 77 | `theorem` | [get_set_same](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicGetEqGet.lean/declarations/get-set-same.md) | 622 | `result-track:bac72742ead3f7a142b18c1ffcffb2c21279a97053c425f82ebfb27f4ab57082` |
| 78 | `theorem` | [get_set_of_ne](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicGetEqGet.lean/declarations/get-set-of-ne.md) | 628 | `result-track:3b09198bc69d8c1f45f7194d2aae681298d3a067bcd64e0b24e4cf9f77f04e6a` |
| 79 | `theorem` | [get_set_eq_if](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicGetEqGet.lean/declarations/get-set-eq-if.md) | 637 | `result-track:0886219b6b652ff358480fa42e88068a9af937e3c0983608bfa3c8e76dfd030b` |
| 80 | `theorem` | [prod_set](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicGetEqGet.lean/declarations/prod-set-source-edition-2.md) | 643 | `result-track:ccd5157dda47705f81886d83f1c060948f7f9b4b2cd8f9a21c037a2774341235` |
| 81 | `theorem` | [prod_set'](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicGetEqGet.lean/declarations/prod-set.md) | 650 | `result-track:18dd95100bbd7a214f6c46c42a52dfa63520bb870864f4301b7b0a62d213e5bd` |
| 82 | `def` | [traverseAux](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicGetEqGet.lean/declarations/traverseaux.md) | 674 | `declaration-track:ee5879fffe08da152cc25a780eca277234abced69c3aebd088b8b663303bb7e2` |
| 83 | `def` | [traverse](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicGetEqGet.lean/declarations/traverse.md) | 679 | `declaration-track:7902011ccebe9c8c64c48a17bcbbec8c9bb7b5a4c8f8cbfcb28dc309da084e42` |
| 84 | `theorem` | [traverse_def](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicGetEqGet.lean/declarations/traverse-def.md) | 688 | `result-track:7feb9df361e8c06c8ef9e22bd2caa9c37afce034b1f33d6aa1e35c3d66df5f6e` |
| 85 | `theorem` | [id_traverse](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicGetEqGet.lean/declarations/id-traverse.md) | 693 | `result-track:e32ac679916a97f26d6d98632c566fab2730e73f03427b158b668243aafbc355` |
| 86 | `theorem` | [comp_traverse](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicGetEqGet.lean/declarations/comp-traverse.md) | 710 | `result-track:e979d0de58e9f0e7c559c1c051dbab5ead6019b7c02c4333e3cbbd74345c60b8` |
| 87 | `theorem` | [traverse_eq_map_id](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicGetEqGet.lean/declarations/traverse-eq-map-id.md) | 720 | `result-track:e9822503b7b44c08c10f4177a2a3c243b43570f1b1002a9cc171be9c0e20f0aa` |
| 88 | `theorem` | [naturality](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicGetEqGet.lean/declarations/naturality.md) | 727 | `result-track:3e42cfb4f4d43b317a4fefdb1fcf4bf64f0abd73b91a9ada994dbf9dc66b8a7d` |
| 89 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicGetEqGet.lean/declarations/instance.md) | 737 | `declaration-track:4ca6f9904588a625fe0af26c68e0978fdd4cd230968b754d3fa7a77950421b70` |
| 90 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicGetEqGet.lean/declarations/instance-source-edition-3.md) | 741 | `declaration-track:9ffc1798fd3eb606dce466e2f6bd5354e75ea99ec1ef6d5523b5aea48b9e4f20` |
| 91 | `theorem` | [replicate_succ](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicGetEqGet.lean/declarations/replicate-succ.md) | 775 | `result-track:6ac250099d002adf3dfed42767f820fce4dc1bb8b5680d27cb4f469b7abdf39c` |
| 92 | `theorem` | [get_append_cons_zero](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicGetEqGet.lean/declarations/get-append-cons-zero.md) | 783 | `result-track:2e2640f098d761bb76ac7c7574662a87e1238b75baab3fed82c18b155ee07a66` |
| 93 | `theorem` | [get_append_cons_succ](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicGetEqGet.lean/declarations/get-append-cons-succ.md) | 787 | `result-track:93f0792ee04fc3abae37dd132da18fb63f4691c045b8cd9fc6ca861d617b3b17` |
| 94 | `theorem` | [append_nil](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicGetEqGet.lean/declarations/append-nil.md) | 792 | `result-track:7623c64d0c0aa9ad084da986e7cf17ac10d4713bdeaa677276c56317e8f4ee31` |
| 95 | `theorem` | [get_map₂](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicGetEqGet.lean/declarations/get-map.md) | 800 | `result-track:7b9682deb2baf7fb8595119c56ae1ec722031a4e6a510ccdbee1068e4a27fb5f` |
| 96 | `theorem` | [mapAccumr_cons](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicGetEqGet.lean/declarations/mapaccumr-cons-source-edition-2.md) | 813 | `result-track:87df73d674a805dca3e08acc72551d8c560d73248ab1da5b1f05d2f403d368c2` |
| 97 | `theorem` | [mapAccumr₂_cons](../../../../../../ComputerScience/TheoryOfData/DataStructures/VectorBasicGetEqGet.lean/declarations/mapaccumr-cons.md) | 821 | `result-track:4d912b7c727e94ec059a8eaf276e39574ccca916da3902da54300662e53abc61` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=0f5a7ad308526d217bc9a9c6575bc35b5fac1b0e1c94429970ed06b1ff977305 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant144dc40ec7e2bf3b3784e08cdb7397aa1eefe3e5c242d660ffde75b136c35fc5.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variant144dc40ec7e2bf3b3784e08cdb7397aa1eefe3e5c242d660ffde75b136c35fc5.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
