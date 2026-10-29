# Verification target: Order Ring Defs Is Ordered Ring

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "238d08f995f77dff263d9e40a55c230ce93cb034",
  "lexical_observation_count": 31,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Defs/Variant9c5acdd2b6c40563b07210b1363090af249baeda0b06a68e1511870fc11631ab.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderRingDefsIsOrderedRing.lean/index.md) · [Full source](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderRingDefsIsOrderedRing.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `238d08f995f77dff263d9e40a55c230ce93cb034`.

Source path: `GRWTSK/Algebra/Defs/Variant9c5acdd2b6c40563b07210b1363090af249baeda0b06a68e1511870fc11631ab.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Defs/Variant9c5acdd2b6c40563b07210b1363090af249baeda0b06a68e1511870fc11631ab.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Ring.Unbundled.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.CharZero.Defs` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Group.Defs` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.GroupWithZero.Unbundled.Basic` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Monoid.NatCast` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Monoid.Unbundled.MinMax` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.Defs` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Tauto` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Monoid.Unbundled.ExistsOfLE` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [IsOrderedRing](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderRingDefsIsOrderedRing.lean/declarations/isorderedring.md) | 116 | `declaration-track:82551fd8d10c591e0f5fb573df5bdc4fe7e6025aae7f0d025a1274e18ac426bc` |
| 2 | `class` | [IsStrictOrderedRing](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderRingDefsIsOrderedRing.lean/declarations/isstrictorderedring.md) | 129 | `declaration-track:8e0fdef6a2c5d5e52a9c9e67e878dd8edaa94d9e67e3afb56a0d97f22d88258e` |
| 3 | `lemma` | [IsOrderedRing.of_mul_nonneg](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderRingDefsIsOrderedRing.lean/declarations/isorderedring-of-mul-nonneg.md) | 141 | `result-track:3bd4f7a88b94f57cbd55d508e0def62ac90ab96fe8213455ce8b09c9c66c6229` |
| 4 | `lemma` | [IsStrictOrderedRing.of_mul_pos](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderRingDefsIsOrderedRing.lean/declarations/isstrictorderedring-of-mul-pos.md) | 149 | `result-track:5b304b0f19de96b82dc466fb5b6e357e60799f8f15420bf3ad3d7311f94b3588` |
| 5 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderRingDefsIsOrderedRing.lean/declarations/instance-source-edition-4.md) | 161 | `declaration-track:71e1c9d92a39a92304a902ed055fca9e62d6c07d6adb7332e52d048bae735436` |
| 6 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderRingDefsIsOrderedRing.lean/declarations/instance-source-edition-3.md) | 165 | `declaration-track:647c25eafa35cb3d2c5c16c0ee7ad4f078499caddc02c093d8074d33b6c43da0` |
| 7 | `lemma` | [IsOrderedRing.toIsStrictOrderedRing](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderRingDefsIsOrderedRing.lean/declarations/isorderedring-toisstrictorderedring.md) | 171 | `result-track:0d9b1e81b7d09322124776691cd0005e7f6bbefb225f040c4ce0d6f0f1f941a6` |
| 8 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderRingDefsIsOrderedRing.lean/declarations/instance-source-edition-7.md) | 180 | `declaration-track:d8b474f415821e6f7476b4a42d55e7e42f039084c03e1477fd0d82efa21d215f` |
| 9 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderRingDefsIsOrderedRing.lean/declarations/instance-source-edition-2.md) | 184 | `declaration-track:6176968ce3c27404222304501f2e9dc3a6557f3642dd2b4d03f0484bfa8caf10` |
| 10 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderRingDefsIsOrderedRing.lean/declarations/instance.md) | 188 | `declaration-track:428de48b3e7451a46ffd2d261f16c90e52f3e18224f4bbd4d64c960343941e0a` |
| 11 | `theorem` | [AddMonoidWithOne.toCharZero](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderRingDefsIsOrderedRing.lean/declarations/addmonoidwithone-tocharzero.md) | 194 | `result-track:fe538ff704a4a8b2e85afc429522dee6bb58c190f5f1cd91cc7c302a1d3fe016` |
| 12 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderRingDefsIsOrderedRing.lean/declarations/instance-source-edition-5.md) | 201 | `declaration-track:7345ffa4b54238ce43762f3403a473f4f0a774744ee44e19a10991bae77f001c` |
| 13 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderRingDefsIsOrderedRing.lean/declarations/instance-source-edition-8.md) | 205 | `declaration-track:dbc2c558ebd3222cc76daa1f5d6d77a7860a39dfd592036c5bc91198c5d264a2` |
| 14 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderRingDefsIsOrderedRing.lean/declarations/instance-source-edition-9.md) | 215 | `declaration-track:f341ee36b2ea27c07ce60050ca05fb12ae3d2c464f5350e57e143bbadeff47cc` |
| 15 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderRingDefsIsOrderedRing.lean/declarations/instance-source-edition-6.md) | 224 | `declaration-track:cad16f882e6116a94cf4e87e8d992a8faee5c92764d01d21c4f54eabed61da7c` |
| 16 | `structure` | [OrderedSemiring](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderRingDefsIsOrderedRing.lean/declarations/orderedsemiring.md) | 242 | `declaration-track:c8b78a0e08941aa4e36a9f4217fcf1009ca701f1956faa588187860a7c32242f` |
| 17 | `structure` | [OrderedCommSemiring](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderRingDefsIsOrderedRing.lean/declarations/orderedcommsemiring.md) | 257 | `declaration-track:37df97dd0524f57bf68a5f9a1a51dca8590ac2b624d379660f16611fd2c7ab76` |
| 18 | `structure` | [OrderedRing](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderRingDefsIsOrderedRing.lean/declarations/orderedring.md) | 267 | `declaration-track:7af1fee96a5ddba0cbfd057a23b8ef023d7586ce41cd1880d427d4ec8f955d2e` |
| 19 | `structure` | [OrderedCommRing](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderRingDefsIsOrderedRing.lean/declarations/orderedcommring.md) | 278 | `declaration-track:abb5648dec771770ac4cd0a069bd1cba326264823c765dbd5a91145082e3c519` |
| 20 | `structure` | [StrictOrderedSemiring](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderRingDefsIsOrderedRing.lean/declarations/strictorderedsemiring.md) | 285 | `declaration-track:622ee950298ec00885c88f6756a5aacb83956fd0d2b1a421cad484c593dc4c24` |
| 21 | `structure` | [StrictOrderedCommSemiring](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderRingDefsIsOrderedRing.lean/declarations/strictorderedcommsemiring.md) | 299 | `declaration-track:e3efc700dbf930325528fc2f95bbdd9b808d6d85c7520ce02e27df87267273eb` |
| 22 | `structure` | [StrictOrderedRing](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderRingDefsIsOrderedRing.lean/declarations/strictorderedring.md) | 306 | `declaration-track:8558ea74adf1e40e9d20b20d6ab89ba6cae1ea01822f6631dd448583eda72b97` |
| 23 | `structure` | [StrictOrderedCommRing](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderRingDefsIsOrderedRing.lean/declarations/strictorderedcommring.md) | 317 | `declaration-track:5786cb28bc07d4ad31b18e707262b20e248f3365e52d3c70212fafafb358b84e` |
| 24 | `structure` | [LinearOrderedSemiring](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderRingDefsIsOrderedRing.lean/declarations/linearorderedsemiring.md) | 327 | `declaration-track:e01ecf4a794830703ca2a73cf43eb0359ece4fc092f6767176285151859aceec` |
| 25 | `structure` | [LinearOrderedCommSemiring](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderRingDefsIsOrderedRing.lean/declarations/linearorderedcommsemiring.md) | 335 | `declaration-track:e7784acd9ffd06b5cd8b1f04bca93efa217356f883d8f99eb38bbb46735b0c24` |
| 26 | `structure` | [LinearOrderedRing](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderRingDefsIsOrderedRing.lean/declarations/linearorderedring.md) | 343 | `declaration-track:0fb21d91b00ffa97cd92585730817afb188fb8722622d88b38efd6516912225c` |
| 27 | `structure` | [LinearOrderedCommRing](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderRingDefsIsOrderedRing.lean/declarations/linearorderedcommring.md) | 350 | `declaration-track:faee9a31891262f88e2dd231e2e2412316bbf24af28736e4e47b8599b783a31f` |
| 28 | `lemma` | [one_add_le_one_sub_mul_one_add](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderRingDefsIsOrderedRing.lean/declarations/one-add-le-one-sub-mul-one-add.md) | 370 | `result-track:120a465c15e16a7d6c11754e082b3ae84f84d682cda38cd0868ed0ff5f28ee52` |
| 29 | `lemma` | [one_add_le_one_add_mul_one_sub](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderRingDefsIsOrderedRing.lean/declarations/one-add-le-one-add-mul-one-sub.md) | 374 | `result-track:4cb3b7768d7bf6585378b3a78300ad3acfc4521d8b5c31af6d8010b414048249` |
| 30 | `lemma` | [one_sub_le_one_sub_mul_one_add](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderRingDefsIsOrderedRing.lean/declarations/one-sub-le-one-sub-mul-one-add.md) | 378 | `result-track:f3a4f7352e757c576204dfbd568933ac312a937b1038ac76d335872283206920` |
| 31 | `lemma` | [one_sub_le_one_add_mul_one_sub](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderRingDefsIsOrderedRing.lean/declarations/one-sub-le-one-add-mul-one-sub.md) | 382 | `result-track:f173081817988ad3c41b62c218904303162dc4dd7fe119b63268ff4a35b2d7af` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=4daf18585f29cd01e5e9a2ecb9fe817f071326f459c0e94d66d071e690221913 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/Defs/Variant9c5acdd2b6c40563b07210b1363090af249baeda0b06a68e1511870fc11631ab.lean","GRWTSK/_verification/specifications/Algebra/Defs/Variant9c5acdd2b6c40563b07210b1363090af249baeda0b06a68e1511870fc11631ab.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
