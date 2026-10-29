# Verification target: Order LE

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3fb357786daee0a89085acf01ac2c5978ecba42e",
  "lexical_observation_count": 36,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Order/Variantb640925c899cb1afa94317e871d7088d09d8103609052efa491db98bd9f745bb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderLE.lean/index.md) · [Full source](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderLE.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3fb357786daee0a89085acf01ac2c5978ecba42e`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Order/Variantb640925c899cb1afa94317e871d7088d09d8103609052efa491db98bd9f745bb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Order/Variantb640925c899cb1afa94317e871d7088d09d8103609052efa491db98bd9f745bb.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Finset.Card` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [PartialBit](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderLE.lean/declarations/partialbit.md) | 16 | `declaration-track:ef29e44a3a909419da3383d9ec0d543879002d301a7ef23df18e854ff0ae92eb` |
| 2 | `def` | [LE](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderLE.lean/declarations/le.md) | 24 | `declaration-track:215f82565888479fa280cc358b84b5e0c1ccd5d567314b202bd190face8fad6f` |
| 3 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderLE.lean/declarations/instance-source-edition-2.md) | 30 | `declaration-track:9dbcfe38a69bdbaa03963705561af7d9831437d5b1d0aae0f705b16dac8b5b19` |
| 4 | `theorem` | [unresolved_le](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderLE.lean/declarations/unresolved-le.md) | 33 | `result-track:4ee376e502fb63e6f227b0884763940c03387667e269dff62635de8c3bb27793` |
| 5 | `theorem` | [zero_le_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderLE.lean/declarations/zero-le-iff.md) | 38 | `result-track:419459861e5290426d9dbd295083547e5a8ad6dd7b7f0cb2687457d0054fbbdd` |
| 6 | `theorem` | [one_le_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderLE.lean/declarations/one-le-iff.md) | 44 | `result-track:9d066e62488886907f1844454af482f8ff3ab64ccb016440227f2232b0003a7a` |
| 7 | `theorem` | [le_refl](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderLE.lean/declarations/le-refl.md) | 50 | `result-track:3bfc6d0c92597bb99c34028a86686da771d463bfffef0ea2984665d4158eebb6` |
| 8 | `theorem` | [le_trans](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderLE.lean/declarations/le-trans.md) | 54 | `result-track:71a5437bdfa70720ab09220154aadde4177dee147db5772a3d392471b9032f25` |
| 9 | `theorem` | [le_antisymm](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderLE.lean/declarations/le-antisymm.md) | 64 | `result-track:d932d30f2694800adeac8692d9630b74fcf96b7b48a1221e6caaac203a49fa27` |
| 10 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderLE.lean/declarations/instance.md) | 73 | `declaration-track:3364540499551d1ae0518e944a69c88296ced67578c537ac29fc5eb6bb588b5d` |
| 11 | `def` | [ofBool](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderLE.lean/declarations/ofbool.md) | 78 | `declaration-track:e4a6f03acad70c6a6670b607671867faa6fb36783123f7b9ac8d055827d0bd62` |
| 12 | `def` | [isResolved](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderLE.lean/declarations/isresolved.md) | 82 | `declaration-track:e49c9f10e4e7e8c08d7de262348ff6f3d03134d47849542533b9a6954bc74343` |
| 13 | `theorem` | [ofBool_ne_unresolved](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderLE.lean/declarations/ofbool-ne-unresolved.md) | 87 | `result-track:af1ec5ab614e185ab59239577870a65ff5e38fb983914e7dab1b79cdd7b6b139` |
| 14 | `theorem` | [partialBit_partialOrder](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderLE.lean/declarations/partialbit-partialorder.md) | 94 | `result-track:8933058496e0c3d9fbd09766d6686c5e03c3ff827215c4884916a9ab3935076a` |
| 15 | `abbrev` | [PartialBitfield](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderLE.lean/declarations/partialbitfield.md) | 98 | `declaration-track:2aab61b8e9de4128664522da8fef08a58e24e6e0875b722ebbaca65cc5f75686` |
| 16 | `abbrev` | [FullBitfield](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderLE.lean/declarations/fullbitfield.md) | 101 | `declaration-track:d185eb9294f99b1b3a79f499ecd6f21288075ecddc69207df266db190a47b114` |
| 17 | `def` | [Extends](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderLE.lean/declarations/extends.md) | 104 | `declaration-track:4f169ee88bb0cf75d964fb417a7a7affcc283f40c33a696c0cbe4eee54d51574` |
| 18 | `def` | [embedFull](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderLE.lean/declarations/embedfull.md) | 110 | `declaration-track:52695f19495102cfe11489bd176a31bc21976df04017f5d9e146e5e34d533f0e` |
| 19 | `def` | [ExtendsFull](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderLE.lean/declarations/extendsfull.md) | 117 | `declaration-track:f5c0f57d52c36530ff8d403364c4c17cb55fbcaad5099fb3a97787348982e202` |
| 20 | `def` | [resolvedSupport](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderLE.lean/declarations/resolvedsupport.md) | 123 | `declaration-track:bb58cc1d0232f5243ec6a58f140f2e227fcef022dc000cb9aac93f0cbad40d62` |
| 21 | `def` | [IsFull](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderLE.lean/declarations/isfull.md) | 131 | `declaration-track:b364204fa1a319da581c1bf7b38418188bec250611a41ee3d2876ee3ec089df6` |
| 22 | `theorem` | [extends_refl](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderLE.lean/declarations/extends-refl.md) | 137 | `result-track:70f02d1422d24a10c62b91bd00805d9aceaf16fe47404643003ea16fec115ff9` |
| 23 | `theorem` | [extends_trans](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderLE.lean/declarations/extends-trans.md) | 143 | `result-track:da90c8f84206ed1ccfd2e7ad972e6374ba2fde13af3ce12607412f3ef53ff252` |
| 24 | `theorem` | [resolvedSupport_mono](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderLE.lean/declarations/resolvedsupport-mono.md) | 154 | `result-track:7183321517c5f015c5e97e48e306f69d1cbb76cf98ac5bdcd21ff77e1bf3aa06` |
| 25 | `theorem` | [embedded_full_is_full](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderLE.lean/declarations/embedded-full-is-full.md) | 174 | `result-track:271f6201379d76d3679f2032229d54e47ea36a0c8f9530c857342f08fc1b3f5e` |
| 26 | `theorem` | [full_extension_unique](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderLE.lean/declarations/full-extension-unique.md) | 183 | `result-track:e6e9954e2e3afe59ff9e73c17e95cb40b78f3d312b22b7fdd4000dafb3b8b82a` |
| 27 | `def` | [OneCoordinateResolution](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderLE.lean/declarations/onecoordinateresolution.md) | 201 | `declaration-track:9a736ec1300fdb5363f53e153590c3482fbdd6ced72e541960c2ddba2e4cb9ea` |
| 28 | `theorem` | [oneCoordinateResolution_extends](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderLE.lean/declarations/onecoordinateresolution-extends.md) | 211 | `result-track:dce16826034927fecc6d50ed28fbca5bb72aa10e3e3208a9b2ef730867f0d5a4` |
| 29 | `theorem` | [oneCoordinateResolution_support](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderLE.lean/declarations/onecoordinateresolution-support.md) | 227 | `result-track:44cb3b56e4cbc03f83877e75206b63c6647a44e975d3dee447ac10503cc9a35e` |
| 30 | `theorem` | [oneCoordinateResolution_card](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderLE.lean/declarations/onecoordinateresolution-card.md) | 249 | `result-track:fbab88dca9cd9704c29559a2abdd349dee28dd5796c597b593820322a973bdac` |
| 31 | `theorem` | [oneCoordinateResolution_support_increment](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderLE.lean/declarations/onecoordinateresolution-support-increment.md) | 279 | `result-track:88443ea49330928aba794cc140f0befbfe8841d280c5e1a57a7914a1049f57e1` |
| 32 | `structure` | [CompleteBooleanSplit](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderLE.lean/declarations/completebooleansplit.md) | 288 | `declaration-track:1285d06be79df5300311f7d1cf3d78eb2c5a2bde05d8b810d5481727a5167c50` |
| 33 | `theorem` | [zero_resolves_one](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderLE.lean/declarations/zero-resolves-one.md) | 310 | `result-track:5d77d29d8db702243534eb004b1e9335414d6bc9413f8f925b67536df302bd89` |
| 34 | `theorem` | [one_resolves_one](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderLE.lean/declarations/one-resolves-one.md) | 323 | `result-track:5a5751ff7cc769afc5e8df0c6491cb5723a2d11bf61825e12bb78e5c890556e8` |
| 35 | `theorem` | [siblings_equal_elsewhere](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderLE.lean/declarations/siblings-equal-elsewhere.md) | 336 | `result-track:022a09ad8f87a4dd46e3598282b7ca59a6c4c61bfb0a9d9bfa4d991d588e3692` |
| 36 | `theorem` | [siblings_differ_exactly_once](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrderLE.lean/declarations/siblings-differ-exactly-once.md) | 349 | `result-track:e364fc324bed8ee5e2bf87712dcdd2e857840e329b389014657bda64d24d11af` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=3befbb4d8a679f1a9bcfd52821b10daf67a93c3da8bda132c2e37ba81ca21318 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/Order/Variantb640925c899cb1afa94317e871d7088d09d8103609052efa491db98bd9f745bb.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/Order/Variantb640925c899cb1afa94317e871d7088d09d8103609052efa491db98bd9f745bb.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
