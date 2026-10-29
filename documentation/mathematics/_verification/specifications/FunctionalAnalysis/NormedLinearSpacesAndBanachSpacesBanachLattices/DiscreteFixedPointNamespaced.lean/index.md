# Verification target: Discrete Fixed Point Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e9afe29a87a2a8b54d9479c537dab20379b84669",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DiscreteFixedPoint/Variant6ba19adb95ebd464bf816bf036317a9e583f3c2e9a94f7594b4b56da780e7410.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/DiscreteFixedPointNamespaced.lean/index.md) · [Full source](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/DiscreteFixedPointNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e9afe29a87a2a8b54d9479c537dab20379b84669`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DiscreteFixedPoint/Variant6ba19adb95ebd464bf816bf036317a9e583f3c2e9a94f7594b4b56da780e7410.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DiscreteFixedPoint/Variant6ba19adb95ebd464bf816bf036317a9e583f3c2e9a94f7594b4b56da780e7410.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Dynamics.FixedPoints.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Group.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fintype.Basic` — import line 8; external provider; requires a separately pinned dependency.
- `Mathematics.Concept.AuthorityElements.AuthorityProfile` — import line 9; external provider; requires a separately pinned dependency.
- `Mathematics.Projection.SnapshotAuthority` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [VersionedOperator](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/DiscreteFixedPointNamespaced.lean/declarations/versionedoperator.md) | 32 | `declaration-track:54776cb382087026dc2964412ce64899970abc725e9b5aa4371bd97295d07741` |
| 2 | `def` | [step](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/DiscreteFixedPointNamespaced.lean/declarations/step.md) | 45 | `declaration-track:7a5c2bd87f7d27688f8e6adafb81f462f67cc88f0be142f98f137e11ccce5de3` |
| 3 | `theorem` | [step_value](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/DiscreteFixedPointNamespaced.lean/declarations/step-value.md) | 50 | `result-track:986655e81a85a5ab2715d902106d3a4d7b149401ec21cec252a886eef7e17b64` |
| 4 | `def` | [onUniverse](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/DiscreteFixedPointNamespaced.lean/declarations/onuniverse.md) | 57 | `declaration-track:fb92a676ffb34c915f3baddd20e609a0de96603545d78491d5f8800f22434c04` |
| 5 | `structure` | [CertifiedFixedPoint](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/DiscreteFixedPointNamespaced.lean/declarations/certifiedfixedpoint.md) | 73 | `declaration-track:18fb28b276b90c7afb5c22c35433c6f9ccdfea942e0613ef9ae2cdd323ed8714` |
| 6 | `theorem` | [step_eq](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/DiscreteFixedPointNamespaced.lean/declarations/step-eq.md) | 85 | `result-track:ddf8e8fa1745042af613c4d06af9786748bf4b0ffb7fa15178687e2321011b95` |
| 7 | `theorem` | [raw_step_eq](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/DiscreteFixedPointNamespaced.lean/declarations/raw-step-eq.md) | 91 | `result-track:2a73f1dd18e92eef87bcf2169462e65508ac1ba3fe49ab26a9645dd541672708` |
| 8 | `theorem` | [iterate_eq](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/DiscreteFixedPointNamespaced.lean/declarations/iterate-eq.md) | 97 | `result-track:f28a8cdf4b429a1d543dc0f229cac8846841fb45f91b5544c7625199b9c6464e` |
| 9 | `def` | [fixedResidual](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/DiscreteFixedPointNamespaced.lean/declarations/fixedresidual.md) | 106 | `declaration-track:c0f340af4319a2f102cd67caa7d3b0a07196fa73aecc2bb77a7845e5911d1f9e` |
| 10 | `structure` | [ApproximateFixedPointObservation](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/DiscreteFixedPointNamespaced.lean/declarations/approximatefixedpointobservation.md) | 117 | `declaration-track:b86f5d0085d7f9a2b64a929e8803d36080de8213be969915dfb569ef9ac6e4b7` |
| 11 | `structure` | [CandidateFixedFamily](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/DiscreteFixedPointNamespaced.lean/declarations/candidatefixedfamily.md) | 128 | `declaration-track:9f8d8a196062e50d4fe75033148c7c56a60575980fa4fb192c99f0de34b2e028` |
| 12 | `structure` | [CertifiedFixedFamily](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/DiscreteFixedPointNamespaced.lean/declarations/certifiedfixedfamily.md) | 137 | `declaration-track:6d62f8109a95da32ec116269ce4422bf72583538729fcf81a5946faaeac170b4` |
| 13 | `structure` | [ExhaustiveFixedFamilyOn](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/DiscreteFixedPointNamespaced.lean/declarations/exhaustivefixedfamilyon.md) | 148 | `declaration-track:ec35c28588466c5cb376c2f41974a588aae7ec433f3848ba2c2fd57e145f0186` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=30a5b2f003c3e1056c81393901bdff00890945dba9c3d92ca295b6c1990058af -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DiscreteFixedPoint/Variant6ba19adb95ebd464bf816bf036317a9e583f3c2e9a94f7594b4b56da780e7410.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DiscreteFixedPoint/Variant6ba19adb95ebd464bf816bf036317a9e583f3c2e9a94f7594b4b56da780e7410.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
