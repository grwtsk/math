# Verification target: Order Closure Namespaced Mk

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "89bbffdda8f4be8904d849ff4a4b977115853585",
  "lexical_observation_count": 75,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Closure/Variantd86082a676222ec14eaef185ea157bce59cc43d5c1c1e7860b738be339a6aa1b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderClosureNamespacedMk.lean/index.md) · [Full source](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderClosureNamespacedMk.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `89bbffdda8f4be8904d849ff4a4b977115853585`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Closure/Variantd86082a676222ec14eaef185ea157bce59cc43d5c1c1e7860b738be339a6aa1b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Closure/Variantd86082a676222ec14eaef185ea157bce59cc43d5c1c1e7860b738be339a6aa1b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Set.Lattice` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.SetLike.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Order.GaloisConnection` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Hom.Basic` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [ClosureOperator](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderClosureNamespacedMk.lean/declarations/closureoperator-source-edition-2.md) | 68 | `declaration-track:669a4a964197ccbcde6a0e690ab40aaa82f452ed9c54ce1a3299f3fd5fa4cabc` |
| 2 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderClosureNamespacedMk.lean/declarations/instance-source-edition-2.md) | 77 | `declaration-track:c84f25bef171fdcc341f791b865908a51fee166153c94f9b8bc996f3456a017e` |
| 3 | `def` | [id](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderClosureNamespacedMk.lean/declarations/id-source-edition-2.md) | 90 | `declaration-track:4710908501b7816649277ab12eb12968efcd2da2cb636c392739048edca002c2` |
| 4 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderClosureNamespacedMk.lean/declarations/instance-source-edition-3.md) | 97 | `declaration-track:d6cfdd2758ac15dc5c05cae85ae82658cf4c66cfccf02ee46c562fdfc44b3898` |
| 5 | `theorem` | [ext](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderClosureNamespacedMk.lean/declarations/ext-source-edition-2.md) | 103 | `result-track:b047c447962c16580ea06d5e18c4df456253bab26435c1783c303dc0365b74dd` |
| 6 | `def` | [mk'](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderClosureNamespacedMk.lean/declarations/mk-source-edition-2.md) | 110 | `declaration-track:e8047f07bd0f0336d7cda0fc06607099afe307e18b1276b66e15793ee04ad7db` |
| 7 | `def` | [mk₂](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderClosureNamespacedMk.lean/declarations/mk.md) | 122 | `declaration-track:c946b5d4f0c3e1c89da020693b5a4b171cefdad3912eede6914ac73da6c2922c` |
| 8 | `def` | [mk₃](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderClosureNamespacedMk.lean/declarations/mk-source-edition-3.md) | 135 | `declaration-track:f7c725b712ba5829f565cb2d84246f6ebf9f8f74ce41c677a0663e1867997129` |
| 9 | `theorem` | [closure_mem_mk₃](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderClosureNamespacedMk.lean/declarations/closure-mem-mk.md) | 143 | `result-track:23a3aaede2dead759bb931cf386d8ba82399d80b8a69f336318ac03e445f74ce` |
| 10 | `theorem` | [closure_le_mk₃_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderClosureNamespacedMk.lean/declarations/closure-le-mk-iff.md) | 150 | `result-track:6d480d281ef1d9f5ca8dc012c9de47f39dc8fefc7a30264b2df250757ac4fa84` |
| 11 | `theorem` | [monotone](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderClosureNamespacedMk.lean/declarations/monotone.md) | 157 | `result-track:1da40a36a9032f99f03d743b9c5c666ad0735d21acd1d63e3424d536492fe1d1` |
| 12 | `theorem` | [le_closure](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderClosureNamespacedMk.lean/declarations/le-closure-source-edition-2.md) | 163 | `result-track:f1fbf981e61b4a268dc663c46e3f05dbf5fc8309396608a0de0e27614a668315` |
| 13 | `theorem` | [idempotent](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderClosureNamespacedMk.lean/declarations/idempotent.md) | 168 | `result-track:a9491c9c5ca380be654482953ae42ddbd5a1595093182ec269214a577648ade6` |
| 14 | `theorem` | [le_closure_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderClosureNamespacedMk.lean/declarations/le-closure-iff-source-edition-2.md) | 172 | `result-track:71f83dcc8e697e9ca105a2be80930f50652b89e5a4af0490995c628502071510` |
| 15 | `def` | [closed](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderClosureNamespacedMk.lean/declarations/closed.md) | 177 | `declaration-track:653cb599af51c5a4ca612778b1af8e3c7ced8a37f7f656c26f7eb3757f1cefb2` |
| 16 | `theorem` | [mem_closed_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderClosureNamespacedMk.lean/declarations/mem-closed-iff-source-edition-2.md) | 180 | `result-track:35fd237b37454ad0f89b8323211f4217f1bfbb19fdd28324800609b158547d15` |
| 17 | `theorem` | [mem_closed_iff_closure_le](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderClosureNamespacedMk.lean/declarations/mem-closed-iff-closure-le-source-edition-2.md) | 184 | `result-track:f2c5caef522991fdf230d47750677dffed52d21ac08eb5ee6b6f68853ecb393f` |
| 18 | `theorem` | [closure_eq_self_of_mem_closed](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderClosureNamespacedMk.lean/declarations/closure-eq-self-of-mem-closed-source-edition-2.md) | 188 | `result-track:7c4e43cc91bc858cc0bacec4de541fc3e4797743bf2c311557af8e39505a0a2e` |
| 19 | `theorem` | [closure_is_closed](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderClosureNamespacedMk.lean/declarations/closure-is-closed.md) | 193 | `result-track:b80cdcf212b5b80d37c7a5f67c8158650e0d30fe30d88e8b426acfb5e84738fe` |
| 20 | `theorem` | [closed_eq_range_close](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderClosureNamespacedMk.lean/declarations/closed-eq-range-close.md) | 198 | `result-track:65c9a150ea8d34dba811764161952f5667a63ba5b803ba17eded42250de0a51b` |
| 21 | `def` | [toClosed](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderClosureNamespacedMk.lean/declarations/toclosed-source-edition-2.md) | 206 | `declaration-track:5d33feb6ad5affccf094b7b63c196a377c621a418e3834e99f12c8f3744e1c69` |
| 22 | `theorem` | [closure_le_closed_iff_le](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderClosureNamespacedMk.lean/declarations/closure-le-closed-iff-le-source-edition-2.md) | 211 | `result-track:89445cd1d8dc8a51c55edf9a0885788994c326d76beafb84fe2af320b38f6e32` |
| 23 | `theorem` | [eq_mk₃_closed](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderClosureNamespacedMk.lean/declarations/eq-mk-closed.md) | 217 | `result-track:f077e3fdc2a06a4db8336f29666103584e63c9bd3182a798e6dfd03214d9ada0` |
| 24 | `theorem` | [mem_mk₃_closed](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderClosureNamespacedMk.lean/declarations/mem-mk-closed.md) | 226 | `result-track:4a4cd2a83a518aa5901338a523b00e63b0b56ae396de4a2fb9a2b3b91e404a0f` |
| 25 | `theorem` | [closure_top](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderClosureNamespacedMk.lean/declarations/closure-top.md) | 240 | `result-track:05b05d893be21393b84f3c4b8a4833b55750021041467dddf7c3e1372fe44af1` |
| 26 | `theorem` | [top_mem_closed](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderClosureNamespacedMk.lean/declarations/top-mem-closed.md) | 244 | `result-track:3bad1acd275e5f6d6a285bcf64a4ee2ce7c41f48d9f985d69d9487c583ebf33a` |
| 27 | `theorem` | [closure_inf_le](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderClosureNamespacedMk.lean/declarations/closure-inf-le-source-edition-2.md) | 250 | `result-track:c53d2ffa0e3d22170404805c1270b43c8b1892de6816488124545420576d8e93` |
| 28 | `theorem` | [closure_sup_closure_le](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderClosureNamespacedMk.lean/declarations/closure-sup-closure-le.md) | 259 | `result-track:3cc82ce0237b656b67a5f4bbafe140742183079023132e0609f4a922d3727d63` |
| 29 | `theorem` | [closure_sup_closure_left](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderClosureNamespacedMk.lean/declarations/closure-sup-closure-left.md) | 263 | `result-track:468bdbeac0763e728fe94c1780bdf4d4348eb32ee079b3491d59a9f7e3956404` |
| 30 | `theorem` | [closure_sup_closure_right](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderClosureNamespacedMk.lean/declarations/closure-sup-closure-right.md) | 269 | `result-track:2edc770b6d86d0001220f9b2beaa26e855abec4215257a404c3e7bf83aef4535` |
| 31 | `theorem` | [closure_sup_closure](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderClosureNamespacedMk.lean/declarations/closure-sup-closure.md) | 273 | `result-track:963a8f6addb36f313e5196a41cde823e82cb798fcec9de658d335a34b0fe5b8f` |
| 32 | `theorem` | [closure_iSup_closure](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderClosureNamespacedMk.lean/declarations/closure-isup-closure-source-edition-4.md) | 284 | `result-track:fd949d6b34ddefb0135d379f07a830efb9569c6cc528146bb88c4aef4648677c` |
| 33 | `theorem` | [closure_iSup₂_closure](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderClosureNamespacedMk.lean/declarations/closure-isup-closure-source-edition-3.md) | 290 | `result-track:ebd15f2045b16a73fabb2841e779f064ceff43b361a9a141b701b64adb0941b1` |
| 34 | `structure` | [LowerAdjoint](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderClosureNamespacedMk.lean/declarations/loweradjoint.md) | 308 | `declaration-track:15aec735ca40204357c2f209923008f961e2b1ff55f0c9f2df5cced13ab427d1` |
| 35 | `def` | [id](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderClosureNamespacedMk.lean/declarations/id.md) | 321 | `declaration-track:22f0c8086b7b63f8fbe567dac08de320d849b2ed842b75f67815bae3b02d7cce` |
| 36 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderClosureNamespacedMk.lean/declarations/instance-source-edition-4.md) | 329 | `declaration-track:e96af884185856374ee5fa64ea32c10179aaebdae2e2effacbdfa023eee7190f` |
| 37 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderClosureNamespacedMk.lean/declarations/instance.md) | 336 | `declaration-track:35a9fad825594975aec67257758f98f95a45d10690681c781a534b06778cdd8d` |
| 38 | `theorem` | [gc](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderClosureNamespacedMk.lean/declarations/gc.md) | 338 | `result-track:68ce6e03f16a4542f673f1e4a1abca731a36bc71f0e295346b8c0c8c480a2be3` |
| 39 | `theorem` | [ext](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderClosureNamespacedMk.lean/declarations/ext.md) | 343 | `result-track:4080276d697ed2bd45e66a12db86fc6992ef7974847604c21251489c678ee993` |
| 40 | `theorem` | [monotone](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderClosureNamespacedMk.lean/declarations/monotone-source-edition-2.md) | 349 | `result-track:b6e1615ff80f43df7ce76c4f51938c0bff2c958c2bc684f6481709e8f48da57e` |
| 41 | `theorem` | [le_closure](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderClosureNamespacedMk.lean/declarations/le-closure.md) | 355 | `result-track:8a2c833cb73f349a210b9af2b96713a98ddbc5e5bb75e6dceeefa19540d427a2` |
| 42 | `def` | [closureOperator](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderClosureNamespacedMk.lean/declarations/closureoperator.md) | 368 | `declaration-track:06eee4056974bfb4d3c62eef80ea1060f66b20b070849fbc14f37e64e3bf7795` |
| 43 | `theorem` | [idempotent](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderClosureNamespacedMk.lean/declarations/idempotent-source-edition-2.md) | 376 | `result-track:b4db20442004faabbf5c01f1b9160ba35e09064fedfbbb2a9f7471f841d1b9b0` |
| 44 | `theorem` | [le_closure_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderClosureNamespacedMk.lean/declarations/le-closure-iff.md) | 380 | `result-track:0ee915313b1f622fb832569025de78cf8f9a7d95edfb2417ae6af0ef68d832ea` |
| 45 | `def` | [closed](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderClosureNamespacedMk.lean/declarations/closed-source-edition-2.md) | 391 | `declaration-track:b90b27b5d82bc4611eceeaf8dbe9cc2a5549ac85c215e10bde7df09adf165e56` |
| 46 | `theorem` | [mem_closed_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderClosureNamespacedMk.lean/declarations/mem-closed-iff.md) | 394 | `result-track:04bfc4c6760cf4594dfde85ab3fdf12423cf53e4a7b6dc05e247a4e865829aae` |
| 47 | `theorem` | [closure_eq_self_of_mem_closed](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderClosureNamespacedMk.lean/declarations/closure-eq-self-of-mem-closed.md) | 398 | `result-track:412d2305238a462b595c2f00ff41c436ca7440a98c6e2c6dc2f70ca8b6562985` |
| 48 | `theorem` | [mem_closed_iff_closure_le](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderClosureNamespacedMk.lean/declarations/mem-closed-iff-closure-le.md) | 408 | `result-track:e4239293324df0aeabbdb824d3c53ad481a6333b5a7e6de772f8e5d1f7a6a67b` |
| 49 | `theorem` | [closure_is_closed](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderClosureNamespacedMk.lean/declarations/closure-is-closed-source-edition-2.md) | 413 | `result-track:db838cd33a409f31b561be54cb710ba8e97364bc95b0a656bca663991f1624fe` |
| 50 | `theorem` | [closed_eq_range_close](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderClosureNamespacedMk.lean/declarations/closed-eq-range-close-source-edition-2.md) | 418 | `result-track:99788b8d3c433de9dff38fea7da7e5ac902354750f2e9cde49cd6a0bcaf121f6` |
| 51 | `def` | [toClosed](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderClosureNamespacedMk.lean/declarations/toclosed.md) | 423 | `declaration-track:10f02c5383e1e47b1861a05756576a6e6c4d8ef2ad82ba1424bcc48f5d34afd3` |
| 52 | `theorem` | [closure_le_closed_iff_le](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderClosureNamespacedMk.lean/declarations/closure-le-closed-iff-le.md) | 428 | `result-track:018cdbd7d0da764d7eb44d6738165ddccfdd07782f9eb93836b68e025e8fa70d` |
| 53 | `theorem` | [closure_top](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderClosureNamespacedMk.lean/declarations/closure-top-source-edition-2.md) | 434 | `result-track:191eb86ac7b85d3221b4cb87dd089e551d203513a017d1f92f52b2ddace9eb76` |
| 54 | `theorem` | [closure_inf_le](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderClosureNamespacedMk.lean/declarations/closure-inf-le.md) | 439 | `result-track:8895e07960df00f6a616565d141adc321a5c3c8f89277350057e65269e87d723` |
| 55 | `theorem` | [closure_sup_closure_le](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderClosureNamespacedMk.lean/declarations/closure-sup-closure-le-source-edition-2.md) | 448 | `result-track:53d1c27d8f57297c2fb4ca370163f5d21fcd9c77b5143fcaa1c1c85ea9b84d13` |
| 56 | `theorem` | [closure_sup_closure_left](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderClosureNamespacedMk.lean/declarations/closure-sup-closure-left-source-edition-2.md) | 452 | `result-track:a0f6e1bc87f27689a8db6bb75abaa303ef39a8889e295c5cf569b173c2305fa4` |
| 57 | `theorem` | [closure_sup_closure_right](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderClosureNamespacedMk.lean/declarations/closure-sup-closure-right-source-edition-2.md) | 456 | `result-track:6560261b889cec3a7fd16e341cf1f7749ebbcfc333fa53a227abd2e825372bc3` |
| 58 | `theorem` | [closure_sup_closure](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderClosureNamespacedMk.lean/declarations/closure-sup-closure-source-edition-2.md) | 460 | `result-track:be4a9b6b9e79814372c1cb57023ba54fe5dac6072577ffc9415207bb5768d2db` |
| 59 | `theorem` | [closure_iSup_closure](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderClosureNamespacedMk.lean/declarations/closure-isup-closure.md) | 470 | `result-track:02dda3bebc374f4f563c78645dc888ece842056dcbe2d4b3098158005daaa7b9` |
| 60 | `theorem` | [closure_iSup₂_closure](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderClosureNamespacedMk.lean/declarations/closure-isup-closure-source-edition-2.md) | 474 | `result-track:a3cf6330b0805ff099f1af6b196d9b225290ee95a8d9025acc0dde416f540f35` |
| 61 | `theorem` | [subset_closure](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderClosureNamespacedMk.lean/declarations/subset-closure.md) | 486 | `result-track:66b5e3f1c1791a7dcbdf8317aecfc3f9b75759b04a1f966a509b484818b1e490` |
| 62 | `theorem` | [not_mem_of_not_mem_closure](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderClosureNamespacedMk.lean/declarations/not-mem-of-not-mem-closure.md) | 490 | `result-track:81d9b25d226585318e0ced123be30c768458c23b6592eb71e3fb3e6c087ff999` |
| 63 | `theorem` | [le_iff_subset](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderClosureNamespacedMk.lean/declarations/le-iff-subset.md) | 494 | `result-track:db89103d056138f171b41e8941d000aebe841dd91741c940f0f5c524d342c929` |
| 64 | `theorem` | [mem_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderClosureNamespacedMk.lean/declarations/mem-iff.md) | 498 | `result-track:4fba6aef96ef79269d9b42d3f98a20e438590d266d7fd1ea2cd0729e7cef26bb` |
| 65 | `theorem` | [eq_of_le](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderClosureNamespacedMk.lean/declarations/eq-of-le.md) | 503 | `result-track:5789933ef6bedd3fdab23d8faa862c3648df98640eedbf84c94bd462ca7102f6` |
| 66 | `theorem` | [closure_union_closure_subset](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderClosureNamespacedMk.lean/declarations/closure-union-closure-subset.md) | 507 | `result-track:cbcc087141e373463dbdb3b2b13032247770c9365385ac06702263e71478b48e` |
| 67 | `theorem` | [closure_union_closure_left](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderClosureNamespacedMk.lean/declarations/closure-union-closure-left.md) | 512 | `result-track:4d7ac432917e82f57e6d10637afb5c363af21cd20ab3f2c5ba8b54a611faa843` |
| 68 | `theorem` | [closure_union_closure_right](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderClosureNamespacedMk.lean/declarations/closure-union-closure-right.md) | 517 | `result-track:2a0927d5d4a91a6b03bd7690ac383b594e14a258640e0e273f33180ffe430eec` |
| 69 | `theorem` | [closure_union_closure](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderClosureNamespacedMk.lean/declarations/closure-union-closure.md) | 521 | `result-track:6e8187e04759b1e5d9061489aa90a2e37abc18d881a3f706e89985dcc90443e4` |
| 70 | `theorem` | [closure_iUnion_closure](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderClosureNamespacedMk.lean/declarations/closure-iunion-closure-source-edition-2.md) | 526 | `result-track:9dc713fb51ef51cef67b013000053f0edf8ae2e18599548a119790a3bc347c73` |
| 71 | `theorem` | [closure_iUnion₂_closure](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderClosureNamespacedMk.lean/declarations/closure-iunion-closure.md) | 533 | `result-track:05e9934cac53774fb3c722dc3f1787479059fe34a29195f98fd55b33424b53ee` |
| 72 | `def` | [GaloisConnection.lowerAdjoint](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderClosureNamespacedMk.lean/declarations/galoisconnection-loweradjoint.md) | 546 | `declaration-track:efee104998feb8bb9361b4024475045e8bbb3325502f7c26b9b6e78a25833686` |
| 73 | `def` | [GaloisConnection.closureOperator](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderClosureNamespacedMk.lean/declarations/galoisconnection-closureoperator.md) | 557 | `declaration-track:078fa2b8946ca894c5d6663193604ed7dc8834aac8565710fe90af6362a24a5b` |
| 74 | `def` | [Order Closure Namespaced Mk](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderClosureNamespacedMk.lean/declarations/root-grwtsk-combinatoricsanddiscretemathematics-orderandlatticetheory-cl.md) | 564 | `declaration-track:23c963e10fccfbfb75bc7d908058bc12a670b4aa5ea30546abd086f05a91bea6` |
| 75 | `theorem` | [closureOperator_gi_self](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderClosureNamespacedMk.lean/declarations/closureoperator-gi-self.md) | 576 | `result-track:4ea4e6d59c36da50c7b455d8e777e6f496745bb9ea3cb073a2a21c36f58980b9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=4cbb204f9d0404b22ecde54069a121104564168013356048e18bf3ee139ae9eb -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Closure/Variantd86082a676222ec14eaef185ea157bce59cc43d5c1c1e7860b738be339a6aa1b.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrderTheory/ClosureOperators/Variantd86082a676222ec14eaef185ea157bce59cc43d5c1c1e7860b738be339a6aa1b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
