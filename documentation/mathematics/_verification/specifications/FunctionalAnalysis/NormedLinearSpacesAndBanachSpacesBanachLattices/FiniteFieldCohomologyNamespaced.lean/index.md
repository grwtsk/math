# Verification target: Finite Field Cohomology Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "58733c2c938c1dfb9a453f3170c4e6cdd760333b",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/FiniteFieldCohomology/Variantab2a8c5bc4f972ad359434100a2c6a5b3aa4550fea3b3d5b8e3af314bfbd5510.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FiniteFieldCohomologyNamespaced.lean/index.md) · [Full source](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FiniteFieldCohomologyNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `58733c2c938c1dfb9a453f3170c4e6cdd760333b`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/FiniteFieldCohomology/Variantab2a8c5bc4f972ad359434100a2c6a5b3aa4550fea3b3d5b8e3af314bfbd5510.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/FiniteFieldCohomology/Variantab2a8c5bc4f972ad359434100a2c6a5b3aa4550fea3b3d5b8e3af314bfbd5510.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.AbelReynolds.SpectralBound` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [FiniteFieldCohomologicalEligibility](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FiniteFieldCohomologyNamespaced.lean/declarations/finitefieldcohomologicaleligibility.md) | 24 | `declaration-track:6217f0c1bd61cce016a00b4c9bc1de965be737a25ff9925ab9ce96f7546cb88f` |
| 2 | `structure` | [FiniteFieldSquareRootCertificate](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FiniteFieldCohomologyNamespaced.lean/declarations/finitefieldsquarerootcertificate.md) | 38 | `declaration-track:bfd43ba1668bf736e4657f200d2281113a2742773473fccbbafd0dfbbb8131f5` |
| 3 | `def` | [HasUniformSquareRootLogBound](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FiniteFieldCohomologyNamespaced.lean/declarations/hasuniformsquarerootlogbound.md) | 53 | `declaration-track:64ce8932007d969f13acc2967bde6c95271bb5f5368091b6b75914ef72ae1629` |
| 4 | `constant` | [*](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FiniteFieldCohomologyNamespaced.lean/declarations/anonymous.md) | 61 | `declaration-track:3534c692a9b732f4a6a482e74f6854526f713fbfba7d2c15d2bafb707a316aee` |
| 5 | `theorem` | [centered_bound](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FiniteFieldCohomologyNamespaced.lean/declarations/centered-bound.md) | 75 | `result-track:fdad58e6726a5b42415c89d8f969888e4335c530e9e5d02a6342545614960838` |
| 6 | `theorem` | [hasUniformSquareRootLogBound](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/FiniteFieldCohomologyNamespaced.lean/declarations/hasuniformsquarerootlogbound-source-edition-2.md) | 101 | `result-track:98e511f8397b9107429bf4cd8daa4e37aa4383f41b7a48d93d39cfb387c3b386` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a60ef92a57436c6d7f3ccef29b14a5f72722b5277bf3436510bf770b97197f2b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/FiniteFieldCohomology/Variantab2a8c5bc4f972ad359434100a2c6a5b3aa4550fea3b3d5b8e3af314bfbd5510.lean","GRWTSK/_verification/specifications/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/FiniteFieldCohomology/Variantab2a8c5bc4f972ad359434100a2c6a5b3aa4550fea3b3d5b8e3af314bfbd5510.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
