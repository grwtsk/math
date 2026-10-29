# Verification target: Eisenstein Series MDifferentiable

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bcc2172a330d9700d8980e3d8f10ad7714cf7653",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AutomorphicForms/ModularForms/MDifferentiable/Variant91221d2c31acc71cedd3b4744d8e992765ecdedef4ab5dda4325f844fa45ead3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../NumberTheory/EisensteinSeriesMDifferentiable.lean/index.md) · [Full source](../../../../NumberTheory/EisensteinSeriesMDifferentiable.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bcc2172a330d9700d8980e3d8f10ad7714cf7653`.

Source path: `GRWTSK/NumberTheory/AutomorphicForms/ModularForms/MDifferentiable/Variant91221d2c31acc71cedd3b4744d8e992765ecdedef4ab5dda4325f844fa45ead3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AutomorphicForms/ModularForms/MDifferentiable/Variant91221d2c31acc71cedd3b4744d8e992765ecdedef4ab5dda4325f844fa45ead3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.NumberTheory.ModularForms.EisensteinSeries.UniformConvergence` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Complex.UpperHalfPlane.Manifold` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Complex.LocallyUniformLimit` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Geometry.Manifold.MFDeriv.FDeriv` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [div_linear_zpow_differentiableOn](../../../../NumberTheory/EisensteinSeriesMDifferentiable.lean/declarations/div-linear-zpow-differentiableon.md) | 28 | `result-track:3ee3746495703119c6b4e8041ee673eb01dcd183df5979cd74d11cf900b08397` |
| 2 | `lemma` | [eisSummand_extension_differentiableOn](../../../../NumberTheory/EisensteinSeriesMDifferentiable.lean/declarations/eissummand-extension-differentiableon.md) | 41 | `result-track:ec14f5583f6b5a0e104827322a58a7e65bdc47d535e34028e6a27fe00b9d1a21` |
| 3 | `theorem` | [eisensteinSeries_SIF_MDifferentiable](../../../../NumberTheory/EisensteinSeriesMDifferentiable.lean/declarations/eisensteinseries-sif-mdifferentiable.md) | 49 | `result-track:02a4ed924919392d08ca2aae79f8f7bbd8a836aeec3ca2ae713b164b3a2e7bf8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f98001a0706f82f8da126698e7113d3bd83a2bc728890122b7d6f462a8ab9452 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AutomorphicForms/ModularForms/MDifferentiable/Variant91221d2c31acc71cedd3b4744d8e992765ecdedef4ab5dda4325f844fa45ead3.lean","GRWTSK/_verification/specifications/NumberTheory/AutomorphicForms/ModularForms/MDifferentiable/Variant91221d2c31acc71cedd3b4744d8e992765ecdedef4ab5dda4325f844fa45ead3.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
