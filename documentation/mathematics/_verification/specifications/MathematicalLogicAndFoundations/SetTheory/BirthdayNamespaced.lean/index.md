# Verification target: Birthday Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "22058a51d76ae73bde1c9752169418661b1751f9",
  "lexical_observation_count": 34,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Birthday/Variant1048301757faf543cf713942124189cae053d5164fe367cb18bbc5cc8dd45a10.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MathematicalLogicAndFoundations/SetTheory/BirthdayNamespaced.lean/index.md) · [Full source](../../../../../MathematicalLogicAndFoundations/SetTheory/BirthdayNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `22058a51d76ae73bde1c9752169418661b1751f9`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Birthday/Variant1048301757faf543cf713942124189cae053d5164fe367cb18bbc5cc8dd45a10.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/SetTheory/Birthday/Variant1048301757faf543cf713942124189cae053d5164fe367cb18bbc5cc8dd45a10.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Group.OrderIso` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.SetTheory.Game.Ordinal` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.SetTheory.Ordinal.NaturalOps` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [birthday](../../../../../MathematicalLogicAndFoundations/SetTheory/BirthdayNamespaced.lean/declarations/birthday.md) | 53 | `declaration-track:7fe28411eb3872004f8c58771fbb668a4af0dfefe7b5fe1150bb208d583eb946` |
| 2 | `theorem` | [birthday_def](../../../../../MathematicalLogicAndFoundations/SetTheory/BirthdayNamespaced.lean/declarations/birthday-def.md) | 57 | `result-track:33fce2a50ceaf7a83017ea43edbaf2450482f71a9f3ad6f2ef4e7b6ecbc8233e` |
| 3 | `theorem` | [birthday_moveLeft_lt](../../../../../MathematicalLogicAndFoundations/SetTheory/BirthdayNamespaced.lean/declarations/birthday-moveleft-lt.md) | 63 | `result-track:fa16c552d6705d57aa9e6b059e1ea1b22c1857eda3ddb267c8ed5390ab846697` |
| 4 | `theorem` | [birthday_moveRight_lt](../../../../../MathematicalLogicAndFoundations/SetTheory/BirthdayNamespaced.lean/declarations/birthday-moveright-lt.md) | 67 | `result-track:b311daa36804d2762273442b2374ecb789e05ca06b4779124920c43a8e4e2d82` |
| 5 | `theorem` | [lt_birthday_iff](../../../../../MathematicalLogicAndFoundations/SetTheory/BirthdayNamespaced.lean/declarations/lt-birthday-iff.md) | 71 | `result-track:2241fa5379ee8c2db534298887f8d1589fe52ba6d975b44d18cc1cef91f00d5b` |
| 6 | `theorem` | [Relabelling.birthday_congr](../../../../../MathematicalLogicAndFoundations/SetTheory/BirthdayNamespaced.lean/declarations/relabelling-birthday-congr.md) | 87 | `result-track:433fb84077b03e2f9c652eddbb7b0840e89e5f9cdb658a15781ada11451bd194` |
| 7 | `theorem` | [birthday_eq_zero](../../../../../MathematicalLogicAndFoundations/SetTheory/BirthdayNamespaced.lean/declarations/birthday-eq-zero-source-edition-2.md) | 101 | `result-track:f8d91ebf3f7fdc57fc46e266ee6189d46b36f69d64dfd17e61c603dc36012f6c` |
| 8 | `theorem` | [birthday_zero](../../../../../MathematicalLogicAndFoundations/SetTheory/BirthdayNamespaced.lean/declarations/birthday-zero.md) | 106 | `result-track:2deca348068d4f637076d25fd0cc4f7a2f5563f0d8cf4bb72954ff286be03216` |
| 9 | `theorem` | [birthday_one](../../../../../MathematicalLogicAndFoundations/SetTheory/BirthdayNamespaced.lean/declarations/birthday-one.md) | 109 | `result-track:5808680423b6206b03af8f750ee96663f2b95e5a3be2baf9f7f19c3dede96128` |
| 10 | `theorem` | [birthday_star](../../../../../MathematicalLogicAndFoundations/SetTheory/BirthdayNamespaced.lean/declarations/birthday-star.md) | 112 | `result-track:4b9caa612668a434e3e2a2d814394b63582f764c00a4452849d269360a580ac3` |
| 11 | `theorem` | [birthday_neg](../../../../../MathematicalLogicAndFoundations/SetTheory/BirthdayNamespaced.lean/declarations/birthday-neg.md) | 115 | `result-track:1d079f4947e0aef5db415b034b43fac4e5d554c10464c42e46de6246ab2951e5` |
| 12 | `theorem` | [birthday_ordinalToPGame](../../../../../MathematicalLogicAndFoundations/SetTheory/BirthdayNamespaced.lean/declarations/birthday-ordinaltopgame.md) | 121 | `result-track:1e408a0ac2f5329bb56efb23eb45eb9cf9e060b666f5b300524f6b201cfac980` |
| 13 | `theorem` | [le_birthday](../../../../../MathematicalLogicAndFoundations/SetTheory/BirthdayNamespaced.lean/declarations/le-birthday-source-edition-2.md) | 129 | `result-track:9713cd80962f1400b75aae91995a9f1905d60a524c45af2c0078c402ec9e11e2` |
| 14 | `theorem` | [neg_birthday_le](../../../../../MathematicalLogicAndFoundations/SetTheory/BirthdayNamespaced.lean/declarations/neg-birthday-le.md) | 138 | `result-track:aef89a30a0acde16428719374a2db1f4a51f6075f6cd34614f1fb78b26ea134b` |
| 15 | `theorem` | [birthday_add](../../../../../MathematicalLogicAndFoundations/SetTheory/BirthdayNamespaced.lean/declarations/birthday-add.md) | 142 | `result-track:afced43f2ecd58fa6e9a3873960b192b403d67c373ec0ac512da061a8efa9df1` |
| 16 | `theorem` | [birthday_sub](../../../../../MathematicalLogicAndFoundations/SetTheory/BirthdayNamespaced.lean/declarations/birthday-sub.md) | 171 | `result-track:d9a6545dae151ebf7adddf330bd6196fbed2b8cd7dbb3562f8fdee5559fa7489` |
| 17 | `theorem` | [birthday_natCast](../../../../../MathematicalLogicAndFoundations/SetTheory/BirthdayNamespaced.lean/declarations/birthday-natcast.md) | 176 | `result-track:0b14ee999c9d4b8c3b5cde6d92a81f53f7547a43f58fbcaf2cef2f8c40783c9e` |
| 18 | `def` | [birthday](../../../../../MathematicalLogicAndFoundations/SetTheory/BirthdayNamespaced.lean/declarations/birthday-source-edition-2.md) | 185 | `declaration-track:e5fee56f2a77a2dc071b232c6b4cec8784f9ff27a3930afcfd4a870a0a14c163` |
| 19 | `theorem` | [birthday_eq_pGameBirthday](../../../../../MathematicalLogicAndFoundations/SetTheory/BirthdayNamespaced.lean/declarations/birthday-eq-pgamebirthday.md) | 188 | `result-track:13ade5497ad44e7ef1dae3cda03aad31660c7eeda351b978b7e9a320d6cf2def` |
| 20 | `theorem` | [birthday_quot_le_pGameBirthday](../../../../../MathematicalLogicAndFoundations/SetTheory/BirthdayNamespaced.lean/declarations/birthday-quot-le-pgamebirthday.md) | 193 | `result-track:df90229ca569f6762da191168bc7a9b99683c398300b456331fb1ff2e43d9785` |
| 21 | `theorem` | [birthday_zero](../../../../../MathematicalLogicAndFoundations/SetTheory/BirthdayNamespaced.lean/declarations/birthday-zero-source-edition-2.md) | 197 | `result-track:36d3e1fb6a89fb170502947f3fcb95475cb0188c74c7e364e790cc568c80a3a5` |
| 22 | `theorem` | [birthday_eq_zero](../../../../../MathematicalLogicAndFoundations/SetTheory/BirthdayNamespaced.lean/declarations/birthday-eq-zero.md) | 202 | `result-track:4834183d165f2820c8a129c0dcf725bb994753b1a309b4ba9ef280c4d9ce1650` |
| 23 | `theorem` | [birthday_ordinalToGame](../../../../../MathematicalLogicAndFoundations/SetTheory/BirthdayNamespaced.lean/declarations/birthday-ordinaltogame.md) | 213 | `result-track:c513d3e57c10c35f4a030d8ad48f3393a6dd84e29ddb9433bd48fb71e0c89f76` |
| 24 | `theorem` | [birthday_natCast](../../../../../MathematicalLogicAndFoundations/SetTheory/BirthdayNamespaced.lean/declarations/birthday-natcast-source-edition-2.md) | 223 | `result-track:af223069b0c46b35769e17fce714396bac34d35665a22c000aaa28671c471849` |
| 25 | `theorem` | [birthday_ofNat](../../../../../MathematicalLogicAndFoundations/SetTheory/BirthdayNamespaced.lean/declarations/birthday-ofnat.md) | 228 | `result-track:9a03a990032cb1d46726db69888cc670b13d7201981cb6d565df715248473f7f` |
| 26 | `theorem` | [birthday_one](../../../../../MathematicalLogicAndFoundations/SetTheory/BirthdayNamespaced.lean/declarations/birthday-one-source-edition-2.md) | 233 | `result-track:95cf2e77a20481e6fcca2604fe880218a2a32ade3284f948d6e48d88535436ec` |
| 27 | `theorem` | [birthday_star](../../../../../MathematicalLogicAndFoundations/SetTheory/BirthdayNamespaced.lean/declarations/birthday-star-source-edition-2.md) | 237 | `result-track:f5e379030384d160a0d09ef1c74c2efd2871f0e174e5133dd0520cc4d3f60e78` |
| 28 | `theorem` | [birthday_neg'](../../../../../MathematicalLogicAndFoundations/SetTheory/BirthdayNamespaced.lean/declarations/birthday-neg-source-edition-3.md) | 245 | `result-track:fcb7f2971685ad453033fb048300c88ba25c15cd0f19bc7a9be5fce4af639b92` |
| 29 | `theorem` | [birthday_neg](../../../../../MathematicalLogicAndFoundations/SetTheory/BirthdayNamespaced.lean/declarations/birthday-neg-source-edition-2.md) | 252 | `result-track:c4cccf58785a7b1872ecdc3c81f8283e968878994b55f56defc59896a6363bb7` |
| 30 | `theorem` | [le_birthday](../../../../../MathematicalLogicAndFoundations/SetTheory/BirthdayNamespaced.lean/declarations/le-birthday.md) | 257 | `result-track:7ef686e6a3b20cb87813e69d3cb0f846042f842968c5ebbadd0ed28fab99f1d8` |
| 31 | `theorem` | [neg_birthday_le](../../../../../MathematicalLogicAndFoundations/SetTheory/BirthdayNamespaced.lean/declarations/neg-birthday-le-source-edition-2.md) | 263 | `result-track:b9377bf841c7255ac641b070df39de87eae26b055b40df8d06ed2e185e37f13b` |
| 32 | `theorem` | [birthday_add_le](../../../../../MathematicalLogicAndFoundations/SetTheory/BirthdayNamespaced.lean/declarations/birthday-add-le.md) | 267 | `result-track:ca835e99aab6e460401f383bdb7331b6c55019c8742fdfac4d604e5677ae8fd0` |
| 33 | `theorem` | [birthday_sub_le](../../../../../MathematicalLogicAndFoundations/SetTheory/BirthdayNamespaced.lean/declarations/birthday-sub-le.md) | 273 | `result-track:1e94acc0e16819ed8db4bcf9a7a4434f9eae10ce465ff98acbda344ecdbf29fc` |
| 34 | `theorem` | [small_setOf_birthday_lt](../../../../../MathematicalLogicAndFoundations/SetTheory/BirthdayNamespaced.lean/declarations/small-setof-birthday-lt.md) | 281 | `result-track:67f520fe924e7aa2f5316ca091555202c8f5041f23d602e25f7a51f916cde6bb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c22ddd0c966968c11d1a7b46c5bcb3898fb11915742e6b40f815d942aec67fdd -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Birthday/Variant1048301757faf543cf713942124189cae053d5164fe367cb18bbc5cc8dd45a10.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/SetTheory/Birthday/Variant1048301757faf543cf713942124189cae053d5164fe367cb18bbc5cc8dd45a10.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
