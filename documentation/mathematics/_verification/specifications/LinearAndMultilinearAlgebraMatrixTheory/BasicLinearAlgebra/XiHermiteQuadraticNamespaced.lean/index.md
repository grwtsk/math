# Verification target: Xi Hermite Quadratic Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "595b1542072b6c98d5a047529ac681bff41bd4a3",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/XiHermiteQuadratic/Variantdd1fba49c07970d2acefea13c8eb1b2661fa722faf855733ff3bdb78e1680785.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/XiHermiteQuadraticNamespaced.lean/index.md) · [Full source](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/XiHermiteQuadraticNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `595b1542072b6c98d5a047529ac681bff41bd4a3`.

Source path: `GRWTSK/Algebra/LinearAlgebra/XiHermiteQuadratic/Variantdd1fba49c07970d2acefea13c8eb1b2661fa722faf855733ff3bdb78e1680785.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/XiHermiteQuadratic/Variantdd1fba49c07970d2acefea13c8eb1b2661fa722faf855733ff3bdb78e1680785.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.Matrix.Charpoly.Coeff` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.PosDef` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Complex.Basic` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [companion](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/XiHermiteQuadraticNamespaced.lean/declarations/companion.md) | 27 | `declaration-track:6480b0f708f39df13ccca53734a1803d903e712321e987f19ed6bbe962572602` |
| 2 | `def` | [hermiteMatrix](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/XiHermiteQuadraticNamespaced.lean/declarations/hermitematrix.md) | 30 | `declaration-track:c40dcf85243436a4fa539330d3603cad0b9eae4a9a475dcd7dda132123db81c2` |
| 3 | `theorem` | [companion_charpoly](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/XiHermiteQuadraticNamespaced.lean/declarations/companion-charpoly.md) | 34 | `result-track:693a12f368be884a86fda22a20f4d719fd671b71b4f0322e8af824add9a4d021` |
| 4 | `theorem` | [hermiteMatrix_eq](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/XiHermiteQuadraticNamespaced.lean/declarations/hermitematrix-eq.md) | 40 | `result-track:a2641923824002d5f12c2e83711f18dcfb1387235a011946fbedbae8c6557baa` |
| 5 | `theorem` | [hermiteMatrix_isHermitian](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/XiHermiteQuadraticNamespaced.lean/declarations/hermitematrix-ishermitian.md) | 49 | `result-track:082707e13ff4533f5803da14ff39d20c4440f7b75e6fc0a87aaeb318d6fd8176` |
| 6 | `theorem` | [hermite_square](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/XiHermiteQuadraticNamespaced.lean/declarations/hermite-square.md) | 55 | `result-track:499a4a625203d138311ca4f47783f0320d4e003bf5d39da120f1871e135d0598` |
| 7 | `theorem` | [hermite_square_nonneg_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/XiHermiteQuadraticNamespaced.lean/declarations/hermite-square-nonneg-iff.md) | 63 | `result-track:92d3f69fe8d87a1a88e293683329f98f6ac4314fd9887279270f6e3c00bbbd7a` |
| 8 | `theorem` | [hermiteMatrix_posSemidef_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/XiHermiteQuadraticNamespaced.lean/declarations/hermitematrix-possemidef-iff.md) | 77 | `result-track:34bd13b135e6db36292ece4160b162ce4ca6064a65cf880eda5a948f9be0da2b` |
| 9 | `theorem` | [quadratic_root_real_of_nonneg](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/XiHermiteQuadraticNamespaced.lean/declarations/quadratic-root-real-of-nonneg.md) | 84 | `result-track:6986f25495057fddc46673f61e06d797dc18d2653f0f2c43a5aec7951c6717ad` |
| 10 | `theorem` | [quadratic_nonreal_root_of_neg](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/XiHermiteQuadraticNamespaced.lean/declarations/quadratic-nonreal-root-of-neg.md) | 101 | `result-track:73c54a0a71e184b12253b956e8b59934b982748674af2b9d6667c31fa6075b9e` |
| 11 | `theorem` | [hermiteMatrix_posSemidef_iff_real_roots](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/XiHermiteQuadraticNamespaced.lean/declarations/hermitematrix-possemidef-iff-real-roots.md) | 119 | `result-track:ad164d690dc36f9a57c193534643bba9db3937c5e6bcb7f7d01211dd20ccbbee` |
| 12 | `theorem` | [imaginary_pair_hermite](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/XiHermiteQuadraticNamespaced.lean/declarations/imaginary-pair-hermite.md) | 131 | `result-track:6d6aaa65fafdda654518d12dc8cd3c0600bc83a6b457f1219651b2a3fd86d2b5` |
| 13 | `theorem` | [imaginary_pair_not_posSemidef](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/XiHermiteQuadraticNamespaced.lean/declarations/imaginary-pair-not-possemidef.md) | 135 | `result-track:103d586aa3dae00b63bd1ad75a557839f44524c5503289b18f90f04820e2a481` |
| 14 | `theorem` | [double_one_hermite](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/XiHermiteQuadraticNamespaced.lean/declarations/double-one-hermite.md) | 140 | `result-track:5dc4b38c7dec2c0baffeeaf3dcca99acb5565ee36b5eec810e32ed61b328c023` |
| 15 | `theorem` | [double_one_posSemidef](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/XiHermiteQuadraticNamespaced.lean/declarations/double-one-possemidef.md) | 144 | `result-track:3b9456cb3074bd33fda137795ded50cf874b5e35d86f638898c45f08f1351b53` |
| 16 | `theorem` | [double_one_hermite_det](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/XiHermiteQuadraticNamespaced.lean/declarations/double-one-hermite-det.md) | 149 | `result-track:a16e58ebdb0ea5fcda85fcbe96a5713287d1e037fb88c6affa048b03015f2064` |
| 17 | `theorem` | [double_one_charpoly](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/XiHermiteQuadraticNamespaced.lean/declarations/double-one-charpoly.md) | 154 | `result-track:68a19eddf875962f0574c4d56b241043332017d2b287b45f03cc56bfc1a84130` |
| 18 | `theorem` | [double_one_nilpotent](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/XiHermiteQuadraticNamespaced.lean/declarations/double-one-nilpotent.md) | 160 | `result-track:3e0de88067bbaaafd8a6e88dab5ed28ac788f85230853edcce45a581c118744e` |
| 19 | `theorem` | [double_one_nilpotent_ne_zero](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/XiHermiteQuadraticNamespaced.lean/declarations/double-one-nilpotent-ne-zero.md) | 166 | `result-track:97412105002dfbd094b1999965cc47137fc3a9e96d75dc8a66fe9e00a66348b8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b05130e0962fb2c8a8e2263dbbc268b7369c69a8fa0cededd71be710dc30a2ea -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/XiHermiteQuadratic/Variantdd1fba49c07970d2acefea13c8eb1b2661fa722faf855733ff3bdb78e1680785.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/XiHermiteQuadratic/Variantdd1fba49c07970d2acefea13c8eb1b2661fa722faf855733ff3bdb78e1680785.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
