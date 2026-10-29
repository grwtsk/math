# Date Time Namespaced Public Of Timestamp

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../../../complete-source-index.md) · [Full source](source.md)

**81 observed declarations and anonymous commands**, 0 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DateTime/Variantdcc085e32eb136045425b76c8649f9aa8633a85337737d7f24027182246a5395.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `763af3b4a9a608bfad649b805571dee240e00858`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/DateTimeNamespacedPublicOfTimestamp.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `structure` | [DateTime](declarations/datetime.md) | 30 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `instance` | [(anonymous)](declarations/instance-source-edition-6.md) | 53 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [ofTimestamp](declarations/oftimestamp.md) | 62 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [ofPlainDateTime](declarations/ofplaindatetime.md) | 71 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [ofTimestampWithZone](declarations/oftimestampwithzone.md) | 81 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [ofPlainDateTimeWithZone](declarations/ofplaindatetimewithzone.md) | 89 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [toTimestamp](declarations/totimestamp.md) | 96 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [convertZoneRules](declarations/convertzonerules.md) | 103 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [toPlainDateTime](declarations/toplaindatetime.md) | 110 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [time](declarations/time.md) | 117 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [year](declarations/year.md) | 124 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [month](declarations/month.md) | 131 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [day](declarations/day.md) | 138 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [hour](declarations/hour.md) | 145 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [minute](declarations/minute.md) | 152 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [second](declarations/second.md) | 159 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [millisecond](declarations/millisecond.md) | 166 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [nanosecond](declarations/nanosecond.md) | 173 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [offset](declarations/offset.md) | 180 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `def` | [weekday](declarations/weekday.md) | 187 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `def` | [dayOfYear](declarations/dayofyear.md) | 194 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [weekOfYear](declarations/weekofyear.md) | 202 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `def` | [weekYear](declarations/weekyear.md) | 211 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `def` | [alignedWeekOfMonth](declarations/alignedweekofmonth.md) | 218 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `def` | [weekOfMonth](declarations/weekofmonth.md) | 226 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `def` | [quarter](declarations/quarter.md) | 233 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `def` | [addDays](declarations/adddays.md) | 239 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `def` | [subDays](declarations/subdays.md) | 245 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `def` | [addWeeks](declarations/addweeks.md) | 251 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `def` | [subWeeks](declarations/subweeks.md) | 257 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `def` | [addMonthsClip](declarations/addmonthsclip.md) | 263 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `def` | [subMonthsClip](declarations/submonthsclip.md) | 269 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `def` | [addMonthsRollOver](declarations/addmonthsrollover.md) | 275 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `def` | [subMonthsRollOver](declarations/submonthsrollover.md) | 281 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `def` | [addYearsRollOver](declarations/addyearsrollover.md) | 287 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `def` | [addYearsClip](declarations/addyearsclip.md) | 293 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `def` | [subYearsClip](declarations/subyearsclip.md) | 299 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `def` | [subYearsRollOver](declarations/subyearsrollover.md) | 305 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `def` | [addHours](declarations/addhours.md) | 311 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `def` | [subHours](declarations/subhours.md) | 317 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `def` | [addMinutes](declarations/addminutes.md) | 322 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `def` | [subMinutes](declarations/subminutes.md) | 328 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `def` | [addMilliseconds](declarations/addmilliseconds.md) | 334 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `def` | [subMilliseconds](declarations/submilliseconds.md) | 341 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `def` | [addSeconds](declarations/addseconds.md) | 346 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `def` | [subSeconds](declarations/subseconds.md) | 352 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `def` | [addNanoseconds](declarations/addnanoseconds.md) | 357 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `def` | [subNanoseconds](declarations/subnanoseconds.md) | 363 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `def` | [era](declarations/era.md) | 369 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `def` | [withWeekday](declarations/withweekday.md) | 375 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `def` | [withDaysClip](declarations/withdaysclip.md) | 384 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `def` | [withDaysRollOver](declarations/withdaysrollover.md) | 393 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `def` | [withMonthClip](declarations/withmonthclip.md) | 402 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `def` | [withMonthRollOver](declarations/withmonthrollover.md) | 411 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `def` | [withYearClip](declarations/withyearclip.md) | 420 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `def` | [withYearRollOver](declarations/withyearrollover.md) | 430 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `def` | [withHours](declarations/withhours.md) | 438 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `def` | [withMinutes](declarations/withminutes.md) | 446 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `def` | [withSeconds](declarations/withseconds.md) | 454 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `def` | [withMilliseconds](declarations/withmilliseconds.md) | 463 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `def` | [withNanoseconds](declarations/withnanoseconds.md) | 471 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `def` | [inLeapYear](declarations/inleapyear.md) | 478 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `def` | [toEpochDay](declarations/toepochday.md) | 484 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `def` | [ofEpochDay](declarations/ofepochday.md) | 492 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `instance` | [(anonymous)](declarations/instance-source-edition-3.md) | 495 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `instance` | [(anonymous)](declarations/instance-source-edition-11.md) | 498 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 501 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `instance` | [(anonymous)](declarations/instance-source-edition-5.md) | 504 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `instance` | [(anonymous)](declarations/instance-source-edition-10.md) | 507 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `instance` | [(anonymous)](declarations/instance-source-edition-4.md) | 510 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `instance` | [(anonymous)](declarations/instance-source-edition-13.md) | 513 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `instance` | [(anonymous)](declarations/instance-source-edition-17.md) | 516 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `instance` | [(anonymous)](declarations/instance-source-edition-12.md) | 519 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `instance` | [(anonymous)](declarations/instance.md) | 522 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `instance` | [(anonymous)](declarations/instance-source-edition-18.md) | 525 | `BLOCKED_NATIVE_ADMISSION` |
| 76 | `instance` | [(anonymous)](declarations/instance-source-edition-7.md) | 528 | `BLOCKED_NATIVE_ADMISSION` |
| 77 | `instance` | [(anonymous)](declarations/instance-source-edition-9.md) | 531 | `BLOCKED_NATIVE_ADMISSION` |
| 78 | `instance` | [(anonymous)](declarations/instance-source-edition-8.md) | 534 | `BLOCKED_NATIVE_ADMISSION` |
| 79 | `instance` | [(anonymous)](declarations/instance-source-edition-16.md) | 537 | `BLOCKED_NATIVE_ADMISSION` |
| 80 | `instance` | [(anonymous)](declarations/instance-source-edition-14.md) | 540 | `BLOCKED_NATIVE_ADMISSION` |
| 81 | `instance` | [(anonymous)](declarations/instance-source-edition-15.md) | 543 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=2d2c95025013ad75aca998eae9bf57a0d3e68ce9f7c0b47f97f060e9492cbe3c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DateTime/Variantdcc085e32eb136045425b76c8649f9aa8633a85337737d7f24027182246a5395.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
