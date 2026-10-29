# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.SignedOrientationConnections

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5d6da133cbbec808f93f8f5faff5cdfd994cc36c",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/SignedOrientationConnections.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/SignedOrientationConnections.lean/index.md) · [Full source](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/SignedOrientationConnections.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5d6da133cbbec808f93f8f5faff5cdfd994cc36c`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/SignedOrientationConnections.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/SignedOrientationConnections.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.LinearAlgebra.SignedOrientationBridge`](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/SignedOrientationBridge.lean/index.md) — import line 5; pinned internal source present.
- [`GRWTSK.Algebra.Polynomial.SignedRootTrace`](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/PolynomialSignedRootTrace.lean/index.md) — import line 6; pinned internal source present.
- [`GRWTSK.Analysis.InnerProductSpace.SignedWindowGramIdentity`](../../../../../MeasureAndIntegration/SignedWindowGramIdentity.lean/index.md) — import line 7; pinned internal source present.
- [`GRWTSK.NumberTheory.Zeta.Riemann.WeilPositiveLimit`](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/WeilPositiveLimit.lean/index.md) — import line 8; pinned internal source present.
- [`GRWTSK.NumberTheory.Zeta.Riemann.ScrewQuarticPathControl`](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/ScrewQuarticPathControl.lean/index.md) — import line 9; pinned internal source present.
- [`GRWTSK.NumberTheory.Zeta.Riemann.CanonicalQuarticProbe`](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/CanonicalQuarticProbe.lean/index.md) — import line 10; pinned internal source present.
- `Mathlib.Tactic` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [ConnectionEvidence](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/SignedOrientationConnections.lean/declarations/connectionevidence.md) | 43 | `declaration-track:30595c2cd643c9b9b0816894a17e19fa10c26e22b66dbd00984d2f42242fe295` |
| 2 | `structure` | [ConnectionProfile](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/SignedOrientationConnections.lean/declarations/connectionprofile.md) | 52 | `declaration-track:abdef8e6e98ff8bbd15aab7428cf7dd5176160d33fc8b42cfb9c19da74b31918` |
| 3 | `def` | [hodgeStandardConjectureProfile](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/SignedOrientationConnections.lean/declarations/hodgestandardconjectureprofile.md) | 63 | `declaration-track:e11f671594f7cc92fafbf40ff01aea446c907023dbcdd68b4ff0482f1d4b9e99` |
| 4 | `def` | [arithmeticHodgeIndexProfile](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/SignedOrientationConnections.lean/declarations/arithmetichodgeindexprofile.md) | 73 | `declaration-track:3472c05bf454510e5387c8a66a3ed0ce03f626199c845e433f65841d04d8682b` |
| 5 | `def` | [rationalCMHodgeProfile](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/SignedOrientationConnections.lean/declarations/rationalcmhodgeprofile.md) | 83 | `declaration-track:99e4bab60e785d28b712e24265f3e763d1811abe60d30a56247fdeab29cfa789` |
| 6 | `def` | [c3SignedScrewProfile](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/SignedOrientationConnections.lean/declarations/c3signedscrewprofile.md) | 93 | `declaration-track:bd65a17dee4bd4c30662aada04965c28298575e9173cb8fb13d2e7ec516386bb` |
| 7 | `def` | [weilPositiveLimitProfile](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/SignedOrientationConnections.lean/declarations/weilpositivelimitprofile.md) | 103 | `declaration-track:b95f9c72cd0127a13628c81752cbd558ed85e446be259a96899df313640fdd2e` |
| 8 | `def` | [quarticProbeProfile](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/SignedOrientationConnections.lean/declarations/quarticprobeprofile.md) | 113 | `declaration-track:f1694d53fa268d7e04650c616af116ea08bbbf343c9d918cd1d6a29d709c220f` |
| 9 | `def` | [recentHodgeSignFailureProfile](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/SignedOrientationConnections.lean/declarations/recenthodgesignfailureprofile.md) | 124 | `declaration-track:8c26f4ebc4dc03478b1d738ce3d2eef2adbfc64b55992aeec848ac0d3feafb7e` |
| 10 | `structure` | [QuarticProbeDatum](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/SignedOrientationConnections.lean/declarations/quarticprobedatum.md) | 134 | `declaration-track:c7ca5f6a8fd0400a846d4b07a2fdb408981a78bc4ab53bbd04204cd31ee5538f` |
| 11 | `def` | [screwQuarticPenaltyCertificate](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/SignedOrientationConnections.lean/declarations/screwquarticpenaltycertificate.md) | 141 | `declaration-track:959f9583245b9bf6940b495ac3ea4ac955f2ef5d6a372817e413391a5ad44c7a` |
| 12 | `def` | [quarticProbeOrientationCertificate](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/SignedOrientationConnections.lean/declarations/quarticprobeorientationcertificate.md) | 158 | `declaration-track:0faffdc2ed3bc354d7f3e786f8222737e292a1c9be930919d46c1f20365845bd` |
| 13 | `theorem` | [hodge_negative_sector_requires_sign_twist](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/SignedOrientationConnections.lean/declarations/hodge-negative-sector-requires-sign-twist.md) | 180 | `result-track:4677070c18912c84fe2c5f54bd7d29cfd2d3d81563f6853f8fe63cd620ae7529` |
| 14 | `theorem` | [signedRootTrace_orientation_connection](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/SignedOrientationConnections.lean/declarations/signedroottrace-orientation-connection.md) | 190 | `result-track:ddee366c5672702daae93a56c2f6b7e58c136a324df719231700ec637e55d19a` |
| 15 | `theorem` | [screwQuarticPenalty_is_negative_orientation](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/SignedOrientationConnections.lean/declarations/screwquarticpenalty-is-negative-orientation.md) | 202 | `result-track:6649be0a9e61cfbc41045207da901219e5a3927084bf7e45e053481e5bfae360` |
| 16 | `theorem` | [canonicalProbe_is_negative_orientation](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/SignedOrientationConnections.lean/declarations/canonicalprobe-is-negative-orientation.md) | 210 | `result-track:cd7e6444b8b01cd15d45db86086a1043574c75e73ca05f17e91a570a13c89b9c` |
| 17 | `theorem` | [negativeWeilWitness_blocks_positiveGramLimit](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/SignedOrientationConnections.lean/declarations/negativeweilwitness-blocks-positivegramlimit.md) | 222 | `result-track:8fccd642717ce107d72bafe166369bd90c2a5208d727aab19f9d0ae8f630f8bf` |
| 18 | `theorem` | [signedSettlement_keeps_cross_term](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/SignedOrientationConnections.lean/declarations/signedsettlement-keeps-cross-term.md) | 239 | `result-track:03498d580a5c8fef1231571f7b74cfc54e56ebf78e4580a9c3b8cdfa04fc7958` |
| 19 | `theorem` | [signedSettlement_component_energies_nonnegative](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/SignedOrientationConnections.lean/declarations/signedsettlement-component-energies-nonnegative.md) | 251 | `result-track:1c556665fd5bc99f653a5789ed0d37fb3c6180daeac2da0db5915ed6d2be5db1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=4c37d3ff00106bd5a9d0fbb582b92ff4faee9c5a7c2a092de428a71ff4eccbe0 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/Zeta/Riemann/SignedOrientationConnections.lean","GRWTSK/_verification/specifications/NumberTheory/Zeta/Riemann/SignedOrientationConnections.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
