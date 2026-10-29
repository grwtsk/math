# Verification target: GRWTSK.NumberTheory.MobiusEndpointBudgetAudit.Variant1f8fd948d9cac761eec4e76ab7d7c19a0c8db9967277986ae7af43a16bc40e12

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c8c568cc31fa40fc095a085eaf1473101424aaca",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/MobiusEndpointBudgetAudit/Variant1f8fd948d9cac761eec4e76ab7d7c19a0c8db9967277986ae7af43a16bc40e12.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../NumberTheory/MobiusEndpointBudgetAudit/Variant1f8fd948d9cac761eec4e76ab7d7c19a0c8db9967277986ae7af43a16bc40e12.lean/index.md) · [Full source](../../../../../NumberTheory/MobiusEndpointBudgetAudit/Variant1f8fd948d9cac761eec4e76ab7d7c19a0c8db9967277986ae7af43a16bc40e12.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c8c568cc31fa40fc095a085eaf1473101424aaca`.

Source path: `GRWTSK/NumberTheory/MobiusEndpointBudgetAudit/Variant1f8fd948d9cac761eec4e76ab7d7c19a0c8db9967277986ae7af43a16bc40e12.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/MobiusEndpointBudgetAudit/Variant1f8fd948d9cac761eec4e76ab7d7c19a0c8db9967277986ae7af43a16bc40e12.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceComparison.MobiusPrefixTilt` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.Harmonic.Bounds` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [reciprocal_abs_le_harmonic](../../../../../NumberTheory/MobiusEndpointBudgetAudit/Variant1f8fd948d9cac761eec4e76ab7d7c19a0c8db9967277986ae7af43a16bc40e12.lean/declarations/reciprocal-abs-le-harmonic--9ea5e0415178137926b98fed.md) | 12 | `result-track:9ea5e0415178137926b98fed746c2f928e74888d9afef81aafd7b34c5672a9b3` |
| 2 | `theorem` | [reciprocal_abs_le_one_add_log](../../../../../NumberTheory/MobiusEndpointBudgetAudit/Variant1f8fd948d9cac761eec4e76ab7d7c19a0c8db9967277986ae7af43a16bc40e12.lean/declarations/reciprocal-abs-le-one-add-log--a303061b3aa4d5b30d6e1e91.md) | 30 | `result-track:a303061b3aa4d5b30d6e1e919b8157ecf17fdea2dd7cf1b9b6a6e55c26360300` |
| 3 | `theorem` | [prefix_abs_le](../../../../../NumberTheory/MobiusEndpointBudgetAudit/Variant1f8fd948d9cac761eec4e76ab7d7c19a0c8db9967277986ae7af43a16bc40e12.lean/declarations/prefix-abs-le--6c19050d0f5d7a994b0e0fc2.md) | 34 | `result-track:6c19050d0f5d7a994b0e0fc270417443a937f9d300004dd4765ab24a712fe2fe` |
| 4 | `theorem` | [integrand_norm_le](../../../../../NumberTheory/MobiusEndpointBudgetAudit/Variant1f8fd948d9cac761eec4e76ab7d7c19a0c8db9967277986ae7af43a16bc40e12.lean/declarations/integrand-norm-le--e653a4c29a9e026d98f519a7.md) | 42 | `result-track:e653a4c29a9e026d98f519a7667f94d1a3b9bd784b7f0b89bef32117cbd0a083` |
| 5 | `theorem` | [correctedNumerator_half_add_norm_le](../../../../../NumberTheory/MobiusEndpointBudgetAudit/Variant1f8fd948d9cac761eec4e76ab7d7c19a0c8db9967277986ae7af43a16bc40e12.lean/declarations/correctednumerator-half-add-norm-le--f5469a31eba1a1bc51ccd9d3.md) | 60 | `result-track:f5469a31eba1a1bc51ccd9d37a7b02ce4cd3c869a70fbad32449703790eace7c` |
| 6 | `def` | [dampedCoefficient](../../../../../NumberTheory/MobiusEndpointBudgetAudit/Variant1f8fd948d9cac761eec4e76ab7d7c19a0c8db9967277986ae7af43a16bc40e12.lean/declarations/dampedcoefficient--ec090728cd5a4d427cc7183e.md) | 96 | `declaration-track:ec090728cd5a4d427cc7183e8695757ce760ecdcabbb4ed0b9a266084782b6aa` |
| 7 | `theorem` | [dampedCoefficient_abs_sum_le](../../../../../NumberTheory/MobiusEndpointBudgetAudit/Variant1f8fd948d9cac761eec4e76ab7d7c19a0c8db9967277986ae7af43a16bc40e12.lean/declarations/dampedcoefficient-abs-sum-le--de349758bde7a31f56f6aca1.md) | 102 | `result-track:de349758bde7a31f56f6aca1eb99d2bc446f232fa222002979d496849998d770` |
| 8 | `theorem` | [damping_exp](../../../../../NumberTheory/MobiusEndpointBudgetAudit/Variant1f8fd948d9cac761eec4e76ab7d7c19a0c8db9967277986ae7af43a16bc40e12.lean/declarations/damping-exp--7998cea39ff4d53437b879b8.md) | 142 | `result-track:7998cea39ff4d53437b879b8177edbd5450f130e8873f256262832d2dbb7879c` |
| 9 | `theorem` | [dampedCoefficient_sum_eq_correctedNumerator](../../../../../NumberTheory/MobiusEndpointBudgetAudit/Variant1f8fd948d9cac761eec4e76ab7d7c19a0c8db9967277986ae7af43a16bc40e12.lean/declarations/dampedcoefficient-sum-eq-correctednumerator--263bf188069fbde3ecd6731c.md) | 152 | `result-track:263bf188069fbde3ecd6731c960c12146487955f446ba649a7b60242fbef9c72` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=44ef8893714b7fd6954904da5e6bd2998a4368feb807fa06b6ff74dfe8e515bd -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/MobiusEndpointBudgetAudit/Variant1f8fd948d9cac761eec4e76ab7d7c19a0c8db9967277986ae7af43a16bc40e12.lean","GRWTSK/_verification/specifications/NumberTheory/MobiusEndpointBudgetAudit/Variant1f8fd948d9cac761eec4e76ab7d7c19a0c8db9967277986ae7af43a16bc40e12.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
