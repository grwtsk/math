# Verification target: Field Theory Separable Degree

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d8a7da7c1dd44057a7eaac3dda646901a3e97a21",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/SeparableDegree/Variante2192f9871e5453262b49a0ce9850e4f015175d1cd0065a038b9e27c15dff9c3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../FieldTheoryAndPolynomials/FieldTheorySeparableDegree.lean/index.md) · [Full source](../../../../FieldTheoryAndPolynomials/FieldTheorySeparableDegree.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d8a7da7c1dd44057a7eaac3dda646901a3e97a21`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/SeparableDegree/Variante2192f9871e5453262b49a0ce9850e4f015175d1cd0065a038b9e27c15dff9c3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/SeparableDegree/Variante2192f9871e5453262b49a0ce9850e4f015175d1cd0065a038b9e27c15dff9c3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Algebra.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.CharP.ExpChar` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.FieldTheory.Separable` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsSeparableContraction](../../../../FieldTheoryAndPolynomials/FieldTheorySeparableDegree.lean/declarations/isseparablecontraction.md) | 51 | `declaration-track:f466f4b20b7421cd8c8181ddac3e1ecf0cfa474c7e60a1ea8c92327951f35570` |
| 2 | `def` | [HasSeparableContraction](../../../../FieldTheoryAndPolynomials/FieldTheorySeparableDegree.lean/declarations/hasseparablecontraction.md) | 56 | `declaration-track:0c29ee750bf93b175691b39ce948f912844f486dcae28d1d546da09c8fb3419c` |
| 3 | `def` | [HasSeparableContraction.contraction](../../../../FieldTheoryAndPolynomials/FieldTheorySeparableDegree.lean/declarations/hasseparablecontraction-contraction.md) | 63 | `declaration-track:02ade6bec54f1e95aa1e60497be9d4ac9600d4fa6ddcedd7f06ef44db55fc5fb` |
| 4 | `def` | [HasSeparableContraction.degree](../../../../FieldTheoryAndPolynomials/FieldTheorySeparableDegree.lean/declarations/hasseparablecontraction-degree.md) | 68 | `declaration-track:8db3e577a5c5ad066812bd1faa232983a3e9a867e9724ec3deff79aa806c49bd` |
| 5 | `theorem` | [IsSeparableContraction.dvd_degree'](../../../../FieldTheoryAndPolynomials/FieldTheorySeparableDegree.lean/declarations/isseparablecontraction-dvd-degree.md) | 73 | `result-track:0fab16e28a2354525cdb2230316a4e1c353ac3796f878510cd35c4302516ad8c` |
| 6 | `theorem` | [HasSeparableContraction.dvd_degree'](../../../../FieldTheoryAndPolynomials/FieldTheorySeparableDegree.lean/declarations/hasseparablecontraction-dvd-degree.md) | 80 | `result-track:13e0e27b2b01c4c65444c729f5c463c8b75d0c8e66a2b839ce36c5589f1e2ce0` |
| 7 | `theorem` | [HasSeparableContraction.dvd_degree](../../../../FieldTheoryAndPolynomials/FieldTheorySeparableDegree.lean/declarations/hasseparablecontraction-dvd-degree-source-edition-2.md) | 85 | `result-track:89e02c8e72f0031db2bc3b618a1cb82c305f6d92e3f34c8f252792fef8c97b92` |
| 8 | `theorem` | [HasSeparableContraction.eq_degree](../../../../FieldTheoryAndPolynomials/FieldTheorySeparableDegree.lean/declarations/hasseparablecontraction-eq-degree.md) | 91 | `result-track:f0d6b3184b3bf755462399a2063714be177be1b817a340008e70f59028ff8df6` |
| 9 | `theorem` | [Irreducible.hasSeparableContraction](../../../../FieldTheoryAndPolynomials/FieldTheorySeparableDegree.lean/declarations/irreducible-hasseparablecontraction.md) | 107 | `result-track:d5b78739693ede0c6672a405a5dac0eda64d49a7cf3bedc464bd9eba352bdd1d` |
| 10 | `theorem` | [contraction_degree_eq_or_insep](../../../../FieldTheoryAndPolynomials/FieldTheorySeparableDegree.lean/declarations/contraction-degree-eq-or-insep.md) | 117 | `result-track:5574c5dc6aaf4a2b6cd14cd761aa4d3346fcc376d13bbd5a63e49c0637099bab` |
| 11 | `theorem` | [IsSeparableContraction.degree_eq](../../../../FieldTheoryAndPolynomials/FieldTheorySeparableDegree.lean/declarations/isseparablecontraction-degree-eq.md) | 131 | `result-track:b4b08e2e129cd9b63eed0949de771fa59e8079f9110757e27a0465584fbed267` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=97e6396f7eff26bdc63e502ae069973f0f0e38731ddff651457b650855c068fe -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/CommutativeAlgebra/SeparableDegree/Variante2192f9871e5453262b49a0ce9850e4f015175d1cd0065a038b9e27c15dff9c3.lean","GRWTSK/_verification/specifications/Algebra/CommutativeAlgebra/SeparableDegree/Variante2192f9871e5453262b49a0ce9850e4f015175d1cd0065a038b9e27c15dff9c3.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
