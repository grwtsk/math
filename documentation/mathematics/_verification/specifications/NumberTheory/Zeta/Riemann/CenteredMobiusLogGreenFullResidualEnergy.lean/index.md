# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.CenteredMobiusLogGreenFullResidualEnergy

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1c043402ab561d5476797ab2096e34f99aa7bb35",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenFullResidualEnergy.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenFullResidualEnergy.lean/index.md) · [Full source](../../../../../../NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenFullResidualEnergy.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1c043402ab561d5476797ab2096e34f99aa7bb35`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenFullResidualEnergy.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenFullResidualEnergy.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.CenteredMobiusLogGreenFiniteExhaustion`](../../../../../../NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenFiniteExhaustion.lean/index.md) — import line 7; pinned internal source present.
- `Mathlib.Topology.Algebra.InfiniteSum.Real` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [greenFullResidualEnergyBound](../../../../../../NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenFullResidualEnergy.lean/declarations/greenfullresidualenergybound--fd4f2b2d16ea5719b670ffd1.md) | 16 | `declaration-track:fd4f2b2d16ea5719b670ffd127b931c923ed085cf5b468fbbaa10506c4d4df84` |
| 2 | `theorem` | [greenResidual_any_finset_le](../../../../../../NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenFullResidualEnergy.lean/declarations/greenresidual-any-finset-le--bcf3790a263720cac0ef1fe6.md) | 31 | `result-track:bcf3790a263720cac0ef1fe69cc1df9543e99bf5b85a0d60960cc7f8d815a091` |
| 3 | `theorem` | [summable_sq_norm_greenCenteringResidual](../../../../../../NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenFullResidualEnergy.lean/declarations/summable-sq-norm-greencenteringresidual--3b053b686f165680e9313854.md) | 68 | `result-track:3b053b686f165680e9313854958715bb92204b494e5b24e06c0e02078a69a4e0` |
| 4 | `theorem` | [tsum_sq_norm_greenCenteringResidual_le](../../../../../../NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenFullResidualEnergy.lean/declarations/tsum-sq-norm-greencenteringresidual-le--2dd035ecf3edd45011fd5c45.md) | 79 | `result-track:2dd035ecf3edd45011fd5c454a4d264cf816a408c5f74dff97b2631a878bcc0c` |
| 5 | `theorem` | [greenFullResidualEnergyBound_eventually_small](../../../../../../NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenFullResidualEnergy.lean/declarations/greenfullresidualenergybound-eventually-small--ab34663f603daed90a76370f.md) | 91 | `result-track:ab34663f603daed90a76370f1e674942cee45384a292be642b41db0b81effa99` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=838a536ad76323867dc787db7154ce2abccd1af0847d560ce2bf1083918df843 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenFullResidualEnergy.lean","GRWTSK/_verification/specifications/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenFullResidualEnergy.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
