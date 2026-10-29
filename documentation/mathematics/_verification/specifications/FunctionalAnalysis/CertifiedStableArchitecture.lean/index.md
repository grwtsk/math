# Verification target: Certified Stable Architecture

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "834e4b2f77f7bfe099222a2d18599a197681137a",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/CertifiedStableArchitecture/Variantd4954b72e90a501d493d4365cc86a48dda11a3891cef3c653901e26ae02aa64f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../FunctionalAnalysis/CertifiedStableArchitecture.lean/index.md) · [Full source](../../../../FunctionalAnalysis/CertifiedStableArchitecture.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `834e4b2f77f7bfe099222a2d18599a197681137a`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/CertifiedStableArchitecture/Variantd4954b72e90a501d493d4365cc86a48dda11a3891cef3c653901e26ae02aa64f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/CertifiedStableArchitecture/Variantd4954b72e90a501d493d4365cc86a48dda11a3891cef3c653901e26ae02aa64f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.Authority.CertificateValidity` — import line 1; external provider; requires a separately pinned dependency.
- `Mathematics.Concept.BanachCompletion` — import line 2; external provider; requires a separately pinned dependency.
- `Mathematics.Concept.PropertyTransport` — import line 3; external provider; requires a separately pinned dependency.
- `Mathematics.Hilbert.SemanticRealization` — import line 4; external provider; requires a separately pinned dependency.
- `Mathematics.Operational.Contraction` — import line 5; external provider; requires a separately pinned dependency.
- `Mathematics.Operational.FixedPointSeparation` — import line 6; external provider; requires a separately pinned dependency.
- `Mathematics.Operational.Lyapunov` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [CertifiedStableArchitecture](../../../../FunctionalAnalysis/CertifiedStableArchitecture.lean/declarations/certifiedstablearchitecture.md) | 30 | `declaration-track:18da908910c73dbdbead1b7af627f0ef57838dcee880418ed2200f00c6823143` |
| 2 | `theorem` | [locallyAsymptoticallyStable](../../../../FunctionalAnalysis/CertifiedStableArchitecture.lean/declarations/locallyasymptoticallystable.md) | 100 | `result-track:cd31807c738d937521e331f84574b43af0a0438df9b8d8b77933d0c7e87a153d` |
| 3 | `theorem` | [pairwiseSeparated](../../../../FunctionalAnalysis/CertifiedStableArchitecture.lean/declarations/pairwiseseparated.md) | 110 | `result-track:60ad0a6913dd01a1e7c3092cf4d5adcc5ebd1125c1ed5de6725ac4d7f5cdb2f5` |
| 4 | `theorem` | [realizationBound](../../../../FunctionalAnalysis/CertifiedStableArchitecture.lean/declarations/realizationbound.md) | 121 | `result-track:79e8de81ed561240d5b75895aba3bf7e6d961a3b7662aa39adb9ee5d6f2a4eed` |
| 5 | `theorem` | [semanticRelationRealizesAsZero](../../../../FunctionalAnalysis/CertifiedStableArchitecture.lean/declarations/semanticrelationrealizesaszero.md) | 129 | `result-track:d12a4123c6cd9e2464ece904537b8f4a486cd5b32f54a39cd5650ec49f41bf35` |
| 6 | `theorem` | [admittedAnalogyPropertySound](../../../../FunctionalAnalysis/CertifiedStableArchitecture.lean/declarations/admittedanalogypropertysound.md) | 141 | `result-track:f8289a894396876419a61c1bafdccac0cc42a74f94a1e21f5e52777322bb5905` |
| 7 | `theorem` | [allCertificatesUsable](../../../../FunctionalAnalysis/CertifiedStableArchitecture.lean/declarations/allcertificatesusable.md) | 159 | `result-track:777782a847db8c82154e61ddfa6debda2e8fec7bf0d4864da2b1f4885c90aecc` |
| 8 | `theorem` | [perturbedFixedPointDistanceBound](../../../../FunctionalAnalysis/CertifiedStableArchitecture.lean/declarations/perturbedfixedpointdistancebound.md) | 178 | `result-track:aa4f49f294e173b11187b03be52a51e8e004dc5d605849e37d990c3a6878774c` |
| 9 | `theorem` | [sound](../../../../FunctionalAnalysis/CertifiedStableArchitecture.lean/declarations/sound.md) | 210 | `result-track:454a7edd61b94955e4ed7c54208f792534ec61fec6099543202aa8a93b0966d1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=98cfd8e0e1464f5e89c57444e0e91c10fff85e63f2759af74512238e812391c2 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/FunctionalAnalysis/CertifiedStableArchitecture/Variantd4954b72e90a501d493d4365cc86a48dda11a3891cef3c653901e26ae02aa64f.lean","GRWTSK/_verification/specifications/Analysis/FunctionalAnalysis/CertifiedStableArchitecture/Variantd4954b72e90a501d493d4365cc86a48dda11a3891cef3c653901e26ae02aa64f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
