# Norm Num Core Is Nat

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../../../../complete-source-index.md) · [Full source](source.md)

**114 observed declarations and anonymous commands**, 20 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Varianta5a6d0e6b030912f47ccaf7a47285e6a6c6268591e707dc10ee0fa84341529d6.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d88113fb3ec45693170e797505bca22702d89d2c`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../_verification/specifications/ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/NormNumCoreIsNat.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `syntax` | [(anonymous)](declarations/syntax-source-edition-3.md) | 30 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `initialize` | [(anonymous)](declarations/initialize-source-edition-3.md) | 35 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `structure` | [IsNat](declarations/isnat.md) | 38 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [IsNat.raw_refl](declarations/isnat-raw-refl.md) | 42 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [_root_.Nat.rawCast](declarations/root-nat-rawcast.md) | 49 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [IsNat.to_eq](declarations/isnat-to-eq.md) | 51 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [IsNat.to_raw_eq](declarations/isnat-to-raw-eq.md) | 54 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [IsNat.of_raw](declarations/isnat-of-raw.md) | 57 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [isNat.natElim](declarations/isnat-natelim.md) | 60 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `structure` | [IsInt](declarations/isint.md) | 64 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [_root_.Int.rawCast](declarations/root-int-rawcast.md) | 78 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [IsInt.to_isNat](declarations/isint-to-isnat.md) | 80 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [IsNat.to_isInt](declarations/isnat-to-isint.md) | 83 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [IsInt.to_raw_eq](declarations/isint-to-raw-eq.md) | 86 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [IsInt.of_raw](declarations/isint-of-raw.md) | 89 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [IsInt.neg_to_eq](declarations/isint-neg-to-eq.md) | 91 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [IsInt.nonneg_to_eq](declarations/isint-nonneg-to-eq.md) | 95 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [mkRawIntLit](declarations/mkrawintlit.md) | 99 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [_root_.Lean.Expr.intLit!](declarations/root-lean-expr-intlit.md) | 105 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `def` | [rawIntLitNatAbs](declarations/rawintlitnatabs.md) | 115 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `def` | [instAddMonoidWithOneNat](declarations/instaddmonoidwithonenat.md) | 126 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [instRingInt](declarations/instringint.md) | 129 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `inductive` | [IsRat](declarations/israt.md) | 137 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `def` | [_root_.Rat.rawCast](declarations/root-rat-rawcast.md) | 151 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [IsRat.to_isNat](declarations/israt-to-isnat.md) | 153 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [IsNat.to_isRat](declarations/isnat-to-israt.md) | 156 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [IsRat.to_isInt](declarations/israt-to-isint.md) | 159 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [IsInt.to_isRat](declarations/isint-to-israt.md) | 162 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [IsRat.to_raw_eq](declarations/israt-to-raw-eq.md) | 165 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [IsRat.neg_to_eq](declarations/israt-neg-to-eq.md) | 168 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [IsRat.nonneg_to_eq](declarations/israt-nonneg-to-eq.md) | 172 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [IsRat.of_raw](declarations/israt-of-raw.md) | 176 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [IsRat.den_nz](declarations/israt-den-nz.md) | 181 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `def` | [mkRawRatLit](declarations/mkrawratlit.md) | 185 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `def` | [instRingRat](declarations/instringrat.md) | 191 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `def` | [instDivisionRingRat](declarations/instdivisionringrat.md) | 194 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `inductive` | [Result'](declarations/result-source-edition-2.md) | 198 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `def` | [Result](declarations/result.md) | 213 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `instance` | [(anonymous)](declarations/instance-source-edition-2.md) | 215 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `def` | [Result.isTrue](declarations/result-istrue.md) | 218 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `def` | [Result.isFalse](declarations/result-isfalse.md) | 222 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `def` | [Result.isNat](declarations/result-isnat.md) | 226 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `def` | [Result.isNegNat](declarations/result-isnegnat.md) | 232 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `def` | [Result.isRat](declarations/result-israt.md) | 239 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `def` | [instAddMonoidWithOne](declarations/instaddmonoidwithone.md) | 244 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `def` | [instAddMonoidWithOne'](declarations/instaddmonoidwithone-source-edition-2.md) | 248 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `def` | [instRing](declarations/instring.md) | 251 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `def` | [Result.isInt](declarations/result-isint.md) | 256 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `def` | [Result.toRat](declarations/result-torat-source-edition-2.md) | 266 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `def` | [_root_.Lean.LOption.toOption](declarations/root-lean-loption-tooption.md) | 275 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `def` | [inferAddMonoidWithOne](declarations/inferaddmonoidwithone.md) | 280 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `def` | [inferSemiring](declarations/infersemiring.md) | 285 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `def` | [inferRing](declarations/inferring.md) | 289 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `def` | [inferDivisionRing](declarations/inferdivisionring.md) | 293 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `def` | [inferOrderedSemiring](declarations/inferorderedsemiring.md) | 297 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `def` | [inferOrderedRing](declarations/inferorderedring.md) | 302 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `def` | [inferLinearOrderedField](declarations/inferlinearorderedfield.md) | 306 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `def` | [inferCharZeroOfRing](declarations/infercharzeroofring-source-edition-2.md) | 311 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `def` | [inferCharZeroOfRing?](declarations/infercharzeroofring.md) | 317 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `def` | [inferCharZeroOfAddMonoidWithOne](declarations/infercharzeroofaddmonoidwithone.md) | 322 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `def` | [inferCharZeroOfAddMonoidWithOne?](declarations/infercharzeroofaddmonoidwithone-source-edition-2.md) | 329 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `def` | [inferCharZeroOfDivisionRing](declarations/infercharzeroofdivisionring.md) | 335 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `def` | [inferOfScientific](declarations/inferofscientific.md) | 341 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `def` | [inferCharZeroOfDivisionRing?](declarations/infercharzeroofdivisionring-source-edition-2.md) | 347 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `def` | [inferRatCast](declarations/inferratcast.md) | 352 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `def` | [Result.toInt](declarations/result-toint.md) | 359 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `def` | [Result.toRat'](declarations/result-torat.md) | 371 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `instance` | [(anonymous)](declarations/instance.md) | 384 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `def` | [Result.toRawEq](declarations/result-toraweq.md) | 397 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `def` | [Result.toRawIntEq](declarations/result-torawinteq.md) | 414 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `def` | [Result.ofRawNat](declarations/result-ofrawnat.md) | 421 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `def` | [Result.ofRawInt](declarations/result-ofrawint.md) | 427 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `def` | [Result.ofRawRat](declarations/result-ofrawrat.md) | 436 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `def` | [Result.isRat'](declarations/result-israt-source-edition-2.md) | 447 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `def` | [Result.toRatNZ](declarations/result-toratnz.md) | 457 | `BLOCKED_NATIVE_ADMISSION` |
| 76 | `def` | [mkOfNat](declarations/mkofnat.md) | 471 | `BLOCKED_NATIVE_ADMISSION` |
| 77 | `def` | [Result.toSimpResult](declarations/result-tosimpresult.md) | 495 | `BLOCKED_NATIVE_ADMISSION` |
| 78 | `structure` | [NormNumExt](declarations/normnumext.md) | 519 | `BLOCKED_NATIVE_ADMISSION` |
| 79 | `def` | [mkNormNumExt](declarations/mknormnumext.md) | 530 | `BLOCKED_NATIVE_ADMISSION` |
| 80 | `abbrev` | [Entry](declarations/entry.md) | 536 | `BLOCKED_NATIVE_ADMISSION` |
| 81 | `structure` | [NormNums](declarations/normnums.md) | 539 | `BLOCKED_NATIVE_ADMISSION` |
| 82 | `initialize` | [(anonymous)](declarations/initialize-source-edition-2.md) | 547 | `BLOCKED_NATIVE_ADMISSION` |
| 83 | `def` | [derive](declarations/derive.md) | 561 | `BLOCKED_NATIVE_ADMISSION` |
| 84 | `def` | [deriveNat'](declarations/derivenat-source-edition-2.md) | 583 | `BLOCKED_NATIVE_ADMISSION` |
| 85 | `def` | [deriveNat](declarations/derivenat.md) | 590 | `BLOCKED_NATIVE_ADMISSION` |
| 86 | `def` | [deriveInt](declarations/deriveint.md) | 598 | `BLOCKED_NATIVE_ADMISSION` |
| 87 | `def` | [deriveRat](declarations/deriverat.md) | 607 | `BLOCKED_NATIVE_ADMISSION` |
| 88 | `def` | [isNatLit](declarations/isnatlit.md) | 614 | `BLOCKED_NATIVE_ADMISSION` |
| 89 | `def` | [isIntLit](declarations/isintlit.md) | 621 | `BLOCKED_NATIVE_ADMISSION` |
| 90 | `def` | [isRatLit](declarations/isratlit.md) | 629 | `BLOCKED_NATIVE_ADMISSION` |
| 91 | `def` | [BoolResult](declarations/boolresult.md) | 645 | `BLOCKED_NATIVE_ADMISSION` |
| 92 | `def` | [deriveBool](declarations/derivebool.md) | 650 | `BLOCKED_NATIVE_ADMISSION` |
| 93 | `def` | [Result.ofBoolResult](declarations/result-ofboolresult.md) | 655 | `BLOCKED_NATIVE_ADMISSION` |
| 94 | `def` | [deriveBoolOfIff](declarations/deriveboolofiff.md) | 661 | `BLOCKED_NATIVE_ADMISSION` |
| 95 | `def` | [isNormalForm](declarations/isnormalform.md) | 669 | `BLOCKED_NATIVE_ADMISSION` |
| 96 | `def` | [eval](declarations/eval.md) | 676 | `BLOCKED_NATIVE_ADMISSION` |
| 97 | `def` | [NormNums.eraseCore](declarations/normnums-erasecore.md) | 683 | `BLOCKED_NATIVE_ADMISSION` |
| 98 | `def` | [NormNums.erase](declarations/normnums-erase.md) | 692 | `BLOCKED_NATIVE_ADMISSION` |
| 99 | `initialize` | [(anonymous)](declarations/initialize.md) | 698 | `BLOCKED_NATIVE_ADMISSION` |
| 100 | `def` | [tryNormNum?](declarations/trynormnum.md) | 725 | `BLOCKED_NATIVE_ADMISSION` |
| 101 | `def` | [_root_.Lean.Meta.Simp.Result.ofTrue](declarations/root-lean-meta-simp-result-oftrue.md) | 733 | `BLOCKED_NATIVE_ADMISSION` |
| 102 | `def` | [discharge](declarations/discharge.md) | 744 | `BLOCKED_NATIVE_ADMISSION` |
| 103 | `def` | [methods](declarations/methods.md) | 747 | `BLOCKED_NATIVE_ADMISSION` |
| 104 | `def` | [deriveSimp](declarations/derivesimp.md) | 761 | `BLOCKED_NATIVE_ADMISSION` |
| 105 | `def` | [normNumAt](declarations/normnumat.md) | 776 | `BLOCKED_NATIVE_ADMISSION` |
| 106 | `def` | [getSimpContext](declarations/getsimpcontext.md) | 817 | `BLOCKED_NATIVE_ADMISSION` |
| 107 | `def` | [elabNormNum](declarations/elabnormnum.md) | 840 | `BLOCKED_NATIVE_ADMISSION` |
| 108 | `elab` | [(anonymous)](declarations/elab-source-edition-2.md) | 862 | `BLOCKED_NATIVE_ADMISSION` |
| 109 | `elab` | [(anonymous)](declarations/elab.md) | 866 | `BLOCKED_NATIVE_ADMISSION` |
| 110 | `syntax` | [(anonymous)](declarations/syntax-source-edition-2.md) | 871 | `BLOCKED_NATIVE_ADMISSION` |
| 111 | `def` | [elabNormNum1Conv](declarations/elabnormnum1conv.md) | 874 | `BLOCKED_NATIVE_ADMISSION` |
| 112 | `syntax` | [(anonymous)](declarations/syntax.md) | 878 | `BLOCKED_NATIVE_ADMISSION` |
| 113 | `def` | [elabNormNumConv](declarations/elabnormnumconv.md) | 881 | `BLOCKED_NATIVE_ADMISSION` |
| 114 | `macro` | [(anonymous)](declarations/macro.md) | 901 | `BLOCKED_NATIVE_ADMISSION` |

<!-- DOCUMENTATION RELOCATION /1 original-sha256=8eb7dbd869b292db64f2cdf6cb37c3f662c798e0a44301c72f1b63652ba4f815 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Varianta5a6d0e6b030912f47ccaf7a47285e6a6c6268591e707dc10ee0fa84341529d6.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
