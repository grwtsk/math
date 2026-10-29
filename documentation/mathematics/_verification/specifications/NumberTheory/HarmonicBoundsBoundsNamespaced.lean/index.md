# Verification target: Harmonic Bounds Bounds Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "809e2753eac72c907d1a657b0e0c060cd7844cbb",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Bounds/Variant7a6b51ff10b7394a18f56a8c67f3e13fcc19d09c965e2ecaa0a8ecd5c3664493.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../NumberTheory/HarmonicBoundsBoundsNamespaced.lean/index.md) · [Full source](../../../../NumberTheory/HarmonicBoundsBoundsNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `809e2753eac72c907d1a657b0e0c060cd7844cbb`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Bounds/Variant7a6b51ff10b7394a18f56a8c67f3e13fcc19d09c965e2ecaa0a8ecd5c3664493.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Bounds/Variant7a6b51ff10b7394a18f56a8c67f3e13fcc19d09c965e2ecaa0a8ecd5c3664493.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecialFunctions.Integrals` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SumIntegralComparisons` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.Harmonic.Defs` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [harmonic_eq_sum_Icc](../../../../NumberTheory/HarmonicBoundsBoundsNamespaced.lean/declarations/harmonic-eq-sum-icc.md) | 25 | `result-track:442532d6ff4bb9d9db592912b41731fb4eefa50d59aedc6fa1a9459f44281656` |
| 2 | `theorem` | [log_add_one_le_harmonic](../../../../NumberTheory/HarmonicBoundsBoundsNamespaced.lean/declarations/log-add-one-le-harmonic.md) | 29 | `result-track:94098b3f24ccfd429fb12c1d423de9a55253a9d8d0511d96d35eb05de166c471` |
| 3 | `theorem` | [harmonic_le_one_add_log](../../../../NumberTheory/HarmonicBoundsBoundsNamespaced.lean/declarations/harmonic-le-one-add-log.md) | 38 | `result-track:7ecf2af587828064de80ad68ab356483095783a6117ff16986ef4c5c28a0802f` |
| 4 | `theorem` | [log_le_harmonic_floor](../../../../NumberTheory/HarmonicBoundsBoundsNamespaced.lean/declarations/log-le-harmonic-floor.md) | 64 | `result-track:22f1c122c012a669309ed8fcab9506d6b26c35170f63612e3fd064c64735472d` |
| 5 | `theorem` | [harmonic_floor_le_one_add_log](../../../../NumberTheory/HarmonicBoundsBoundsNamespaced.lean/declarations/harmonic-floor-le-one-add-log.md) | 76 | `result-track:213a2de55cd5301c7ae91249e918a74c6f6ca552351238a8eef337b7de91f14d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=5d27f9ad9a4975f4b51518759cbcceb53a3937e85cae0991338e1a51bbcc17fc -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/Bounds/Variant7a6b51ff10b7394a18f56a8c67f3e13fcc19d09c965e2ecaa0a8ecd5c3664493.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/Bounds/Variant7a6b51ff10b7394a18f56a8c67f3e13fcc19d09c965e2ecaa0a8ecd5c3664493.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
