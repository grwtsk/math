# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.Checks.SafeShiftSymmetricPackingControls

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "795d9246dc77dd9773820c79bf997c680893b7de",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/Checks/SafeShiftSymmetricPackingControls.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../NumberTheory/Zeta/Riemann/Checks/SafeShiftSymmetricPackingControls.lean/index.md) · [Full source](../../../../../../../NumberTheory/Zeta/Riemann/Checks/SafeShiftSymmetricPackingControls.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `795d9246dc77dd9773820c79bf997c680893b7de`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/Checks/SafeShiftSymmetricPackingControls.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/Checks/SafeShiftSymmetricPackingControls.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.SafeShiftSymmetricPacking`](../../../../../../../NumberTheory/Zeta/Riemann/SafeShiftSymmetricPacking.lean/index.md) — import line 3; pinned internal source present.
- `Mathlib.Tactic` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [even_channel_reflection_invariant](../../../../../../../NumberTheory/Zeta/Riemann/Checks/SafeShiftSymmetricPackingControls.lean/declarations/even-channel-reflection-invariant--12ebb3b54808b30a76bb8726.md) | 14 | `result-track:12ebb3b54808b30a76bb8726130baf4f3b594b87277f5699c0cbed529c966389` |
| 2 | `theorem` | [odd_channel_reflection_antisymmetric](../../../../../../../NumberTheory/Zeta/Riemann/Checks/SafeShiftSymmetricPackingControls.lean/declarations/odd-channel-reflection-antisymmetric--75de819277ae8832d6be2258.md) | 20 | `result-track:75de819277ae8832d6be22588476af691afaea68af60e62bfa76cb751f8a4fa8` |
| 3 | `theorem` | [symmetric_stage_nonnegative](../../../../../../../NumberTheory/Zeta/Riemann/Checks/SafeShiftSymmetricPackingControls.lean/declarations/symmetric-stage-nonnegative--46770c5ac045699fde83f6cf.md) | 26 | `result-track:46770c5ac045699fde83f6cfb996d404aa328e30e63a1cb735d988f588dba403` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=da7c12caeeb458eadc7286db5fb1d45e7019d60ef6b0ad31c5847c9549f7596b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/Zeta/Riemann/Checks/SafeShiftSymmetricPackingControls.lean","GRWTSK/_verification/specifications/NumberTheory/Zeta/Riemann/Checks/SafeShiftSymmetricPackingControls.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
