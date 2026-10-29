# Bounded Record Codec

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**46 observed declarations and anonymous commands**, 17 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/FoundationsLogicAndTypeTheory/Computability/RecursiveFunctions/BoundedRecordCodec.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0475194a1faaf84d4c388d6f15157838cc6f614a`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../_verification/specifications/MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/BoundedRecordCodec.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `abbrev` | [Bytes](declarations/bytes.md) | 6 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `inductive` | [Value](declarations/value.md) | 7 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [digits](declarations/digits.md) | 16 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [signed](declarations/signed.md) | 17 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [emit](declarations/emit.md) | 19 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [signed64](declarations/signed64.md) | 35 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [utf8](declarations/utf8.md) | 37 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [increasing](declarations/increasing.md) | 63 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [valueOK](declarations/valueok.md) | 68 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [asText](declarations/astext.md) | 90 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [nonempty](declarations/nonempty.md) | 91 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [hashRef](declarations/hashref.md) | 92 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [allArray](declarations/allarray.md) | 96 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [hasKeys](declarations/haskeys.md) | 97 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [binderOK](declarations/binderok.md) | 99 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [schema](declarations/schema.md) | 104 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `structure` | [Record](declarations/record.md) | 124 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [envelope](declarations/envelope.md) | 129 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [bytes](declarations/bytes-source-edition-2.md) | 130 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `def` | [Supported](declarations/supported.md) | 131 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `def` | [splitAt](declarations/splitat.md) | 134 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [unsigned](declarations/unsigned.md) | 137 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [unsigned_digits](declarations/unsigned-digits.md) | 141 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [digits_injective](declarations/digits-injective.md) | 155 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [splitAt_emit_suffix](declarations/splitat-emit-suffix.md) | 160 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [splitAt_reconstruct](declarations/splitat-reconstruct.md) | 164 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [no_trailing_reconstruction](declarations/no-trailing-reconstruction.md) | 171 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [unsupported_size](declarations/unsupported-size.md) | 174 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [supported_schema](declarations/supported-schema.md) | 179 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [zero_rational_noncanonical](declarations/zero-rational-noncanonical.md) | 181 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `def` | [readUntil](declarations/readuntil.md) | 184 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `def` | [readNat](declarations/readnat.md) | 190 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `def` | [integer](declarations/integer.md) | 195 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `def` | [readMany](declarations/readmany.md) | 204 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `def` | [readPairs](declarations/readpairs.md) | 211 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `def` | [parseValue](declarations/parsevalue.md) | 220 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `def` | [decode](declarations/decode.md) | 252 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [readUntil_suffix](declarations/readuntil-suffix.md) | 262 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [parse_true_suffix](declarations/parse-true-suffix.md) | 271 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [parse_false_suffix](declarations/parse-false-suffix.md) | 274 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [readMany_zero](declarations/readmany-zero.md) | 277 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [unique_decode](declarations/unique-decode.md) | 280 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [deterministic_rejection](declarations/deterministic-rejection.md) | 285 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [readNat_digits](declarations/readnat-digits.md) | 288 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [integer_signed](declarations/integer-signed.md) | 296 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [parse_text_suffix](declarations/parse-text-suffix.md) | 308 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=5d6489e21c7a339d1492d91a79f88ca13288437886c2877618a266d99632e7ba -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/Computability/RecursiveFunctions/BoundedRecordCodec.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
