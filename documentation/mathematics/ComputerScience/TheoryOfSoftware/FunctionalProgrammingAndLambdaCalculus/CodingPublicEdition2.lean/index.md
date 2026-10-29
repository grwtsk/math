# Coding Public Edition2

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**62 observed declarations and anonymous commands**, 33 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Coding/Variante7d8e197272b2fcc57773f0ac863f6ad72de1baaf76654bde24a650bc014ecbd.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a9897a2d9a26145acd7c939f1b105c172c3190cf`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/CodingPublicEdition2.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [encodeEmpty](declarations/encodeempty.md) | 30 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [decodeEmpty](declarations/decodeempty.md) | 33 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [encodeEmpty_decodeEmpty](declarations/encodeempty-decodeempty.md) | 35 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [decodeEmpty_encodeEmpty](declarations/decodeempty-encodeempty.md) | 37 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [encodePUnit](declarations/encodepunit.md) | 41 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [decodePUnit](declarations/decodepunit.md) | 45 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `abbrev` | [encodeUnit](declarations/encodeunit.md) | 49 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `abbrev` | [decodeUnit](declarations/decodeunit.md) | 52 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [encodePUnit_decodePUnit](declarations/encodepunit-decodepunit.md) | 54 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [decodePUnit_encodePUnit](declarations/decodepunit-encodepunit.md) | 57 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [encodeBool](declarations/encodebool.md) | 61 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [decodeBool](declarations/decodebool.md) | 66 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [encodeBool_decodeBool](declarations/encodebool-decodebool.md) | 70 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [decodeBool_encodeBool](declarations/decodebool-encodebool.md) | 73 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [encodeOrdering](declarations/encodeordering.md) | 77 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [decodeOrdering](declarations/decodeordering.md) | 83 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [encodeOrdering_decodeOrdering](declarations/encodeordering-decodeordering.md) | 88 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [decodeOrdering_encodeOrdering](declarations/decodeordering-encodeordering.md) | 91 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [encodeChar](declarations/encodechar.md) | 96 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `def` | [decodeChar](declarations/decodechar.md) | 103 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [encodeChar_decodeChar](declarations/encodechar-decodechar.md) | 109 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [decodeChar_encodeChar](declarations/decodechar-encodechar.md) | 116 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `def` | [encodeOption](declarations/encodeoption.md) | 126 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `def` | [decodeOption](declarations/decodeoption.md) | 131 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [encodeOption_decodeOption](declarations/encodeoption-decodeoption.md) | 135 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [decodeOption_encodeOption](declarations/decodeoption-encodeoption.md) | 147 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `def` | [encodeSum](declarations/encodesum.md) | 161 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `def` | [decodeSum](declarations/decodesum.md) | 166 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [encodeSum_decodeSum](declarations/encodesum-decodesum.md) | 169 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [decodeSum_encodeSum](declarations/decodesum-encodesum.md) | 174 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `def` | [encodeProd](declarations/encodeprod.md) | 180 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `def` | [decodeProd](declarations/decodeprod.md) | 184 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [encodeProd_decodeProd](declarations/encodeprod-decodeprod.md) | 187 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [decodeProd_encodeProd](declarations/decodeprod-encodeprod.md) | 190 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `def` | [encodeSigma](declarations/encodesigma.md) | 194 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `def` | [decodeSigma](declarations/decodesigma.md) | 203 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [encodeSigma_decodeSigma](declarations/encodesigma-decodesigma.md) | 214 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [decodeSigma_encodeSigma](declarations/decodesigma-encodesigma.md) | 230 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `def` | [encodeFun](declarations/encodefun.md) | 257 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `def` | [decodeFun](declarations/decodefun.md) | 267 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [encodeFun_decodeFun](declarations/encodefun-decodefun.md) | 277 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [decodeFun_encodeFun](declarations/decodefun-encodefun.md) | 282 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `def` | [encodePi](declarations/encodepi.md) | 295 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `def` | [decodePi](declarations/decodepi.md) | 307 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [encodePi_decodePi](declarations/encodepi-decodepi.md) | 320 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [decodePi_encodePi](declarations/decodepi-encodepi.md) | 333 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `def` | [encodeSubtype](declarations/encodesubtype.md) | 350 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `def` | [decodeSubtype](declarations/decodesubtype.md) | 369 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [encodeSubtype_zero_pos](declarations/encodesubtype-zero-pos.md) | 387 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [encodeSubtype_succ_pos](declarations/encodesubtype-succ-pos.md) | 391 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [encodeSubtype_succ_neg](declarations/encodesubtype-succ-neg.md) | 396 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [encodeSubtype_decodeSubtype](declarations/encodesubtype-decodesubtype.md) | 402 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [decodeSubtype_encodeSubtype](declarations/decodesubtype-encodesubtype.md) | 412 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `abbrev` | [getRepr](declarations/getrepr.md) | 439 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `theorem` | [equiv_getRepr](declarations/equiv-getrepr.md) | 450 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `theorem` | [getRepr_equiv](declarations/getrepr-equiv.md) | 462 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `theorem` | [getRepr_eq_getRepr_of_equiv](declarations/getrepr-eq-getrepr-of-equiv.md) | 465 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `theorem` | [getRepr_getRepr](declarations/getrepr-getrepr.md) | 492 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `def` | [encodeQuotient](declarations/encodequotient.md) | 498 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `def` | [decodeQuotient](declarations/decodequotient.md) | 506 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `theorem` | [encodeQuotient_decodeQuotient](declarations/encodequotient-decodequotient.md) | 510 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `theorem` | [decodeQuotient_encodeQuotient](declarations/decodequotient-encodequotient.md) | 517 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ffc823a4d26f61339d50565e61e3c88ce725c270469cc7b9ff94541b790fc205 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Coding/Variante7d8e197272b2fcc57773f0ac863f6ad72de1baaf76654bde24a650bc014ecbd.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
