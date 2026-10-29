# Verification target: Annihilating Polynomial Namespaced Span Minpoly Eq Annihilator

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4b89c6cde088164859ffa93bc5834fb6d5825d78",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/AnnihilatingPolynomial/Varianta451d143dd4e3edf6c55f645dea7b8a428fc770a3bc463db46a46af951c7ebca.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AnnihilatingPolynomialNamespacedSpanMinpolyEqAnnihilator.lean/index.md) · [Full source](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AnnihilatingPolynomialNamespacedSpanMinpolyEqAnnihilator.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4b89c6cde088164859ffa93bc5834fb6d5825d78`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/AnnihilatingPolynomial/Varianta451d143dd4e3edf6c55f645dea7b8a428fc770a3bc463db46a46af951c7ebca.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/AnnihilatingPolynomial/Varianta451d143dd4e3edf6c55f645dea7b8a428fc770a3bc463db46a46af951c7ebca.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.FieldTheory.Minpoly.Field` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.PrincipalIdealDomain` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Polynomial.Module.AEval` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [annIdeal](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AnnihilatingPolynomialNamespacedSpanMinpolyEqAnnihilator.lean/declarations/annideal.md) | 59 | `declaration-track:7daa794db3b4111b491f5f46969748d23b2623c25954e1f97650c039f22a6692` |
| 2 | `theorem` | [mem_annIdeal_iff_aeval_eq_zero](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AnnihilatingPolynomialNamespacedSpanMinpolyEqAnnihilator.lean/declarations/mem-annideal-iff-aeval-eq-zero.md) | 64 | `result-track:1b76038ac50785d31ade3fa21f27fd8b6768fea9a9b7cbbfe6baee574aae3330` |
| 3 | `def` | [annIdealGenerator](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AnnihilatingPolynomialNamespacedSpanMinpolyEqAnnihilator.lean/declarations/annidealgenerator.md) | 82 | `declaration-track:2e76cba73d50ddbc695129e0e92a1e0f4dbf2a8cb7e1f05a336c8b7c1766f1e7` |
| 4 | `theorem` | [annIdealGenerator_eq_zero_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AnnihilatingPolynomialNamespacedSpanMinpolyEqAnnihilator.lean/declarations/annidealgenerator-eq-zero-iff.md) | 91 | `result-track:addb58ce451c3c8bf8dc2e8cdbd5d98d5f9b2c517d78c2bf8d467f08ef8bd00e` |
| 5 | `theorem` | [span_singleton_annIdealGenerator](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AnnihilatingPolynomialNamespacedSpanMinpolyEqAnnihilator.lean/declarations/span-singleton-annidealgenerator.md) | 99 | `result-track:64c83ab88325996817b7132138207ff42682ac36016b6e0992c224fbbf5927b5` |
| 6 | `theorem` | [annIdealGenerator_mem](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AnnihilatingPolynomialNamespacedSpanMinpolyEqAnnihilator.lean/declarations/annidealgenerator-mem.md) | 111 | `result-track:43fc1edbab0930751059601339c683500ccb39e4ec8c1cc92c4b6a8656390a55` |
| 7 | `theorem` | [mem_iff_eq_smul_annIdealGenerator](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AnnihilatingPolynomialNamespacedSpanMinpolyEqAnnihilator.lean/declarations/mem-iff-eq-smul-annidealgenerator.md) | 114 | `result-track:18de9a4c041517afa39177f6487a0e53260a19e6b9e36d4aa30a2e5a2491dc2e` |
| 8 | `theorem` | [monic_annIdealGenerator](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AnnihilatingPolynomialNamespacedSpanMinpolyEqAnnihilator.lean/declarations/monic-annidealgenerator.md) | 119 | `result-track:51581d528ddc0d36693768fb6b9e019497bc2cf8a24042bfb01edcc8462cc818` |
| 9 | `theorem` | [annIdealGenerator_aeval_eq_zero](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AnnihilatingPolynomialNamespacedSpanMinpolyEqAnnihilator.lean/declarations/annidealgenerator-aeval-eq-zero.md) | 130 | `result-track:916c620c3cf83b31c928af746235eecc8a122f8b61013dcdeb6c390b7301c964` |
| 10 | `theorem` | [mem_iff_annIdealGenerator_dvd](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AnnihilatingPolynomialNamespacedSpanMinpolyEqAnnihilator.lean/declarations/mem-iff-annidealgenerator-dvd.md) | 135 | `result-track:72c63ac69c720522ef598b032ac98756371732e590711431b24dd2985613fa2f` |
| 11 | `theorem` | [degree_annIdealGenerator_le_of_mem](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AnnihilatingPolynomialNamespacedSpanMinpolyEqAnnihilator.lean/declarations/degree-annidealgenerator-le-of-mem.md) | 141 | `result-track:11dda5a2c990ad726db29ba5b0e69c697ac4afbbee202dc0b57ac64d828308aa` |
| 12 | `theorem` | [annIdealGenerator_eq_minpoly](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AnnihilatingPolynomialNamespacedSpanMinpolyEqAnnihilator.lean/declarations/annidealgenerator-eq-minpoly.md) | 148 | `result-track:f4363a7e10f8331d402aa2909b0991d38f9a42a8c6ecf9ea4b0855d933ecdd97` |
| 13 | `theorem` | [monic_generator_eq_minpoly](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AnnihilatingPolynomialNamespacedSpanMinpolyEqAnnihilator.lean/declarations/monic-generator-eq-minpoly.md) | 161 | `result-track:5134ed38811ae01913c9dc9fcbb57949c561bf76230bed846a68f10fe72aed71` |
| 14 | `theorem` | [span_minpoly_eq_annihilator](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/AnnihilatingPolynomialNamespacedSpanMinpolyEqAnnihilator.lean/declarations/span-minpoly-eq-annihilator.md) | 170 | `result-track:9439a60a82a72f8865facf01888eedcf277fa90d7bcbab625edfbc4ef6922e7e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a2ad5e61e72ce8603fde2cd719132c3e0a558097c7a029530fe1574a56afa5b4 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/CommutativeAlgebra/AnnihilatingPolynomial/Varianta451d143dd4e3edf6c55f645dea7b8a428fc770a3bc463db46a46af951c7ebca.lean","GRWTSK/_verification/specifications/Algebra/CommutativeAlgebra/AnnihilatingPolynomial/Varianta451d143dd4e3edf6c55f645dea7b8a428fc770a3bc463db46a46af951c7ebca.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
