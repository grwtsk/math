# Verification target: Hom Ring Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b26451465a8350e96fb6ff64815ae6ee9e2b78a7",
  "lexical_observation_count": 74,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Ring/Variantc5268a2d1abb32ee1282537f8ddef807e32435a9219d87adb89223f399123079.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomRingNamespaced.lean/index.md) · [Full source](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomRingNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b26451465a8350e96fb6ff64815ae6ee9e2b78a7`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Ring/Variantc5268a2d1abb32ee1282537f8ddef807e32435a9219d87adb89223f399123079.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Ring/Variantc5268a2d1abb32ee1282537f8ddef807e32435a9219d87adb89223f399123079.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Hom.Monoid` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.Equiv` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [OrderRingHom](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomRingNamespaced.lean/declarations/orderringhom.md) | 57 | `declaration-track:2cf6470c202061da4c679320a011ae3445a1e426d1200a1e012c47159f4ac735` |
| 2 | `structure` | [OrderRingIso](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomRingNamespaced.lean/declarations/orderringiso.md) | 82 | `declaration-track:74c5a17a81d81c4b516ae1bcdd2086ed1d14f661543199a099783126aec291e6` |
| 3 | `def` | [OrderRingHomClass.toOrderRingHom](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomRingNamespaced.lean/declarations/orderringhomclass-toorderringhom.md) | 100 | `declaration-track:82f82a8be77f565bbe8bc7067f0b1c526a928acc96619f6edd6ffa84244c4e43` |
| 4 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomRingNamespaced.lean/declarations/instance-source-edition-6.md) | 106 | `declaration-track:60cce500d1ea6735c704851e0558b21bd12cce845eea1bf36f6eba840c007a3f` |
| 5 | `def` | [OrderRingIsoClass.toOrderRingIso](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomRingNamespaced.lean/declarations/orderringisoclass-toorderringiso.md) | 120 | `declaration-track:51ffd3f594d5265878d28d185c299021e70d087e2bc92f1f29c547c2cd1749b2` |
| 6 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomRingNamespaced.lean/declarations/instance-source-edition-7.md) | 126 | `declaration-track:8796f60d2f895f2fac0550150453123dfa199d32a134f38bffdd58ceffda5730` |
| 7 | `def` | [toOrderAddMonoidHom](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomRingNamespaced.lean/declarations/toorderaddmonoidhom.md) | 144 | `declaration-track:c64b088c0f44820a8f34c481716e6a6d76b147b652228621674ee485df3e5a6c` |
| 8 | `def` | [toOrderMonoidWithZeroHom](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomRingNamespaced.lean/declarations/toordermonoidwithzerohom.md) | 148 | `declaration-track:f7d64228bdeacb475ae8b29ae600c68ae16418d5461285ab0e287fba854b6a83` |
| 9 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomRingNamespaced.lean/declarations/instance-source-edition-2.md) | 151 | `declaration-track:27bdd0f88fa092008afdf979b68ba079355754ad9050f6c453af02c9002e8f2d` |
| 10 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomRingNamespaced.lean/declarations/instance-source-edition-3.md) | 157 | `declaration-track:2f4e8c24977cbe82317a499f3a40b0f97da16b3371faee87c5aa4c286c61d5b2` |
| 11 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomRingNamespaced.lean/declarations/instance-source-edition-4.md) | 160 | `declaration-track:576bc8e13306b96b58e2b3d54e133fd45f9ab71d2cc343e5282c377c438bdec6` |
| 12 | `theorem` | [toFun_eq_coe](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomRingNamespaced.lean/declarations/tofun-eq-coe-source-edition-2.md) | 166 | `result-track:d764f6772a8fb6cd91d1b5a26a5ba7512c9b186ff2a168dde0c78ab26c4b1bce` |
| 13 | `theorem` | [ext](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomRingNamespaced.lean/declarations/ext.md) | 170 | `result-track:521de7836e44dd0530fb320020a09d0a3929ac123f22986e188adc7e56b7a257` |
| 14 | `theorem` | [toRingHom_eq_coe](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomRingNamespaced.lean/declarations/toringhom-eq-coe.md) | 174 | `result-track:373cdecfd2a0cf43f72ff7a0892003d6a3243dcf37698b93a561fe8ffbc7303f` |
| 15 | `theorem` | [toOrderAddMonoidHom_eq_coe](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomRingNamespaced.lean/declarations/toorderaddmonoidhom-eq-coe.md) | 178 | `result-track:0dac7863391d1a6751b4e850845b58ddc552b23d4678cd33976b845e49393533` |
| 16 | `theorem` | [toOrderMonoidWithZeroHom_eq_coe](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomRingNamespaced.lean/declarations/toordermonoidwithzerohom-eq-coe.md) | 182 | `result-track:5f9df5502f8350992e40a388a1118f9c5cf2a72c6aa827e43511f595ed246809` |
| 17 | `theorem` | [coe_coe_ringHom](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomRingNamespaced.lean/declarations/coe-coe-ringhom.md) | 186 | `result-track:9a426f72fbca0159d606a716c3da04202b182c47d45ffa0524b416159acd39f9` |
| 18 | `theorem` | [coe_coe_orderAddMonoidHom](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomRingNamespaced.lean/declarations/coe-coe-orderaddmonoidhom.md) | 190 | `result-track:3e43fc457c94dc483dc640c55be3ef3f4917278cb5d094c8ef48ea19376e3845` |
| 19 | `theorem` | [coe_coe_orderMonoidWithZeroHom](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomRingNamespaced.lean/declarations/coe-coe-ordermonoidwithzerohom.md) | 194 | `result-track:68515fe73386c8e185642203798c308d703477161bc2436fb97fe066856ccc98` |
| 20 | `theorem` | [coe_ringHom_apply](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomRingNamespaced.lean/declarations/coe-ringhom-apply.md) | 198 | `result-track:d352f4b54ae09cfffcb307942679c16a53079ca2df37464fb7907799b19b7abe` |
| 21 | `theorem` | [coe_orderAddMonoidHom_apply](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomRingNamespaced.lean/declarations/coe-orderaddmonoidhom-apply.md) | 202 | `result-track:b2d6a80335bf180b99450de079a7f731841426820aeab4ab751066a41bcbfc3e` |
| 22 | `theorem` | [coe_orderMonoidWithZeroHom_apply](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomRingNamespaced.lean/declarations/coe-ordermonoidwithzerohom-apply.md) | 206 | `result-track:8bef734f747c6ac9ec7770d09d6922348f39f92ee4f8b43d290c256771cbcfda` |
| 23 | `def` | [copy](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomRingNamespaced.lean/declarations/copy.md) | 211 | `declaration-track:9272485c32ba4d2736d0c4d6c9ff8894cb8228d361b6aea090473a44679a0d97` |
| 24 | `theorem` | [coe_copy](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomRingNamespaced.lean/declarations/coe-copy.md) | 215 | `result-track:baba97ac9fd8176b18a5c70abedd5443b48d18c3074d5c4eabd2b19a1aeda0f8` |
| 25 | `theorem` | [copy_eq](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomRingNamespaced.lean/declarations/copy-eq.md) | 218 | `result-track:f87c3db190e59961fb8550afa2885884752398574d055cb7c5f1a6b9dd09e8f5` |
| 26 | `def` | [id](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomRingNamespaced.lean/declarations/id.md) | 224 | `declaration-track:992f28448fb6b53ed63d0ceb3fd8ddbece5a234d2cc57f32a414239ea039262c` |
| 27 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomRingNamespaced.lean/declarations/instance-source-edition-5.md) | 227 | `declaration-track:57807d2a32c77b9d7baab65320fe58906e4aeed4958a02b3b41069355021e16a` |
| 28 | `theorem` | [coe_id](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomRingNamespaced.lean/declarations/coe-id.md) | 231 | `result-track:75f533187a4802ec09dd404713772bbc7b0b4c4027e6b5ea7c350b02a39c67c9` |
| 29 | `theorem` | [id_apply](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomRingNamespaced.lean/declarations/id-apply.md) | 237 | `result-track:55f9483325378ac94060adb0c0f333430cc01c022e9c7c2b900bac5ef7eb562b` |
| 30 | `theorem` | [coe_ringHom_id](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomRingNamespaced.lean/declarations/coe-ringhom-id.md) | 241 | `result-track:4c15efe64fda0e04bda31c9161a2f873cf0c046e3fbf38cada8f65003143ba9a` |
| 31 | `theorem` | [coe_orderAddMonoidHom_id](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomRingNamespaced.lean/declarations/coe-orderaddmonoidhom-id.md) | 245 | `result-track:40058bf4a26323c28f63125b0c23291402ee04f70d5a016abcc59fa90aaaf76a` |
| 32 | `theorem` | [coe_orderMonoidWithZeroHom_id](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomRingNamespaced.lean/declarations/coe-ordermonoidwithzerohom-id.md) | 249 | `result-track:c0a4eb9aa7f3c9ef10a77b77cdf2b441d75cab05c1ae9de911793672ddedb89a` |
| 33 | `def` | [comp](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomRingNamespaced.lean/declarations/comp.md) | 254 | `declaration-track:ff9d4bd2339fdc6d63fea2775b0b34bf5c98d2cb828724dd206258c021ec7fb9` |
| 34 | `theorem` | [coe_comp](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomRingNamespaced.lean/declarations/coe-comp.md) | 258 | `result-track:6bd81d7ef56b36f2a0c4ded69d6bc6fa5ff85fc6790f3f81679f0cd3446421c3` |
| 35 | `theorem` | [comp_apply](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomRingNamespaced.lean/declarations/comp-apply.md) | 262 | `result-track:6bd5ae3d352939dec8457bed1c915dfbef15e4448ffe92e72580449de79d6e81` |
| 36 | `theorem` | [comp_assoc](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomRingNamespaced.lean/declarations/comp-assoc.md) | 265 | `result-track:7dcf79840cb43333b597dc798555f9980084ff1ae3a045175637ec98d9d5fb99` |
| 37 | `theorem` | [comp_id](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomRingNamespaced.lean/declarations/comp-id.md) | 270 | `result-track:ed8fc1040ce5df52e3e347a56ae1ef18147c564141e2c523d39ab211657d6e8d` |
| 38 | `theorem` | [id_comp](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomRingNamespaced.lean/declarations/id-comp.md) | 274 | `result-track:8ec32240af8fa3303e44c4c73ea7dcba4adcdba5721bbf32782678fb98465753` |
| 39 | `theorem` | [cancel_right](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomRingNamespaced.lean/declarations/cancel-right.md) | 278 | `result-track:0e59847ef2f4156847667510346822aa8023373ae3ef6a0cb81b97d3a449b66d` |
| 40 | `theorem` | [cancel_left](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomRingNamespaced.lean/declarations/cancel-left.md) | 283 | `result-track:538419de6f8249879c56707969bc203048715ee7f00a4ca002ba7288fdc26487` |
| 41 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomRingNamespaced.lean/declarations/instance-source-edition-9.md) | 291 | `declaration-track:d6b81890a0b8f080a2b862cddcddd0581fcb260c12b029f64a2c439732a90d10` |
| 42 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomRingNamespaced.lean/declarations/instance-source-edition-8.md) | 294 | `declaration-track:a3c5f0bb4db68346c7e98e51eb9420b6769bcc0e9906231d62ec88ab3aca597a` |
| 43 | `def` | [toOrderIso](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomRingNamespaced.lean/declarations/toorderiso.md) | 310 | `declaration-track:23fec33da6611169bc774e84795ccf7499604079d6df5257e3fb8c50c0605a61` |
| 44 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomRingNamespaced.lean/declarations/instance.md) | 313 | `declaration-track:21d86bcb2c6ca4a4740de98b2bc5e21e1410c69fe774aec75a8109e5771a0e21` |
| 45 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomRingNamespaced.lean/declarations/instance-source-edition-12.md) | 323 | `declaration-track:ed42dd3635c8a26ad67c0704678f1eddc98467260e3791c8b1f431555a84eecc` |
| 46 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomRingNamespaced.lean/declarations/instance-source-edition-11.md) | 326 | `declaration-track:e3880956a487e60cc0c2b537b6e0b39cb9ddf7c517035e8f43752841ebdecc0d` |
| 47 | `theorem` | [toFun_eq_coe](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomRingNamespaced.lean/declarations/tofun-eq-coe.md) | 330 | `result-track:a58ecbff2e1ba35b370cb8a1241d6093b710054451ecbe256c7f393466b5b916` |
| 48 | `theorem` | [ext](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomRingNamespaced.lean/declarations/ext-source-edition-2.md) | 334 | `result-track:afdae84e60f1af5f976d5d64c42fe6e41fd28f28defdca0a1214c1af0d07c800` |
| 49 | `theorem` | [coe_mk](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomRingNamespaced.lean/declarations/coe-mk.md) | 338 | `result-track:3370f20485d5d3b5993629ab7d7499d5b9c9b8158f4f0329df023aad43f9e0f6` |
| 50 | `theorem` | [mk_coe](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomRingNamespaced.lean/declarations/mk-coe.md) | 342 | `result-track:119612982f9e7c7576a2d7e7d2a4b444f7e5882147adeb89770ac58750930512` |
| 51 | `theorem` | [toRingEquiv_eq_coe](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomRingNamespaced.lean/declarations/toringequiv-eq-coe.md) | 346 | `result-track:28dc1026ce426af7eec78393a0eef3ce4a185a3f8d513cf465b081f154882dd5` |
| 52 | `theorem` | [toOrderIso_eq_coe](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomRingNamespaced.lean/declarations/toorderiso-eq-coe.md) | 350 | `result-track:caeb5a1dbde1c41f6fdc37ba7680a8e7e71c368de833b6dc567e4aeffd72a11e` |
| 53 | `theorem` | [coe_toRingEquiv](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomRingNamespaced.lean/declarations/coe-toringequiv.md) | 354 | `result-track:bf678e16b07767539290c53194dcdc9928c93b8a1b06c93e7d852d9477d8bbbf` |
| 54 | `theorem` | [coe_toOrderIso](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomRingNamespaced.lean/declarations/coe-toorderiso.md) | 359 | `result-track:9ab9626cbe28cac52d6f3067143aee64e899149532e624601fa98f723011c5ac` |
| 55 | `def` | [refl](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomRingNamespaced.lean/declarations/refl.md) | 366 | `declaration-track:c303cded619fc33792490d2e83f8883b9b6d8aad8e9a4ec7f3d3824cb4fcf868` |
| 56 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomRingNamespaced.lean/declarations/instance-source-edition-10.md) | 369 | `declaration-track:df0a9c121081bb64142a4f8a6671cac280e831e7fcc78ea394e51f46854c54ef` |
| 57 | `theorem` | [refl_apply](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomRingNamespaced.lean/declarations/refl-apply.md) | 373 | `result-track:3428e6e632ed7fde5e67971153db0a352fa8844e1f80b4ab113a64a479300895` |
| 58 | `theorem` | [coe_ringEquiv_refl](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomRingNamespaced.lean/declarations/coe-ringequiv-refl.md) | 377 | `result-track:c2a45217bc53d5c6c73f2e2cd62f87bc1112ed992098e27dae8cc487d3a91990` |
| 59 | `theorem` | [coe_orderIso_refl](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomRingNamespaced.lean/declarations/coe-orderiso-refl.md) | 381 | `result-track:b3983eadb4a213e06f6e16156e7e2a9ef5835f536d317a0b8aa807e587d6cbe3` |
| 60 | `def` | [symm](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomRingNamespaced.lean/declarations/symm.md) | 388 | `declaration-track:ebc3849cbd6fed049183d2e03af7914e418247d5872adde42e9013b839150b9a` |
| 61 | `def` | [Simps.symm_apply](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomRingNamespaced.lean/declarations/simps-symm-apply.md) | 394 | `declaration-track:da2438e03e36b129390afc618006cdd1959cc0ba6c2a0e675dac26c3a129b303` |
| 62 | `theorem` | [symm_symm](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomRingNamespaced.lean/declarations/symm-symm.md) | 398 | `result-track:ff767114441d846cedb4e20268daab65c63c61983a0473ebffc74cebb48b2676` |
| 63 | `theorem` | [symm_bijective](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomRingNamespaced.lean/declarations/symm-bijective.md) | 400 | `result-track:fe24ab7e1d6b24087a51b52e123e44b5107ba933bc95f963a2dec259dfc0ebb6` |
| 64 | `def` | [trans](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomRingNamespaced.lean/declarations/trans.md) | 405 | `declaration-track:02b63104ca04d75191fc21f45d5a0d4b436fc336f0a72db776c878497e737024` |
| 65 | `theorem` | [trans_toRingEquiv](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomRingNamespaced.lean/declarations/trans-toringequiv.md) | 410 | `result-track:c265ae50e3613741a28e557ea6161adbbfb27c54c6b6bcd91f79cf912295cfbe` |
| 66 | `theorem` | [trans_toRingEquiv_aux](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomRingNamespaced.lean/declarations/trans-toringequiv-aux.md) | 416 | `result-track:1b323df06819304277539e0b164399652df835cb60f213c065db71bdcfd34d58` |
| 67 | `theorem` | [trans_apply](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomRingNamespaced.lean/declarations/trans-apply.md) | 422 | `result-track:522220a83f830b38c12ae1fd926da16c39dcbbc1e2eb574819a854fa88d5b89b` |
| 68 | `theorem` | [self_trans_symm](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomRingNamespaced.lean/declarations/self-trans-symm.md) | 426 | `result-track:36e34146d94325bc0d8de13895b82c3512e7d410fbe8cc3e1b1d2747fd6e6ad4` |
| 69 | `theorem` | [symm_trans_self](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomRingNamespaced.lean/declarations/symm-trans-self.md) | 430 | `result-track:66d086eb4c88cb25c8ab6fef01a6741368a5d8740309f9723f7b9e41ca8ec171` |
| 70 | `def` | [toOrderRingHom](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomRingNamespaced.lean/declarations/toorderringhom.md) | 440 | `declaration-track:b240e69eb6763c7d962a8b6e80922d0f6e8264f07f8a3fcc4c31505e513a04e7` |
| 71 | `theorem` | [toOrderRingHom_eq_coe](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomRingNamespaced.lean/declarations/toorderringhom-eq-coe.md) | 444 | `result-track:4149a90153e66b273cc1dd57768793312d148f372c62f975d39503195be82530` |
| 72 | `theorem` | [coe_toOrderRingHom](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomRingNamespaced.lean/declarations/coe-toorderringhom.md) | 448 | `result-track:5c062369e1195d94e17ff5c57f0cc690bd35969fbcec86fef4afabd213d03d61` |
| 73 | `theorem` | [coe_toOrderRingHom_refl](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomRingNamespaced.lean/declarations/coe-toorderringhom-refl.md) | 452 | `result-track:8ef6a85e33909b30ddedc09282fcc287daf0125dec5a8a06fa8773c4aa85ec3b` |
| 74 | `theorem` | [toOrderRingHom_injective](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/HomRingNamespaced.lean/declarations/toorderringhom-injective.md) | 455 | `result-track:aeeecd6caaf565b8f71cd243fc7e9c77b8c07cfd1bd848369d83366c22ec1655` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=36bea2bf58e10168b446d41cd7c9c428a9bae5ab7910c9a9c5b729a011ab8bad -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Ring/Variantc5268a2d1abb32ee1282537f8ddef807e32435a9219d87adb89223f399123079.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Ring/Variantc5268a2d1abb32ee1282537f8ddef807e32435a9219d87adb89223f399123079.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
