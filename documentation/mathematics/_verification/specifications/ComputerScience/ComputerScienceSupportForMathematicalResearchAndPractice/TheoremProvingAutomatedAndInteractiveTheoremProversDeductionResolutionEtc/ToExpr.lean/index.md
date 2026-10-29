# Verification target: To Expr

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "80f7d4882e5ab113a0dcef184e11afa475cf4350",
  "lexical_observation_count": 35,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToExpr/Variant6db87cc74454942cbb3e220145313302453e709e4ff7456ca34433e1cfc74648.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ToExpr.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ToExpr.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `80f7d4882e5ab113a0dcef184e11afa475cf4350`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToExpr/Variant6db87cc74454942cbb3e220145313302453e709e4ff7456ca34433e1cfc74648.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToExpr/Variant6db87cc74454942cbb3e220145313302453e709e4ff7456ca34433e1cfc74648.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean` — import line 6; external provider; requires a separately pinned dependency.
- `LeanCert.Core.Expr` — import line 7; external provider; requires a separately pinned dependency.
- `LeanCert.Meta.Numeral` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [max_eq_half_add_abs_sub](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ToExpr.lean/declarations/max-eq-half-add-abs-sub.md) | 37 | `result-track:027350c9ecd9fa88dde9be940eeedfd97592b6791af7f0dd505dea7898f43f54` |
| 2 | `theorem` | [min_eq_half_sub_abs_sub](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ToExpr.lean/declarations/min-eq-half-sub-abs-sub.md) | 45 | `result-track:0a0aab6ca1e29678e29c10d2a636e3f630c4d2fcb0fe30873e06bc4465177ddf` |
| 3 | `structure` | [Context](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ToExpr.lean/declarations/context.md) | 54 | `declaration-track:4c2690257a2399663e572fca88e1773945e5a65db0f75b65aa737e01da4aa926` |
| 4 | `abbrev` | [TranslateM](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ToExpr.lean/declarations/translatem.md) | 59 | `declaration-track:914adf4bb035d509ed9bfeaab6e7f2261d0c0cf3f8b749bd03af2d1db95222d5` |
| 5 | `def` | [findVarIdx?](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ToExpr.lean/declarations/findvaridx.md) | 62 | `declaration-track:a8b52e3cda20cb6d121797d1e7da8ce677faa186cfdf033e803892b45749670a` |
| 6 | `def` | [mkExprConst](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ToExpr.lean/declarations/mkexprconst.md) | 73 | `declaration-track:437b3acec3cd670d11460379e004250269bd0b990836b832fd315e80c9a573ba` |
| 7 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ToExpr.lean/declarations/instance.md) | 81 | `declaration-track:9d5108743811286eca49942380cfe0912cf9706349c1df3f349b3fae1a03a6ca` |
| 8 | `def` | [mkExprVar](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ToExpr.lean/declarations/mkexprvar.md) | 86 | `declaration-track:14220986ff2feed2174a2d17a6d920fb0f961db9b09e440e7b9f551bf605cd51` |
| 9 | `def` | [mkExprAdd](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ToExpr.lean/declarations/mkexpradd.md) | 90 | `declaration-track:c7b88bb2df48da0f56c4ec616f80d4b7bf86c735640952c03ff0e3e17c992554` |
| 10 | `def` | [mkExprMul](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ToExpr.lean/declarations/mkexprmul.md) | 94 | `declaration-track:2ccf0cab42a52677c9f97f13d7108c31bf7d36a7585cf9189c49974262a6ddf1` |
| 11 | `def` | [mkExprNeg](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ToExpr.lean/declarations/mkexprneg.md) | 98 | `declaration-track:3013fd569b21d7998ab20d1dd27239054546051d8a07caf788be60a9284eb125` |
| 12 | `def` | [mkExprSub](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ToExpr.lean/declarations/mkexprsub.md) | 102 | `declaration-track:6d2fa8f2b986293cea0e82820cba3b2aa0245549dc85f70bc85367e1810e1fbf` |
| 13 | `def` | [mkExprInv](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ToExpr.lean/declarations/mkexprinv.md) | 106 | `declaration-track:4dbc3b64a92c9958c40539f5b2c0168501cc75e0df6b7e6f7b1286a01cfce0dc` |
| 14 | `def` | [mkExprSin](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ToExpr.lean/declarations/mkexprsin.md) | 110 | `declaration-track:7ef71d3e9835b6b9d3baccd9916df008d9724b8c2500ec0252ee99aa5ce3223d` |
| 15 | `def` | [mkExprCos](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ToExpr.lean/declarations/mkexprcos.md) | 114 | `declaration-track:6eb14fba9092fcaca526e99ec68f6b780f89ae90a0a32a2061eddf20e1eda558` |
| 16 | `def` | [mkExprExp](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ToExpr.lean/declarations/mkexprexp.md) | 118 | `declaration-track:bd3db8a24883a86aec2a9a4164233952d0981339fa035c36da8edaf766b2f026` |
| 17 | `def` | [mkExprLog](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ToExpr.lean/declarations/mkexprlog.md) | 122 | `declaration-track:51661f1d138ec2a29d5d31ca29a34a4aba774146ec678f8eaf6db37ecb32d738` |
| 18 | `def` | [mkExprAtan](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ToExpr.lean/declarations/mkexpratan.md) | 126 | `declaration-track:8dfcce91b3dd822b5cb871c60e90e52c99f01731ed4917cd5590957c8fd93ff7` |
| 19 | `def` | [mkExprArsinh](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ToExpr.lean/declarations/mkexprarsinh.md) | 130 | `declaration-track:b989e9f3d7078c3be9fcb788ac35ca150b9a138d5dea437d4c5fb5f8aae7c764` |
| 20 | `def` | [mkExprAtanh](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ToExpr.lean/declarations/mkexpratanh.md) | 134 | `declaration-track:de507c3dcc46497c943413e59c65cbf9f3a04a1b9a6f3c482e54f41e735d849e` |
| 21 | `def` | [mkExprSinc](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ToExpr.lean/declarations/mkexprsinc.md) | 138 | `declaration-track:97786ccd206c5f95e63f941404725aea7204e6d3726d18c8bf0d74791400ad70` |
| 22 | `def` | [mkExprErf](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ToExpr.lean/declarations/mkexprerf.md) | 142 | `declaration-track:dfd64a7bd176834fc45951f64c657f36067b2fee655b16c627452edd8d8ea3f7` |
| 23 | `def` | [mkExprSqrt](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ToExpr.lean/declarations/mkexprsqrt.md) | 146 | `declaration-track:da27e8a376906be115c1b1a39beba3bef8e2f27880757c4104b995a9c2771c93` |
| 24 | `def` | [mkExprAbs](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ToExpr.lean/declarations/mkexprabs.md) | 150 | `declaration-track:2a3e1442d762b3b2942749873b328ada4c45ce6f1b196cd3563be30fb7f1ea73` |
| 25 | `def` | [mkExprSinh](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ToExpr.lean/declarations/mkexprsinh.md) | 154 | `declaration-track:2f4bf05a0deeeb831a065d6aafb50c637276f18c50990d11982f93e07baf87aa` |
| 26 | `def` | [mkExprCosh](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ToExpr.lean/declarations/mkexprcosh.md) | 158 | `declaration-track:8b09c644ef7bc373fc3046769fc70b0ddb178dafe60a74166d3f4983493e30b2` |
| 27 | `def` | [mkExprTanh](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ToExpr.lean/declarations/mkexprtanh.md) | 162 | `declaration-track:545f3c3831d08bbf11c85226c870e98ae269b273494fb5fc6fc3ad70774a1ed3` |
| 28 | `def` | [mkExprNamedConst](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ToExpr.lean/declarations/mkexprnamedconst.md) | 166 | `declaration-track:35b48ad8b2934d22c9ccff03369b572cc8bf0ada6c41443a5e2092cebea2412b` |
| 29 | `def` | [mkExprPi](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ToExpr.lean/declarations/mkexprpi.md) | 170 | `declaration-track:4e607a9dbca83de44360b4591090e6f6d6157ddffe4c614b6ba3b6fe745ea57c` |
| 30 | `def` | [mkExprEulerMascheroni](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ToExpr.lean/declarations/mkexpreulermascheroni.md) | 174 | `declaration-track:5658e8ca235cdd3249410cc096bce2ea872c7ff8d2d6adabaf1ae33ceb040ab8` |
| 31 | `def` | [mkExprMaxViaAbs](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ToExpr.lean/declarations/mkexprmaxviaabs.md) | 178 | `declaration-track:f46ad6c8bb241cf7eab39d7e337331ac0bcd6022369c1ecc009080fe90ded618` |
| 32 | `def` | [mkExprMinViaAbs](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ToExpr.lean/declarations/mkexprminviaabs.md) | 187 | `declaration-track:050ae95bb15fbadce91ce3eb9e1e3035354821d39bb37690b5e2bb40c4d50d9f` |
| 33 | `def` | [toLeanCertExpr](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ToExpr.lean/declarations/toleancertexpr.md) | 215 | `declaration-track:bb22e2e07707ec05887a34a0eb99688a47a3c1a13858cd7ddd144ac40d6c4936` |
| 34 | `def` | [reify](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ToExpr.lean/declarations/reify.md) | 505 | `declaration-track:623baa7ba85aa059f9a0ca0d3d5fed5b50884e0f478ec8dc5e71d818d95b987c` |
| 35 | `elab` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/ToExpr.lean/declarations/elab.md) | 515 | `declaration-track:ca21afdd1991104638cc2523e6f6c66c2d95e840194aac47bab36bf3fc0524af` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=462ae06f08e76d70504bd6be03f1db2003b7ffe2d70e85e1c82f6966a5b5bd37 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToExpr/Variant6db87cc74454942cbb3e220145313302453e709e4ff7456ca34433e1cfc74648.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToExpr/Variant6db87cc74454942cbb3e220145313302453e709e4ff7456ca34433e1cfc74648.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
