# Verification target: PEquiv

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "79231529b21c97c5f9f816aab5bd9af64b02f2e4",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PEquiv/Variantd79859e0db12f4d4fd98b854330ed99b37ee19bd1f23d5c5135bde0d9d140f90.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/PEquiv.lean/index.md) · [Full source](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/PEquiv.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `79231529b21c97c5f9f816aab5bd9af64b02f2e4`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PEquiv/Variantd79859e0db12f4d4fd98b854330ed99b37ee19bd1f23d5c5135bde0d9d140f90.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PEquiv/Variantd79859e0db12f4d4fd98b854330ed99b37ee19bd1f23d5c5135bde0d9d140f90.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Matrix.Mul` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.PEquiv` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [toMatrix](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/PEquiv.lean/declarations/tomatrix.md) | 50 | `declaration-track:5d99a746307b4deb5b0d88dc9427fe773d798e7604aa22779e7e3e95618b006b` |
| 2 | `theorem` | [toMatrix_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/PEquiv.lean/declarations/tomatrix-apply.md) | 55 | `result-track:7ebe073216c56e4d404272d1216936368b14d86621b7a516ccba436e937e5cbe` |
| 3 | `theorem` | [toMatrix_mul_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/PEquiv.lean/declarations/tomatrix-mul-apply.md) | 59 | `result-track:749fbbeb554edf4a237e603cd3943cfb1b9e0994976b4512f2b4b56ab2ed6460` |
| 4 | `theorem` | [mul_toMatrix_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/PEquiv.lean/declarations/mul-tomatrix-apply.md) | 68 | `result-track:0289d1293d0fe6f85d578c9a27dc330da756fe0d3cd520f2dfa62df6e7f884f8` |
| 5 | `theorem` | [toMatrix_symm](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/PEquiv.lean/declarations/tomatrix-symm.md) | 81 | `result-track:85089dc0996da42f78806dffbb608fa29ab3a42995536f3762252ed533569089` |
| 6 | `theorem` | [toMatrix_refl](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/PEquiv.lean/declarations/tomatrix-refl.md) | 88 | `result-track:39ff9cf1add31fceb1a2e93d7e4915a3a34654feb80cbb91e25e3a60ec98da89` |
| 7 | `theorem` | [toMatrix_toPEquiv_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/PEquiv.lean/declarations/tomatrix-topequiv-apply.md) | 94 | `result-track:5cfbfb3d0614ee673dbf0b82296a1ff2f66dbb62978a3398ba5b7c9f22c3a937` |
| 8 | `theorem` | [transpose_toMatrix_toPEquiv_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/PEquiv.lean/declarations/transpose-tomatrix-topequiv-apply.md) | 100 | `result-track:6a7e5476f3c3cae733761b8752c987e395f2e79fd4981998fff1542438b10b6f` |
| 9 | `theorem` | [toMatrix_toPEquiv_mul](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/PEquiv.lean/declarations/tomatrix-topequiv-mul.md) | 106 | `result-track:b9fbcdcf1393180ca13662c9f2a815e59df77f09075af8a15ce29781b10ba099` |
| 10 | `theorem` | [mul_toMatrix_toPEquiv](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/PEquiv.lean/declarations/mul-tomatrix-topequiv.md) | 114 | `result-track:49c274187b5b83cabf805a3bbdb9c497188a6d902ea9954e3bc00f03cfea4654` |
| 11 | `lemma` | [toMatrix_toPEquiv_mulVec](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/PEquiv.lean/declarations/tomatrix-topequiv-mulvec.md) | 123 | `result-track:7cec57379c03b731760b570a2857c910ea7c0e0b65e1a518c85075a46a1e5bd1` |
| 12 | `lemma` | [vecMul_toMatrix_toPEquiv](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/PEquiv.lean/declarations/vecmul-tomatrix-topequiv.md) | 129 | `result-track:89d49402af1f266052ee4c318bfc9a5eb2471055abf3a34a1c20fe87866e0973` |
| 13 | `theorem` | [toMatrix_trans](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/PEquiv.lean/declarations/tomatrix-trans.md) | 136 | `result-track:e61c1c6236ffe7ead7f1db94e1490eefb3350972ca436a80171719085ca2eb3a` |
| 14 | `theorem` | [toMatrix_bot](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/PEquiv.lean/declarations/tomatrix-bot.md) | 144 | `result-track:90496694b0793598951cd1330ad3444202564396e3113d6a45fef137a966d435` |
| 15 | `theorem` | [toMatrix_injective](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/PEquiv.lean/declarations/tomatrix-injective.md) | 148 | `result-track:af8b80ba24dbb3c1622acf453a134e984a6966d04d891d6cc2874d83f4f1eacf` |
| 16 | `theorem` | [toMatrix_swap](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/PEquiv.lean/declarations/tomatrix-swap.md) | 163 | `result-track:edcb1d24510df4529ae4634001f132a702bf14fd276f06483df131ae930e033d` |
| 17 | `theorem` | [single_mul_single](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/PEquiv.lean/declarations/single-mul-single.md) | 172 | `result-track:6284ac95ca31c4d444a557325a2e2a3d3cde4d51a6f2243cccf26a6c0bdf08ae` |
| 18 | `theorem` | [single_mul_single_of_ne](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/PEquiv.lean/declarations/single-mul-single-of-ne.md) | 177 | `result-track:0451c24cd135cf5f1713109648a5f4a90b951cf4023a82779535bde81e943dbc` |
| 19 | `theorem` | [single_mul_single_right](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/PEquiv.lean/declarations/single-mul-single-right.md) | 185 | `result-track:ed576dc848ae022758b853851315c142e82a68ea6d234a797db88457a7217649` |
| 20 | `theorem` | [toMatrix_toPEquiv_eq](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/PEquiv.lean/declarations/tomatrix-topequiv-eq.md) | 191 | `result-track:9380021d655279d87e2be94b6311cf4f96af0f38c316ab32686c3e0904bd51c1` |
| 21 | `lemma` | [map_toMatrix](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/PEquiv.lean/declarations/map-tomatrix.md) | 198 | `result-track:a77fd40dc1673c92c2ddabbe3c4b37da128fac25b8017fa54b08b7bfcceccb2c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=083a93ae875670529c1b134a2e4331bb0cd881b19951615611ce541f128c8c10 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PEquiv/Variantd79859e0db12f4d4fd98b854330ed99b37ee19bd1f23d5c5135bde0d9d140f90.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PEquiv/Variantd79859e0db12f4d4fd98b854330ed99b37ee19bd1f23d5c5135bde0d9d140f90.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
