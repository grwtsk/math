# Verification target: Lemmas Lemmas Namespaced Public Eq Of Val Eq

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8edf007c7803d02dfe7e1113c554b3c23260957d",
  "lexical_observation_count": 33,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant3ba8078c8d32e4774bb10afab559fdbcb44807c71c053759329c9c9ca364a9ef.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LemmasLemmasNamespacedPublicEqOfValEq.lean/index.md) · [Full source](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LemmasLemmasNamespacedPublicEqOfValEq.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8edf007c7803d02dfe7e1113c554b3c23260957d`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant3ba8078c8d32e4774bb10afab559fdbcb44807c71c053759329c9c9ca364a9ef.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant3ba8078c8d32e4774bb10afab559fdbcb44807c71c053759329c9c9ca364a9ef.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.UInt.Lemmas` — import line 17; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [eq_of_val_eq](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LemmasLemmasNamespacedPublicEqOfValEq.lean/declarations/eq-of-val-eq.md) | 27 | `result-track:f07da85e5838058ddec01813fb67875a9103bc6e76159bd7dad590b367fbc141` |
| 2 | `theorem` | [le_def](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LemmasLemmasNamespacedPublicEqOfValEq.lean/declarations/le-def.md) | 30 | `result-track:a802c26b518a915a8ccff78fd3e66a938b73ffda2b6e4ff1897c8ce7c7fd0533` |
| 3 | `theorem` | [lt_def](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LemmasLemmasNamespacedPublicEqOfValEq.lean/declarations/lt-def.md) | 31 | `result-track:c600992533eea0d5915699649790c5b200a85288382e832210d643830f4d928c` |
| 4 | `theorem` | [lt_iff_val_lt_val](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LemmasLemmasNamespacedPublicEqOfValEq.lean/declarations/lt-iff-val-lt-val.md) | 34 | `result-track:113bb738c2f30d67715e42c1b16db7cac65674abfba4ba1a803efef7e3a92fdf` |
| 5 | `theorem` | [not_le](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LemmasLemmasNamespacedPublicEqOfValEq.lean/declarations/not-le.md) | 36 | `result-track:4cb50b9802da0fc9bda9053fc519032cda7b178682af3b3959e620931cf70fa5` |
| 6 | `theorem` | [not_lt](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LemmasLemmasNamespacedPublicEqOfValEq.lean/declarations/not-lt.md) | 37 | `result-track:82fb1e6844566fbbca72d79b9362165586e0e4e43c176fb35375d19453d76d7b` |
| 7 | `theorem` | [le_refl](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LemmasLemmasNamespacedPublicEqOfValEq.lean/declarations/le-refl.md) | 38 | `result-track:0c1994f6a93996d79eb06d20a5c7a08b343eccdd30cd9d8ed4eb6a4e227ea266` |
| 8 | `theorem` | [lt_irrefl](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LemmasLemmasNamespacedPublicEqOfValEq.lean/declarations/lt-irrefl.md) | 39 | `result-track:bd341bebe452944e537c389a8cc4faa0b30607d90882a1a20cc8a815ac8c3a4c` |
| 9 | `theorem` | [le_trans](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LemmasLemmasNamespacedPublicEqOfValEq.lean/declarations/le-trans.md) | 40 | `result-track:dd4f20b91c19e70336a6beb1673ee73807ea874ad5782b6c39f6bf748b09def1` |
| 10 | `theorem` | [lt_trans](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LemmasLemmasNamespacedPublicEqOfValEq.lean/declarations/lt-trans.md) | 41 | `result-track:23894b846724b4ea177e3ccc39c1ea6dccb7d915a45e98f6d901a09389ad8988` |
| 11 | `theorem` | [le_total](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LemmasLemmasNamespacedPublicEqOfValEq.lean/declarations/le-total.md) | 42 | `result-track:62cbf073b84fff9e88ecb6aa44e543f1469d11cba1e3bb504f0ebb8c7cd93d42` |
| 12 | `theorem` | [le_antisymm](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LemmasLemmasNamespacedPublicEqOfValEq.lean/declarations/le-antisymm.md) | 43 | `result-track:019261b733a312688a7a43f119b976b8db6180226ae5f1d18df931661d1f62db` |
| 13 | `theorem` | [lt_asymm](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LemmasLemmasNamespacedPublicEqOfValEq.lean/declarations/lt-asymm.md) | 45 | `result-track:b0df49b14f6834eb828a4f4ad089d6fb09f34bc780961cd8f5742255992db6e6` |
| 14 | `theorem` | [ne_of_lt](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LemmasLemmasNamespacedPublicEqOfValEq.lean/declarations/ne-of-lt.md) | 46 | `result-track:3c5aee5e8bfa6d6a238cec72d4cbcd0a29c90b226c06357566498ebacbff6e71` |
| 15 | `instance` | [ltIrrefl](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LemmasLemmasNamespacedPublicEqOfValEq.lean/declarations/ltirrefl.md) | 48 | `declaration-track:ccf533c5754e40cca66f0249b3936602b6b558f7dea4e93fb8d0f2d01a6c64e0` |
| 16 | `instance` | [leRefl](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LemmasLemmasNamespacedPublicEqOfValEq.lean/declarations/lerefl.md) | 51 | `declaration-track:185d2bb23078236e703f094d0a955376ecd95e0ac8df93877b1cac265b5696f7` |
| 17 | `instance` | [leTrans](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LemmasLemmasNamespacedPublicEqOfValEq.lean/declarations/letrans.md) | 54 | `declaration-track:04a8e1b7c1fd9e46a7ccc40e51bb4bf6e32bfde83bcf4d0b07fd0613da008fef` |
| 18 | `instance` | [ltTrans](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LemmasLemmasNamespacedPublicEqOfValEq.lean/declarations/lttrans.md) | 57 | `declaration-track:878baf3b7b8a7cbb478a40b67f915e7494805fe019d328c8b922484c59c59d3e` |
| 19 | `def` | [notLTTrans](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LemmasLemmasNamespacedPublicEqOfValEq.lean/declarations/notlttrans.md) | 62 | `declaration-track:946628ca39466da3fc47b0bbfafea35f8930e630fd1176a8bc9e2255a7604b8a` |
| 20 | `instance` | [leAntisymm](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LemmasLemmasNamespacedPublicEqOfValEq.lean/declarations/leantisymm.md) | 65 | `declaration-track:cc1697df69a069b8819aae28aa67dff33ec7994d5b5f76299fc1bedc5402868e` |
| 21 | `instance` | [ltTrichotomous](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LemmasLemmasNamespacedPublicEqOfValEq.lean/declarations/lttrichotomous.md) | 69 | `declaration-track:c96a5b14a4c0842d3d429e57504d1a09e0fa1d631f8eadaad581fed0d3bf499f` |
| 22 | `theorem` | [notLTAntisymm](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LemmasLemmasNamespacedPublicEqOfValEq.lean/declarations/notltantisymm.md) | 73 | `result-track:b7f233a99c2fe2138f9f0122957cd4e1a6827188d25f5922fb207da10acc0e1a` |
| 23 | `instance` | [ltAsymm](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LemmasLemmasNamespacedPublicEqOfValEq.lean/declarations/ltasymm.md) | 76 | `declaration-track:679b56155268a8cf70e58b7855de4f3c651f6df3eb62a2bf3cf5b6bb47ac76aa` |
| 24 | `instance` | [leTotal](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LemmasLemmasNamespacedPublicEqOfValEq.lean/declarations/letotal.md) | 79 | `declaration-track:794cf5b88d8761e2f3192bf53ada893e277c7fe13152df3f4043fba101cc8b1b` |
| 25 | `theorem` | [notLTTotal](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LemmasLemmasNamespacedPublicEqOfValEq.lean/declarations/notlttotal.md) | 84 | `result-track:79ff806475a210c775e177969f02228d2fb5d8c0dfdd826e1aed63b88201ba4f` |
| 26 | `theorem` | [ofNat_toNat](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LemmasLemmasNamespacedPublicEqOfValEq.lean/declarations/ofnat-tonat.md) | 87 | `result-track:42aaf6e921af0932191e3ac8a796379fe6a48d813d44d5a9a6c9bb51aed9ef10` |
| 27 | `theorem` | [toUInt8_val](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LemmasLemmasNamespacedPublicEqOfValEq.lean/declarations/touint8-val.md) | 92 | `result-track:b941731515f27137b08fbd05bfaeb17782ee36f59f15d56b6c5f6483b26ae74a` |
| 28 | `theorem` | [toString_eq_singleton](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LemmasLemmasNamespacedPublicEqOfValEq.lean/declarations/tostring-eq-singleton.md) | 95 | `result-track:e4a9198948181d83c02c5cc9fa79bbcdf327f0590e793140ddc6b290357d8e26` |
| 29 | `theorem` | [toNat_val](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LemmasLemmasNamespacedPublicEqOfValEq.lean/declarations/tonat-val.md) | 98 | `result-track:b5060ee632a01a3a015388715be90925f6f7f70f1df269c47dbae459313f6333` |
| 30 | `theorem` | [val_inj](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LemmasLemmasNamespacedPublicEqOfValEq.lean/declarations/val-inj.md) | 100 | `result-track:839b71c5b790c0f232c5db494c866398409990f2d586bc5d290f2cf4d974ac8c` |
| 31 | `theorem` | [toNat_inj](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LemmasLemmasNamespacedPublicEqOfValEq.lean/declarations/tonat-inj.md) | 103 | `result-track:46f0bdd73e6ad1b582b8fdba40601fb93591e42438f2803c936e9bfc72e3aba4` |
| 32 | `theorem` | [isDigit_iff_toNat](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LemmasLemmasNamespacedPublicEqOfValEq.lean/declarations/isdigit-iff-tonat.md) | 106 | `result-track:cc999c94579c1eacfc046967cc53cf5ec523b02f46cb1da22f277d00962d3c44` |
| 33 | `theorem` | [toNat_mk](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LemmasLemmasNamespacedPublicEqOfValEq.lean/declarations/tonat-mk.md) | 110 | `result-track:c2612b50520babe44d191832c5971754873ef5f1425e5408c309fc35c39fed87` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a0845d121bcd25af4ded68614940cc7ff55eeff6c71192c81c6b69e082a98dc5 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant3ba8078c8d32e4774bb10afab559fdbcb44807c71c053759329c9c9ca364a9ef.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variant3ba8078c8d32e4774bb10afab559fdbcb44807c71c053759329c9c9ca364a9ef.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
