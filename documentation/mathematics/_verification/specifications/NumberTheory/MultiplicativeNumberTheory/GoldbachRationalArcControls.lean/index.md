# Verification target: GRWTSK.NumberTheory.Primes.Checks.GoldbachRationalArcControls

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d82004cc35b0ad248523c917e79978a1c395c339",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Primes/Checks/GoldbachRationalArcControls.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../NumberTheory/MultiplicativeNumberTheory/GoldbachRationalArcControls.lean/index.md) · [Full source](../../../../../NumberTheory/MultiplicativeNumberTheory/GoldbachRationalArcControls.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d82004cc35b0ad248523c917e79978a1c395c339`.

Source path: `GRWTSK/NumberTheory/Primes/Checks/GoldbachRationalArcControls.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Primes/Checks/GoldbachRationalArcControls.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Primes.GoldbachRationalArcCriterion`](../../../../../NumberTheory/MultiplicativeNumberTheory/GoldbachRationalArcCriterion.lean/index.md) — import line 4; pinned internal source present.
- `Mathlib.Tactic.NormNum` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [rational_indices_zero](../../../../../NumberTheory/MultiplicativeNumberTheory/GoldbachRationalArcControls.lean/declarations/rational-indices-zero.md) | 26 | `result-track:2eb747ce46012dc7157f4130d78e99299e8b4d742e44d2ffe48e7d760b609f5d` |
| 2 | `theorem` | [rational_indices_one](../../../../../NumberTheory/MultiplicativeNumberTheory/GoldbachRationalArcControls.lean/declarations/rational-indices-one.md) | 31 | `result-track:95086a236c53e7e14b382b7b2eaf2de329a26d7b70f87b34616b92881446cc83` |
| 3 | `theorem` | [rational_indices_two](../../../../../NumberTheory/MultiplicativeNumberTheory/GoldbachRationalArcControls.lean/declarations/rational-indices-two.md) | 37 | `result-track:0916061b6869c3d0f0d86c30fd5571a4266b55883dff5cdfe9180727c239d809` |
| 4 | `theorem` | [rational_radius_control](../../../../../NumberTheory/MultiplicativeNumberTheory/GoldbachRationalArcControls.lean/declarations/rational-radius-control.md) | 43 | `result-track:f7ac4e63414e73814b4c739b674d7629c17fee955bf3bb658257ff50da825a09` |
| 5 | `theorem` | [periodic_wrap_control](../../../../../NumberTheory/MultiplicativeNumberTheory/GoldbachRationalArcControls.lean/declarations/periodic-wrap-control.md) | 48 | `result-track:e1e3747253e3e4e580217cc4fab33b040f43a6a1eff5afe055b9d88497256bb9` |
| 6 | `theorem` | [raw_arc_overlap_control](../../../../../NumberTheory/MultiplicativeNumberTheory/GoldbachRationalArcControls.lean/declarations/raw-arc-overlap-control.md) | 54 | `result-track:28563880ba12568273ffc877d7d04236812740b883c11aebd8f5c3dfbb08eea6` |
| 7 | `theorem` | [zero_cutoff_region_empty](../../../../../NumberTheory/MultiplicativeNumberTheory/GoldbachRationalArcControls.lean/declarations/zero-cutoff-region-empty.md) | 63 | `result-track:71163b0fee2fbd419e7fccef23f329cc12a5156f5a940e5419d47826a291847c` |
| 8 | `theorem` | [clipping_excludes_zero](../../../../../NumberTheory/MultiplicativeNumberTheory/GoldbachRationalArcControls.lean/declarations/clipping-excludes-zero.md) | 68 | `result-track:1aedb92b9acd6285790b4ac9214a7a498c53872e1be95e77598b01e12a3ac06b` |
| 9 | `theorem` | [rational_partition_not_goldbach_witness](../../../../../NumberTheory/MultiplicativeNumberTheory/GoldbachRationalArcControls.lean/declarations/rational-partition-not-goldbach-witness.md) | 73 | `result-track:4fce58b633decd83fef2ea19f475a0ae0918a47f6f3310b13afef215ee15144a` |
| 10 | `theorem` | [clipping_is_not_optional](../../../../../NumberTheory/MultiplicativeNumberTheory/GoldbachRationalArcControls.lean/declarations/clipping-is-not-optional.md) | 81 | `result-track:687720622fb39077f22d7edd306e9078fa8d09a76e0677ccf52128242d3fb686` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=be9b62226f7dcf7a9761e4861016e584f946263213c7b37909c8a162745a6dd6 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/Primes/Checks/GoldbachRationalArcControls.lean","GRWTSK/_verification/specifications/NumberTheory/Primes/Checks/GoldbachRationalArcControls.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
