# Verification target: GRWTSK.Algebra.Polynomial.ConjugateQuartic

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7de8ae34b5ad481235115e18a35d986bb0870ae7",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Polynomial/ConjugateQuartic.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/PolynomialConjugateQuartic.lean/index.md) · [Full source](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/PolynomialConjugateQuartic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7de8ae34b5ad481235115e18a35d986bb0870ae7`.

Source path: `GRWTSK/Algebra/Polynomial/ConjugateQuartic.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Polynomial/ConjugateQuartic.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Complex.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Polynomial.Eval.Defs` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Ring` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Linarith` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Positivity` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [roots](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/PolynomialConjugateQuartic.lean/declarations/roots.md) | 27 | `declaration-track:0b816ed6080d992d411661609218bc5223c13f4c1c9f7fed9eb580d5e2ee622e` |
| 2 | `def` | [quartic](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/PolynomialConjugateQuartic.lean/declarations/quartic.md) | 31 | `declaration-track:500a7e575abef66caaec5531aefe178e056ef52e3c307ef5fb5391ee64acafaf` |
| 3 | `def` | [quadratic](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/PolynomialConjugateQuartic.lean/declarations/quadratic.md) | 35 | `declaration-track:5e4b25e7e3bba10ffdc9b85bcf06232f9ab6fee935b5a6be8690714758d45482` |
| 4 | `def` | [signedTrace](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/PolynomialConjugateQuartic.lean/declarations/signedtrace.md) | 39 | `declaration-track:d4f2284b76abc61e1789074d2313ec82e0fca93b75a7c78d075cb39b6141185d` |
| 5 | `def` | [quadraticTrace](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/PolynomialConjugateQuartic.lean/declarations/quadratictrace.md) | 43 | `declaration-track:7f93200a1f28689c0792c98a1b8621b2dd7caf53907547b0936da77f46c9ec2d` |
| 6 | `theorem` | [quartic_expansion](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/PolynomialConjugateQuartic.lean/declarations/quartic-expansion.md) | 46 | `result-track:684fe3c2ffe249bd768503811417a5d6f3f326425428e625071d0921bc60f7bf` |
| 7 | `theorem` | [quartic_eval_roots](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/PolynomialConjugateQuartic.lean/declarations/quartic-eval-roots.md) | 52 | `result-track:31ab2d490000b6f0cb1c240c59cf32e429e7e46c3ebc168edd40f8d377cc8d98` |
| 8 | `theorem` | [signedTrace_quadratic](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/PolynomialConjugateQuartic.lean/declarations/signedtrace-quadratic.md) | 60 | `result-track:d19a282455353defa3dd49dade7f9a7a7abb679444a3da93bfcf5bdf90bb2dc8` |
| 9 | `theorem` | [quadraticTrace_eq](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/PolynomialConjugateQuartic.lean/declarations/quadratictrace-eq.md) | 69 | `result-track:5e594cf2a837b36848189628bde76799a9be32d114972c89a9b0e9cbeb60f355` |
| 10 | `def` | [witnessTrace](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/PolynomialConjugateQuartic.lean/declarations/witnesstrace.md) | 78 | `declaration-track:39753e4c40e56f3b4b4cceb4501313ac790486afe834548793ad8eaaec131511` |
| 11 | `theorem` | [witnessTrace_eq](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/PolynomialConjugateQuartic.lean/declarations/witnesstrace-eq.md) | 81 | `result-track:85017261641e013ef22dae3a256c250cd29f56cf2134091f7461a6dfe210866b` |
| 12 | `theorem` | [witnessTrace_neg](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/PolynomialConjugateQuartic.lean/declarations/witnesstrace-neg.md) | 86 | `result-track:a1fe467d224956ad06e2b78c91b7f92bd2c9bbde8b0acb0258736006ca8e0c73` |
| 13 | `theorem` | [witnessTrace_nonneg_iff](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/PolynomialConjugateQuartic.lean/declarations/witnesstrace-nonneg-iff.md) | 94 | `result-track:11b52e405d1746ca5ef907d91bb1168ead6cca2b9983d077c79de662f2c52484` |
| 14 | `theorem` | [quadraticTrace_nonneg_iff](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/PolynomialConjugateQuartic.lean/declarations/quadratictrace-nonneg-iff.md) | 103 | `result-track:916e6801d3a45a8c4cf3836a5f6c59067f923f76f28d0e6382a04b68ff22ac0f` |
| 15 | `theorem` | [even_test_trace](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/PolynomialConjugateQuartic.lean/declarations/even-test-trace.md) | 115 | `result-track:1f937627fd8b77ab26e6eb0e87bf1dbb4fca8e2b3e58e98cb6123b54b07d6085` |
| 16 | `theorem` | [witnessTrace_zero_height](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/PolynomialConjugateQuartic.lean/declarations/witnesstrace-zero-height.md) | 120 | `result-track:249f473fcc978213c1126cfc705afe1611ee1250aa8cea65e12b6bc9ac332e12` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=32ca07b428d1170869160066cea7cb4f69b4f6c132fbf1b9bcfb9fdf8240ed4c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/Polynomial/ConjugateQuartic.lean","GRWTSK/_verification/specifications/Algebra/Polynomial/ConjugateQuartic.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
