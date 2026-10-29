# Basic Basic Public Json Number

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../../../../complete-source-index.md) · [Full source](source.md)

**51 observed declarations and anonymous commands**, 0 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantdfe38b8619e59447e2ddfd798f0590c55c8e40471c5ee80deb59ab944445569e.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1a35e52405576dccea0837fc1187c0a3dd8db77a`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/BasicBasicPublicJsonNumber.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `structure` | [JsonNumber](declarations/jsonnumber.md) | 25 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [fromNat](declarations/fromnat.md) | 32 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [fromInt](declarations/fromint.md) | 33 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `instance` | [(anonymous)](declarations/instance-source-edition-4.md) | 35 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `instance` | [(anonymous)](declarations/instance-source-edition-9.md) | 36 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `instance` | [(anonymous)](declarations/instance-source-edition-19.md) | 37 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [countDigits](declarations/countdigits.md) | 39 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [normalize](declarations/normalize.md) | 48 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [lt](declarations/lt.md) | 64 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `instance` | [ltProp](declarations/ltprop.md) | 88 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `instance` | [(anonymous)](declarations/instance-source-edition-13.md) | 91 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `instance` | [(anonymous)](declarations/instance-source-edition-6.md) | 94 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [toString](declarations/tostring.md) | 100 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [shiftl](declarations/shiftl.md) | 125 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [shiftr](declarations/shiftr.md) | 132 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `instance` | [(anonymous)](declarations/instance.md) | 135 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `instance` | [(anonymous)](declarations/instance-source-edition-14.md) | 137 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `instance` | [(anonymous)](declarations/instance-source-edition-15.md) | 140 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `instance` | [(anonymous)](declarations/instance-source-edition-18.md) | 147 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `instance` | [(anonymous)](declarations/instance-source-edition-17.md) | 150 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `def` | [toFloat](declarations/tofloat.md) | 152 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [fromPositiveFloat!](declarations/frompositivefloat.md) | 158 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `def` | [fromFloat?](declarations/fromfloat.md) | 165 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `def` | [strLt](declarations/strlt.md) | 178 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `inductive` | [Json](declarations/json.md) | 180 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `def` | [beq'](declarations/beq.md) | 191 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `instance` | [(anonymous)](declarations/instance-source-edition-7.md) | 209 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `def` | [hash'](declarations/hash.md) | 212 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `instance` | [(anonymous)](declarations/instance-source-edition-11.md) | 222 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `def` | [mkObj](declarations/mkobj.md) | 225 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `instance` | [(anonymous)](declarations/instance-source-edition-10.md) | 228 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `instance` | [(anonymous)](declarations/instance-source-edition-3.md) | 229 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `instance` | [(anonymous)](declarations/instance-source-edition-16.md) | 230 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `instance` | [(anonymous)](declarations/instance-source-edition-5.md) | 231 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 232 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `def` | [isNull](declarations/isnull.md) | 234 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `def` | [getObj?](declarations/getobj.md) | 238 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `def` | [getArr?](declarations/getarr.md) | 242 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `def` | [getStr?](declarations/getstr.md) | 246 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `def` | [getNat?](declarations/getnat.md) | 250 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `def` | [getInt?](declarations/getint.md) | 254 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `def` | [getBool?](declarations/getbool.md) | 258 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `def` | [getNum?](declarations/getnum.md) | 262 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `def` | [getObjVal?](declarations/getobjval.md) | 266 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `def` | [getArrVal?](declarations/getarrval.md) | 273 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `def` | [getObjValD](declarations/getobjvald.md) | 280 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `def` | [setObjVal!](declarations/setobjval.md) | 283 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `def` | [mergeObj](declarations/mergeobj.md) | 290 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `inductive` | [Structured](declarations/structured.md) | 295 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `instance` | [(anonymous)](declarations/instance-source-edition-12.md) | 299 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `instance` | [(anonymous)](declarations/instance-source-edition-8.md) | 300 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=383753c34f5b591df2dcfc8620b2d20a540b12d74fd190e4c3e94c63033db11e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantdfe38b8619e59447e2ddfd798f0590c55c8e40471c5ee80deb59ab944445569e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
