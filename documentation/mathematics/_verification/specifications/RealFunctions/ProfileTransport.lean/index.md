# Verification target: Profile Transport

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "72aff4ace2fc8398f396707993d7e96c6fbf8814",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ProfileTransport/Variant8c3c369e4551e95cfb945c6a37ad14619b4701630c2d040b59b8e73808a255f6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../RealFunctions/ProfileTransport.lean/index.md) · [Full source](../../../../RealFunctions/ProfileTransport.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `72aff4ace2fc8398f396707993d7e96c6fbf8814`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ProfileTransport/Variant8c3c369e4551e95cfb945c6a37ad14619b4701630c2d040b59b8e73808a255f6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/ProfileTransport/Variant8c3c369e4551e95cfb945c6a37ad14619b4701630c2d040b59b8e73808a255f6.lean.json)

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
| 1 | `theorem` | [deriv_eq_on_closed](../../../../RealFunctions/ProfileTransport.lean/declarations/deriv-eq-on-closed.md) | 14 | `result-track:8ad09d8b8bc4b299f3bafe77e8a441268f146d9b451fd306a2be9655d87e5e22` |
| 2 | `def` | [scaledProfile](../../../../RealFunctions/ProfileTransport.lean/declarations/scaledprofile.md) | 23 | `declaration-track:8569ab0ad7a0a9e315ffeb277fcb3047b1b1ca92bf410d45c0f4ae1ac1c18233` |
| 3 | `theorem` | [scaledProfile_hasDerivAt](../../../../RealFunctions/ProfileTransport.lean/declarations/scaledprofile-hasderivat.md) | 25 | `result-track:ad224f65a543c632b8a877f8a29fc286c3655cd8d8646c3dc708a593ac28b444` |
| 4 | `theorem` | [scaledProfile_deriv](../../../../RealFunctions/ProfileTransport.lean/declarations/scaledprofile-deriv.md) | 35 | `result-track:6d7c77acd764961e4d9e92b3953f72e47ec076664ae0dab1c58f8ae2f838829a` |
| 5 | `theorem` | [scaledProfile_second_hasDerivAt](../../../../RealFunctions/ProfileTransport.lean/declarations/scaledprofile-second-hasderivat.md) | 39 | `result-track:5cc54e40848671d5b3d23b17b3e19cab2aa3bf4d652aec794ecc45d2730d1107` |
| 6 | `theorem` | [primitiveCorrelationZero_deriv_eq_scaledProfile](../../../../RealFunctions/ProfileTransport.lean/declarations/primitivecorrelationzero-deriv-eq-scaledprofile.md) | 54 | `result-track:81721edea6438ae31a1f1256fc996c6415bc3f4676647d2a8907511672771d88` |
| 7 | `theorem` | [primitiveCorrelationZero_second_deriv_eq_scaledProfile](../../../../RealFunctions/ProfileTransport.lean/declarations/primitivecorrelationzero-second-deriv-eq-scaledprofile.md) | 63 | `result-track:564d973098a3d1d0ced10f2aaa9029b37081e27087f5ea2ad3dce521e4a851be` |
| 8 | `theorem` | [primitiveCorrelationZero_deriv_eq_profile](../../../../RealFunctions/ProfileTransport.lean/declarations/primitivecorrelationzero-deriv-eq-profile.md) | 77 | `result-track:df851fdae60435d545ee933699b70ab8c70ba56f6e38be25e0adcff2b217c7ed` |
| 9 | `theorem` | [primitiveCorrelationZero_second_deriv_eq_profile](../../../../RealFunctions/ProfileTransport.lean/declarations/primitivecorrelationzero-second-deriv-eq-profile.md) | 84 | `result-track:ceef6b5a019c3565268598f163ed3db01de211f082a0923c1323a125728fc140` |
| 10 | `theorem` | [sourcePeanoPrimitive_eq_profile](../../../../RealFunctions/ProfileTransport.lean/declarations/sourcepeanoprimitive-eq-profile.md) | 92 | `result-track:431c52c0211c75fbdd377bb144f6d0defd9d83b9a50345566fbe09037e6d4241` |
| 11 | `theorem` | [sourcePeanoPrimitive_nonneg](../../../../RealFunctions/ProfileTransport.lean/declarations/sourcepeanoprimitive-nonneg.md) | 103 | `result-track:04ee6750591a70358562ab8cabdc56d05b7766cd9323b467f619ee349fd8f353` |
| 12 | `theorem` | [sourcePeanoPrimitive_nonneg_iff](../../../../RealFunctions/ProfileTransport.lean/declarations/sourcepeanoprimitive-nonneg-iff.md) | 115 | `result-track:2952d929c1201774e6a6eb13460f71e3c1234bcf0d4f6632bec1fcf76aebda5f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=5ebd8d483d6452c58c98ce7820f1e7e9c06e9cc17e0c10e31658165b682f77b4 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ProfileTransport/Variant8c3c369e4551e95cfb945c6a37ad14619b4701630c2d040b59b8e73808a255f6.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/DifferentialCalculus/ProfileTransport/Variant8c3c369e4551e95cfb945c6a37ad14619b4701630c2d040b59b8e73808a255f6.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
