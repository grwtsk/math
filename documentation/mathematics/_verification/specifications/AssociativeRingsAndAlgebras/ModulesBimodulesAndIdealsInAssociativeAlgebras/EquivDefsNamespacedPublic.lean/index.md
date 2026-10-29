# Verification target: Equiv Defs Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d655a5bbc4714da7b686c5aeae9e19758d68d2f9",
  "lexical_observation_count": 107,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Defs/Variantcb5e005ed383cf9ab1e23f1e4320961605b0bdc303e2840fc9d9f94611e81be7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/EquivDefsNamespacedPublic.lean/index.md) · [Full source](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/EquivDefsNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d655a5bbc4714da7b686c5aeae9e19758d68d2f9`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Defs/Variantcb5e005ed383cf9ab1e23f1e4320961605b0bdc303e2840fc9d9f94611e81be7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Defs/Variantcb5e005ed383cf9ab1e23f1e4320961605b0bdc303e2840fc9d9f94611e81be7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [LinearEquiv](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/EquivDefsNamespacedPublic.lean/declarations/linearequiv.md) | 57 | `declaration-track:74bff38ad0c6674813bc046170e8d3386e0d25f8cf6558468609e25335fa9221` |
| 2 | `class` | [SemilinearEquivClass](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/EquivDefsNamespacedPublic.lean/declarations/semilinearequivclass.md) | 94 | `declaration-track:3103acc2e167ee5e9b1385d75861eb195a0ce71ee6aa4deaabd90f28e73511fd` |
| 3 | `abbrev` | [LinearEquivClass](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/EquivDefsNamespacedPublic.lean/declarations/linearequivclass.md) | 107 | `declaration-track:3375f36aa2366d2865f886faf94caba536309084153595b019ecdf538798a824` |
| 4 | `instance` | [(anonymous)](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/EquivDefsNamespacedPublic.lean/declarations/instance-source-edition-2.md) | 119 | `declaration-track:85fc66590caf0e70d5d5d47077f19fdecf7829e05af54f149522d2b1b4efb83f` |
| 5 | `def` | [semilinearEquiv](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/EquivDefsNamespacedPublic.lean/declarations/semilinearequiv.md) | 127 | `declaration-track:a2f161d7e5f9717455e189ebb1cc30a0fe7a8dc8340d18d4dd2aba2667fc772c` |
| 6 | `instance` | [(anonymous)](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/EquivDefsNamespacedPublic.lean/declarations/instance.md) | 146 | `declaration-track:3150b84e380088898e45e8e77aec6e64320774725e22271ba39fdf560f61044c` |
| 7 | `def` | [toEquiv](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/EquivDefsNamespacedPublic.lean/declarations/toequiv.md) | 152 | `declaration-track:208f4292fee64ab10364814d96c06a92088bead0577d9c8517d5afbcda8820e0` |
| 8 | `theorem` | [toEquiv_injective](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/EquivDefsNamespacedPublic.lean/declarations/toequiv-injective.md) | 154 | `result-track:5084ebb9d5c60c1744b9c1f41c4bd87faae7c25f6139ef3d387cf0d3072d2945` |
| 9 | `theorem` | [toEquiv_inj](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/EquivDefsNamespacedPublic.lean/declarations/toequiv-inj.md) | 161 | `result-track:48b313c929e3b0a71d4614366aba6a092d8b10fa698f9ded3457c1b69afb8527` |
| 10 | `theorem` | [toLinearMap_injective](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/EquivDefsNamespacedPublic.lean/declarations/tolinearmap-injective.md) | 164 | `result-track:8587aa8dc48cc029dfc766ee399c6d94e339c7d42525fe66a3d2a543f8425e97` |
| 11 | `theorem` | [toLinearMap_inj](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/EquivDefsNamespacedPublic.lean/declarations/tolinearmap-inj.md) | 168 | `result-track:649ee1938cecd377146c23813dc9a4b2f724d2ef45af07b9b4b500a466bdc582` |
| 12 | `instance` | [(anonymous)](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/EquivDefsNamespacedPublic.lean/declarations/instance-source-edition-5.md) | 172 | `declaration-track:e55068e8dbf8b2ff8fb082fb7ca860003637a81de9fd00276780ecc78f4a84bf` |
| 13 | `instance` | [(anonymous)](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/EquivDefsNamespacedPublic.lean/declarations/instance-source-edition-4.md) | 179 | `declaration-track:cae976d4617fce67c6709b852e6e9439789d64a3fcb67611694ad467fee9bdb9` |
| 14 | `theorem` | [toLinearMap_eq_ofClass](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/EquivDefsNamespacedPublic.lean/declarations/tolinearmap-eq-ofclass.md) | 183 | `result-track:bd9dfdda6557e44f18b21fb369c3660a56b2d8e8e38904586a488b623ed145eb` |
| 15 | `theorem` | [coe_mk](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/EquivDefsNamespacedPublic.lean/declarations/coe-mk.md) | 189 | `result-track:511657d5ec245302ef23429735106f47c1fb3f3904d322e105b02379da5cbec7` |
| 16 | `theorem` | [coe_injective](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/EquivDefsNamespacedPublic.lean/declarations/coe-injective.md) | 192 | `result-track:9e5a157faa5fbe991be76eec70cef834054fd1fc22058a7ae3e81bb7ee665da6` |
| 17 | `lemma` | [Equiv Defs Namespaced Public](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/EquivDefsNamespacedPublic.lean/declarations/semilinearequiv-apply.md) | 196 | `result-track:e295f820c209de295157cf357b7b7cc8a25f1699825da879a07835079d91aec4` |
| 18 | `theorem` | [coe_coe](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/EquivDefsNamespacedPublic.lean/declarations/coe-coe.md) | 213 | `result-track:c3d36b0546b3f587ee8edc6dd0775cea35451c167a8d45f76450ecd25d735de4` |
| 19 | `theorem` | [coe_toEquiv](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/EquivDefsNamespacedPublic.lean/declarations/coe-toequiv.md) | 217 | `result-track:918ef5c8cd66116c04ac0eb13d41acaf1db3e05a4d342ad10b9526c260447dee` |
| 20 | `theorem` | [coe_toLinearMap](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/EquivDefsNamespacedPublic.lean/declarations/coe-tolinearmap.md) | 221 | `result-track:d6718d56ef3b04d411a74852acfcaffc509d2c77de7fd2e5a2021d8287c7b006` |
| 21 | `theorem` | [toFun_eq_coe](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/EquivDefsNamespacedPublic.lean/declarations/tofun-eq-coe.md) | 224 | `result-track:7a3dfa3c94c0c38c12ac95586cd965222f60a68991438d56eac1a5593d901438` |
| 22 | `theorem` | [ext](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/EquivDefsNamespacedPublic.lean/declarations/ext.md) | 231 | `result-track:908c04eb3bb6a7a2e05de11490110ce82d325761ea519a9fcd1b75520fa78936` |
| 23 | `theorem` | [congr_arg](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/EquivDefsNamespacedPublic.lean/declarations/congr-arg.md) | 234 | `result-track:87c72f28c913c8b193d1a8bedd4af38e58d79689e429e5bbf187161eb080fffc` |
| 24 | `theorem` | [congr_fun](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/EquivDefsNamespacedPublic.lean/declarations/congr-fun.md) | 237 | `result-track:52a004e0fe29741f3e96429dfb331cd83947f7033048a111d7e566eeac4b741b` |
| 25 | `def` | [refl](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/EquivDefsNamespacedPublic.lean/declarations/refl.md) | 248 | `declaration-track:c5453c23881684b390083f8b725dfbd1a22737aaa4ec96ad0e3e17d734339c84` |
| 26 | `theorem` | [refl_apply](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/EquivDefsNamespacedPublic.lean/declarations/refl-apply.md) | 254 | `result-track:990ff1d57d30dbe59368ae76f2e693985d4c2e2ade2e47d5bc4ffddadfa15350` |
| 27 | `def` | [symm](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/EquivDefsNamespacedPublic.lean/declarations/symm.md) | 259 | `declaration-track:1bc4225cd45d3202768331d5f05437a8a97f88f1df8782da7bc15ce5042e095d` |
| 28 | `def` | [Simps.apply](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/EquivDefsNamespacedPublic.lean/declarations/simps-apply.md) | 267 | `declaration-track:16db687c5ffe4d09e94a8f97ab795d219293d21ddc6723f7bc936bd828ef27a1` |
| 29 | `def` | [Simps.symm_apply](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/EquivDefsNamespacedPublic.lean/declarations/simps-symm-apply.md) | 274 | `declaration-track:c7be71ccf6e910e4e128590c80ba0137e348c6388bd62ce797f74e50f947bd74` |
| 30 | `theorem` | [invFun_eq_symm](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/EquivDefsNamespacedPublic.lean/declarations/invfun-eq-symm.md) | 283 | `result-track:0c16d561ee59ac35e88dbec8b341bc9e59e146b6b3a4dbb8aefa2595cd050e40` |
| 31 | `theorem` | [coe_toEquiv_symm](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/EquivDefsNamespacedPublic.lean/declarations/coe-toequiv-symm.md) | 286 | `result-track:e452c69273b70bfc25b809385d0bd15f83ffd06aa8cf1d4a3990e6f6c6072439` |
| 32 | `theorem` | [toEquiv_symm](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/EquivDefsNamespacedPublic.lean/declarations/toequiv-symm.md) | 289 | `result-track:7e3050448e90cd3ed716e966fb33160b79765b1c92276cc74b5186224c8c82c6` |
| 33 | `theorem` | [coe_symm_toEquiv](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/EquivDefsNamespacedPublic.lean/declarations/coe-symm-toequiv.md) | 293 | `result-track:9aeb6ff4f8974706f2aff690bbaa7122f1dab601743addda5a046764d53703bc` |
| 34 | `def` | [trans](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/EquivDefsNamespacedPublic.lean/declarations/trans.md) | 316 | `declaration-track:7e160ddda866b6a83af91b98305173a21d643074de64bfa010fbd839e701b8a5` |
| 35 | `def` | [symmEquiv](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/EquivDefsNamespacedPublic.lean/declarations/symmequiv.md) | 333 | `declaration-track:1999391091ab6b6e75bb30df5b168c8d69533d93e5e42b688648c646d585d7db` |
| 36 | `theorem` | [coe_toAddEquiv](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/EquivDefsNamespacedPublic.lean/declarations/coe-toaddequiv.md) | 339 | `result-track:988fcb0b064bc8494a7592500f5b4809e6ba8386fa8f31ddc15e8b9dedc208c2` |
| 37 | `lemma` | [coe_addEquiv_apply](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/EquivDefsNamespacedPublic.lean/declarations/coe-addequiv-apply.md) | 343 | `result-track:2a0272fb407d1ab4f95f84930cff6e9db31cc441e1ecbecdb1c0c30ec179811b` |
| 38 | `theorem` | [toAddMonoidHom_commutes](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/EquivDefsNamespacedPublic.lean/declarations/toaddmonoidhom-commutes.md) | 347 | `result-track:e9c659e77f34bfb3a2e960bff47bc6ef1379c0ab0fc7b2f2664375d8a138274d` |
| 39 | `lemma` | [coe_toAddEquiv_symm](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/EquivDefsNamespacedPublic.lean/declarations/coe-toaddequiv-symm.md) | 350 | `result-track:a478854b0f61a0388515a0008f11833511be7eca3b8de8400c3219e1aa93cb50` |
| 40 | `theorem` | [trans_apply](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/EquivDefsNamespacedPublic.lean/declarations/trans-apply.md) | 354 | `result-track:88aa9407245e065eafdd0f4747afb1eb8c46dc803f64f4acc6a47622e393e52a` |
| 41 | `theorem` | [coe_trans](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/EquivDefsNamespacedPublic.lean/declarations/coe-trans.md) | 357 | `result-track:64b093caff8a192cfa681b3d056406be66724610f91ea62a30269184ff32cf9b` |
| 42 | `theorem` | [apply_symm_apply](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/EquivDefsNamespacedPublic.lean/declarations/apply-symm-apply.md) | 362 | `result-track:37acc5da31e0cf5519c1c018f2a5e7a03378dade73873aec1626b8ee85f8b489` |
| 43 | `theorem` | [symm_apply_apply](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/EquivDefsNamespacedPublic.lean/declarations/symm-apply-apply.md) | 366 | `result-track:80f92f5000ffd8602e29b9d0d37b9b993d7e6a7a12a46efb5f6c0ec58d1138f3` |
| 44 | `theorem` | [comp_symm](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/EquivDefsNamespacedPublic.lean/declarations/comp-symm.md) | 369 | `result-track:8e3a3cde2601b5c299d1c85a6b75977e092f823fafd575b4a9c30d2337139fc2` |
| 45 | `theorem` | [symm_comp](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/EquivDefsNamespacedPublic.lean/declarations/symm-comp.md) | 372 | `result-track:714153f25d13dc4863535c1d54df8a6635123133526e0a001ee7e16deb5d5462` |
| 46 | `lemma` | [comp_symm_assoc](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/EquivDefsNamespacedPublic.lean/declarations/comp-symm-assoc.md) | 376 | `result-track:7f792bee45bc1ad54b9aa1668f08d0f559b6c7fd2a76612c07e7bdcebfbf46da` |
| 47 | `lemma` | [symm_comp_assoc](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/EquivDefsNamespacedPublic.lean/declarations/symm-comp-assoc.md) | 380 | `result-track:91102ad869125a72d37908341da1bfdecf86a3cd3c2ea4bf438d65eff66c17ab` |
| 48 | `theorem` | [trans_symm](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/EquivDefsNamespacedPublic.lean/declarations/trans-symm.md) | 384 | `result-track:daca9c84406d5dc8b0b469977d8bd4be9bdeb1102fdb74ddb1956e934ae67d3e` |
| 49 | `theorem` | [symm_trans_apply](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/EquivDefsNamespacedPublic.lean/declarations/symm-trans-apply.md) | 387 | `result-track:00cc74540b95e378c300958eeb9fc0a8a29f95b32d35a406bb38102d60cab313` |
| 50 | `theorem` | [trans_refl](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/EquivDefsNamespacedPublic.lean/declarations/trans-refl.md) | 392 | `result-track:afdd72e2b08fa7f1c15447e7ccf4c0edca9d121b9284acee2d09eff18adb5684` |
| 51 | `theorem` | [refl_trans](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/EquivDefsNamespacedPublic.lean/declarations/refl-trans.md) | 396 | `result-track:f1cc419b8bee31cbaf34b12159ffbdbc7b6584453b0110f9f8e57b82f9b279d3` |
| 52 | `theorem` | [symm_apply_eq](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/EquivDefsNamespacedPublic.lean/declarations/symm-apply-eq.md) | 399 | `result-track:5e64446042ead2feff7a22b30eb519b0525dcab812814b132a632ffb434de777` |
| 53 | `theorem` | [eq_symm_apply](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/EquivDefsNamespacedPublic.lean/declarations/eq-symm-apply.md) | 402 | `result-track:f2507d12514699b87ab64012781cade55912e685782afc3f08efe6ce6539ec54` |
| 54 | `theorem` | [eq_comp_symm](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/EquivDefsNamespacedPublic.lean/declarations/eq-comp-symm.md) | 405 | `result-track:a0f9d135925e35c22d44a5b5058dfa3ebf1b47ff6dad0fccaae0fb5dbf5e6946` |
| 55 | `theorem` | [comp_symm_eq](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/EquivDefsNamespacedPublic.lean/declarations/comp-symm-eq.md) | 408 | `result-track:4cc51430f917535495cc8c4ac593e9a8a5d4c9c3316dcf7088a47f8ff22ee056` |
| 56 | `theorem` | [eq_symm_comp](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/EquivDefsNamespacedPublic.lean/declarations/eq-symm-comp.md) | 411 | `result-track:1deadfa011493fb9df2764d14cf158271fbf853888b16ba281678a02b3a53f56` |
| 57 | `theorem` | [symm_comp_eq](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/EquivDefsNamespacedPublic.lean/declarations/symm-comp-eq.md) | 414 | `result-track:8abc40c844e003e5ac5ce609cd445da35de37475601edb0d38ecc20eb52ddd0b` |
| 58 | `theorem` | [comp_coe](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/EquivDefsNamespacedPublic.lean/declarations/comp-coe.md) | 418 | `result-track:d005783b5e0e533a9ae3b91a6bf2fa4d7bc5589f0ebf8f1f89f5a2a0b6b388a0` |
| 59 | `lemma` | [trans_assoc](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/EquivDefsNamespacedPublic.lean/declarations/trans-assoc.md) | 422 | `result-track:963864317de3a432e58320d33a4ab1c312c7f6b6d96567a2824e7b319f62b3bd` |
| 60 | `theorem` | [eq_comp_toLinearMap_symm](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/EquivDefsNamespacedPublic.lean/declarations/eq-comp-tolinearmap-symm.md) | 427 | `result-track:289651a1a5bcec16c81c7d5f54998dfb7163e8c383d975a705f89129c60c15ff` |
| 61 | `theorem` | [comp_toLinearMap_symm_eq](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/EquivDefsNamespacedPublic.lean/declarations/comp-tolinearmap-symm-eq.md) | 433 | `result-track:9fb37f7938d4fde6d7f65ba18775b5532533a9fa31f40f8f22f29b85802af7f7` |
| 62 | `theorem` | [eq_toLinearMap_symm_comp](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/EquivDefsNamespacedPublic.lean/declarations/eq-tolinearmap-symm-comp.md) | 439 | `result-track:b80bbfb7f942b0eacb8209641c82a1950ab0d53e11d716334be18bef36a610bb` |
| 63 | `theorem` | [toLinearMap_symm_comp_eq](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/EquivDefsNamespacedPublic.lean/declarations/tolinearmap-symm-comp-eq.md) | 445 | `result-track:2a8cc18d5e7a7810c7a2162007118543bacc01b6d723cc28647762c25a89fb88` |
| 64 | `theorem` | [comp_toLinearMap_eq_iff](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/EquivDefsNamespacedPublic.lean/declarations/comp-tolinearmap-eq-iff.md) | 452 | `result-track:54ce5ff1997fe3963d00100e88e1f29f436a59665007996dd8531cea5cfef895` |
| 65 | `theorem` | [eq_comp_toLinearMap_iff](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/EquivDefsNamespacedPublic.lean/declarations/eq-comp-tolinearmap-iff.md) | 458 | `result-track:0b711ec88eb9c6d15a9b5acae07fddb31295b81214459a20b898d082c7fa7287` |
| 66 | `lemma` | [comp_symm_cancel_left](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/EquivDefsNamespacedPublic.lean/declarations/comp-symm-cancel-left.md) | 463 | `result-track:56c5cb04d257eeedcb28db13675b69fc2abcbcc82db9f16d035557ae5fa84bb4` |
| 67 | `lemma` | [symm_comp_cancel_left](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/EquivDefsNamespacedPublic.lean/declarations/symm-comp-cancel-left.md) | 466 | `result-track:8c0cda3eab26407d77facfbd22454c4373589a3ad412beba0c7305f6c200fc16` |
| 68 | `lemma` | [comp_symm_cancel_right](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/EquivDefsNamespacedPublic.lean/declarations/comp-symm-cancel-right.md) | 469 | `result-track:171e54b7ff793cfcf93805686a2e9134ff263a69ea333e1dd0547f3853b7ba4c` |
| 69 | `lemma` | [symm_comp_cancel_right](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/EquivDefsNamespacedPublic.lean/declarations/symm-comp-cancel-right.md) | 472 | `result-track:19e7badea7ba62867db708ac2ed32d72e70d6320b9e67e3c954ddaa72936a5b7` |
| 70 | `lemma` | [trans_symm_cancel_left](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/EquivDefsNamespacedPublic.lean/declarations/trans-symm-cancel-left.md) | 475 | `result-track:db4b9902850580703f7b8ea64447036f5ed9a549346de07f8ccc97a7e9d3874f` |
| 71 | `lemma` | [symm_trans_cancel_left](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/EquivDefsNamespacedPublic.lean/declarations/symm-trans-cancel-left.md) | 478 | `result-track:8c2dd024c8e3dbdb4a630c340876e75a42fb326dba0e7acaec5e8febd06c0d9c` |
| 72 | `lemma` | [trans_symm_cancel_right](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/EquivDefsNamespacedPublic.lean/declarations/trans-symm-cancel-right.md) | 481 | `result-track:19818d57ad607b57d48d1e4225c7784a7a067177e29588a076c4c65858b1c8ec` |
| 73 | `lemma` | [symm_trans_cancel_right](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/EquivDefsNamespacedPublic.lean/declarations/symm-trans-cancel-right.md) | 484 | `result-track:2b572d3dcfcb996ff3b7945ac4a6aecbd312637289181a6977b182226001f072` |
| 74 | `theorem` | [refl_symm](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/EquivDefsNamespacedPublic.lean/declarations/refl-symm.md) | 488 | `result-track:485b7216633ca346f7ddc8ea23ecc24b59579353022ff3935c045d26a1209991` |
| 75 | `theorem` | [self_trans_symm](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/EquivDefsNamespacedPublic.lean/declarations/self-trans-symm.md) | 492 | `result-track:fc5764c39c8212a85cd737ed730dd358d883e2c4d6cd6150a3a44bace1e4d0ae` |
| 76 | `theorem` | [symm_trans_self](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/EquivDefsNamespacedPublic.lean/declarations/symm-trans-self.md) | 497 | `result-track:f3d0618cd2af6c5c82f90ae4373a88e906a2c8511ea9b89d8f88d7c38a63c8f5` |
| 77 | `theorem` | [refl_toLinearMap](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/EquivDefsNamespacedPublic.lean/declarations/refl-tolinearmap.md) | 502 | `result-track:4a41cb46ef918b11023ae14d7e0ae93fbad835982eb9458d8851c64fefe96abc` |
| 78 | `theorem` | [mk_coe](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/EquivDefsNamespacedPublic.lean/declarations/mk-coe-source-edition-2.md) | 506 | `result-track:5bcc76f46ba82efffc0cc45d34c33c5ea6d99e0aed7c81e6d8c2fd99b56a5e28` |
| 79 | `theorem` | [map_add](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/EquivDefsNamespacedPublic.lean/declarations/map-add.md) | 509 | `result-track:8357983b2e00b07a3fc4162cdeb7f5b8c2a18fdf86d8f3b632ca1a5503daefde` |
| 80 | `theorem` | [map_zero](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/EquivDefsNamespacedPublic.lean/declarations/map-zero.md) | 512 | `result-track:e4cd46dd1183cf25f4b9f8130426c4fa8207e8aca5c6476d1fb108446701d779` |
| 81 | `theorem` | [map_smulₛₗ](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/EquivDefsNamespacedPublic.lean/declarations/map-smul-source-edition-2.md) | 515 | `result-track:fc4fd696ed78a4678e0f8fc582c934213aac8ffd023d9943d1abab6bb0154b35` |
| 82 | `theorem` | [map_smul](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/EquivDefsNamespacedPublic.lean/declarations/map-smul.md) | 518 | `result-track:d059db8b26e508f8e2eefdd1aa15fbf721b302d63deac38123641cd7b3857aa5` |
| 83 | `theorem` | [map_eq_zero_iff](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/EquivDefsNamespacedPublic.lean/declarations/map-eq-zero-iff.md) | 521 | `result-track:0a3aae6ba918c70469e408fb9203eaf5bd3153f0c1d190ab3d4c6a77de540077` |
| 84 | `theorem` | [map_ne_zero_iff](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/EquivDefsNamespacedPublic.lean/declarations/map-ne-zero-iff.md) | 524 | `result-track:927b4855ede3df97972db55157f972cf41770a0e0b8b9331c44f534cbddd513c` |
| 85 | `theorem` | [symm_symm](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/EquivDefsNamespacedPublic.lean/declarations/symm-symm.md) | 528 | `result-track:07f588003444cbd01dc333a329127d1848e0fe1101ae96f5c4d15d9f8e349a9e` |
| 86 | `theorem` | [symm_bijective](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/EquivDefsNamespacedPublic.lean/declarations/symm-bijective.md) | 530 | `result-track:5f4b71e56dcebc3e206e75de62ee505fc6dfbf0eb98dd9598ceb91209ab1e049` |
| 87 | `theorem` | [mk_coe'](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/EquivDefsNamespacedPublic.lean/declarations/mk-coe.md) | 535 | `result-track:026b9693570da4cdd5c979ec45d48a0cd2eae4c98acb5235e8c67949bf04c663` |
| 88 | `theorem` | [symm_mk](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/EquivDefsNamespacedPublic.lean/declarations/symm-mk.md) | 540 | `result-track:738fde4747b1084abc35d9a9833b3197091218144ceb66e36f2819afe49d6d3e` |
| 89 | `theorem` | [coe_symm_mk](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/EquivDefsNamespacedPublic.lean/declarations/coe-symm-mk-source-edition-2.md) | 548 | `result-track:e3367a3f3ad770d0bb1c352ab522507221b44ffa2b3c95a4cc89b8787a9ecdb6` |
| 90 | `theorem` | [coe_symm_mk'](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/EquivDefsNamespacedPublic.lean/declarations/coe-symm-mk.md) | 554 | `result-track:0895e05bcf2ab208fec34678dd58411369216b92a5bea582bde94df56ef87be1` |
| 91 | `theorem` | [bijective](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/EquivDefsNamespacedPublic.lean/declarations/bijective.md) | 558 | `result-track:79933089eaaa0263c01bc25d725149df0f9076c72518ebc9cfdf74c75a83ceae` |
| 92 | `theorem` | [injective](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/EquivDefsNamespacedPublic.lean/declarations/injective.md) | 561 | `result-track:1c555ef92849e3ba15f7723da9d7af81aab0b19fde50ea12dc3894b0435a6941` |
| 93 | `theorem` | [surjective](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/EquivDefsNamespacedPublic.lean/declarations/surjective.md) | 564 | `result-track:f3041b524705f76505dba75c136373fcbe35e7cca7793a663c155649e54e0ac6` |
| 94 | `theorem` | [image_eq_preimage_symm](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/EquivDefsNamespacedPublic.lean/declarations/image-eq-preimage-symm.md) | 567 | `result-track:3b306154c7035af814e1afcac69319f96a521f10c7fa61715192ab0741cc0313` |
| 95 | `theorem` | [image_symm_eq_preimage](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/EquivDefsNamespacedPublic.lean/declarations/image-symm-eq-preimage.md) | 570 | `result-track:7775b6ab735cc07b53f2949fa4bba355f428914a6288e610f26a6a36cd330d68` |
| 96 | `def` | [cast](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/EquivDefsNamespacedPublic.lean/declarations/cast.md) | 580 | `declaration-track:607df1455fb50ad631d7046e1af426a687e104672987d4278e2dd5327e44fb9d` |
| 97 | `def` | [Equiv Defs Namespaced Public](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/EquivDefsNamespacedPublic.lean/declarations/tosemilinearequiv.md) | 588 | `declaration-track:34f989f7d8ae069eaebc06331dfe2f68b4839fa6c0674432062fca959aae789e` |
| 98 | `lemma` | [Equiv Defs Namespaced Public](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/EquivDefsNamespacedPublic.lean/declarations/symm-tosemilinearequiv-symm-apply.md) | 600 | `result-track:a0dc7e0b4bb3f31b80e342671e6f392e892e3e694f219e9873566f2a9c84969a` |
| 99 | `def` | [ofInvolutive](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/EquivDefsNamespacedPublic.lean/declarations/ofinvolutive.md) | 606 | `declaration-track:1ca2b98b899e400ae573ee7e9f1ac035fb510d19aad1ca49b2e0dd02b9aebfe0` |
| 100 | `theorem` | [coe_ofInvolutive](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/EquivDefsNamespacedPublic.lean/declarations/coe-ofinvolutive.md) | 611 | `result-track:59761c951b70b3ce1862827fb53a1ce481327b2a5039d38786844cc4ba3da4b3` |
| 101 | `instance` | [(anonymous)](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/EquivDefsNamespacedPublic.lean/declarations/instance-source-edition-3.md) | 625 | `declaration-track:b662adfad586083ee7019311e83e21faec2ee83be8fb4ae925c0587fddb557be` |
| 102 | `theorem` | [smul_apply](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/EquivDefsNamespacedPublic.lean/declarations/smul-apply.md) | 631 | `result-track:aa9f74683d356aafc66db1afbacd9649e8217be9f04643a21e5d6249321d59d6` |
| 103 | `theorem` | [symm_smul_apply](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/EquivDefsNamespacedPublic.lean/declarations/symm-smul-apply.md) | 633 | `result-track:1e6f818f03548ca1f7949a5586e908048e2009f86a4d2b6ee779d460a6dff568` |
| 104 | `theorem` | [symm_smul](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/EquivDefsNamespacedPublic.lean/declarations/symm-smul.md) | 636 | `result-track:70720b4afb44e2c2cc18983ba595d6221d83123834bd369cd7adc25fc7fe8642` |
| 105 | `theorem` | [toLinearMap_smul](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/EquivDefsNamespacedPublic.lean/declarations/tolinearmap-smul.md) | 639 | `result-track:9784b51539c61f943c1ef0dcec2f1ffe795c6cbd9c5a3b95fc232238817e276e` |
| 106 | `theorem` | [smul_trans](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/EquivDefsNamespacedPublic.lean/declarations/smul-trans.md) | 642 | `result-track:039d03bae87b59eed590a789b81176cd304569e4ee5092b2cd74191169f242dc` |
| 107 | `theorem` | [trans_smul](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/EquivDefsNamespacedPublic.lean/declarations/trans-smul.md) | 646 | `result-track:8aa6408c02c5f53b7ad48ffde7b398ef6710a548b58bbc872995e16ec2aed346` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d848a5c662cdaaf89d3c7af769c388bcf208bde7d84191f99c07c35f5ef022cc -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Defs/Variantcb5e005ed383cf9ab1e23f1e4320961605b0bdc303e2840fc9d9f94611e81be7.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/Defs/Variantcb5e005ed383cf9ab1e23f1e4320961605b0bdc303e2840fc9d9f94611e81be7.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
