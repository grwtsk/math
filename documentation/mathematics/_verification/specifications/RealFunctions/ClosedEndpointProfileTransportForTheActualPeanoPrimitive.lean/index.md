# Verification target: Closed Endpoint Profile Transport For The Actual Peano Primitive

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d42e92b6a0beaf92e43adf88f74740210b42659a",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourcePeanoProfileTransport/Variantadb4cfffc8f9c640e308c16b6b55c728504ce2c0323c6a07c41ab824872b9c95.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../RealFunctions/ClosedEndpointProfileTransportForTheActualPeanoPrimitive.lean/index.md) · [Full source](../../../../RealFunctions/ClosedEndpointProfileTransportForTheActualPeanoPrimitive.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d42e92b6a0beaf92e43adf88f74740210b42659a`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourcePeanoProfileTransport/Variantadb4cfffc8f9c640e308c16b6b55c728504ce2c0323c6a07c41ab824872b9c95.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/SourcePeanoProfileTransport/Variantadb4cfffc8f9c640e308c16b6b55c728504ce2c0323c6a07c41ab824872b9c95.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourcePrimitiveBumpProfile` — import line 1; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourcePrimitiveCorrelationCurvature` — import line 2; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceBumpPeano` — import line 3; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourcePositivePeanoPrimitive` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [deriv_eq_on_closed](../../../../RealFunctions/ClosedEndpointProfileTransportForTheActualPeanoPrimitive.lean/declarations/deriv-eq-on-closed.md) | 27 | `result-track:8d9d392aa020cab4a4cf15cc14fa268d21de8d5f1a54e47b0b310f849c6a4783` |
| 2 | `def` | [normalizedOverlapProfile](../../../../RealFunctions/ClosedEndpointProfileTransportForTheActualPeanoPrimitive.lean/declarations/normalizedoverlapprofile.md) | 37 | `declaration-track:e3639b46c1cc1406a93d31e00847debbeb7f8f9107220090bcab04fd31a059fe` |
| 3 | `theorem` | [normalizedOverlapProfile_hasDerivAt](../../../../RealFunctions/ClosedEndpointProfileTransportForTheActualPeanoPrimitive.lean/declarations/normalizedoverlapprofile-hasderivat.md) | 39 | `result-track:789f3f1a70968a5660f60237ec24f378e04fa9a3a3bd940b0af0d02f2903ae88` |
| 4 | `theorem` | [normalizedOverlapProfile_deriv](../../../../RealFunctions/ClosedEndpointProfileTransportForTheActualPeanoPrimitive.lean/declarations/normalizedoverlapprofile-deriv.md) | 49 | `result-track:39e4ddd29b9ada3ddd046d18c35941e805987335010a9e901c23253635387a65` |
| 5 | `theorem` | [normalizedOverlapProfile_second_hasDerivAt](../../../../RealFunctions/ClosedEndpointProfileTransportForTheActualPeanoPrimitive.lean/declarations/normalizedoverlapprofile-second-hasderivat.md) | 54 | `result-track:82bd58aadaadf5a59e18f6694ef96d8679e49451ce4d0724270e4641d42b410a` |
| 6 | `theorem` | [primitiveCorrelationZero_deriv_eq_normalizedOverlapProfile](../../../../RealFunctions/ClosedEndpointProfileTransportForTheActualPeanoPrimitive.lean/declarations/primitivecorrelationzero-deriv-eq-normalizedoverlapprofile.md) | 71 | `result-track:8f34d72ff41b4adcc12e0ead4e5fdeb5c41d66dd992185d1ed900573427e9ade` |
| 7 | `theorem` | [primitiveCorrelationZero_second_deriv_eq_normalizedOverlapProfile](../../../../RealFunctions/ClosedEndpointProfileTransportForTheActualPeanoPrimitive.lean/declarations/primitivecorrelationzero-second-deriv-eq-normalizedoverlapprofile.md) | 82 | `result-track:1623eb30f3304fddafe845dbdbfdc560d85c3470a4e29f97f04ddb50514c6caa` |
| 8 | `theorem` | [primitiveCorrelationZero_deriv_eq_profile](../../../../RealFunctions/ClosedEndpointProfileTransportForTheActualPeanoPrimitive.lean/declarations/primitivecorrelationzero-deriv-eq-profile.md) | 96 | `result-track:233a45905a714b5c52c5f6cabd5291d35ef21389065ee0148cd071e555dfe6be` |
| 9 | `theorem` | [primitiveCorrelationZero_second_deriv_eq_profile](../../../../RealFunctions/ClosedEndpointProfileTransportForTheActualPeanoPrimitive.lean/declarations/primitivecorrelationzero-second-deriv-eq-profile.md) | 103 | `result-track:bad83765fbd0462a5a3cfc105860a8aca30e1bace54e25ca5ae68f698ed27c7a` |
| 10 | `theorem` | [sourcePeanoPrimitive_eq_profile](../../../../RealFunctions/ClosedEndpointProfileTransportForTheActualPeanoPrimitive.lean/declarations/sourcepeanoprimitive-eq-profile.md) | 112 | `result-track:80aa7128d11b61788c690b37c41356512c05a6a140674e29da74d2ecbc261b5d` |
| 11 | `theorem` | [sourcePeanoPrimitive_nonneg](../../../../RealFunctions/ClosedEndpointProfileTransportForTheActualPeanoPrimitive.lean/declarations/sourcepeanoprimitive-nonneg.md) | 123 | `result-track:1737f9db50457c506f8e92d6d827da1d37cae6f2c716d25dfd34a2a8d9fec0f2` |
| 12 | `theorem` | [sourcePeanoPrimitive_nonneg_iff](../../../../RealFunctions/ClosedEndpointProfileTransportForTheActualPeanoPrimitive.lean/declarations/sourcepeanoprimitive-nonneg-iff.md) | 136 | `result-track:dd0c432f768711d1f708f2f16aa293023068f76f38f503171e948903e038b5cf` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=7502ded487cd9e30dc152374794c0362e160126de3e17c1d480474c08b041e13 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourcePeanoProfileTransport/Variantadb4cfffc8f9c640e308c16b6b55c728504ce2c0323c6a07c41ab824872b9c95.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/DifferentialCalculus/SourcePeanoProfileTransport/Variantadb4cfffc8f9c640e308c16b6b55c728504ce2c0323c6a07c41ab824872b9c95.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
