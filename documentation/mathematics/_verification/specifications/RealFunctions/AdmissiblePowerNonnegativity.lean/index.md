# Verification target: Admissible Power Nonnegativity

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3b38caf39b6d788b922becc48558942dfcbe59a1",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/RealFunctions/AdmissibleRealPowerModel/Varianta330bd9a635a18f2/AdmissiblePowerNonnegativity.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../RealFunctions/AdmissiblePowerNonnegativity.lean/index.md) · [Full source](../../../../RealFunctions/AdmissiblePowerNonnegativity.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3b38caf39b6d788b922becc48558942dfcbe59a1`.

Source path: `GRWTSK/Analysis/RealAnalysis/RealFunctions/AdmissibleRealPowerModel/Varianta330bd9a635a18f2/AdmissiblePowerNonnegativity.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/RealFunctions/AdmissibleRealPowerModel/Varianta330bd9a635a18f2/AdmissiblePowerNonnegativity.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `BitMatrix.Codec.Profiles` — import line 19; external provider; requires a separately pinned dependency.
- `BitMatrix.Geometry.CarrierGrid` — import line 20; external provider; requires a separately pinned dependency.
- `BitMatrix.Runtime.Semantics` — import line 21; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [PrecessionInvocation](../../../../RealFunctions/AdmissiblePowerNonnegativity.lean/declarations/precessioninvocation.md) | 44 | `declaration-track:0413132178496045eb6fc791f9d7ec219093c1bab19e134228688aa6643ff280` |
| 2 | `def` | [executePrecession](../../../../RealFunctions/AdmissiblePowerNonnegativity.lean/declarations/executeprecession.md) | 50 | `declaration-track:b3b41bc0b9ea8f0fd3b30f64348f4c04df6df8df5e4f80b3c381e4dd3b2064f2` |
| 3 | `def` | [precessionRepresentation](../../../../RealFunctions/AdmissiblePowerNonnegativity.lean/declarations/precessionrepresentation.md) | 54 | `declaration-track:e326ff91b17abd8904b86ca7581d22b2ab2fc1d4fdcf2a8d5372b0c8d29b652c` |
| 4 | `theorem` | [executePrecession_represents](../../../../RealFunctions/AdmissiblePowerNonnegativity.lean/declarations/executeprecession-represents.md) | 61 | `result-track:c489e5af22d1dc5b58b73a656cfe5b249b7c9ae61bdbc6b2f79adb293916be1d` |
| 5 | `theorem` | [executePrecession_nonnegative](../../../../RealFunctions/AdmissiblePowerNonnegativity.lean/declarations/executeprecession-nonnegative.md) | 70 | `result-track:945acba5d30f2b83633c28b4f999cd430156725aa112c4e61818f21eefbdc792` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=1b43ceb5a411f4343b18bfeb8c645335394fc5d86af8fb3524ce89b5458d054a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/RealFunctions/AdmissibleRealPowerModel/Varianta330bd9a635a18f2/AdmissiblePowerNonnegativity.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/RealFunctions/AdmissibleRealPowerModel/Varianta330bd9a635a18f2/AdmissiblePowerNonnegativity.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
