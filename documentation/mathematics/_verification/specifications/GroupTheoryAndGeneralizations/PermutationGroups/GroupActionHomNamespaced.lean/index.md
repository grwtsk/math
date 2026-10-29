# Verification target: Group Action Hom Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e917791cd9952f7a22b9db6c34814674e7b08ac1",
  "lexical_observation_count": 126,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Hom/Variantd520ea08263066d2224a6a11ad9d50e1448f033eedf53f8e4017b9074dd74cc5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionHomNamespaced.lean/index.md) · [Full source](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionHomNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e917791cd9952f7a22b9db6c34814674e7b08ac1`.

Source path: `GRWTSK/Algebra/GroupTheory/Hom/Variantd520ea08263066d2224a6a11ad9d50e1448f033eedf53f8e4017b9074dd74cc5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Hom/Variantd520ea08263066d2224a6a11ad9d50e1448f033eedf53f8e4017b9074dd74cc5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Hom.CompTypeclasses` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Module.Defs` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Notation.Prod` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.Action.Basic` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [AddActionHom](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionHomNamespaced.lean/declarations/addactionhom.md) | 78 | `declaration-track:4e655a824be34bdf385d03209be5180adc174f3b75134a0db0807698ffb9ba8c` |
| 2 | `structure` | [MulActionHom](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionHomNamespaced.lean/declarations/mulactionhom.md) | 88 | `declaration-track:d6e309b186826fa9e3e7bc460e0da6ba937fc805f69da1124e0bcfc4cad802ca` |
| 3 | `class` | [AddActionSemiHomClass](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionHomNamespaced.lean/declarations/addactionsemihomclass.md) | 120 | `declaration-track:b3bd7a8ce42cf3b24e42cd81f04e2b2397e60fa8775a55c4c0ae07caff71c501` |
| 4 | `class` | [MulActionSemiHomClass](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionHomNamespaced.lean/declarations/mulactionsemihomclass.md) | 131 | `declaration-track:180837dc734d2075a5a8ff4fbc24352953c297e7b68e6f2ba7d51522484498e9` |
| 5 | `abbrev` | [MulActionHomClass](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionHomNamespaced.lean/declarations/mulactionhomclass.md) | 146 | `declaration-track:14dbb144bb0e02c157d4f4421bcb8ce866b65ff4471847bb50e821cde8b43416` |
| 6 | `instance` | [(anonymous)](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionHomNamespaced.lean/declarations/instance-source-edition-15.md) | 150 | `declaration-track:91372e5563759e484ed887cdd0e1ac3c5517d3bbcc666506a01aa5033cf23adb` |
| 7 | `theorem` | [map_smul](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionHomNamespaced.lean/declarations/map-smul-source-edition-2.md) | 155 | `result-track:1c5114f49e45dd640b7d3aab41239a7567b029d5c4a516ec06b6346e016ff038` |
| 8 | `instance` | [(anonymous)](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionHomNamespaced.lean/declarations/instance-source-edition-28.md) | 161 | `declaration-track:e4faef6f9a2465c17e5bb3fca180fc587342070a07405526f511fc0a5e634b73` |
| 9 | `def` | [Group Action Hom Namespaced](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionHomNamespaced.lean/declarations/tomulactionhom-source-line-179-occurrence-2.md) | 179 | `declaration-track:f9de3124c4370a53b8e61b0aeb2750736e11ad6602d6f45943422e230ab16f75` |
| 10 | `instance` | [(anonymous)](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionHomNamespaced.lean/declarations/instance-source-edition-5.md) | 187 | `declaration-track:43d8ba4c379a2accd85e0675fedf70addf1fa28a3e2f510a3ac72729fa659f7d` |
| 11 | `theorem` | [Group Action Hom Namespaced](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionHomNamespaced.lean/declarations/smulhomclass.md) | 193 | `result-track:c80d6dc5ef1a4e78059b8bd8b798e71f627fa968611e45c24f0ae9bdb62f61c7` |
| 12 | `theorem` | [map_smul](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionHomNamespaced.lean/declarations/map-smul-source-edition-3.md) | 200 | `result-track:51a9cf22a3a936d14af253598acee2324ee31e03bc28b63aa0e0217701af6c29` |
| 13 | `theorem` | [ext](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionHomNamespaced.lean/declarations/ext.md) | 204 | `result-track:13951693fa0f3f4517244ee1654f02cbacbc2e96dbfde1b0cbcf783e9fa8ba59` |
| 14 | `theorem` | [congr_fun](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionHomNamespaced.lean/declarations/congr-fun-source-edition-2.md) | 209 | `result-track:f7acf01d5604114400016f9de3b59c9fd222de59d05a544919fb78622525194e` |
| 15 | `def` | [ofEq](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionHomNamespaced.lean/declarations/ofeq.md) | 215 | `declaration-track:d44748d3f7278f8b2aedcc60d6ba509130aa46ea8e258c543c2f013bfce621ab` |
| 16 | `theorem` | [ofEq_coe](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionHomNamespaced.lean/declarations/ofeq-coe.md) | 220 | `result-track:38860aa20c478c24ab751db2f83f1b1472fff04cfed1878a53491ad53026a90e` |
| 17 | `theorem` | [ofEq_apply](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionHomNamespaced.lean/declarations/ofeq-apply.md) | 224 | `result-track:d5f93897eca0bba15bf28b1e868dcf2956bae81ca8bed5ce376fa90aafda69df` |
| 18 | `lemma` | [Group Action Hom Namespaced](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionHomNamespaced.lean/declarations/of-injective.md) | 228 | `result-track:68ad6f2327aa98cada4191724d6e52ae78f4ec8d867b28d4198a84e268666a0d` |
| 19 | `def` | [id](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionHomNamespaced.lean/declarations/id.md) | 238 | `declaration-track:46e7e6bc284176545ca695f63008247ec2b92fbbc3d9284ab64a889d2680c1b8` |
| 20 | `theorem` | [id_apply](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionHomNamespaced.lean/declarations/id-apply-source-edition-2.md) | 244 | `result-track:7cfad79f2a771ffc76addc00521c195632e25e764fbd279629dda72f5c99b5f1` |
| 21 | `def` | [comp](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionHomNamespaced.lean/declarations/comp-source-edition-2.md) | 259 | `declaration-track:af8c1c2de024fa429c53c22e0ca3872fb7bea50d76118f5e5aa23336278b9c8e` |
| 22 | `theorem` | [comp_apply](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionHomNamespaced.lean/declarations/comp-apply-source-edition-3.md) | 269 | `result-track:8ba34e63c83174992ec0b9f1030f4f5ddcb46235461ec9cc016f7b42d057eeab` |
| 23 | `theorem` | [id_comp](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionHomNamespaced.lean/declarations/id-comp.md) | 274 | `result-track:4b071ba956de98f84a707023f7aeef863e1fadb6a2d132117af07a3d5341cf78` |
| 24 | `theorem` | [comp_id](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionHomNamespaced.lean/declarations/comp-id.md) | 279 | `result-track:19719375118e18d7ea1714e4e47a2736c9342c6ceb0951aefc01de1924202bbe` |
| 25 | `theorem` | [comp_assoc](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionHomNamespaced.lean/declarations/comp-assoc-source-edition-2.md) | 284 | `result-track:e0ef03a3e92a71e85057ae04b856d54ba4b432d7e2169291f8687c97e1b5edcd` |
| 26 | `def` | [inverse](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionHomNamespaced.lean/declarations/inverse.md) | 297 | `declaration-track:17e308afcf49162c3362c5880581f60e9d23a90e60c4dbd10fcde32cd46139a2` |
| 27 | `def` | [inverse'](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionHomNamespaced.lean/declarations/inverse-source-edition-3.md) | 309 | `declaration-track:61ea1524bab46cf0f8f02a9731f47572aaad4ea72a96a2835ef7e777018dab54` |
| 28 | `lemma` | [inverse_eq_inverse'](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionHomNamespaced.lean/declarations/inverse-eq-inverse.md) | 321 | `result-track:cebbdb987b7262be26cd3dc67749755d683ea482db924e2141e9279490f8a44f` |
| 29 | `theorem` | [inverse'_inverse'](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionHomNamespaced.lean/declarations/inverse-inverse.md) | 327 | `result-track:ab6c5faf4c2a8bb904f3f73b2d5204d0c1122b3c42829b47f660a76c0f19c2dd` |
| 30 | `theorem` | [comp_inverse'](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionHomNamespaced.lean/declarations/comp-inverse.md) | 335 | `result-track:5ce9a974d7487226510d2be11508e843c3c170efbdbe4bd0916a1277cd50ef2d` |
| 31 | `theorem` | [inverse'_comp](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionHomNamespaced.lean/declarations/inverse-comp.md) | 346 | `result-track:7f1084be9d0dade06d128151ee94be2bbc88ab2a2cbc70b2f85f0fd6d796a61b` |
| 32 | `def` | [Group Action Hom Namespaced](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionHomNamespaced.lean/declarations/tomulactionhom.md) | 359 | `declaration-track:28e5e1429c675dee684399d61de0fbbf2718f70d2e3def5be8f5517ddbcda3aa` |
| 33 | `def` | [Pi.evalMulActionHom](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionHomNamespaced.lean/declarations/pi-evalmulactionhom.md) | 371 | `declaration-track:36d65abddfc52d23e7f0b186896379042dc1061dcd65399c7bc879a4cf683a42` |
| 34 | `def` | [fst](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionHomNamespaced.lean/declarations/fst.md) | 385 | `declaration-track:8856c6ef44a3103af27e0e1a55e9c21507f087e210753bd6b01961818c24270f` |
| 35 | `def` | [snd](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionHomNamespaced.lean/declarations/snd.md) | 392 | `declaration-track:efb6fdb4ccd05b1e1a4711460788bf8a13b1ef98927db4e57b033500ff0d8945` |
| 36 | `def` | [prod](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionHomNamespaced.lean/declarations/prod.md) | 403 | `declaration-track:7f1d52f14589e2d03f4d63b0e5a9b201430469183784c01be94e93fd52535469` |
| 37 | `lemma` | [fst_comp_prod](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionHomNamespaced.lean/declarations/fst-comp-prod.md) | 408 | `result-track:c6ae2c32aff2717879cdea5ec092a0fd53a0dc4b087701614eb51d615fc761db` |
| 38 | `lemma` | [snd_comp_prod](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionHomNamespaced.lean/declarations/snd-comp-prod.md) | 411 | `result-track:9984b61d2db7d7781dc599f55a78cf79177cf025160f01a429c2ad98a722abe5` |
| 39 | `lemma` | [prod_fst_snd](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionHomNamespaced.lean/declarations/prod-fst-snd.md) | 414 | `result-track:c766e8004f5900bfe663f9b90d1c03920c9c839b3a6b5722ebbb43224f6bf67b` |
| 40 | `def` | [prodMap](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionHomNamespaced.lean/declarations/prodmap.md) | 419 | `declaration-track:c71bb54174f10d863d442b035a05bc3fba30208a40fb7b21de8c5fa372891cce` |
| 41 | `instance` | [(anonymous)](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionHomNamespaced.lean/declarations/instance-source-edition-26.md) | 434 | `declaration-track:e16c193e9f206a2cc502838a66095386612a3599e66376213c1eac90a77e2ec8` |
| 42 | `lemma` | [coe_smul](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionHomNamespaced.lean/declarations/coe-smul.md) | 439 | `result-track:cae3b9073470ce5ba398c2d94d48512b8bf561b28dede8e38dd5bc3feec167fb` |
| 43 | `instance` | [(anonymous)](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionHomNamespaced.lean/declarations/instance-source-edition-11.md) | 442 | `declaration-track:71c5f3b5e58cf3656fe3d0f06887e8eb05bcf8735e749654fd8cfcb708bbfd44` |
| 44 | `lemma` | [coe_zero](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionHomNamespaced.lean/declarations/coe-zero.md) | 447 | `result-track:0f34e7bd63ad195367c2cf05488032e117d21ee0c4e7fc60de09e3f7d0efd195` |
| 45 | `instance` | [(anonymous)](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionHomNamespaced.lean/declarations/instance-source-edition-3.md) | 449 | `declaration-track:331209bc64e1235d40c0635c70ad4499f95e5ee16d161047dc56414df59fe13a` |
| 46 | `lemma` | [coe_add](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionHomNamespaced.lean/declarations/coe-add.md) | 456 | `result-track:7960c7426288d42dc975554654b0876515beda4f4d504bc7bf0f2dc561c854cd` |
| 47 | `instance` | [(anonymous)](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionHomNamespaced.lean/declarations/instance-source-edition-29.md) | 459 | `declaration-track:fd89182547bf5d2bfd703f7615d2c2d4212168ec192307cd1efcb59ed7849e49` |
| 48 | `instance` | [(anonymous)](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionHomNamespaced.lean/declarations/instance-source-edition-8.md) | 466 | `declaration-track:5dda563d279e0ef99b9b67d4da1e14fc33edc6af58d34e801cd44f34d4e71b48` |
| 49 | `instance` | [(anonymous)](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionHomNamespaced.lean/declarations/instance-source-edition-23.md) | 471 | `declaration-track:b1331b07c2253cace08049a4e27d5638c7943749380ebc889ce9eb30e1f46f26` |
| 50 | `instance` | [(anonymous)](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionHomNamespaced.lean/declarations/instance-source-edition-7.md) | 476 | `declaration-track:525bc04f014632b09757a302094d31568a4bfaccd7b1c871b425bda21dd984ae` |
| 51 | `instance` | [(anonymous)](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionHomNamespaced.lean/declarations/instance.md) | 481 | `declaration-track:0a49086fd802a5204a6faa3f20a362d03db28668cef48755cfbbe6f9b5f67bd0` |
| 52 | `instance` | [(anonymous)](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionHomNamespaced.lean/declarations/instance-source-edition-14.md) | 487 | `declaration-track:81f50e584179141bce509fdea6398295c89d8f2a3c69d0abb0b84e87fc57f8cf` |
| 53 | `instance` | [(anonymous)](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionHomNamespaced.lean/declarations/instance-source-edition-17.md) | 493 | `declaration-track:9b04088ab69ae53144014d994637623b34411da4d026257115e55057e99b10b6` |
| 54 | `lemma` | [coe_neg](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionHomNamespaced.lean/declarations/coe-neg.md) | 504 | `result-track:84e9c1f00c5341011eac413f7d2688518a8dc4488665c5d511199512c7e0b808` |
| 55 | `lemma` | [coe_sub](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionHomNamespaced.lean/declarations/coe-sub.md) | 508 | `result-track:98508ddc2e6bde66451867de8e5ba37a570b97d5a527ee2bbb3443a60da39813` |
| 56 | `instance` | [(anonymous)](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionHomNamespaced.lean/declarations/instance-source-edition-27.md) | 511 | `declaration-track:e194ea81117be2f2e850eeefcadcde7e34f120aa9c1b4ff3613cf582dd84ac27` |
| 57 | `instance` | [(anonymous)](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionHomNamespaced.lean/declarations/instance-source-edition-10.md) | 513 | `declaration-track:698820a15ea370f45335342ebee797411e01ca74945a13d55d0538066901564a` |
| 58 | `lemma` | [coe_mul](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionHomNamespaced.lean/declarations/coe-mul.md) | 522 | `result-track:e94f82a5e192964ec2eff524653309b55106d0fe958d2f6f461d52992b9a0293` |
| 59 | `lemma` | [coe_one](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionHomNamespaced.lean/declarations/coe-one-source-edition-2.md) | 526 | `result-track:c5e92d5e51655f0799f2c8fb4f4966881863d6196d796973ba52331c0f8a177c` |
| 60 | `instance` | [(anonymous)](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionHomNamespaced.lean/declarations/instance-source-edition-21.md) | 529 | `declaration-track:a8177c29425f06cc9232c19ec2fd583cb56561f82951b5e9b087154056a4ae46` |
| 61 | `instance` | [(anonymous)](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionHomNamespaced.lean/declarations/instance-source-edition-18.md) | 533 | `declaration-track:a195e74fb29c5c05506c9699dd26d7498107c0f33a61a6a1ae8122ffe0a6594c` |
| 62 | `instance` | [(anonymous)](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionHomNamespaced.lean/declarations/instance-source-edition-20.md) | 542 | `declaration-track:a7be4341e6563a2400a87d137bc66df1382d01facdf5707a7b1ece06a8f74931` |
| 63 | `instance` | [(anonymous)](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionHomNamespaced.lean/declarations/instance-source-edition-24.md) | 545 | `declaration-track:b99ddad949aba5efb40b96805bf3fffe52029a9b6e70fd1e584edd9c11463740` |
| 64 | `instance` | [(anonymous)](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionHomNamespaced.lean/declarations/instance-source-edition-16.md) | 548 | `declaration-track:9324ac65a5c5ab0a57baae8bc47d19a1a99e7edd9217ba6abc4e08c21e25b193` |
| 65 | `structure` | [DistribMulActionHom](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionHomNamespaced.lean/declarations/distribmulactionhom.md) | 570 | `declaration-track:080c06a30594958d1468dfb13a65a6ee9eea42520bf652a060b390f25fd79ed6` |
| 66 | `class` | [DistribMulActionSemiHomClass](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionHomNamespaced.lean/declarations/distribmulactionsemihomclass.md) | 593 | `declaration-track:53eda5560df7d396b9ab7290dc4a76ee8e21530f7dc7ae1606fe2b97c103995f` |
| 67 | `abbrev` | [DistribMulActionHomClass](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionHomNamespaced.lean/declarations/distribmulactionhomclass.md) | 605 | `declaration-track:45eafe49cb9a38472298ad3a602f07745877a16c99de43f34ffa768b0f44bebd` |
| 68 | `instance` | [(anonymous)](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionHomNamespaced.lean/declarations/instance-source-edition-19.md) | 612 | `declaration-track:a233945aa90c3e5ff22469b9788cdd5a8ae3abf832e326c9930985be8bfa4b38` |
| 69 | `instance` | [(anonymous)](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionHomNamespaced.lean/declarations/instance-source-edition-22.md) | 618 | `declaration-track:aa88cacd390f53e14c2555728073b09ea2a91abcacad938c43da4b2678fcc894` |
| 70 | `def` | [Group Action Hom Namespaced](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionHomNamespaced.lean/declarations/todistribmulactionhom.md) | 629 | `declaration-track:2453054537f68e234ee1e1ff5d8ac567382b624d4082242966458b55e943a5f9` |
| 71 | `instance` | [(anonymous)](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionHomNamespaced.lean/declarations/instance-source-edition-9.md) | 636 | `declaration-track:67624fc16fc00066acfc114ab1271e6c204789d592af30683e2323e8d9a7262b` |
| 72 | `def` | [Group Action Hom Namespaced](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionHomNamespaced.lean/declarations/todistribmulactionhom-source-line-643-occurrence-2.md) | 643 | `declaration-track:8f94b66e2fbdbdba7cfe11419cb72437f52ba97b336972719fb392d9f778fdae` |
| 73 | `theorem` | [toFun_eq_coe](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionHomNamespaced.lean/declarations/tofun-eq-coe.md) | 650 | `result-track:06418bf346524174a7a21a2973ec12c8b94a0864c65baf0987b372f62298f2c4` |
| 74 | `theorem` | [coe_fn_coe](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionHomNamespaced.lean/declarations/coe-fn-coe-source-edition-3.md) | 653 | `result-track:cefcad3a0a31a506a6020cefc8309f7abf629e126a9d8b5e0326fa58068140ea` |
| 75 | `theorem` | [coe_fn_coe'](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionHomNamespaced.lean/declarations/coe-fn-coe-source-edition-4.md) | 657 | `result-track:cfa3031708ed9674febc5c7f425bdfed782b1b15e47475f6d3a143357bc28e61` |
| 76 | `theorem` | [ext](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionHomNamespaced.lean/declarations/ext-source-edition-3.md) | 661 | `result-track:8fd89c518b90c548137b6dcfcdbb6192336e1145d1f46954412aab5764263f34` |
| 77 | `theorem` | [congr_fun](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionHomNamespaced.lean/declarations/congr-fun.md) | 664 | `result-track:828a03333501f4851ef7b49d0c5ed45fd58d719b00fb1b408872c6415a9181e8` |
| 78 | `theorem` | [toMulActionHom_injective](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionHomNamespaced.lean/declarations/tomulactionhom-injective.md) | 667 | `result-track:e1752f250ca31362d716893dd82a91f756a18d3e730d4d50a309271cca4e7b80` |
| 79 | `theorem` | [toAddMonoidHom_injective](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionHomNamespaced.lean/declarations/toaddmonoidhom-injective.md) | 672 | `result-track:c6b4bb374ca2c5e49d7b0bd02cd33fc17b5fac618b0704069d9060b6b0511615` |
| 80 | `theorem` | [map_zero](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionHomNamespaced.lean/declarations/map-zero.md) | 676 | `result-track:1e69b04854dc3c597d9afde7155ba3241544a8c55c3eb34f085f36fd52be5af3` |
| 81 | `theorem` | [map_add](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionHomNamespaced.lean/declarations/map-add-source-edition-2.md) | 679 | `result-track:d1cf8c084e3b16d5db946c37cf5333ed3a45c40fc0b0e45d86c50e8c4a088dab` |
| 82 | `theorem` | [map_neg](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionHomNamespaced.lean/declarations/map-neg.md) | 682 | `result-track:ba0b82fe7b476c7f9daa04dea4a5cd9b111e991e1a914606fd5f0a2b7a7b41f3` |
| 83 | `theorem` | [map_sub](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionHomNamespaced.lean/declarations/map-sub.md) | 685 | `result-track:35cce8ad32561683ef5834efe244e2e1ab6f0a5b64f4cde4b776841a86767e3a` |
| 84 | `theorem` | [map_smulₑ](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionHomNamespaced.lean/declarations/map-smul-source-edition-5.md) | 688 | `result-track:99c0549fd9194e636492359b2b76f2289cff74f2cdeae310ff6c6e922db17e74` |
| 85 | `def` | [id](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionHomNamespaced.lean/declarations/id-source-edition-3.md) | 694 | `declaration-track:8f2730dedac344d12da2ae6f960b6f6db5fcc61a3ffcb2fa19c32cae97fecb05` |
| 86 | `theorem` | [id_apply](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionHomNamespaced.lean/declarations/id-apply-source-edition-3.md) | 698 | `result-track:d7224ecbc7b349cfe313a9b61b64d38ad462af14e012ef0ba3575775d376f535` |
| 87 | `instance` | [(anonymous)](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionHomNamespaced.lean/declarations/instance-source-edition-13.md) | 703 | `declaration-track:7ddab983f752f83d2dbe1dd240c246229f2c28fe8ad59f55d5c5a0479832d102` |
| 88 | `instance` | [(anonymous)](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionHomNamespaced.lean/declarations/instance-source-edition-4.md) | 706 | `declaration-track:354efe914ff26c4ba7d05ea4650f0cf63c90633baed3b22ee57ef469b11d5158` |
| 89 | `theorem` | [coe_zero](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionHomNamespaced.lean/declarations/coe-zero-source-edition-2.md) | 710 | `result-track:fa922230b865e0722e201222ddb003088cd26bfe08ca26c6f6b5916784d3aa72` |
| 90 | `theorem` | [coe_one](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionHomNamespaced.lean/declarations/coe-one.md) | 714 | `result-track:1fdd978716235c4bdcd846a851c20a50850b026a5433a59b4acee440727b675b` |
| 91 | `theorem` | [zero_apply](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionHomNamespaced.lean/declarations/zero-apply.md) | 717 | `result-track:1e40b9f59540551508776ae7120bf0de28b84be14aff1b032fe672d1d699f283` |
| 92 | `theorem` | [one_apply](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionHomNamespaced.lean/declarations/one-apply.md) | 720 | `result-track:404f0a87d243570cabb243c77e50bb7bdee3a83339328882397241911577ea11` |
| 93 | `instance` | [(anonymous)](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionHomNamespaced.lean/declarations/instance-source-edition-25.md) | 723 | `declaration-track:d6cac6c28f66453af12c3d4a2f21639245b444d7c11e9f3c94c856e2f6d4da31` |
| 94 | `def` | [comp](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionHomNamespaced.lean/declarations/comp-source-edition-3.md) | 728 | `declaration-track:f05c81245dde484335471bd094642944dd87bc8435dea67ad69fd39edf1de8bf` |
| 95 | `theorem` | [comp_apply](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionHomNamespaced.lean/declarations/comp-apply.md) | 734 | `result-track:0c6d0d5049635fd9ccf0f3fb952492a46fd7eed9e530ab265201f41deed74118` |
| 96 | `theorem` | [id_comp](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionHomNamespaced.lean/declarations/id-comp-source-edition-3.md) | 739 | `result-track:904d1d3643f6724bace5403dc72904e1edd102560f33b941b37cbfd861317cf9` |
| 97 | `theorem` | [comp_id](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionHomNamespaced.lean/declarations/comp-id-source-edition-3.md) | 743 | `result-track:763a6ea7499157f08992229e1631ec227c2d6697ce62de5078dd1df585553554` |
| 98 | `theorem` | [comp_assoc](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionHomNamespaced.lean/declarations/comp-assoc.md) | 747 | `result-track:4109cd5057c21bc74b236e65f6a34ebcb691976d8c592ff70776f59bdfdaca7b` |
| 99 | `def` | [inverse](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionHomNamespaced.lean/declarations/inverse-source-edition-2.md) | 757 | `declaration-track:2f43bb2505f49e69ffb57afefe2ccd459133d03c636006cee8d8bb2d537a69ed` |
| 100 | `theorem` | [ext_ring](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionHomNamespaced.lean/declarations/ext-ring.md) | 772 | `result-track:24eea673b5b2b7ab535c70a024fb5be6cc1c896be31d3da2fda61a61e51ff0a6` |
| 101 | `structure` | [MulSemiringActionHom](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionHomNamespaced.lean/declarations/mulsemiringactionhom.md) | 787 | `declaration-track:674b3df714c902e1c954cae9f7f9fb5b9b4456a2930131880d7cc3771bf19cd1` |
| 102 | `class` | [MulSemiringActionSemiHomClass](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionHomNamespaced.lean/declarations/mulsemiringactionsemihomclass.md) | 809 | `declaration-track:6e2c9555970a6f6747d98c39d24c2bad3bd3b4e51467b6d967730b9e8bc237f9` |
| 103 | `abbrev` | [MulSemiringActionHomClass](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionHomNamespaced.lean/declarations/mulsemiringactionhomclass.md) | 819 | `declaration-track:282db643c46240b94792b94f9ea54d67d078c0fb88bbae76cf0e2023a6eb542e` |
| 104 | `instance` | [(anonymous)](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionHomNamespaced.lean/declarations/instance-source-edition-6.md) | 828 | `declaration-track:4ecea4b6acd10f04790fb6d77da2bd74d31ad83bb3a7874cfc6e15e1a13a92c7` |
| 105 | `instance` | [(anonymous)](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionHomNamespaced.lean/declarations/instance-source-edition-2.md) | 834 | `declaration-track:1759907c14d8fa03b2fc5f7eda4267caebac9054b08d36f00212eeeffbb99990` |
| 106 | `def` | [Group Action Hom Namespaced](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionHomNamespaced.lean/declarations/tomulsemiringactionhom.md) | 848 | `declaration-track:fbf141fe7be00c79cb32f7070e8fb2de6875e2b3207b49fb8698e5b7f7ff40c0` |
| 107 | `instance` | [(anonymous)](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionHomNamespaced.lean/declarations/instance-source-edition-12.md) | 855 | `declaration-track:7c1c90d7f9f17c4618e9ee746ae16478bd8c00875c553432716993f845aa9b10` |
| 108 | `theorem` | [coe_fn_coe](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionHomNamespaced.lean/declarations/coe-fn-coe.md) | 860 | `result-track:5e7960e8546ea53495b772379a038aeabd39650787fcebc54164b8cb9df3b6fa` |
| 109 | `theorem` | [coe_fn_coe'](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionHomNamespaced.lean/declarations/coe-fn-coe-source-edition-2.md) | 864 | `result-track:9263f46f13b28dc0ab085e68267b22e828f087e8b288b587cb3565536c4b11ec` |
| 110 | `theorem` | [ext](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionHomNamespaced.lean/declarations/ext-source-edition-2.md) | 868 | `result-track:40527724b8e37940114680245b97566326142053c8353fcaaf9072849c911afe` |
| 111 | `theorem` | [map_zero](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionHomNamespaced.lean/declarations/map-zero-source-edition-2.md) | 871 | `result-track:4e07dc36ec478bd8f47d0a4aab20f5b088e24b6f89f2737f96b78a96414fee47` |
| 112 | `theorem` | [map_add](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionHomNamespaced.lean/declarations/map-add.md) | 874 | `result-track:98ac866328618aa115f64f840bf825624dd4db3c619ae3c88cb23e4a7014ac85` |
| 113 | `theorem` | [map_neg](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionHomNamespaced.lean/declarations/map-neg-source-edition-2.md) | 877 | `result-track:d1fa2d17337305b0b7893f403b90cf6627a1a87b39a20b6452e51b8259f50ec3` |
| 114 | `theorem` | [map_sub](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionHomNamespaced.lean/declarations/map-sub-source-edition-2.md) | 880 | `result-track:c3d0fa79cd519639e87f37f26b82a3fd8335b01996a1e04462b8f7bd6382db28` |
| 115 | `theorem` | [map_one](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionHomNamespaced.lean/declarations/map-one.md) | 883 | `result-track:6a73e292cba84ff7d33a550f190e36ca755782f8215278ab2726c0c906e4987c` |
| 116 | `theorem` | [map_mul](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionHomNamespaced.lean/declarations/map-mul.md) | 886 | `result-track:a103832ae07a659b8abb0d23e1572a86f7f8c3be606711966459418210410ed5` |
| 117 | `theorem` | [map_smulₛₗ](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionHomNamespaced.lean/declarations/map-smul.md) | 889 | `result-track:0092b1fd35f23368ced395f3f69901fe4d66260c5229cd07ad289823f60eb797` |
| 118 | `theorem` | [map_smul](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionHomNamespaced.lean/declarations/map-smul-source-edition-4.md) | 892 | `result-track:672439c128e8a96d430795b39fc4f9f69d9ec51ecff6c9c30df64501da9f7184` |
| 119 | `def` | [id](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionHomNamespaced.lean/declarations/id-source-edition-2.md) | 903 | `declaration-track:84a19d7f45984e32c7c53b46cdf8cfa8b6d6af9caf7405998d9bbb12857ac40b` |
| 120 | `theorem` | [id_apply](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionHomNamespaced.lean/declarations/id-apply.md) | 907 | `result-track:2405d8d445a9d6dace97cfb6cfe07a89d3fa058e31060d20997d73c5bb3beceb` |
| 121 | `def` | [comp](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionHomNamespaced.lean/declarations/comp.md) | 922 | `declaration-track:743ebcc51b33ca411f470d05159a56614e75b8f034fdf32e560e48c115776624` |
| 122 | `theorem` | [comp_apply](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionHomNamespaced.lean/declarations/comp-apply-source-edition-2.md) | 927 | `result-track:140735e61e7cea4ce4488408a0b08fbc34a31ba57d2a45d34675fae039edb952` |
| 123 | `theorem` | [id_comp](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionHomNamespaced.lean/declarations/id-comp-source-edition-2.md) | 931 | `result-track:81d99022f2322b626659b6ec3a58d394954723dc2823bdf9b04a86980f94e8be` |
| 124 | `theorem` | [comp_id](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionHomNamespaced.lean/declarations/comp-id-source-edition-2.md) | 935 | `result-track:6366050e77a7d85c2fad82b67c8ca621349c04e93e3c8d6f82639846ac87d067` |
| 125 | `def` | [inverse'](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionHomNamespaced.lean/declarations/inverse-source-edition-4.md) | 940 | `declaration-track:7055d1d22192351acf2b471fe9bb056f03080e099ed4e872bf6be7108fdde862` |
| 126 | `def` | [inverse](../../../../../GroupTheoryAndGeneralizations/PermutationGroups/GroupActionHomNamespaced.lean/declarations/inverse-source-edition-5.md) | 950 | `declaration-track:782a4ade0364e644f57d89b3eaa4546c3231b57f66f14a7e5f5567701b439785` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=8ad662f7af37dfacc0cf32c8d092a087d6ee30376413ef0c8099e5f4ab30a702 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/Hom/Variantd520ea08263066d2224a6a11ad9d50e1448f033eedf53f8e4017b9074dd74cc5.lean","GRWTSK/_verification/specifications/Algebra/GroupTheory/Hom/Variantd520ea08263066d2224a6a11ad9d50e1448f033eedf53f8e4017b9074dd74cc5.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
