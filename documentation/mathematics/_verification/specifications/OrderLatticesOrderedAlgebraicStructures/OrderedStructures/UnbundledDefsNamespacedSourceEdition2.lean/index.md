# Verification target: Unbundled Defs Namespaced Source Edition2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "20d3e4b937dd69ef758ebd59a52e4ce91ca257e5",
  "lexical_observation_count": 71,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Defs/Variant25cfa9b8e01bd3b8a6a9a327e67e722ab7b067b921993d682b0d031f46b2ad09.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/UnbundledDefsNamespacedSourceEdition2.lean/index.md) · [Full source](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/UnbundledDefsNamespacedSourceEdition2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `20d3e4b937dd69ef758ebd59a52e4ce91ca257e5`.

Source path: `GRWTSK/Algebra/GroupTheory/Defs/Variant25cfa9b8e01bd3b8a6a9a327e67e722ab7b067b921993d682b0d031f46b2ad09.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Defs/Variant25cfa9b8e01bd3b8a6a9a327e67e722ab7b067b921993d682b0d031f46b2ad09.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Monotone.Defs` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Covariant](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/UnbundledDefsNamespacedSourceEdition2.lean/declarations/covariant.md) | 84 | `declaration-track:9d0d50480de24ce149c60f9052ffe57db7b962515f456508748e408d7b72bc3d` |
| 2 | `def` | [Contravariant](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/UnbundledDefsNamespacedSourceEdition2.lean/declarations/contravariant.md) | 91 | `declaration-track:f680276e31aa44ea3765b2e529dcd12910b46bd853abef92a2836aedc14f2523` |
| 3 | `class` | [CovariantClass](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/UnbundledDefsNamespacedSourceEdition2.lean/declarations/covariantclass.md) | 105 | `declaration-track:73f4f1e1064d362f4546ad857df6fbcc51cadfeeb2cf5e15b1c5da1f4ed75223` |
| 4 | `class` | [ContravariantClass](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/UnbundledDefsNamespacedSourceEdition2.lean/declarations/contravariantclass.md) | 122 | `declaration-track:3cfcfec5fc0605d4ddf2646e97098fba18aac39b56ea8286daaa7f52b80d90e2` |
| 5 | `abbrev` | [MulLeftMono](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/UnbundledDefsNamespacedSourceEdition2.lean/declarations/mulleftmono.md) | 133 | `declaration-track:9089c681ecd04e8b7d190fffb173310308b44795da70ef94c09300295ea59adf` |
| 6 | `abbrev` | [MulRightMono](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/UnbundledDefsNamespacedSourceEdition2.lean/declarations/mulrightmono.md) | 141 | `declaration-track:4e55383c5aaca17d9d2e5a5ef134bd2064b00e608c919f94a3f3834193ad7044` |
| 7 | `abbrev` | [AddLeftMono](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/UnbundledDefsNamespacedSourceEdition2.lean/declarations/addleftmono.md) | 149 | `declaration-track:6a40087c9482369bc46aeb1e15879e6220184e0249e965bcf3161fdebbe5a262` |
| 8 | `abbrev` | [AddRightMono](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/UnbundledDefsNamespacedSourceEdition2.lean/declarations/addrightmono.md) | 157 | `declaration-track:322b6676981ea7e30a48214928f673950a084bee837a3035a87b3b7718fc9c17` |
| 9 | `abbrev` | [MulLeftStrictMono](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/UnbundledDefsNamespacedSourceEdition2.lean/declarations/mulleftstrictmono.md) | 167 | `declaration-track:74b73839e664f70be3003e6f565ab09a3ac24c45b6c174585ee40d5736ef740c` |
| 10 | `abbrev` | [MulRightStrictMono](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/UnbundledDefsNamespacedSourceEdition2.lean/declarations/mulrightstrictmono.md) | 175 | `declaration-track:aa22c5724f2d8d107baad395e6196f7f385f4ec2f9c606a7e842a7e7059cdbb4` |
| 11 | `abbrev` | [AddLeftStrictMono](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/UnbundledDefsNamespacedSourceEdition2.lean/declarations/addleftstrictmono.md) | 183 | `declaration-track:c9bbb3f530db158b928f9fa99bb806a150876ba19a71d771d57e97147bd4f6d6` |
| 12 | `abbrev` | [AddRightStrictMono](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/UnbundledDefsNamespacedSourceEdition2.lean/declarations/addrightstrictmono.md) | 191 | `declaration-track:9e2c2ab0568a8f7b25306d5a1ade178154fb5cae9f107fe988891dc8b7bd23c3` |
| 13 | `abbrev` | [MulLeftReflectLT](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/UnbundledDefsNamespacedSourceEdition2.lean/declarations/mulleftreflectlt.md) | 201 | `declaration-track:83675880ca648cb8adff8e73a5bde64fa0bbbdd41f195b74c3ce7a64e7f8bd25` |
| 14 | `abbrev` | [MulRightReflectLT](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/UnbundledDefsNamespacedSourceEdition2.lean/declarations/mulrightreflectlt.md) | 209 | `declaration-track:e6d596e9b8193a28024f27e76ff7f2628f127c07b2cc34d3a4937f25ad0b6416` |
| 15 | `abbrev` | [AddLeftReflectLT](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/UnbundledDefsNamespacedSourceEdition2.lean/declarations/addleftreflectlt.md) | 217 | `declaration-track:683d22f71b8ec2dd9a49b25033ce6c8d445a7ffccad06ee643acce8ea87f025d` |
| 16 | `abbrev` | [AddRightReflectLT](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/UnbundledDefsNamespacedSourceEdition2.lean/declarations/addrightreflectlt.md) | 225 | `declaration-track:b9d6ac96c097b32279f1cab3c195ae7b039bfa0573443af51b29ac094de94e3a` |
| 17 | `abbrev` | [MulLeftReflectLE](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/UnbundledDefsNamespacedSourceEdition2.lean/declarations/mulleftreflectle.md) | 235 | `declaration-track:8033ef416b879cd475636d3c345ec65c1dc0e7d3199d0be8af7571144625af6b` |
| 18 | `abbrev` | [MulRightReflectLE](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/UnbundledDefsNamespacedSourceEdition2.lean/declarations/mulrightreflectle.md) | 243 | `declaration-track:572e9994fe4252283c22bcb8edf9568274bd9949e27c19bf4e904561af806bb6` |
| 19 | `abbrev` | [AddLeftReflectLE](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/UnbundledDefsNamespacedSourceEdition2.lean/declarations/addleftreflectle.md) | 251 | `declaration-track:ce8a5572fbcbe4e660b0738222409386ea327db231bfd5a3a1411c79082fbf17` |
| 20 | `abbrev` | [AddRightReflectLE](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/UnbundledDefsNamespacedSourceEdition2.lean/declarations/addrightreflectle.md) | 259 | `declaration-track:c96077fe05836bebaed94f05d9275283d2cc57fc7418cb6978c0b24c1fe0a00a` |
| 21 | `theorem` | [rel_iff_cov](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/UnbundledDefsNamespacedSourceEdition2.lean/declarations/rel-iff-cov.md) | 264 | `result-track:1f7568f342d8a32e4ab26ce71e4ddfe2475558be34705117e09863b5b10c24c8` |
| 22 | `theorem` | [Covariant.flip](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/UnbundledDefsNamespacedSourceEdition2.lean/declarations/flip-source-line-272-occurrence-2.md) | 272 | `result-track:821e9ced2282852687d01a1042391928b23e43525a2e401db2701ab851faabe0` |
| 23 | `theorem` | [Contravariant.flip](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/UnbundledDefsNamespacedSourceEdition2.lean/declarations/flip.md) | 275 | `result-track:bda40bd7fc0d7aacb20f95299f21bb6eef90698c1bb18f14a1a868e71c56930a` |
| 24 | `theorem` | [act_rel_act_of_rel](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/UnbundledDefsNamespacedSourceEdition2.lean/declarations/act-rel-act-of-rel.md) | 284 | `result-track:9d4aceb6c152efd1e04c8dd56d8db82f579b66b3c25a3d815ff0783cc4bd5296` |
| 25 | `theorem` | [Group.covariant_iff_contravariant](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/UnbundledDefsNamespacedSourceEdition2.lean/declarations/covariant-iff-contravariant.md) | 288 | `result-track:83fa4896651b5e1ebd938ca60e9ecba0ddd949b524615fc9f7ec8eae88254917` |
| 26 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/UnbundledDefsNamespacedSourceEdition2.lean/declarations/instance-source-edition-2.md) | 297 | `declaration-track:eeb37918e715b4c9a5920179821ca82e9501e238b3eba3f08b949e6de4709dc1` |
| 27 | `theorem` | [Group.mulLeftReflectLE_of_mulLeftMono](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/UnbundledDefsNamespacedSourceEdition2.lean/declarations/group-mulleftreflectle-of-mulleftmono.md) | 302 | `result-track:fa0e97b068aa5b0de653b8f3b036b5416fae629ec60a2c79c91e0a1ba27eff11` |
| 28 | `theorem` | [Group.mulLeftReflectLT_of_mulLeftStrictMono](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/UnbundledDefsNamespacedSourceEdition2.lean/declarations/group-mulleftreflectlt-of-mulleftstrictmono.md) | 307 | `result-track:a97afca21d89f9baf030b322933dace245a7593f1f5337d64b60f1bb437f7cdd` |
| 29 | `theorem` | [Group.covariant_swap_iff_contravariant_swap](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/UnbundledDefsNamespacedSourceEdition2.lean/declarations/covariant-swap-iff-contravariant-swap.md) | 312 | `result-track:38d6cbe6aa267269b42d08efe8446646010a7b43c442646e1ebb97c270e612a5` |
| 30 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/UnbundledDefsNamespacedSourceEdition2.lean/declarations/instance.md) | 322 | `declaration-track:223141ede06777b998e30078ded62f4fdef657ef17ccce40bd0dff4a139269ab` |
| 31 | `theorem` | [Group.mulRightReflectLE_of_mulRightMono](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/UnbundledDefsNamespacedSourceEdition2.lean/declarations/group-mulrightreflectle-of-mulrightmono.md) | 327 | `result-track:0a37dcf8b91c59a879da934feb91b61dcb180ca76d8abf6075308c74bc6c08db` |
| 32 | `theorem` | [Group.mulRightReflectLT_of_mulRightStrictMono](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/UnbundledDefsNamespacedSourceEdition2.lean/declarations/group-mulrightreflectlt-of-mulrightstrictmono.md) | 332 | `result-track:8af6cefad557a73bc1c2f0be6fa3dc2e43500e964967e0ed1cafe4b947b4bc2b` |
| 33 | `theorem` | [act_rel_of_rel_of_act_rel](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/UnbundledDefsNamespacedSourceEdition2.lean/declarations/act-rel-of-rel-of-act-rel.md) | 342 | `result-track:823743a1d1af72bd4056468a08ae252cf60ee6dfd45d78dc4f20fc9cec627941` |
| 34 | `theorem` | [rel_act_of_rel_of_rel_act](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/UnbundledDefsNamespacedSourceEdition2.lean/declarations/rel-act-of-rel-of-rel-act.md) | 345 | `result-track:dbdb1f2825178138c1d37d01c705ea93600fda4c0b703d1fd52d8ecac41ecd61` |
| 35 | `theorem` | [act_rel_act_of_rel_of_rel](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/UnbundledDefsNamespacedSourceEdition2.lean/declarations/act-rel-act-of-rel-of-rel.md) | 358 | `result-track:45e1839d48857d13f9eb7b38d7bf2b66f2feed0cfc18b3bec9a1b29a099d0a7b` |
| 36 | `theorem` | [rel_of_act_rel_act](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/UnbundledDefsNamespacedSourceEdition2.lean/declarations/rel-of-act-rel-act.md) | 367 | `result-track:6ab389eb7df13b6f930ee2bdc869d2104ae129931b2601be65308a3d7f01e0d0` |
| 37 | `theorem` | [act_rel_of_act_rel_of_rel_act_rel](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/UnbundledDefsNamespacedSourceEdition2.lean/declarations/act-rel-of-act-rel-of-rel-act-rel.md) | 375 | `result-track:1b547ada646dbd7ec36e91d500ba1977a67d354c235e5aec468b85a87044fa23` |
| 38 | `theorem` | [rel_act_of_act_rel_act_of_rel_act](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/UnbundledDefsNamespacedSourceEdition2.lean/declarations/rel-act-of-act-rel-act-of-rel-act.md) | 379 | `result-track:7d392916aad9f324fdec22196a44d6f2906e26a0507427dbf4e7a1658663e666` |
| 39 | `theorem` | [Covariant.monotone_of_const](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/UnbundledDefsNamespacedSourceEdition2.lean/declarations/monotone-of-const.md) | 393 | `result-track:55e08c01a1a9abe9f9c3dffabe0aac2b3663caba871c56edd1d6e06a270b0dfa` |
| 40 | `theorem` | [Monotone.covariant_of_const](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/UnbundledDefsNamespacedSourceEdition2.lean/declarations/covariant-of-const-source-line-398-occurrence-2.md) | 398 | `result-track:6f4ec4ed5772b6094f8a4ee5bf26873109e46e19130714af8327c7f335ba5197` |
| 41 | `theorem` | [Monotone.covariant_of_const'](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/UnbundledDefsNamespacedSourceEdition2.lean/declarations/covariant-of-const-source-line-404-occurrence-2.md) | 404 | `result-track:e43145b02dae08a8a820c50433efb7cd93f3df461e5a8fba73c60a129ce34d67` |
| 42 | `theorem` | [Antitone.covariant_of_const](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/UnbundledDefsNamespacedSourceEdition2.lean/declarations/covariant-of-const-source-line-409-occurrence-2.md) | 409 | `result-track:5455b60ad95ea8ef33b8fc9f1a3779d860bda48fdc8ef5c3ec56f59fd767ea92` |
| 43 | `theorem` | [Antitone.covariant_of_const'](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/UnbundledDefsNamespacedSourceEdition2.lean/declarations/covariant-of-const.md) | 414 | `result-track:0bfe15874e2e25f6277e935a9516625dab435a2be083d7678ba1812ebb01405b` |
| 44 | `theorem` | [covariant_le_of_covariant_lt](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/UnbundledDefsNamespacedSourceEdition2.lean/declarations/covariant-le-of-covariant-lt.md) | 420 | `result-track:b05126e19dac6b5fe584002b99592d8baadd6c09627ae4c5b1c2361369dbbd14` |
| 45 | `theorem` | [covariantClass_le_of_lt](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/UnbundledDefsNamespacedSourceEdition2.lean/declarations/covariantclass-le-of-lt.md) | 427 | `result-track:b3bead9ac6b71ee4658f799d6e7957aa5c98a5548428a7d8a5491dbbfe652142` |
| 46 | `theorem` | [mulLeftMono_of_mulLeftStrictMono](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/UnbundledDefsNamespacedSourceEdition2.lean/declarations/mulleftmono-of-mulleftstrictmono.md) | 431 | `result-track:131a3848ade1b775199ea37e8522ad3d37fbeb74a398163e492ffce49e10726a` |
| 47 | `theorem` | [mulRightMono_of_mulRightStrictMono](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/UnbundledDefsNamespacedSourceEdition2.lean/declarations/mulrightmono-of-mulrightstrictmono.md) | 435 | `result-track:5fee1dd78027989f7e3ff242182098565ee00d7d3eed7314da237f89d6ab6753` |
| 48 | `theorem` | [contravariant_le_iff_contravariant_lt_and_eq](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/UnbundledDefsNamespacedSourceEdition2.lean/declarations/contravariant-le-iff-contravariant-lt-and-eq.md) | 438 | `result-track:74ad3dde77d534b3d4114134330a978a86f567eb89d1926707f004591e11c532` |
| 49 | `theorem` | [contravariant_lt_of_contravariant_le](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/UnbundledDefsNamespacedSourceEdition2.lean/declarations/contravariant-lt-of-contravariant-le.md) | 445 | `result-track:fa2a1fbc8bbc19a1732a850c3d0c311e7e501c0e77e6c979abd685d58c3b8c95` |
| 50 | `theorem` | [covariant_le_iff_contravariant_lt](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/UnbundledDefsNamespacedSourceEdition2.lean/declarations/covariant-le-iff-contravariant-lt.md) | 449 | `result-track:686515afbac5c185b6a1825bb6a7e763205e09bf4525e09e11f47ff18717bb88` |
| 51 | `theorem` | [covariant_lt_iff_contravariant_le](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/UnbundledDefsNamespacedSourceEdition2.lean/declarations/covariant-lt-iff-contravariant-le.md) | 454 | `result-track:e5573552fec42ea1959c16db4de78d87b71f1c8637111c3d68c6155dfccadf54` |
| 52 | `theorem` | [covariant_flip_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/UnbundledDefsNamespacedSourceEdition2.lean/declarations/covariant-flip-iff.md) | 461 | `result-track:548a63fcc06acfca4e62868940e6533c19e6b23f82c8f1fa7da735edf26947d2` |
| 53 | `theorem` | [contravariant_flip_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/UnbundledDefsNamespacedSourceEdition2.lean/declarations/contravariant-flip-iff.md) | 464 | `result-track:25bcebabc7925abb901da0181bc714044e49ce9c45c71a8e169ea2d75c09724b` |
| 54 | `instance` | [contravariant_lt_of_covariant_le](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/UnbundledDefsNamespacedSourceEdition2.lean/declarations/contravariant-lt-of-covariant-le.md) | 467 | `declaration-track:218add7fae80bd52510947dfcff5bf999e1ead1a1e022f4e663f3ba1dc790f8b` |
| 55 | `theorem` | [mulLeftReflectLT_of_mulLeftMono](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/UnbundledDefsNamespacedSourceEdition2.lean/declarations/mulleftreflectlt-of-mulleftmono.md) | 472 | `result-track:fec3e8a1bd86694fc9e0765e2c41796d320a6bc820b749a30273b4ac5376557c` |
| 56 | `theorem` | [mulRightReflectLT_of_mulRightMono](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/UnbundledDefsNamespacedSourceEdition2.lean/declarations/mulrightreflectlt-of-mulrightmono.md) | 477 | `result-track:a64539617d07bf8f555398f63ebbd5e4e1d202a0f0d99c0530c5e483356cab45` |
| 57 | `instance` | [covariant_lt_of_contravariant_le](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/UnbundledDefsNamespacedSourceEdition2.lean/declarations/covariant-lt-of-contravariant-le.md) | 481 | `declaration-track:431d44b1988579c81e588452cee2421b36cba356f6db629cd6dbc9a6ccc73df1` |
| 58 | `theorem` | [mulLeftStrictMono_of_mulLeftReflectLE](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/UnbundledDefsNamespacedSourceEdition2.lean/declarations/mulleftstrictmono-of-mulleftreflectle.md) | 486 | `result-track:1395c022768690c7eb0881e2974beaacfcd7d9a235041a6ed6b553c9bfa64e64` |
| 59 | `theorem` | [mulRightStrictMono_of_mulRightReflectLE](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/UnbundledDefsNamespacedSourceEdition2.lean/declarations/mulrightstrictmono-of-mulrightreflectle.md) | 491 | `result-track:020439709ce6c02ed9150b2cb59d9e204c7d4495287a3c3fa49f89ef8f96acf0` |
| 60 | `instance` | [covariant_swap_mul_of_covariant_mul](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/UnbundledDefsNamespacedSourceEdition2.lean/declarations/covariant-swap-mul-of-covariant-mul.md) | 496 | `declaration-track:4262cb47e8a713934f78736a43ca3ff9df6bb5acd4cee68ea3c39310b6f38a69` |
| 61 | `theorem` | [mulRightMono_of_mulLeftMono](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/UnbundledDefsNamespacedSourceEdition2.lean/declarations/mulrightmono-of-mulleftmono.md) | 501 | `result-track:48a3f30d5f9bf5ad6536890e75588c3424d4311f2dc41677727269152465a34f` |
| 62 | `theorem` | [mulRightStrictMono_of_mulLeftStrictMono](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/UnbundledDefsNamespacedSourceEdition2.lean/declarations/mulrightstrictmono-of-mulleftstrictmono.md) | 506 | `result-track:d29151988654f21829d94d9ed3035af2ea77f5feaae53a032d0b34857a39115d` |
| 63 | `instance` | [contravariant_swap_mul_of_contravariant_mul](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/UnbundledDefsNamespacedSourceEdition2.lean/declarations/contravariant-swap-mul-of-contravariant-mul.md) | 511 | `declaration-track:2bc1470b78d01d5bb9cf14c0bc206aedcb1e9131cd2d9b5f21c1d2d28f7806f4` |
| 64 | `theorem` | [mulRightReflectLE_of_mulLeftReflectLE](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/UnbundledDefsNamespacedSourceEdition2.lean/declarations/mulrightreflectle-of-mulleftreflectle.md) | 516 | `result-track:34d01cbc5fb9c726fae99920a598a0f91011c36f5bd82c93d04e91020512a23c` |
| 65 | `theorem` | [mulRightReflectLT_of_mulLeftReflectLT](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/UnbundledDefsNamespacedSourceEdition2.lean/declarations/mulrightreflectlt-of-mulleftreflectlt.md) | 521 | `result-track:0de63476ff7280a30034b018f9926265a57ee811376389d3e6555385e13fa58a` |
| 66 | `theorem` | [covariant_lt_of_covariant_le_of_contravariant_eq](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/UnbundledDefsNamespacedSourceEdition2.lean/declarations/covariant-lt-of-covariant-le-of-contravariant-eq.md) | 525 | `result-track:1285b9650cebaaf991fba5bc4555046b57841b761ecbcddcb63d194f558d516c` |
| 67 | `theorem` | [contravariant_le_of_contravariant_eq_and_lt](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/UnbundledDefsNamespacedSourceEdition2.lean/declarations/contravariant-le-of-contravariant-eq-and-lt.md) | 529 | `result-track:bebff12ba1d285bc0f8c18810a292b19e1bb672698cc9949e07bd12eeae3d4f3` |
| 68 | `instance` | [IsLeftCancelMul.mulLeftStrictMono_of_mulLeftMono](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/UnbundledDefsNamespacedSourceEdition2.lean/declarations/isleftcancelmul-mulleftstrictmono-of-mulleftmono.md) | 542 | `declaration-track:60253fd8d2e0b1cb2230ec5a447aa60d2dcc6d858f87263203c602dfc3c0fbe8` |
| 69 | `instance` | [IsRightCancelMul.mulRightStrictMono_of_mulRightMono](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/UnbundledDefsNamespacedSourceEdition2.lean/declarations/isrightcancelmul-mulrightstrictmono-of-mulrightmono.md) | 548 | `declaration-track:8ef0f3108aa59d14f2498610773e779ead207dc73116145957d45dd2fe23147d` |
| 70 | `instance` | [IsLeftCancelMul.mulLeftReflectLE_of_mulLeftReflectLT](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/UnbundledDefsNamespacedSourceEdition2.lean/declarations/isleftcancelmul-mulleftreflectle-of-mulleftreflectlt.md) | 554 | `declaration-track:c65bf230e2e6a461868861d311e16974212613e1ee2bab3ebf4ef13ecfaae76e` |
| 71 | `instance` | [IsRightCancelMul.mulRightReflectLE_of_mulRightReflectLT](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/UnbundledDefsNamespacedSourceEdition2.lean/declarations/isrightcancelmul-mulrightreflectle-of-mulrightreflectlt.md) | 561 | `declaration-track:7ba72a1549b2ade4549c2298eb19e978f91efd5d4a5a87783634d4ea1b2339e4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=8233c62a05c0f5d94f7e994fcd9833f835ad0b2091bab4d6822c8cef23d35a49 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/Defs/Variant25cfa9b8e01bd3b8a6a9a327e67e722ab7b067b921993d682b0d031f46b2ad09.lean","GRWTSK/_verification/specifications/Algebra/GroupTheory/Defs/Variant25cfa9b8e01bd3b8a6a9a327e67e722ab7b067b921993d682b0d031f46b2ad09.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
