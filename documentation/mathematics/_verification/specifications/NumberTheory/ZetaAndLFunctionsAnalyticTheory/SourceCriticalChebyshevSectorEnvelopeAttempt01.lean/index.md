# Verification target: Source Critical Chebyshev Sector Envelope Attempt01

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9ff4f2acd80c27a65b4f4d865c7c346e83573055",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceCriticalChebyshevSectorEnvelopeAttempt01/Variant77ab93cf3136d22cd67cd06936e0a130960068528d3d8702d22f4412f67c0edf.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SourceCriticalChebyshevSectorEnvelopeAttempt01.lean/index.md) · [Full source](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SourceCriticalChebyshevSectorEnvelopeAttempt01.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9ff4f2acd80c27a65b4f4d865c7c346e83573055`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceCriticalChebyshevSectorEnvelopeAttempt01/Variant77ab93cf3136d22cd67cd06936e0a130960068528d3d8702d22f4412f67c0edf.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceCriticalChebyshevSectorEnvelopeAttempt01/Variant77ab93cf3136d22cd67cd06936e0a130960068528d3d8702d22f4412f67c0edf.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `SourceCriticalSignedSectorMass` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [chebyshevSectorEnvelope](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SourceCriticalChebyshevSectorEnvelopeAttempt01.lean/declarations/chebyshevsectorenvelope.md) | 17 | `declaration-track:bfe9ff86d6021ffe87fbb353c36ea7806d012e6b747c2d375d078ef5cd78ce3e` |
| 2 | `theorem` | [actualRelativePsiError_elementary_bounds](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SourceCriticalChebyshevSectorEnvelopeAttempt01.lean/declarations/actualrelativepsierror-elementary-bounds.md) | 21 | `result-track:290888d1e8066d4c9e2d79888639db7431e24d1fd6b7d16bb6e749a77161fad3` |
| 3 | `theorem` | [criticalKernel_eq_error_mul_baseline](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SourceCriticalChebyshevSectorEnvelopeAttempt01.lean/declarations/criticalkernel-eq-error-mul-baseline.md) | 43 | `result-track:5ab87b84c32961e8075057059da22cc32c17b8efa4f9da1ef97ceb42720a55d1` |
| 4 | `theorem` | [actualCriticalKernel_sector_upper](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SourceCriticalChebyshevSectorEnvelopeAttempt01.lean/declarations/actualcriticalkernel-sector-upper.md) | 49 | `result-track:da3aab6b47d472a13546718d1c62f22c96ec677eccb0add707077623f0d9cf3f` |
| 5 | `theorem` | [actualCriticalRelativePairing_le_sectorEnvelope](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SourceCriticalChebyshevSectorEnvelopeAttempt01.lean/declarations/actualcriticalrelativepairing-le-sectorenvelope.md) | 62 | `result-track:19f5463978bce93d7d6b72e8468006826b8c817aef1a51b380f503ece1ea2102` |
| 6 | `theorem` | [positiveCriticalWeightMass_nonneg](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SourceCriticalChebyshevSectorEnvelopeAttempt01.lean/declarations/positivecriticalweightmass-nonneg.md) | 72 | `result-track:6b63afb074317a0e47892b2d6ef349785ee6b4c7a72d73a3d723f23da394eebd` |
| 7 | `theorem` | [chebyshevSectorEnvelope_ge_absoluteMass](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SourceCriticalChebyshevSectorEnvelopeAttempt01.lean/declarations/chebyshevsectorenvelope-ge-absolutemass.md) | 76 | `result-track:282c642ae9c2ee65752ff95fccffcad310783efb405021d56d69b33b0336a32c` |
| 8 | `theorem` | [chebyshevSectorEnvelope_linear_lower](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SourceCriticalChebyshevSectorEnvelopeAttempt01.lean/declarations/chebyshevsectorenvelope-linear-lower.md) | 83 | `result-track:9e6d90f891db26931c817f3556b7506c85902eef519f66da97caf125574b6048` |
| 9 | `theorem` | [chebyshevSectorEnvelope_not_eventually_bounded](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SourceCriticalChebyshevSectorEnvelopeAttempt01.lean/declarations/chebyshevsectorenvelope-not-eventually-bounded.md) | 89 | `result-track:94309b4e16ce5e8635f91168d1064db9769c64ddb4fe4fe579f48b69bc65f9f9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d4fcf621ffbb833088face2f456d3469e11d0f0e78eab51f5d31b21d776e63ed -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceCriticalChebyshevSectorEnvelopeAttempt01/Variant77ab93cf3136d22cd67cd06936e0a130960068528d3d8702d22f4412f67c0edf.lean","GRWTSK/_verification/specifications/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceCriticalChebyshevSectorEnvelopeAttempt01/Variant77ab93cf3136d22cd67cd06936e0a130960068528d3d8702d22f4412f67c0edf.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
