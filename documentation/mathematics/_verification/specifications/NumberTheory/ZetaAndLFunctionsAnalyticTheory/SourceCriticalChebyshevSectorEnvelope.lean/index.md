# Verification target: Source Critical Chebyshev Sector Envelope

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "06e82ae422ad0f1a2d0509842058ca9c8d41cc92",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/D0449d39d9bbe7a48b1dSourceCriticalChebyshevSectorEnvelope/Variante610310852baacde8789f0a07233ba4b72f4fb4be2da15e613e335bc51c553d4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SourceCriticalChebyshevSectorEnvelope.lean/index.md) · [Full source](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SourceCriticalChebyshevSectorEnvelope.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `06e82ae422ad0f1a2d0509842058ca9c8d41cc92`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/D0449d39d9bbe7a48b1dSourceCriticalChebyshevSectorEnvelope/Variante610310852baacde8789f0a07233ba4b72f4fb4be2da15e613e335bc51c553d4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/D0449d39d9bbe7a48b1dSourceCriticalChebyshevSectorEnvelope/Variante610310852baacde8789f0a07233ba4b72f4fb4be2da15e613e335bc51c553d4.lean.json)

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
| 1 | `def` | [chebyshevSectorEnvelope](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SourceCriticalChebyshevSectorEnvelope.lean/declarations/chebyshevsectorenvelope.md) | 17 | `declaration-track:a9ae788d507bc53374434731c97555ed024008f7223f89f340b9b31da6b58535` |
| 2 | `theorem` | [actualRelativePsiError_elementary_bounds](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SourceCriticalChebyshevSectorEnvelope.lean/declarations/actualrelativepsierror-elementary-bounds.md) | 21 | `result-track:eef19dcd36b7b4b9b391ef281a390c0519ce497cc0f92715a53b40f39c9fbd84` |
| 3 | `theorem` | [criticalKernel_eq_error_mul_baseline](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SourceCriticalChebyshevSectorEnvelope.lean/declarations/criticalkernel-eq-error-mul-baseline.md) | 43 | `result-track:b7849121503a1cc474d59686d68c8b5a394e773d29747886db4d5c64e9feeccb` |
| 4 | `theorem` | [actualCriticalKernel_sector_upper](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SourceCriticalChebyshevSectorEnvelope.lean/declarations/actualcriticalkernel-sector-upper.md) | 49 | `result-track:450e4bdd42cbf41848d6db1e44107b014f7208bb5bcab21eb9f6284d45b86edb` |
| 5 | `theorem` | [actualCriticalRelativePairing_le_sectorEnvelope](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SourceCriticalChebyshevSectorEnvelope.lean/declarations/actualcriticalrelativepairing-le-sectorenvelope.md) | 62 | `result-track:d3756735a431481f3a577e82a8801147539a0e8a7019644d5e9adefeaa279cc7` |
| 6 | `theorem` | [positiveCriticalWeightMass_nonneg](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SourceCriticalChebyshevSectorEnvelope.lean/declarations/positivecriticalweightmass-nonneg.md) | 73 | `result-track:c1a0aa9d6a865b125cc4a8ad1ae86578341fccc60c3e39a0ab004dd66158ef15` |
| 7 | `theorem` | [chebyshevSectorEnvelope_ge_absoluteMass](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SourceCriticalChebyshevSectorEnvelope.lean/declarations/chebyshevsectorenvelope-ge-absolutemass.md) | 77 | `result-track:ea10000ca375d3f2b19788f2e3267d22b6ea58b2523b4a2ac4aa38268c8a6317` |
| 8 | `theorem` | [chebyshevSectorEnvelope_linear_lower](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SourceCriticalChebyshevSectorEnvelope.lean/declarations/chebyshevsectorenvelope-linear-lower.md) | 84 | `result-track:053e87fde3a3ed019a5aaba766a8bac512ef5d3594123fe78971e61c9136f469` |
| 9 | `theorem` | [chebyshevSectorEnvelope_not_eventually_bounded](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SourceCriticalChebyshevSectorEnvelope.lean/declarations/chebyshevsectorenvelope-not-eventually-bounded.md) | 90 | `result-track:2023df3f18dea882455dc29b50994a25e46cbed9787397ca3ce256ee29b2ba95` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=aee7fc7a01a1e666aa373dd09c824bd4200af6348aca4c5665729c9b1748add5 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/D0449d39d9bbe7a48b1dSourceCriticalChebyshevSectorEnvelope/Variante610310852baacde8789f0a07233ba4b72f4fb4be2da15e613e335bc51c553d4.lean","GRWTSK/_verification/specifications/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/D0449d39d9bbe7a48b1dSourceCriticalChebyshevSectorEnvelope/Variante610310852baacde8789f0a07233ba4b72f4fb4be2da15e613e335bc51c553d4.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
