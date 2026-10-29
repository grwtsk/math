# Verification target: Data List Defs Namespaced Prod

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "140f31f5edfe10d19055196a234e7bf718260c0c",
  "lexical_observation_count": 42,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Defs/Variant8a33534fe5770a3a5c6c1c7f79452993922545d33bdd9818acf1c3b8f8bf8a41.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataListDefsNamespacedProd.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataListDefsNamespacedProd.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `140f31f5edfe10d19055196a234e7bf718260c0c`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Defs/Variant8a33534fe5770a3a5c6c1c7f79452993922545d33bdd9818acf1c3b8f8bf8a41.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Defs/Variant8a33534fe5770a3a5c6c1c7f79452993922545d33bdd9818acf1c3b8f8bf8a41.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Defs` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Control.Functor` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Basic` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Basic` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Data.SProd` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.Util.CompileInductive` — import line 16; external provider; requires a separately pinned dependency.
- `Std.Tactic.Lint.Basic` — import line 17; external provider; requires a separately pinned dependency.
- `Std.Data.RBMap.Basic` — import line 18; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataListDefsNamespacedProd.lean/declarations/instance.md) | 48 | `declaration-track:96619ff6071d46d6e7e97fc527a15de7c440a9c20df9b04a26a6aa237417702f` |
| 2 | `def` | [getI](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataListDefsNamespacedProd.lean/declarations/geti.md) | 67 | `declaration-track:bb6dd5f9dae4f2ad61153d768a81acb33086f74332e4ce0b98ea508dafa4e6a0` |
| 3 | `def` | [takeI](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataListDefsNamespacedProd.lean/declarations/takei.md) | 73 | `declaration-track:a72bcd13b34c4f9d627dd3f1dbdf1aadc7e4a26acc9bc7ace8ec72374624747d` |
| 4 | `def` | [prod](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataListDefsNamespacedProd.lean/declarations/prod.md) | 89 | `declaration-track:cfe29d1adf04a8314f8dae14bc1ae171f6cfe2f49ccb97871d10a41f5ee2a5e5` |
| 5 | `def` | [sum](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataListDefsNamespacedProd.lean/declarations/sum.md) | 98 | `declaration-track:957e23e04408d32a02effe81cc4536e989017b5fea8a2db4047ebfc110d412d0` |
| 6 | `def` | [alternatingSum](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataListDefsNamespacedProd.lean/declarations/alternatingsum.md) | 103 | `declaration-track:fe99aa78eae88c30cf3ce157a0581c0535cb4040797a10dec036ac4807e57e53` |
| 7 | `def` | [alternatingProd](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataListDefsNamespacedProd.lean/declarations/alternatingprod.md) | 110 | `declaration-track:c95d5189d469b75f7c74e900a3b9dea9e8c9c5680b351fb8e3177e9797c94e6d` |
| 8 | `def` | [findM](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataListDefsNamespacedProd.lean/declarations/findm.md) | 121 | `declaration-track:49922165ac68d8ef31e11a1eb6a0c4f529ac2d8d4309341d628ecb6b94538b14` |
| 9 | `def` | [findM?'](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataListDefsNamespacedProd.lean/declarations/findm-source-edition-2.md) | 128 | `declaration-track:708238c520347f23e36c8ab4f20c6b53add9ce33818f64d3a733565cfe00af3e` |
| 10 | `def` | [orM](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataListDefsNamespacedProd.lean/declarations/orm.md) | 149 | `declaration-track:2e7bb28583423d11e207de025cf9354d5c61e87577583eb03b335a97765cd3e8` |
| 11 | `def` | [andM](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataListDefsNamespacedProd.lean/declarations/andm.md) | 156 | `declaration-track:75674af922ad053dd68349593564bd8512816869c153d428d2740dd14a3d4774` |
| 12 | `def` | [foldlIdxM](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataListDefsNamespacedProd.lean/declarations/foldlidxm.md) | 173 | `declaration-track:7a259cfef5894fa73d4ed061c4d002053f51562a16eeb9bd5e73e5d36d61cc1b` |
| 13 | `def` | [foldrIdxM](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataListDefsNamespacedProd.lean/declarations/foldridxm.md) | 182 | `declaration-track:34d33351be8691cc6ba3b19e090859309f666d6b0df6bc3da244689200b34f1c` |
| 14 | `def` | [mapIdxMAux'](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataListDefsNamespacedProd.lean/declarations/mapidxmaux.md) | 206 | `declaration-track:5bb7bc21292fa98c2174543372204300a24d9174fe89d3e6d1e2b06c8d9abef9` |
| 15 | `def` | [mapIdxM'](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataListDefsNamespacedProd.lean/declarations/mapidxm.md) | 213 | `declaration-track:5be1d0ea44a05dd9b452088e81bebcf18ba556e258f551a3a430dcbdf3d81682` |
| 16 | `def` | [All₂](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataListDefsNamespacedProd.lean/declarations/all.md) | 234 | `declaration-track:ae6fe9e47603dc7214a1cefd46e45e391ede5105568e04f7da82e5e8fb5ff61b` |
| 17 | `def` | [permutationsAux2](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataListDefsNamespacedProd.lean/declarations/permutationsaux2.md) | 254 | `declaration-track:f5e5ef312372cfc066abbbfc80ffc8fc3cafd4102ad573cc279e5954a7c867f4` |
| 18 | `def` | [permutationsAux.rec](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataListDefsNamespacedProd.lean/declarations/permutationsaux-rec.md) | 265 | `declaration-track:88ed4218da757d07436bc8464978a711b85a1c36177348ae9d2beac3b85b1f93` |
| 19 | `def` | [permutationsAux](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataListDefsNamespacedProd.lean/declarations/permutationsaux.md) | 276 | `declaration-track:41d4953c87c3da0099fa388bc5d3f5ee816089ee7eb17c216ed5ff8dabceae79` |
| 20 | `def` | [permutations](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataListDefsNamespacedProd.lean/declarations/permutations-source-edition-2.md) | 286 | `declaration-track:8d9bc61af9462b2f7ef4aa8cd876827aca0e8f3eb21b844e58e49f6b7c962213` |
| 21 | `def` | [permutations'Aux](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataListDefsNamespacedProd.lean/declarations/permutations-aux.md) | 302 | `declaration-track:99f1096cec5142d3661a6f5684185ded90b98382f1f9947624c3fbd78b0e4f31` |
| 22 | `def` | [permutations'](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataListDefsNamespacedProd.lean/declarations/permutations.md) | 315 | `declaration-track:6f70021f87b9b1feff58e5e15827ed468d3dc54b4933d71b81282583e12968ea` |
| 23 | `def` | [extractp](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataListDefsNamespacedProd.lean/declarations/extractp.md) | 326 | `declaration-track:23e439bcfaea7030c1a79a60b975934588b16ad22172e47e4aa8668ac9e76cd4` |
| 24 | `instance` | [instSProd](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataListDefsNamespacedProd.lean/declarations/instsprod.md) | 341 | `declaration-track:d038dd4b376490e7e713d46a73b9eb269b1ba3646d5464bcfc1c737e42f3a4d9` |
| 25 | `instance` | [decidableChain](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataListDefsNamespacedProd.lean/declarations/decidablechain.md) | 358 | `declaration-track:af95b1cd94200a21ef5eea8a2a22509f912a1585d3dd4be8ac83d4909ece90d4` |
| 26 | `instance` | [decidableChain'](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataListDefsNamespacedProd.lean/declarations/decidablechain-source-edition-2.md) | 365 | `declaration-track:efaad6ac2aad958d6e9962a30a64078b2fdb27faf7d0ade67695b15042af43a7` |
| 27 | `def` | [dedup](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataListDefsNamespacedProd.lean/declarations/dedup.md) | 378 | `declaration-track:651c3b464a08e66594b76a72bb6763ce79ca4dac749a89d238969f0944e830a2` |
| 28 | `def` | [destutter'](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataListDefsNamespacedProd.lean/declarations/destutter.md) | 385 | `declaration-track:f14d64a288d39eb37e89d349671544c9fcad0bb3b4b7df08d33dfcc8bb72cb88` |
| 29 | `def` | [destutter](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataListDefsNamespacedProd.lean/declarations/destutter-source-edition-2.md) | 394 | `declaration-track:f5ff7208ffe2fd85ec7fc43625436983bdd21384381861666ac7444e1da3bc2d` |
| 30 | `def` | [chooseX](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataListDefsNamespacedProd.lean/declarations/choosex.md) | 416 | `declaration-track:65b95c7c826f8128d548a5c3f863b2ec9ca0d69fcaca7d5529cc00de728f2e89` |
| 31 | `def` | [choose](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataListDefsNamespacedProd.lean/declarations/choose.md) | 430 | `declaration-track:83fcbce4c0ca3ad9e221f61187e37fea8afa508239009dac9faadbb63c5cdc08` |
| 32 | `def` | [mapDiagM'](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataListDefsNamespacedProd.lean/declarations/mapdiagm.md) | 446 | `declaration-track:f069d4b5ea64a964d6e0705bda33a9762175e13eddd5f7541af1bb6f70057d55` |
| 33 | `def` | [traverse](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataListDefsNamespacedProd.lean/declarations/traverse.md) | 460 | `declaration-track:4a23635757727de6d9b36a1a65cfc6d6b7b18a048c2baa7bfa73ac799f0351a5` |
| 34 | `def` | [map₂Left'](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataListDefsNamespacedProd.lean/declarations/map-left.md) | 481 | `declaration-track:8abf2c763bb4f41cd87e519fd9088bc9a040e1e862fd0e843a3fa52c4b4e1f16` |
| 35 | `def` | [map₂Right'](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataListDefsNamespacedProd.lean/declarations/map-right-source-edition-2.md) | 500 | `declaration-track:546e21523fa89bf46bc91c2cbd5384bc798858448b2aa4d90a61c626ac3127fb` |
| 36 | `def` | [map₂Left](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataListDefsNamespacedProd.lean/declarations/map-left-source-edition-2.md) | 518 | `declaration-track:8bdbddd1dcf1e9367b9a8233334f87aa3931624d0e15e5ea3bd3ce846b4221d3` |
| 37 | `def` | [map₂Right](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataListDefsNamespacedProd.lean/declarations/map-right.md) | 536 | `declaration-track:4c46333064fff59fcb21523052ea02e675de1e6166dd861c8dfa46ecdb48dc45` |
| 38 | `def` | [mapAsyncChunked](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataListDefsNamespacedProd.lean/declarations/mapasyncchunked.md) | 555 | `declaration-track:32dbd676e0a50639b9b016f7c802c39e95add17c2c5a0ea521be300fa0a4c89f` |
| 39 | `def` | [zipWith3](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataListDefsNamespacedProd.lean/declarations/zipwith3.md) | 570 | `declaration-track:035e9916754897c71f171e3fd5d21c9ed9da1e079259866edb4fd0a6c5a04f9a` |
| 40 | `def` | [zipWith4](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataListDefsNamespacedProd.lean/declarations/zipwith4.md) | 576 | `declaration-track:0eca64ff0414c4cb44801af0c5637b31c5c582abd2d0d76b8e69e1777cb73df7` |
| 41 | `def` | [zipWith5](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataListDefsNamespacedProd.lean/declarations/zipwith5.md) | 582 | `declaration-track:cd6c5517dff2aa3a3cb50440858d6773ff26a373316a1e06d156ca405eb52c78` |
| 42 | `def` | [replaceIf](../../../../../../ComputerScience/TheoryOfData/DataStructures/DataListDefsNamespacedProd.lean/declarations/replaceif.md) | 590 | `declaration-track:9dcba9714fd3f6339d1c7f864813460ddd642037c2b2d6c527b94f5b450e88c1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=2f5655164460910be79673ced5c838aed90e3bda6f31bf8802988edc05d1fe85 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Defs/Variant8a33534fe5770a3a5c6c1c7f79452993922545d33bdd9818acf1c3b8f8bf8a41.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Defs/Variant8a33534fe5770a3a5c6c1c7f79452993922545d33bdd9818acf1c3b8f8bf8a41.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
