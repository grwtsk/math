# Verification target: Analytic Complexity Boundary

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6a791234470f312a903bbac668ed48a627e359a2",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/AnalyticComplexityBoundary/Variant590e7f90f52b3873949aeefd6d6287bacf8e3fa88f206e74d5b8af7d0f39e715.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MathematicalLogicAndFoundations/GeneralLogic/AnalyticComplexityBoundary.lean/index.md) · [Full source](../../../../../MathematicalLogicAndFoundations/GeneralLogic/AnalyticComplexityBoundary.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6a791234470f312a903bbac668ed48a627e359a2`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/AnalyticComplexityBoundary/Variant590e7f90f52b3873949aeefd6d6287bacf8e3fa88f206e74d5b8af7d0f39e715.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/AnalyticComplexityBoundary/Variant590e7f90f52b3873949aeefd6d6287bacf8e3fa88f206e74d5b8af7d0f39e715.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [AnalyticClaim](../../../../../MathematicalLogicAndFoundations/GeneralLogic/AnalyticComplexityBoundary.lean/declarations/analyticclaim.md) | 12 | `declaration-track:456b4c2f8b4c8811b0f85c99bb14bdb55562bdbae71f943719d2bd01f551ae4e` |
| 2 | `structure` | [ComplexityClaim](../../../../../MathematicalLogicAndFoundations/GeneralLogic/AnalyticComplexityBoundary.lean/declarations/complexityclaim.md) | 15 | `declaration-track:59c56de3506cbcbd08adb52402695b6c05cf128f0fca8b923a4a694b35976f5e` |
| 3 | `structure` | [AnalyticCertificate](../../../../../MathematicalLogicAndFoundations/GeneralLogic/AnalyticComplexityBoundary.lean/declarations/analyticcertificate.md) | 19 | `declaration-track:54aaf25bd71429b64b467d2de596378b0259bf468746e4c456072929ccb7189f` |
| 4 | `structure` | [ComplexityCertificate](../../../../../MathematicalLogicAndFoundations/GeneralLogic/AnalyticComplexityBoundary.lean/declarations/complexitycertificate.md) | 35 | `declaration-track:5c840ca5f4fd8b66f0a5e44cf926b05697b9745cc36a70218a553facbc5987d0` |
| 5 | `structure` | [ArithmeticSecurityBridgeCertificate](../../../../../MathematicalLogicAndFoundations/GeneralLogic/AnalyticComplexityBoundary.lean/declarations/arithmeticsecuritybridgecertificate.md) | 49 | `declaration-track:aabbe6b1a34a38519357a8ab87b5532844eb40155327461804b8408070587aad` |
| 6 | `def` | [ArithmeticSecurityBridgeCertificate.complexityConclusion](../../../../../MathematicalLogicAndFoundations/GeneralLogic/AnalyticComplexityBoundary.lean/declarations/arithmeticsecuritybridgecertificate-complexityconclusion.md) | 61 | `declaration-track:cb6d352620bac2be9461d308e15f29365e413aa7e70a5e1a7ea7599500c89311` |
| 7 | `inductive` | [DirectAnalyticToComplexity](../../../../../MathematicalLogicAndFoundations/GeneralLogic/AnalyticComplexityBoundary.lean/declarations/directanalytictocomplexity.md) | 71 | `declaration-track:e95d94d4d281b3070ca52c0cb7e8a846a1e0c5eb117e3e71b9f3070c84fa0349` |
| 8 | `theorem` | [no_direct_analytic_to_complexity](../../../../../MathematicalLogicAndFoundations/GeneralLogic/AnalyticComplexityBoundary.lean/declarations/no-direct-analytic-to-complexity.md) | 77 | `result-track:cd0caaf4a2398e7ee1416b959c6e50edd6567cc42c7581d14dc0659fd6e82370` |
| 9 | `inductive` | [AnalyticToComplexityAuthorization](../../../../../MathematicalLogicAndFoundations/GeneralLogic/AnalyticComplexityBoundary.lean/declarations/analytictocomplexityauthorization.md) | 87 | `declaration-track:6912d17c37f0c11193bdef0ed0bda522290bbfbe23dbb1ebd038c01104bab957` |
| 10 | `inductive` | [AuthorityChannel](../../../../../MathematicalLogicAndFoundations/GeneralLogic/AnalyticComplexityBoundary.lean/declarations/authoritychannel.md) | 95 | `declaration-track:ae37d2978125463ec1194ab83260f314200a4b272c509b2a4491c60e92d34d5a` |
| 11 | `inductive` | [AuthorityChannelTransition](../../../../../MathematicalLogicAndFoundations/GeneralLogic/AnalyticComplexityBoundary.lean/declarations/authoritychanneltransition.md) | 102 | `declaration-track:90b07d15d1eab37c71b47980b4800d0aa4ab1b9f83a58f481269679b73091690` |
| 12 | `theorem` | [no_direct_analytic_channel_transition](../../../../../MathematicalLogicAndFoundations/GeneralLogic/AnalyticComplexityBoundary.lean/declarations/no-direct-analytic-channel-transition.md) | 113 | `result-track:b9eb28c67918c67885c4f3c714fe898f46f694b4ede8750bdecc0a6eba8b2add` |
| 13 | `inductive` | [ProhibitedAnalyticInference](../../../../../MathematicalLogicAndFoundations/GeneralLogic/AnalyticComplexityBoundary.lean/declarations/prohibitedanalyticinference.md) | 119 | `declaration-track:88e4638eb180acc48237ddf6597b72a450b994baee4a329305c21b298f02aff4` |
| 14 | `def` | [ProhibitedAnalyticInference.admissible](../../../../../MathematicalLogicAndFoundations/GeneralLogic/AnalyticComplexityBoundary.lean/declarations/prohibitedanalyticinference-admissible.md) | 127 | `declaration-track:1f6c571aae212b61e738ac1584bb6b9f6b34f41f56fa8504c80880e4891d88be` |
| 15 | `theorem` | [prohibitedAnalyticInference_rejected](../../../../../MathematicalLogicAndFoundations/GeneralLogic/AnalyticComplexityBoundary.lean/declarations/prohibitedanalyticinference-rejected.md) | 131 | `result-track:0d9cab748a13ef5ccd46a788e18b0b66ac332dadc6b48bbaa5b9e55c03ce4c55` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ac6a67fc49470afb2f5748a28202454960ee7772c9bdc80567a1be5db0c3b7d6 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/AnalyticComplexityBoundary/Variant590e7f90f52b3873949aeefd6d6287bacf8e3fa88f206e74d5b8af7d0f39e715.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/AnalyticComplexityBoundary/Variant590e7f90f52b3873949aeefd6d6287bacf8e3fa88f206e74d5b8af7d0f39e715.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
