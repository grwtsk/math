# Verification target: Rotation Signal

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cd5afd9a9e686ed502482444a45bafe5fdbe3465",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/RotationSignal/Variant7fee1d63ca7fa9642c61e58506a7a0ca94dbac5f3510b96ce87c89c327a6bd1a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/RotationSignal.lean/index.md) · [Full source](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/RotationSignal.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cd5afd9a9e686ed502482444a45bafe5fdbe3465`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/RotationSignal/Variant7fee1d63ca7fa9642c61e58506a7a0ca94dbac5f3510b96ce87c89c327a6bd1a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/RotationSignal/Variant7fee1d63ca7fa9642c61e58506a7a0ca94dbac5f3510b96ce87c89c327a6bd1a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.Oracle.Naming.CyclicCubical` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Module.Basic` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Operator.LinearIsometry` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.LinearIndependent.Basic` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [AdmissibleBanachRotation](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/RotationSignal.lean/declarations/admissiblebanachrotation.md) | 26 | `declaration-track:4cff6e8d79979b74f5f8cd758d6d891ae2f468091dfb73ba59a0d9409c3dde33` |
| 2 | `structure` | [CubicalFaceSignal](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/RotationSignal.lean/declarations/cubicalfacesignal.md) | 42 | `declaration-track:94ba187d9ac8cfeff469c4178b9459d2432c712c6d3842bec79f3d9d9d94357d` |
| 3 | `instance` | [(anonymous)](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/RotationSignal.lean/declarations/instance.md) | 45 | `declaration-track:0985399d9007f5cae64265f9695eb403542b10adf140b7883f766d92159569e1` |
| 4 | `def` | [allDegreeDiscrepancy](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/RotationSignal.lean/declarations/alldegreediscrepancy.md) | 52 | `declaration-track:d22622e50c8e30d1ba8df67a479342d593b3c397c14abd5380a6f1a1e43b18a8` |
| 5 | `def` | [allDegreeSutured](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/RotationSignal.lean/declarations/alldegreesutured.md) | 61 | `declaration-track:e30c93f7b5fdd2869df88de81469ad27d5e2137516cc0e68381df5da712bc912` |
| 6 | `def` | [flipBitField](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/RotationSignal.lean/declarations/flipbitfield.md) | 69 | `declaration-track:76396a1dd099f7ff1c1fe44953da6352f5df605ec48212bf80fcb717159bb651` |
| 7 | `def` | [banachDirichletEnergy](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/RotationSignal.lean/declarations/banachdirichletenergy.md) | 76 | `declaration-track:f3334207b921dbffd284d74fae360aee915f8c3f7d8aec8a3f1045dd328dc036` |
| 8 | `def` | [allFaceDirichletResidual](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/RotationSignal.lean/declarations/allfacedirichletresidual.md) | 88 | `declaration-track:dfb0844a521b245b4909544870dbf24477aa73fe5914e0a033ec73d7a0309ee3` |
| 9 | `theorem` | [dirichletEnergy_zero_of_allDegreeSutured](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/RotationSignal.lean/declarations/dirichletenergy-zero-of-alldegreesutured.md) | 100 | `result-track:aeb5f653beaa0171b2011b0a420a92ad45709a3def596ee0a3a1bdf29fe80955` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=0be6eb1d947fccb00749cafa083b91766d3edd57052fd77f78e083a598442bda -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/RotationSignal/Variant7fee1d63ca7fa9642c61e58506a7a0ca94dbac5f3510b96ce87c89c327a6bd1a.lean","GRWTSK/_verification/specifications/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/RotationSignal/Variant7fee1d63ca7fa9642c61e58506a7a0ca94dbac5f3510b96ce87c89c327a6bd1a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
