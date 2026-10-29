# Verification target: Birthday

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fb057afddd5cdd4e8841a02f56457f9268f9fadb",
  "lexical_observation_count": 34,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Birthday/Variantc5dec3cd80c739a71f07378337988d37635868023857ac4c8b86d40ac50fe168.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MathematicalLogicAndFoundations/SetTheory/Birthday.lean/index.md) · [Full source](../../../../../MathematicalLogicAndFoundations/SetTheory/Birthday.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fb057afddd5cdd4e8841a02f56457f9268f9fadb`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Birthday/Variantc5dec3cd80c739a71f07378337988d37635868023857ac4c8b86d40ac50fe168.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/SetTheory/Birthday/Variantc5dec3cd80c739a71f07378337988d37635868023857ac4c8b86d40ac50fe168.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Group.OrderIso` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.SetTheory.Game.Ordinal` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.SetTheory.Ordinal.NaturalOps` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [birthday](../../../../../MathematicalLogicAndFoundations/SetTheory/Birthday.lean/declarations/birthday.md) | 45 | `declaration-track:10048db3aedb139412af6a1f33d8503ca7ad98577adae3cac3950fb867378493` |
| 2 | `theorem` | [birthday_def](../../../../../MathematicalLogicAndFoundations/SetTheory/Birthday.lean/declarations/birthday-def.md) | 49 | `result-track:ec346d9f48cb4f296383be83ffcd5daea2f272b5b26532d49555b2779058d9d5` |
| 3 | `theorem` | [birthday_moveLeft_lt](../../../../../MathematicalLogicAndFoundations/SetTheory/Birthday.lean/declarations/birthday-moveleft-lt.md) | 55 | `result-track:ff2ff80a057c6b2b09d6862be7babc0ed84dd837f3e7d2691c375936a544451e` |
| 4 | `theorem` | [birthday_moveRight_lt](../../../../../MathematicalLogicAndFoundations/SetTheory/Birthday.lean/declarations/birthday-moveright-lt.md) | 59 | `result-track:e6a55eee0d1e10cc2c6988b274b0a06aca49d5a54895b904bcc2caf3870939c4` |
| 5 | `theorem` | [lt_birthday_iff](../../../../../MathematicalLogicAndFoundations/SetTheory/Birthday.lean/declarations/lt-birthday-iff.md) | 63 | `result-track:22948a5925e730bd9cc22dd05af7c8c873d8dc1e1ae1d034bc7a87fedc184818` |
| 6 | `theorem` | [Relabelling.birthday_congr](../../../../../MathematicalLogicAndFoundations/SetTheory/Birthday.lean/declarations/relabelling-birthday-congr.md) | 79 | `result-track:bf5ef8f418ff8a84039485011c784dfb1d439f1952ef4fb84be7055a9f7332e7` |
| 7 | `theorem` | [birthday_eq_zero](../../../../../MathematicalLogicAndFoundations/SetTheory/Birthday.lean/declarations/birthday-eq-zero-source-edition-2.md) | 93 | `result-track:f4fe9a41fb4b17203bf297f65c1f023aa8c2e0d54715d7d739d33d61aebfa9af` |
| 8 | `theorem` | [birthday_zero](../../../../../MathematicalLogicAndFoundations/SetTheory/Birthday.lean/declarations/birthday-zero.md) | 98 | `result-track:2216505f47aca84602517a6e5922eefcbfc79d2b4f7022dd2e6dc93154948cf8` |
| 9 | `theorem` | [birthday_one](../../../../../MathematicalLogicAndFoundations/SetTheory/Birthday.lean/declarations/birthday-one.md) | 101 | `result-track:184e95eea1a3ac6734dd52e356cebb5cdbfe3ff8d4ed1d272b409723fcb51be6` |
| 10 | `theorem` | [birthday_star](../../../../../MathematicalLogicAndFoundations/SetTheory/Birthday.lean/declarations/birthday-star.md) | 104 | `result-track:044a28fa6071b59c9faa454179fe7f6fbb16f3a1e8ef6c955a7a37b63d3c8b40` |
| 11 | `theorem` | [birthday_neg](../../../../../MathematicalLogicAndFoundations/SetTheory/Birthday.lean/declarations/birthday-neg-source-edition-3.md) | 107 | `result-track:c2995f25c27d91937e8b4b55e13aedae32068c85cc5a5ef28a639ab6ca7113de` |
| 12 | `theorem` | [birthday_ordinalToPGame](../../../../../MathematicalLogicAndFoundations/SetTheory/Birthday.lean/declarations/birthday-ordinaltopgame.md) | 113 | `result-track:c83e83b7e802228515c43f1ef31eb219dc93b0599e161bfb46a2e7345db7b47b` |
| 13 | `theorem` | [le_birthday](../../../../../MathematicalLogicAndFoundations/SetTheory/Birthday.lean/declarations/le-birthday-source-edition-2.md) | 121 | `result-track:c70deac86fa3eed3340873f9d8dbea5e405a50fd1868458d65a312b9a5c5ae5d` |
| 14 | `theorem` | [neg_birthday_le](../../../../../MathematicalLogicAndFoundations/SetTheory/Birthday.lean/declarations/neg-birthday-le-source-edition-2.md) | 130 | `result-track:c3d19d339349798bd3cf5de9c1c7f7c93aec3973090ee1074fd51736857ff3ef` |
| 15 | `theorem` | [birthday_add](../../../../../MathematicalLogicAndFoundations/SetTheory/Birthday.lean/declarations/birthday-add.md) | 134 | `result-track:21a868a25b63fd648ebe2f2c2e8b92d972f56ae06f74a6e3ee542be8463c2e3d` |
| 16 | `theorem` | [birthday_sub](../../../../../MathematicalLogicAndFoundations/SetTheory/Birthday.lean/declarations/birthday-sub.md) | 163 | `result-track:d26e8ed6e78b74ec3cecb2495efd9b7929a09a3f53d5905dbdaee201a79d8ba8` |
| 17 | `theorem` | [birthday_natCast](../../../../../MathematicalLogicAndFoundations/SetTheory/Birthday.lean/declarations/birthday-natcast.md) | 168 | `result-track:18b8c7aa0b2150041f433fea9c4df5e231c13f33caa4f08677ec662db7a1e361` |
| 18 | `def` | [birthday](../../../../../MathematicalLogicAndFoundations/SetTheory/Birthday.lean/declarations/birthday-source-edition-2.md) | 177 | `declaration-track:5567c96291e05d76f11e136310999bf2dae7cd0e0ae52a2d3a0bb5e23c07a26c` |
| 19 | `theorem` | [birthday_eq_pGameBirthday](../../../../../MathematicalLogicAndFoundations/SetTheory/Birthday.lean/declarations/birthday-eq-pgamebirthday.md) | 180 | `result-track:8d915a0635d2860f61870429421f3560bef48f0f673fbe2a33341a47033b100c` |
| 20 | `theorem` | [birthday_quot_le_pGameBirthday](../../../../../MathematicalLogicAndFoundations/SetTheory/Birthday.lean/declarations/birthday-quot-le-pgamebirthday.md) | 185 | `result-track:a11bdb86b2e01aca62e90fedcc6361665a389b54a2bc26576222eae278a19866` |
| 21 | `theorem` | [birthday_zero](../../../../../MathematicalLogicAndFoundations/SetTheory/Birthday.lean/declarations/birthday-zero-source-edition-2.md) | 189 | `result-track:8e0445679c7faafaeaafaea3d959b5604d60682934ee0af75b704dded0fcaf6a` |
| 22 | `theorem` | [birthday_eq_zero](../../../../../MathematicalLogicAndFoundations/SetTheory/Birthday.lean/declarations/birthday-eq-zero.md) | 194 | `result-track:6540a5c25d1f5627c03c91ffbfe328f2bf3d0446af1fe3ebba9bfb86e6a15037` |
| 23 | `theorem` | [birthday_ordinalToGame](../../../../../MathematicalLogicAndFoundations/SetTheory/Birthday.lean/declarations/birthday-ordinaltogame.md) | 205 | `result-track:230a6f257ae8bb435ff870f2e19c93d0d86a081458f421a966326830100cdb15` |
| 24 | `theorem` | [birthday_natCast](../../../../../MathematicalLogicAndFoundations/SetTheory/Birthday.lean/declarations/birthday-natcast-source-edition-2.md) | 215 | `result-track:b6ab0e8b484f422cd19b46168dd10b37f82b67e335da9780c12ca7165c13ec00` |
| 25 | `theorem` | [birthday_ofNat](../../../../../MathematicalLogicAndFoundations/SetTheory/Birthday.lean/declarations/birthday-ofnat.md) | 220 | `result-track:1133196f1310832e1b481be1d596dbe5cf42cee20830562b8e0c7d5ae04c91ef` |
| 26 | `theorem` | [birthday_one](../../../../../MathematicalLogicAndFoundations/SetTheory/Birthday.lean/declarations/birthday-one-source-edition-2.md) | 225 | `result-track:6ef98ad31fecaa90a4f748b90e0c04f738c742125dca7d3d63f5848a518113fc` |
| 27 | `theorem` | [birthday_star](../../../../../MathematicalLogicAndFoundations/SetTheory/Birthday.lean/declarations/birthday-star-source-edition-2.md) | 229 | `result-track:87aa4cedc794ae46f538b23b342e2d0c3db4e818052c64b970f3d4cd96d15977` |
| 28 | `theorem` | [birthday_neg'](../../../../../MathematicalLogicAndFoundations/SetTheory/Birthday.lean/declarations/birthday-neg.md) | 237 | `result-track:8370173ea6e09ed5056fb84008d3d328533673abeaea6428d12bc261b31cec02` |
| 29 | `theorem` | [birthday_neg](../../../../../MathematicalLogicAndFoundations/SetTheory/Birthday.lean/declarations/birthday-neg-source-edition-2.md) | 244 | `result-track:ab553d39bb5e31090aae0838b569da6938319f71e113e2209c3e722ed81d5257` |
| 30 | `theorem` | [le_birthday](../../../../../MathematicalLogicAndFoundations/SetTheory/Birthday.lean/declarations/le-birthday.md) | 249 | `result-track:ad192551ee58cfe5903364758f37d03e5a0b8990b7eb3cea38fa4b4ffb2d1248` |
| 31 | `theorem` | [neg_birthday_le](../../../../../MathematicalLogicAndFoundations/SetTheory/Birthday.lean/declarations/neg-birthday-le.md) | 255 | `result-track:3229c081a7d9ea4c9670433370a77dab6a1e42931c35c8660798d8f41ef5d45b` |
| 32 | `theorem` | [birthday_add_le](../../../../../MathematicalLogicAndFoundations/SetTheory/Birthday.lean/declarations/birthday-add-le.md) | 259 | `result-track:4c849c4fad5b41dd84be2b6109ec46e7603ba8983c1426f4701f9d75965cca3a` |
| 33 | `theorem` | [birthday_sub_le](../../../../../MathematicalLogicAndFoundations/SetTheory/Birthday.lean/declarations/birthday-sub-le.md) | 265 | `result-track:8279a77a82612b536aa3ce6be9d991b06449a75c2472635fda9c1d1866ae1e85` |
| 34 | `theorem` | [small_setOf_birthday_lt](../../../../../MathematicalLogicAndFoundations/SetTheory/Birthday.lean/declarations/small-setof-birthday-lt.md) | 273 | `result-track:e0a83597448fbb5d3c5a2f29a712b54c70c93748f1d808d7721e72710dd8b1e7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=93771f28bc9284ca1ed49cd200fc72cff8b6005b393e6044fcd613e822103938 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Birthday/Variantc5dec3cd80c739a71f07378337988d37635868023857ac4c8b86d40ac50fe168.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/SetTheory/Birthday/Variantc5dec3cd80c739a71f07378337988d37635868023857ac4c8b86d40ac50fe168.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
