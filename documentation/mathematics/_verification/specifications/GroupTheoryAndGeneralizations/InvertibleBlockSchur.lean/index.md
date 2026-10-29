# Verification target: Invertible Block Schur

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6de68b268dfe9d6a5ee5ed9f887f84aec4b53fab",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/36ca606f7a360c64587794b4890e8616ea3b524bb22a21e5622b9644908db08bInvertibleBlockS/Variant36ca606f7a360c64587794b4890e8616ea3b524bb22a21e5622b9644908db08b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GroupTheoryAndGeneralizations/InvertibleBlockSchur.lean/index.md) · [Full source](../../../../GroupTheoryAndGeneralizations/InvertibleBlockSchur.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6de68b268dfe9d6a5ee5ed9f887f84aec4b53fab`.

Source path: `GRWTSK/Algebra/LinearAlgebra/36ca606f7a360c64587794b4890e8616ea3b524bb22a21e5622b9644908db08bInvertibleBlockS/Variant36ca606f7a360c64587794b4890e8616ea3b524bb22a21e5622b9644908db08b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/36ca606f7a360c64587794b4890e8616ea3b524bb22a21e5622b9644908db08bInvertibleBlockS/Variant36ca606f7a360c64587794b4890e8616ea3b524bb22a21e5622b9644908db08b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.PositiveAtlas.BlockSchur` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [provenanceCrossMap](../../../../GroupTheoryAndGeneralizations/InvertibleBlockSchur.lean/declarations/provenancecrossmap.md) | 28 | `declaration-track:7ed7726e7018c007256b3bc100d50da93e321d7b0a0613580d2748ad07e63c6b` |
| 2 | `theorem` | [provenanceCrossMap_apply](../../../../GroupTheoryAndGeneralizations/InvertibleBlockSchur.lean/declarations/provenancecrossmap-apply.md) | 55 | `result-track:0421f64797d2c54d706b2ebb2cf429d3762d80b6bbe08042a52de96ad5554767` |
| 3 | `structure` | [InvertibleProvenanceBlock](../../../../GroupTheoryAndGeneralizations/InvertibleBlockSchur.lean/declarations/invertibleprovenanceblock.md) | 62 | `declaration-track:578079a5d7be67245fa73837b0277dc35977f90dec17eb94d11a2cbfa8430bf8` |
| 4 | `def` | [solve](../../../../GroupTheoryAndGeneralizations/InvertibleBlockSchur.lean/declarations/solve.md) | 74 | `declaration-track:a10f39778c090dde8c40da6233b1a2e16a2afa8979b07b70d2b12ecfb9135a6a` |
| 5 | `theorem` | [gramEquiv_solve](../../../../GroupTheoryAndGeneralizations/InvertibleBlockSchur.lean/declarations/gramequiv-solve.md) | 78 | `result-track:e69e973e58e1db7b92e400d0f276c7302ef124b40d3c04e33f6cae44cac625ac` |
| 6 | `theorem` | [provenance_form_solve](../../../../GroupTheoryAndGeneralizations/InvertibleBlockSchur.lean/declarations/provenance-form-solve.md) | 84 | `result-track:804956d77d20ca20d443d7df89de5c7878b7ef3087fe7eb9e47f79d5f0eceac2` |
| 7 | `theorem` | [form_sub_right](../../../../GroupTheoryAndGeneralizations/InvertibleBlockSchur.lean/declarations/form-sub-right.md) | 96 | `result-track:c180576f30663ef488f5a7601c742147ec9f1f9b329b1e497639f2cea0438749` |
| 8 | `def` | [blockSchurSolver](../../../../GroupTheoryAndGeneralizations/InvertibleBlockSchur.lean/declarations/blockschursolver.md) | 107 | `declaration-track:fe6ad9eae2302ee8c4a7b95b8404aba40bab8dfbd55c602efe6200532d6f2204` |
| 9 | `theorem` | [blockSchurSolver_solve](../../../../GroupTheoryAndGeneralizations/InvertibleBlockSchur.lean/declarations/blockschursolver-solve.md) | 117 | `result-track:8e0a4ae00ae63544c21de092ea99f512295b498371f71ea8082119df64d142ac` |
| 10 | `theorem` | [schur_nonnegative](../../../../GroupTheoryAndGeneralizations/InvertibleBlockSchur.lean/declarations/schur-nonnegative.md) | 123 | `result-track:ae356e21606aef86a20994c45e0ba3b4161292f93efbb06a52ebcd765d3dff63` |
| 11 | `theorem` | [schur_eq_sub](../../../../GroupTheoryAndGeneralizations/InvertibleBlockSchur.lean/declarations/schur-eq-sub.md) | 129 | `result-track:cf4ef0b3401f99e2ffe0fcef0b9931d98b2dbcf3e2108b57175ce7828190155e` |
| 12 | `theorem` | [schur_diagonal_nonnegative](../../../../GroupTheoryAndGeneralizations/InvertibleBlockSchur.lean/declarations/schur-diagonal-nonnegative.md) | 137 | `result-track:be702bc4f41ba5a6bd1bf854b72b15e22589b5b275b8da61edce276e559654c5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=611bde2ab516866137eb7fa97d02e813b2b2c50c8f8208ec937b39572141eba2 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/36ca606f7a360c64587794b4890e8616ea3b524bb22a21e5622b9644908db08bInvertibleBlockS/Variant36ca606f7a360c64587794b4890e8616ea3b524bb22a21e5622b9644908db08b.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/36ca606f7a360c64587794b4890e8616ea3b524bb22a21e5622b9644908db08bInvertibleBlockS/Variant36ca606f7a360c64587794b4890e8616ea3b524bb22a21e5622b9644908db08b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
