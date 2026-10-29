# Verification target: Lemmas Lemmas Public Eq Of Val Eq

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "28bb3e05f4e132d207bf2e3f83776333fdf89bdc",
  "lexical_observation_count": 33,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variantc50ecfb9deb48c569ca9ed98c28e480f6633282e15f36a2632f3736556e83ce2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LemmasLemmasPublicEqOfValEq.lean/index.md) · [Full source](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LemmasLemmasPublicEqOfValEq.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `28bb3e05f4e132d207bf2e3f83776333fdf89bdc`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variantc50ecfb9deb48c569ca9ed98c28e480f6633282e15f36a2632f3736556e83ce2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variantc50ecfb9deb48c569ca9ed98c28e480f6633282e15f36a2632f3736556e83ce2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.UInt.Lemmas` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [eq_of_val_eq](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LemmasLemmasPublicEqOfValEq.lean/declarations/eq-of-val-eq.md) | 19 | `result-track:517855a94cada8304fba47a05e8beee4516307afc9801e4aec2b01eff73f1b1f` |
| 2 | `theorem` | [le_def](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LemmasLemmasPublicEqOfValEq.lean/declarations/le-def.md) | 22 | `result-track:12385595a07436c84e85d34ac0018c652c59cd7828696e46b982c7f6283667c5` |
| 3 | `theorem` | [lt_def](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LemmasLemmasPublicEqOfValEq.lean/declarations/lt-def.md) | 23 | `result-track:2f592cfcfce1bfe974bbbe2b08f593e942862f7dfedaf8eb52f6a1936f18566f` |
| 4 | `theorem` | [lt_iff_val_lt_val](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LemmasLemmasPublicEqOfValEq.lean/declarations/lt-iff-val-lt-val.md) | 26 | `result-track:b6dfaea3acbb0f49d327e0872527d3381dad6f073cf0908ba2fc071f65bf9b6e` |
| 5 | `theorem` | [not_le](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LemmasLemmasPublicEqOfValEq.lean/declarations/not-le.md) | 28 | `result-track:22661de17f8d622e9f450225f230072f72a2c9cc451feeb366af9a86cf9a84c7` |
| 6 | `theorem` | [not_lt](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LemmasLemmasPublicEqOfValEq.lean/declarations/not-lt.md) | 29 | `result-track:8d32b17f972525288e08fd067dc0efd662ee0a1da8ae7019cde81bd4da602952` |
| 7 | `theorem` | [le_refl](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LemmasLemmasPublicEqOfValEq.lean/declarations/le-refl.md) | 30 | `result-track:82c71bfe9799e0bf1a7fbd37f801015a91ad5256557dad24f989e9aa9fcb564e` |
| 8 | `theorem` | [lt_irrefl](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LemmasLemmasPublicEqOfValEq.lean/declarations/lt-irrefl.md) | 31 | `result-track:e625eed7852517d53033ba5021b6335f08cb048d2f3cfe54bde8b966a8e99c9f` |
| 9 | `theorem` | [le_trans](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LemmasLemmasPublicEqOfValEq.lean/declarations/le-trans.md) | 32 | `result-track:5a10765f4bf0c6865198e2694071676018467ed9afa3db2384a4510aa8822ae7` |
| 10 | `theorem` | [lt_trans](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LemmasLemmasPublicEqOfValEq.lean/declarations/lt-trans.md) | 33 | `result-track:3517dc9a5cce87472f66b727f00ef51a35537cb498180631545de235d83fd7ae` |
| 11 | `theorem` | [le_total](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LemmasLemmasPublicEqOfValEq.lean/declarations/le-total.md) | 34 | `result-track:ad864103ee8e0c2834af42cd7d50146d458a7058ec9e77697dd3579d25fd42e7` |
| 12 | `theorem` | [le_antisymm](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LemmasLemmasPublicEqOfValEq.lean/declarations/le-antisymm.md) | 35 | `result-track:90a410b2935116428e85172b66e38111f1b084e83563589e9a7f48c9d7e44c01` |
| 13 | `theorem` | [lt_asymm](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LemmasLemmasPublicEqOfValEq.lean/declarations/lt-asymm.md) | 37 | `result-track:f06c2597196e9f1c134b8f607d404916570ed12de1cf5de68dc9118fb757e929` |
| 14 | `theorem` | [ne_of_lt](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LemmasLemmasPublicEqOfValEq.lean/declarations/ne-of-lt.md) | 38 | `result-track:6f5fe393c6ceca1abc6abbf5a368585a387cc3063cbdd8ff8e68a1bdc07e2284` |
| 15 | `instance` | [ltIrrefl](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LemmasLemmasPublicEqOfValEq.lean/declarations/ltirrefl.md) | 40 | `declaration-track:3d010f68d7815bf0be06fa2e03a91c9b8e1f1da3b59dec3804b164248a012d1a` |
| 16 | `instance` | [leRefl](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LemmasLemmasPublicEqOfValEq.lean/declarations/lerefl.md) | 43 | `declaration-track:5befcab7ddd7921f5d4ecc23bdf0652c071bd14d7b7c8f26bf6d47ef7012d4ce` |
| 17 | `instance` | [leTrans](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LemmasLemmasPublicEqOfValEq.lean/declarations/letrans.md) | 46 | `declaration-track:032576f7f76c1c701b48c6dea13335fb1b12adf8db40d92796d78a8c5c3761c4` |
| 18 | `instance` | [ltTrans](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LemmasLemmasPublicEqOfValEq.lean/declarations/lttrans.md) | 49 | `declaration-track:11ce19dd495ecc7f157297aca848a47d1115c51e7f43954fb17db0cfd5a7a723` |
| 19 | `def` | [notLTTrans](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LemmasLemmasPublicEqOfValEq.lean/declarations/notlttrans.md) | 54 | `declaration-track:3ab12bf872f5eeeb758a9e39a1cbeee6f8ff574f0cb17f1a6a346d24a1e522b0` |
| 20 | `instance` | [leAntisymm](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LemmasLemmasPublicEqOfValEq.lean/declarations/leantisymm.md) | 57 | `declaration-track:02569faedf7296f7e563701245a500a80b051c96eee552d8998f82a3489aad9b` |
| 21 | `instance` | [ltTrichotomous](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LemmasLemmasPublicEqOfValEq.lean/declarations/lttrichotomous.md) | 61 | `declaration-track:742c9d4727e3efd87fcd19af6db602cdbcce7efbd0dcee857b252ddfea925dc2` |
| 22 | `theorem` | [notLTAntisymm](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LemmasLemmasPublicEqOfValEq.lean/declarations/notltantisymm.md) | 65 | `result-track:6bba516f4262c0eebd45894818914a4ee7653dd5441395570f1e60f8547a5fe7` |
| 23 | `instance` | [ltAsymm](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LemmasLemmasPublicEqOfValEq.lean/declarations/ltasymm.md) | 68 | `declaration-track:f36e23e9a53596b0b634350ff04f775cd17e4b226ffadd9f532db16ed54364e5` |
| 24 | `instance` | [leTotal](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LemmasLemmasPublicEqOfValEq.lean/declarations/letotal.md) | 71 | `declaration-track:1bcf8092d0594acb3617f2487f0042af8f56c574b6494e33d2cdcf7419aebbf2` |
| 25 | `theorem` | [notLTTotal](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LemmasLemmasPublicEqOfValEq.lean/declarations/notlttotal.md) | 76 | `result-track:d80ce641dd808262cab450a230412853a7682dd257250b4b6ca95c4d1abe1596` |
| 26 | `theorem` | [ofNat_toNat](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LemmasLemmasPublicEqOfValEq.lean/declarations/ofnat-tonat.md) | 79 | `result-track:07a2646286ac85722d082adb0ac6a05e084e22fb8b670ee92cd837146deb772a` |
| 27 | `theorem` | [toUInt8_val](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LemmasLemmasPublicEqOfValEq.lean/declarations/touint8-val.md) | 84 | `result-track:e139396630de718bc5817fccfdb7360f84c8c2c08b9a4f36401faa91d027f6de` |
| 28 | `theorem` | [toString_eq_singleton](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LemmasLemmasPublicEqOfValEq.lean/declarations/tostring-eq-singleton.md) | 87 | `result-track:22e6260feadbecea385e151068ba32fd9e25051ce33788686c966a99a987a744` |
| 29 | `theorem` | [toNat_val](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LemmasLemmasPublicEqOfValEq.lean/declarations/tonat-val.md) | 90 | `result-track:486d1e1bd78bdae391db06bb3f4ebf2becebacaeebd4174e1c4177005c3fcde3` |
| 30 | `theorem` | [val_inj](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LemmasLemmasPublicEqOfValEq.lean/declarations/val-inj.md) | 92 | `result-track:cf329280bbc412758c8d643bf2890c203c1f7228a8d7a194c48862ed78565e33` |
| 31 | `theorem` | [toNat_inj](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LemmasLemmasPublicEqOfValEq.lean/declarations/tonat-inj.md) | 95 | `result-track:0b14ffb596529e70ee2c2ffd8e5cabfa81e87ca05691e7d805cc7702a85f7503` |
| 32 | `theorem` | [isDigit_iff_toNat](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LemmasLemmasPublicEqOfValEq.lean/declarations/isdigit-iff-tonat.md) | 98 | `result-track:ac1a2d3fe62d87e422781d30ce21a53880097d7b7afedcdf2e504a6b3e5978e6` |
| 33 | `theorem` | [toNat_mk](../../../../../MathematicalLogicAndFoundations/GeneralLogic/LemmasLemmasPublicEqOfValEq.lean/declarations/tonat-mk.md) | 102 | `result-track:d47e5825d231bd0fac4f455e109b57203b9f71d299d38d7708b0b9a681e6bb0e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=8e41327dc9cb2c4f9e49965cc03937039c3726ab5eb4fd4960f52ad46f07ee9b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variantc50ecfb9deb48c569ca9ed98c28e480f6633282e15f36a2632f3736556e83ce2.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lemmas/Variantc50ecfb9deb48c569ca9ed98c28e480f6633282e15f36a2632f3736556e83ce2.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
