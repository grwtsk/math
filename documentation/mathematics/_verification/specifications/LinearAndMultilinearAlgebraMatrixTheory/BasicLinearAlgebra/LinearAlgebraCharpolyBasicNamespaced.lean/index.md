# Verification target: Linear Algebra Charpoly Basic Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4ec867fc08e67abf8e4755806870e28da2daa59f",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/Basic/Variant381c9bed8fc36f31a923f7e4982448c87cb8729cf30ff49cb081df9d1da90041.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraCharpolyBasicNamespaced.lean/index.md) · [Full source](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraCharpolyBasicNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4ec867fc08e67abf8e4755806870e28da2daa59f`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/Basic/Variant381c9bed8fc36f31a923f7e4982448c87cb8729cf30ff49cb081df9d1da90041.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/Basic/Variant381c9bed8fc36f31a923f7e4982448c87cb8729cf30ff49cb081df9d1da90041.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.FreeModule.Finite.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.Charpoly.Coeff` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Determinant` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.FieldTheory.Minpoly.Field` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [charpoly](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraCharpolyBasicNamespaced.lean/declarations/charpoly.md) | 50 | `declaration-track:2f1c2fe1b644d78fa254b2fc7c7553b2396e19df9c52bc6bc36473727adc8d60` |
| 2 | `theorem` | [charpoly_def](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraCharpolyBasicNamespaced.lean/declarations/charpoly-def.md) | 53 | `result-track:9cde50e7bd6e7c239b73c21d57c7f2e29672768f298e7658b4f10a638520c2b8` |
| 3 | `theorem` | [eval_charpoly](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraCharpolyBasicNamespaced.lean/declarations/eval-charpoly.md) | 56 | `result-track:00cb695de521827bf0780aac3239020b591432e201d3ce1e7b53fea022784c91` |
| 4 | `theorem` | [charpoly_zero](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraCharpolyBasicNamespaced.lean/declarations/charpoly-zero.md) | 62 | `result-track:39d68fda2c7d9ac5d21158421073328fed225f2762016e285f4072d0cd4af777` |
| 5 | `theorem` | [charpoly_one](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraCharpolyBasicNamespaced.lean/declarations/charpoly-one.md) | 66 | `result-track:77937aa93afa3abc0ec4ac02358ebf282b4abfa784565bb6fb1abdf8f34cafb0` |
| 6 | `theorem` | [charpoly_monic](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraCharpolyBasicNamespaced.lean/declarations/charpoly-monic.md) | 74 | `result-track:09062d271770f5c43b4b3a1c83fa01738957e7f4919d9682fe609e98a3bed050` |
| 7 | `lemma` | [charpoly_natDegree](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraCharpolyBasicNamespaced.lean/declarations/charpoly-natdegree.md) | 78 | `result-track:11b1ff44536d798f8d13e416a83d5c5712b22a4989b9db3969f32aa9e757f17b` |
| 8 | `theorem` | [aeval_self_charpoly](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraCharpolyBasicNamespaced.lean/declarations/aeval-self-charpoly.md) | 90 | `result-track:b94e2ade8894f3bdbed666c7e722377460aa66d2d837469c113573e0061d1306` |
| 9 | `theorem` | [isIntegral](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraCharpolyBasicNamespaced.lean/declarations/isintegral.md) | 96 | `result-track:8c37d3daa8d81fd20f4cd7ede5b7c8902e5273b0ec38c027feb6e55a1257e0e5` |
| 10 | `theorem` | [minpoly_dvd_charpoly](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraCharpolyBasicNamespaced.lean/declarations/minpoly-dvd-charpoly.md) | 99 | `result-track:886f2e9c1a395ab0572bb231227d3af04401007cb4b0816db567a9104dbc95f7` |
| 11 | `theorem` | [aeval_eq_aeval_mod_charpoly](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraCharpolyBasicNamespaced.lean/declarations/aeval-eq-aeval-mod-charpoly.md) | 105 | `result-track:509efb227ed90aa301177f6b1c1cb97f52c35a133dcb2d6c22afdb0fc4e5b85d` |
| 12 | `theorem` | [pow_eq_aeval_mod_charpoly](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraCharpolyBasicNamespaced.lean/declarations/pow-eq-aeval-mod-charpoly.md) | 110 | `result-track:c7544bd12e84e6f9b452d0f891b26c085d34b5985f78d64d1b9051207c7f0046` |
| 13 | `theorem` | [minpoly_coeff_zero_of_injective](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraCharpolyBasicNamespaced.lean/declarations/minpoly-coeff-zero-of-injective.md) | 115 | `result-track:c939c8a6f1df0aeda41d27c292d99c1e4ab0d793fba85ef5992a40fd52e7c2dd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=5a9117a4bdafb832d81f847a1862e62fc5232c217fecba80db5813c6e6185692 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/CommutativeAlgebra/Basic/Variant381c9bed8fc36f31a923f7e4982448c87cb8729cf30ff49cb081df9d1da90041.lean","GRWTSK/_verification/specifications/Algebra/CommutativeAlgebra/Basic/Variant381c9bed8fc36f31a923f7e4982448c87cb8729cf30ff49cb081df9d1da90041.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
