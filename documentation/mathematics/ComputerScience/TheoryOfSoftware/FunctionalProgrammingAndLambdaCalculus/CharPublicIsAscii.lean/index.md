# Char Public Is Ascii

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../../../complete-source-index.md) · [Full source](source.md)

**34 observed declarations and anonymous commands**, 3 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Char/Variantaf44a48faa51dc574593c874fc4bf16c5d8fdc75d16fec76ef3320cbe6edb049.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c2c9c4dce8ec2a4d79c68eb968036be9422a07c9`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/CharPublicIsAscii.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [isAscii](declarations/isascii.md) | 33 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [isAsciiByte](declarations/isasciibyte.md) | 40 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [isDigitByte](declarations/isdigitbyte.md) | 47 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [isAlphaByte](declarations/isalphabyte.md) | 54 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [tchar](declarations/tchar.md) | 64 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [vchar](declarations/vchar.md) | 74 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [qdtext](declarations/qdtext.md) | 82 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [quotedPairChar](declarations/quotedpairchar.md) | 92 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [quotedStringChar](declarations/quotedstringchar.md) | 100 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [quotedStringChar_lt_0x80](declarations/quotedstringchar-lt-0x80.md) | 103 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [not_quotedStringChar_ofNat_aux](declarations/not-quotedstringchar-ofnat-aux.md) | 108 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [not_quotedStringChar_of_not_qdtext_not_dquote_backslash](declarations/not-quotedstringchar-of-not-qdtext-not-dquote-backslash.md) | 113 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [fieldVchar](declarations/fieldvchar.md) | 126 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [fieldContent](declarations/fieldcontent.md) | 135 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [ctext](declarations/ctext.md) | 143 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [etagc](declarations/etagc.md) | 154 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [ows](declarations/ows.md) | 161 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [bws](declarations/bws.md) | 168 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [rws](declarations/rws.md) | 175 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `def` | [obsText](declarations/obstext.md) | 182 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `def` | [reasonPhraseChar](declarations/reasonphrasechar.md) | 193 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [isHexDigit](declarations/ishexdigit.md) | 200 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `def` | [isHexDigitByte](declarations/ishexdigitbyte.md) | 208 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `def` | [isAlphaNum](declarations/isalphanum.md) | 217 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `def` | [isAsciiAlphaNumChar](declarations/isasciialphanumchar.md) | 226 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `def` | [isValidSchemeChar](declarations/isvalidschemechar.md) | 234 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `def` | [isValidDomainNameChar](declarations/isvaliddomainnamechar.md) | 242 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `def` | [isUnreserved](declarations/isunreserved.md) | 250 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `def` | [isSubDelims](declarations/issubdelims.md) | 259 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `def` | [isPChar](declarations/ispchar.md) | 272 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `def` | [isQueryChar](declarations/isquerychar.md) | 280 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `def` | [isFragmentChar](declarations/isfragmentchar.md) | 288 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `def` | [isUserInfoChar](declarations/isuserinfochar.md) | 299 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `def` | [isQueryDataChar](declarations/isquerydatachar.md) | 310 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=7cf9953b41145ed75115033d3bcc0121dca4a9671f0a5d25be1333816e05637e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Char/Variantaf44a48faa51dc574593c874fc4bf16c5d8fdc75d16fec76ef3320cbe6edb049.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
