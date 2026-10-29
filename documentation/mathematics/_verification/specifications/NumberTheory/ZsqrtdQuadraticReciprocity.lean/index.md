# Verification target: Zsqrtd Quadratic Reciprocity

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "636d7ac2ac0dee6f5bb5a1a970aca0ce0f6dd56f",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/QuadraticReciprocity/Variant2f4fce28e44ca4f4471863536cbc4f0c55c2d4f21511f9bc5ffd5326aff6f8c0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../NumberTheory/ZsqrtdQuadraticReciprocity.lean/index.md) · [Full source](../../../../NumberTheory/ZsqrtdQuadraticReciprocity.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `636d7ac2ac0dee6f5bb5a1a970aca0ce0f6dd56f`.

Source path: `GRWTSK/NumberTheory/QuadraticReciprocity/Variant2f4fce28e44ca4f4471863536cbc4f0c55c2d4f21511f9bc5ffd5326aff6f8c0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/QuadraticReciprocity/Variant2f4fce28e44ca4f4471863536cbc4f0c55c2d4f21511f9bc5ffd5326aff6f8c0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.NumberTheory.Zsqrtd.GaussianInt` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.LegendreSymbol.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Ring.Lemmas` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [mod_four_eq_three_of_nat_prime_of_prime](../../../../NumberTheory/ZsqrtdQuadraticReciprocity.lean/declarations/mod-four-eq-three-of-nat-prime-of-prime.md) | 31 | `result-track:499b3e8cc9885353fbaf3a8770432b8ff893d08d4d11a56cd769ebb87c668d9b` |
| 2 | `theorem` | [prime_of_nat_prime_of_mod_four_eq_three](../../../../NumberTheory/ZsqrtdQuadraticReciprocity.lean/declarations/prime-of-nat-prime-of-mod-four-eq-three.md) | 75 | `result-track:0c6ab1fa3cb68f447f9a53b828a8d62cf7e5653f03ffcfdfe113cf8efd8b2eaf` |
| 3 | `theorem` | [prime_iff_mod_four_eq_three_of_nat_prime](../../../../NumberTheory/ZsqrtdQuadraticReciprocity.lean/declarations/prime-iff-mod-four-eq-three-of-nat-prime.md) | 85 | `result-track:43d299fba19071b3afb143cdf8167891d2ad433a10d7f9b7a5a50b2d4daf73aa` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=8ced6cee0a66cdf5d85ef735a807d76456be2f5b1e1696df9d42d949a50f3372 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/QuadraticReciprocity/Variant2f4fce28e44ca4f4471863536cbc4f0c55c2d4f21511f9bc5ffd5326aff6f8c0.lean","GRWTSK/_verification/specifications/NumberTheory/ElementaryNumberTheory/QuadraticResidues/QuadraticReciprocity/Variant2f4fce28e44ca4f4471863536cbc4f0c55c2d4f21511f9bc5ffd5326aff6f8c0.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
