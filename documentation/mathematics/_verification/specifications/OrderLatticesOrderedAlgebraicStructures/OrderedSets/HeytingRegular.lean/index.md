# Verification target: Heyting Regular

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "38a5a5ca9e606b85428cf9f00254257e377b6dbf",
  "lexical_observation_count": 42,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Regular/Variant653b5780f8159b2a5fc014b32a8c7f463147e6df7e5d48f2bc0c7e8218cc90f0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/HeytingRegular.lean/index.md) · [Full source](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/HeytingRegular.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `38a5a5ca9e606b85428cf9f00254257e377b6dbf`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Regular/Variant653b5780f8159b2a5fc014b32a8c7f463147e6df7e5d48f2bc0c7e8218cc90f0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Regular/Variant653b5780f8159b2a5fc014b32a8c7f463147e6df7e5d48f2bc0c7e8218cc90f0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Order.GaloisConnection.Basic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsRegular](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/HeytingRegular.lean/declarations/isregular.md) | 40 | `declaration-track:babff338aff08f365f915300322a188c9cdbf700164f9c99bbc5ed8774830b7f` |
| 2 | `theorem` | [IsRegular.eq](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/HeytingRegular.lean/declarations/isregular-eq.md) | 43 | `result-track:c9d39b1f55fb0603abb752644da47450b6b6796a2d68a113f8cd142e61532384` |
| 3 | `instance` | [IsRegular.decidablePred](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/HeytingRegular.lean/declarations/isregular-decidablepred.md) | 46 | `declaration-track:6b9aeb090f56b5385da3b879c34d6fe8fdd9d393c0107ac285fd273162ea79e8` |
| 4 | `theorem` | [isRegular_bot](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/HeytingRegular.lean/declarations/isregular-bot.md) | 55 | `result-track:041239397006fa05eec052637e02a6ecf8c91f19ad37ca5314b76856f321a59f` |
| 5 | `theorem` | [isRegular_top](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/HeytingRegular.lean/declarations/isregular-top.md) | 57 | `result-track:fb580927f8003e789c0f29442095ba60a4f3010232006b0f9a87d7d0826fb364` |
| 6 | `theorem` | [IsRegular.inf](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/HeytingRegular.lean/declarations/isregular-inf.md) | 59 | `result-track:75754bc959dd788d93e02b6073af87f56d54881a12106d370fee2925c4287872` |
| 7 | `theorem` | [IsRegular.himp](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/HeytingRegular.lean/declarations/isregular-himp.md) | 62 | `result-track:50e0a2d431225fa260e96a32b4500807885ccdb60f0c4a8de3160e4ab2815892` |
| 8 | `theorem` | [isRegular_compl](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/HeytingRegular.lean/declarations/isregular-compl.md) | 65 | `result-track:433a60319e5f7d73eb915d0a83304e0a024b44a77c402c53625f22e63c7415b1` |
| 9 | `theorem` | [IsRegular.disjoint_compl_left_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/HeytingRegular.lean/declarations/isregular-disjoint-compl-left-iff.md) | 68 | `result-track:90fe4d34cd4a2a049ed95d4729ff8257b7be9964691b21b94e53c658b3c64ac4` |
| 10 | `theorem` | [IsRegular.disjoint_compl_right_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/HeytingRegular.lean/declarations/isregular-disjoint-compl-right-iff.md) | 71 | `result-track:3e0f744265dbb33fc10ce02ed3a50665316c441aeeb7f0407687e8bcbb172a02` |
| 11 | `abbrev` | [_root_.BooleanAlgebra.ofRegular](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/HeytingRegular.lean/declarations/root-booleanalgebra-ofregular.md) | 76 | `declaration-track:fb93e5e56a5424e8e6d34a3ba34cbef57afd6a3cbab7029897843cd4ee0d844e` |
| 12 | `def` | [Regular](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/HeytingRegular.lean/declarations/regular.md) | 90 | `declaration-track:269de816c6b093fc59c41f7eefa8c3117e9311e55392b7db32d707ee017eb949` |
| 13 | `def` | [val](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/HeytingRegular.lean/declarations/val.md) | 98 | `declaration-track:7fdbb4f2febdd4ad15083e25d8dc77c116f5460eef6d2dfa433c9c0d56463d39` |
| 14 | `theorem` | [prop](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/HeytingRegular.lean/declarations/prop.md) | 101 | `result-track:108e83a34874ec9a4e145c84ba3da91ad19e07f37fb8b651b7f305b45c61b7f2` |
| 15 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/HeytingRegular.lean/declarations/instance-source-edition-2.md) | 103 | `declaration-track:815e6eed7769d1eeb45645cfa579bc33e01701bb6ef329e3fdb1a805d8dc4c13` |
| 16 | `theorem` | [coe_injective](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/HeytingRegular.lean/declarations/coe-injective.md) | 105 | `result-track:5dcc27fe2d31bde4e7cb89005a838a04c3602a5bad39cf805b1c8f28b1ac4943` |
| 17 | `theorem` | [coe_inj](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/HeytingRegular.lean/declarations/coe-inj.md) | 109 | `result-track:666fdcc23365a6070e720e662c963787d5885033bc86ec69bf3dc134ab0dffe6` |
| 18 | `instance` | [top](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/HeytingRegular.lean/declarations/top.md) | 112 | `declaration-track:ced7d2fa6918b998fa5a1d71b131f48e103eaaa229474771e8fcae737f591dc6` |
| 19 | `instance` | [bot](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/HeytingRegular.lean/declarations/bot.md) | 115 | `declaration-track:10eaa59f681c14b1df156602044b8e946a6f0618823a341877cf23db1e4f7d3d` |
| 20 | `instance` | [inf](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/HeytingRegular.lean/declarations/inf.md) | 118 | `declaration-track:3b34aa9608a6df06f2e46bf1510272517d3059c0e54692450df8627f83c39f3b` |
| 21 | `instance` | [himp](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/HeytingRegular.lean/declarations/himp.md) | 121 | `declaration-track:da360edb43d71aa6395f8ec3c268db53b80168db9ce68bff3195114942f2c139` |
| 22 | `instance` | [hasCompl](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/HeytingRegular.lean/declarations/hascompl.md) | 124 | `declaration-track:58f5be2d04ece15391e45a134af283fc10c1f4ea53a06e100ec1491020f3d2cd` |
| 23 | `theorem` | [coe_top](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/HeytingRegular.lean/declarations/coe-top.md) | 128 | `result-track:c0c89ae48219a6deb476b78d41a658a3971782dc58a0215b849c62801c45b560` |
| 24 | `theorem` | [coe_bot](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/HeytingRegular.lean/declarations/coe-bot.md) | 132 | `result-track:69495fdefd1b9feca946953027f93fed377a3fc4bca317bfb12dfd45d61d35c3` |
| 25 | `theorem` | [coe_inf](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/HeytingRegular.lean/declarations/coe-inf.md) | 136 | `result-track:f535a3956a71b43cd0468e5090fe6380ba80ee5e9b3559a4c1db72eddd8a06b0` |
| 26 | `theorem` | [coe_himp](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/HeytingRegular.lean/declarations/coe-himp.md) | 140 | `result-track:cf1cd997cd792ef7d50186c961d100cfcab13b4411d145b1e3912c981ca59d28` |
| 27 | `theorem` | [coe_compl](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/HeytingRegular.lean/declarations/coe-compl.md) | 144 | `result-track:4726ac8bf3a6520e16cabe31377f81428e46d87bcd1bf61c2d399caba4171801` |
| 28 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/HeytingRegular.lean/declarations/instance-source-edition-4.md) | 147 | `declaration-track:b090eef91a000a64ab9a7189c1bd8d89229821874dffe042ee1243e883a39fd6` |
| 29 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/HeytingRegular.lean/declarations/instance.md) | 150 | `declaration-track:0743954f16182fcab90cc9e7911f1fb8ea657d20fe76962efde41891bd723443` |
| 30 | `instance` | [boundedOrder](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/HeytingRegular.lean/declarations/boundedorder.md) | 153 | `declaration-track:85a856802270055bcf9f736a7f4357126482065ec88efeb08195462165329cb3` |
| 31 | `theorem` | [coe_le_coe](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/HeytingRegular.lean/declarations/coe-le-coe.md) | 157 | `result-track:96cdcd78c5867d74769c0414cf3a8f78085559c5328d91edbb1af300d3c1d168` |
| 32 | `theorem` | [coe_lt_coe](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/HeytingRegular.lean/declarations/coe-lt-coe.md) | 161 | `result-track:28e1d059930cf405ca742ad848172c5a076a335c1898767140a8b17cebbe9dd9` |
| 33 | `def` | [toRegular](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/HeytingRegular.lean/declarations/toregular.md) | 165 | `declaration-track:3eab873dea18eff38c0ae161263deb57f6ea6cee0421d065936ab73ba9870e50` |
| 34 | `theorem` | [coe_toRegular](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/HeytingRegular.lean/declarations/coe-toregular.md) | 170 | `result-track:02802b5dfb03a63a8eb0a7a1a9f69f6baf9f8663d46603e1355bb8ed3f87eb40` |
| 35 | `theorem` | [toRegular_coe](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/HeytingRegular.lean/declarations/toregular-coe.md) | 174 | `result-track:6a0638203ee4884ce6284ba54f7612f814de27dacd266e0bc4bcb318f3de5852` |
| 36 | `def` | [gi](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/HeytingRegular.lean/declarations/gi.md) | 178 | `declaration-track:4bdc60e1fb8d1af5f5120d77a0cd14b74f9d4bbdd9cfe802fcd9256feffd6727` |
| 37 | `instance` | [lattice](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/HeytingRegular.lean/declarations/lattice.md) | 186 | `declaration-track:4724329f6d42b81f525231ae3023cd98da7782bdefc924b2def33d700da94cb4` |
| 38 | `theorem` | [coe_sup](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/HeytingRegular.lean/declarations/coe-sup.md) | 190 | `result-track:7c1cb9faae5bc03ff23de4ebd24e3d7aa1e9b54c8013d71ad705a3a4b0586bb3` |
| 39 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/HeytingRegular.lean/declarations/instance-source-edition-3.md) | 193 | `declaration-track:a1e5d9aa2e418bd9ae8139ad5435c7cbcc2a9e30011fc28a1564738c539666f0` |
| 40 | `theorem` | [coe_sdiff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/HeytingRegular.lean/declarations/coe-sdiff.md) | 215 | `result-track:8e0b27230fbdf04e41f2327b2257f099261bf79b739da834745f74c97321bcf9` |
| 41 | `theorem` | [isRegular_of_boolean](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/HeytingRegular.lean/declarations/isregular-of-boolean.md) | 224 | `result-track:9be3d1c01d898574d268f3aa5c79e2ceb3a31b37b999a0470194924827fb9b27` |
| 42 | `theorem` | [isRegular_of_decidable](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/HeytingRegular.lean/declarations/isregular-of-decidable.md) | 228 | `result-track:b319014f51bff4307f10180577452bfb9519cd545ded7665bf4bdc2f89d15afd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=2d92a287a0584e661a5343a54b3fbb6e6cb166e4aabf5a65ad3dee09507ca91c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Regular/Variant653b5780f8159b2a5fc014b32a8c7f463147e6df7e5d48f2bc0c7e8218cc90f0.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/MathematicalLogic/Regular/Variant653b5780f8159b2a5fc014b32a8c7f463147e6df7e5d48f2bc0c7e8218cc90f0.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
