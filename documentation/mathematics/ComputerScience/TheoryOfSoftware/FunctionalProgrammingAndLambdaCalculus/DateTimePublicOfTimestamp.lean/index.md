# Date Time Public Of Timestamp

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../../../complete-source-index.md) · [Full source](source.md)

**81 observed declarations and anonymous commands**, 0 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DateTime/Variantff63475c368c38b8e73ceebba244f80355e1129810fd68d831d446788aebb8c2.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d165bc2d2448c2710b948c91faecec2e57d2982b`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/DateTimePublicOfTimestamp.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `structure` | [DateTime](declarations/datetime.md) | 22 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `instance` | [(anonymous)](declarations/instance-source-edition-3.md) | 45 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [ofTimestamp](declarations/oftimestamp.md) | 54 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [ofPlainDateTime](declarations/ofplaindatetime.md) | 63 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [ofTimestampWithZone](declarations/oftimestampwithzone.md) | 73 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [ofPlainDateTimeWithZone](declarations/ofplaindatetimewithzone.md) | 81 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [toTimestamp](declarations/totimestamp.md) | 88 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [convertZoneRules](declarations/convertzonerules.md) | 95 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [toPlainDateTime](declarations/toplaindatetime.md) | 102 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [time](declarations/time.md) | 109 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [year](declarations/year.md) | 116 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [month](declarations/month.md) | 123 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [day](declarations/day.md) | 130 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [hour](declarations/hour.md) | 137 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [minute](declarations/minute.md) | 144 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [second](declarations/second.md) | 151 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [millisecond](declarations/millisecond.md) | 158 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [nanosecond](declarations/nanosecond.md) | 165 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [offset](declarations/offset.md) | 172 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `def` | [weekday](declarations/weekday.md) | 179 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `def` | [dayOfYear](declarations/dayofyear.md) | 186 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [weekOfYear](declarations/weekofyear.md) | 194 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `def` | [weekYear](declarations/weekyear.md) | 203 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `def` | [alignedWeekOfMonth](declarations/alignedweekofmonth.md) | 210 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `def` | [weekOfMonth](declarations/weekofmonth.md) | 218 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `def` | [quarter](declarations/quarter.md) | 225 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `def` | [addDays](declarations/adddays.md) | 231 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `def` | [subDays](declarations/subdays.md) | 237 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `def` | [addWeeks](declarations/addweeks.md) | 243 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `def` | [subWeeks](declarations/subweeks.md) | 249 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `def` | [addMonthsClip](declarations/addmonthsclip.md) | 255 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `def` | [subMonthsClip](declarations/submonthsclip.md) | 261 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `def` | [addMonthsRollOver](declarations/addmonthsrollover.md) | 267 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `def` | [subMonthsRollOver](declarations/submonthsrollover.md) | 273 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `def` | [addYearsRollOver](declarations/addyearsrollover.md) | 279 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `def` | [addYearsClip](declarations/addyearsclip.md) | 285 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `def` | [subYearsClip](declarations/subyearsclip.md) | 291 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `def` | [subYearsRollOver](declarations/subyearsrollover.md) | 297 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `def` | [addHours](declarations/addhours.md) | 303 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `def` | [subHours](declarations/subhours.md) | 309 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `def` | [addMinutes](declarations/addminutes.md) | 314 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `def` | [subMinutes](declarations/subminutes.md) | 320 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `def` | [addMilliseconds](declarations/addmilliseconds.md) | 326 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `def` | [subMilliseconds](declarations/submilliseconds.md) | 333 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `def` | [addSeconds](declarations/addseconds.md) | 338 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `def` | [subSeconds](declarations/subseconds.md) | 344 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `def` | [addNanoseconds](declarations/addnanoseconds.md) | 349 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `def` | [subNanoseconds](declarations/subnanoseconds.md) | 355 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `def` | [era](declarations/era.md) | 361 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `def` | [withWeekday](declarations/withweekday.md) | 367 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `def` | [withDaysClip](declarations/withdaysclip.md) | 376 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `def` | [withDaysRollOver](declarations/withdaysrollover.md) | 385 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `def` | [withMonthClip](declarations/withmonthclip.md) | 394 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `def` | [withMonthRollOver](declarations/withmonthrollover.md) | 403 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `def` | [withYearClip](declarations/withyearclip.md) | 412 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `def` | [withYearRollOver](declarations/withyearrollover.md) | 422 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `def` | [withHours](declarations/withhours.md) | 430 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `def` | [withMinutes](declarations/withminutes.md) | 438 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `def` | [withSeconds](declarations/withseconds.md) | 446 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `def` | [withMilliseconds](declarations/withmilliseconds.md) | 455 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `def` | [withNanoseconds](declarations/withnanoseconds.md) | 463 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `def` | [inLeapYear](declarations/inleapyear.md) | 470 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `def` | [toEpochDay](declarations/toepochday.md) | 476 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `def` | [ofEpochDay](declarations/ofepochday.md) | 484 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `instance` | [(anonymous)](declarations/instance-source-edition-4.md) | 487 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `instance` | [(anonymous)](declarations/instance-source-edition-17.md) | 490 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `instance` | [(anonymous)](declarations/instance-source-edition-14.md) | 493 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `instance` | [(anonymous)](declarations/instance-source-edition-6.md) | 496 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `instance` | [(anonymous)](declarations/instance-source-edition-12.md) | 499 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `instance` | [(anonymous)](declarations/instance-source-edition-16.md) | 502 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `instance` | [(anonymous)](declarations/instance-source-edition-7.md) | 505 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 508 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `instance` | [(anonymous)](declarations/instance.md) | 511 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `instance` | [(anonymous)](declarations/instance-source-edition-13.md) | 514 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `instance` | [(anonymous)](declarations/instance-source-edition-11.md) | 517 | `BLOCKED_NATIVE_ADMISSION` |
| 76 | `instance` | [(anonymous)](declarations/instance-source-edition-8.md) | 520 | `BLOCKED_NATIVE_ADMISSION` |
| 77 | `instance` | [(anonymous)](declarations/instance-source-edition-10.md) | 523 | `BLOCKED_NATIVE_ADMISSION` |
| 78 | `instance` | [(anonymous)](declarations/instance-source-edition-9.md) | 526 | `BLOCKED_NATIVE_ADMISSION` |
| 79 | `instance` | [(anonymous)](declarations/instance-source-edition-18.md) | 529 | `BLOCKED_NATIVE_ADMISSION` |
| 80 | `instance` | [(anonymous)](declarations/instance-source-edition-5.md) | 532 | `BLOCKED_NATIVE_ADMISSION` |
| 81 | `instance` | [(anonymous)](declarations/instance-source-edition-15.md) | 535 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=cdffe926a6ec866722d5793fc15c0c13ab9d7e54ea85be4e2473b32e62df0e06 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DateTime/Variantff63475c368c38b8e73ceebba244f80355e1129810fd68d831d446788aebb8c2.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
