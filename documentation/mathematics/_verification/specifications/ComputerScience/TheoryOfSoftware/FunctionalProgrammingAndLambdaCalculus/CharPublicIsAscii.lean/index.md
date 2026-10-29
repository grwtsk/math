# Verification target: Char Public Is Ascii

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c2c9c4dce8ec2a4d79c68eb968036be9422a07c9",
  "lexical_observation_count": 34,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Char/Variantaf44a48faa51dc574593c874fc4bf16c5d8fdc75d16fec76ef3320cbe6edb049.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/CharPublicIsAscii.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/CharPublicIsAscii.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c2c9c4dce8ec2a4d79c68eb968036be9422a07c9`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Char/Variantaf44a48faa51dc574593c874fc4bf16c5d8fdc75d16fec76ef3320cbe6edb049.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Char/Variantaf44a48faa51dc574593c874fc4bf16c5d8fdc75d16fec76ef3320cbe6edb049.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [isAscii](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/CharPublicIsAscii.lean/declarations/isascii.md) | 33 | `declaration-track:844598275bc1cd2080996f773c0d42d71d9c56f64e142a4f580dfa9e6a0536ad` |
| 2 | `def` | [isAsciiByte](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/CharPublicIsAscii.lean/declarations/isasciibyte.md) | 40 | `declaration-track:2fa33771b39f4e6e356ca3922a62a21d3ba204da6cec7055b394dfbc8e784e93` |
| 3 | `def` | [isDigitByte](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/CharPublicIsAscii.lean/declarations/isdigitbyte.md) | 47 | `declaration-track:196136f3d80e6bfafdc67cd7e20fc5d1b26a55fcec406f5d3f1fb87950396a00` |
| 4 | `def` | [isAlphaByte](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/CharPublicIsAscii.lean/declarations/isalphabyte.md) | 54 | `declaration-track:b38ce8e1e5bbb766c7ad9e181788074bd9bae9b500c4717a3f0a0204a4431ccc` |
| 5 | `def` | [tchar](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/CharPublicIsAscii.lean/declarations/tchar.md) | 64 | `declaration-track:d943cf14a0e0875fcbb1979092e007faca3163de3035fe6e96423cc87a31237e` |
| 6 | `def` | [vchar](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/CharPublicIsAscii.lean/declarations/vchar.md) | 74 | `declaration-track:3bfb9a37e262497242ce21b36065b85554b3c3aafe0df95a567a60fdf9119a84` |
| 7 | `def` | [qdtext](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/CharPublicIsAscii.lean/declarations/qdtext.md) | 82 | `declaration-track:5891c0a0e5543fbe587a787ed212a616d03e906c7d0c04b7383477440cf47cb3` |
| 8 | `def` | [quotedPairChar](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/CharPublicIsAscii.lean/declarations/quotedpairchar.md) | 92 | `declaration-track:a142ac941c30c3e4bea2a17e1b70d8cec9d8c195307bf1c4c636505b0ae4f0bf` |
| 9 | `def` | [quotedStringChar](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/CharPublicIsAscii.lean/declarations/quotedstringchar.md) | 100 | `declaration-track:7eba62c3df396d5bd7798602e7deb8a138965695420026248e9f56c6296a27f2` |
| 10 | `theorem` | [quotedStringChar_lt_0x80](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/CharPublicIsAscii.lean/declarations/quotedstringchar-lt-0x80.md) | 103 | `result-track:94fc36bf8588081b3e03636c9bfa6d91732847d1a5a769d9a34f888846136546` |
| 11 | `theorem` | [not_quotedStringChar_ofNat_aux](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/CharPublicIsAscii.lean/declarations/not-quotedstringchar-ofnat-aux.md) | 108 | `result-track:f8b4a3b37a894a2ebf4e93a557b2c4a045acb0e5aadc315e91283dbfb4e0180c` |
| 12 | `theorem` | [not_quotedStringChar_of_not_qdtext_not_dquote_backslash](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/CharPublicIsAscii.lean/declarations/not-quotedstringchar-of-not-qdtext-not-dquote-backslash.md) | 113 | `result-track:2cc808346562a641a0c09923b2dac1fa73eca0180f6c21e5af3c8bd46e2dab83` |
| 13 | `def` | [fieldVchar](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/CharPublicIsAscii.lean/declarations/fieldvchar.md) | 126 | `declaration-track:6134463a3bec7a78937d6a65b851b2c0adbdc541ca3daec73d27f0a73f8d6014` |
| 14 | `def` | [fieldContent](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/CharPublicIsAscii.lean/declarations/fieldcontent.md) | 135 | `declaration-track:b849b0a9c79fad9932d425a410f306013bca78f3605be9fb078638d21c12dfad` |
| 15 | `def` | [ctext](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/CharPublicIsAscii.lean/declarations/ctext.md) | 143 | `declaration-track:aa15791ab44516f1ae244a44d609acee986e62f5e9d4140ae2200543ec6248cd` |
| 16 | `def` | [etagc](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/CharPublicIsAscii.lean/declarations/etagc.md) | 154 | `declaration-track:ff6f1a67c77405ba37b6c7ad3f4d551bf9a8005497f37ab1aa30665f07a02e2d` |
| 17 | `def` | [ows](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/CharPublicIsAscii.lean/declarations/ows.md) | 161 | `declaration-track:d9747fc4ea247ed513ed4c09891453fb67be541da7108476613fb600d387c555` |
| 18 | `def` | [bws](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/CharPublicIsAscii.lean/declarations/bws.md) | 168 | `declaration-track:d096393bcd648b34415ca03ab155d5529bb32a92c26637128bd249337462e579` |
| 19 | `def` | [rws](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/CharPublicIsAscii.lean/declarations/rws.md) | 175 | `declaration-track:5177405aea9d1fba251d84525242a4edf8d9b9f1ba97de66cecffba953942b61` |
| 20 | `def` | [obsText](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/CharPublicIsAscii.lean/declarations/obstext.md) | 182 | `declaration-track:f8bac9d7066cdd096aa005793ee8f798f05b77a92d102c51025f006fb91cca38` |
| 21 | `def` | [reasonPhraseChar](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/CharPublicIsAscii.lean/declarations/reasonphrasechar.md) | 193 | `declaration-track:ff65ff086e3162ce67622488b7ad050234c34e6773e684a0990709ba41ec2655` |
| 22 | `def` | [isHexDigit](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/CharPublicIsAscii.lean/declarations/ishexdigit.md) | 200 | `declaration-track:01248c9954a791a546969b2486c3dc6fc8d8d44cc4551315cd82a08fdcd26c22` |
| 23 | `def` | [isHexDigitByte](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/CharPublicIsAscii.lean/declarations/ishexdigitbyte.md) | 208 | `declaration-track:5821b344741fa0e38a6eb0269606de6b7e16a6d184dce900187ec07587536851` |
| 24 | `def` | [isAlphaNum](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/CharPublicIsAscii.lean/declarations/isalphanum.md) | 217 | `declaration-track:436ccaf61d0a1ff28654a1ded443dc86b6bc8a28fc275eb862b1b6c076978a31` |
| 25 | `def` | [isAsciiAlphaNumChar](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/CharPublicIsAscii.lean/declarations/isasciialphanumchar.md) | 226 | `declaration-track:c6233756cc335b964660a0a38dfd40f45b15da576199a28b75d00bc6bb624088` |
| 26 | `def` | [isValidSchemeChar](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/CharPublicIsAscii.lean/declarations/isvalidschemechar.md) | 234 | `declaration-track:e9fc96812561e45df3f91e5ecbb50f49c7e4fde20fd7c4c67d8d84c02fe68041` |
| 27 | `def` | [isValidDomainNameChar](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/CharPublicIsAscii.lean/declarations/isvaliddomainnamechar.md) | 242 | `declaration-track:5765b3e849825cb0e351b9c60a66e59a50b015208e25503154bb16bddc72fbec` |
| 28 | `def` | [isUnreserved](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/CharPublicIsAscii.lean/declarations/isunreserved.md) | 250 | `declaration-track:9ee8557d12ddfc6f3da2316aaf66ff4ce502a9dcaab70a1446a588c8e7bd03f7` |
| 29 | `def` | [isSubDelims](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/CharPublicIsAscii.lean/declarations/issubdelims.md) | 259 | `declaration-track:db0faafec5d888a1d14381caa32536701222a790d6f9316aef5edfd230fd4f13` |
| 30 | `def` | [isPChar](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/CharPublicIsAscii.lean/declarations/ispchar.md) | 272 | `declaration-track:5a9f62a1df9ad1b2d3bc782730b3dbd425f77b2af0fa905d929793118741d8d5` |
| 31 | `def` | [isQueryChar](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/CharPublicIsAscii.lean/declarations/isquerychar.md) | 280 | `declaration-track:a24dbcb9f12fa7494ece36a20370ef67a661bb7b42cd1331f9fbf4078c94fa68` |
| 32 | `def` | [isFragmentChar](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/CharPublicIsAscii.lean/declarations/isfragmentchar.md) | 288 | `declaration-track:9c366cce374704b24b118b85e202ea386e5fb99eb3393ba5086a80aff794fde1` |
| 33 | `def` | [isUserInfoChar](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/CharPublicIsAscii.lean/declarations/isuserinfochar.md) | 299 | `declaration-track:38e7d9428e0bf79a0a953914792dbe55efff3b10cf6a7c4bc4f41707ae02ffc9` |
| 34 | `def` | [isQueryDataChar](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/CharPublicIsAscii.lean/declarations/isquerydatachar.md) | 310 | `declaration-track:12bf1399890cbcebd93c0a4b713c75ae3f4299907a9e56af2ebb0a4d9b18dcf3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=77c8d6d313b29260f0c0e9fa61b73e4cf85f9fd2741375aa7e48905b9f87de19 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Char/Variantaf44a48faa51dc574593c874fc4bf16c5d8fdc75d16fec76ef3320cbe6edb049.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Char/Variantaf44a48faa51dc574593c874fc4bf16c5d8fdc75d16fec76ef3320cbe6edb049.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
