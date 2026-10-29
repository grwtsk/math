# Verification target: Inversion

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0e7113b5ba9ad508d97be4da84fcb07bcde23e88",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Inversion/Variant0048fafb9ab7ef4a39ea622b0c533e408a4fcf293569a0ae4ae4e07e511d1d78.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Inversion.lean/index.md) · [Full source](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Inversion.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0e7113b5ba9ad508d97be4da84fcb07bcde23e88`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Inversion/Variant0048fafb9ab7ef4a39ea622b0c533e408a4fcf293569a0ae4ae4e07e511d1d78.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Inversion/Variant0048fafb9ab7ef4a39ea622b0c533e408a4fcf293569a0ae4ae4e07e511d1d78.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.CliffordAlgebra.Contraction` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [invertibleιOfInvertible](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Inversion.lean/declarations/invertible-ofinvertible.md) | 22 | `declaration-track:ea4d99ba1f4b15b5d0461f054097bdcc89279adc4fb806673e99185ef4e95859` |
| 2 | `theorem` | [invOf_ι](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Inversion.lean/declarations/invof.md) | 30 | `result-track:bb9c5653b2ee6585b17d8c45f7ed64a52d823817ac6aea61c6590d05ee94e31e` |
| 3 | `theorem` | [isUnit_ι_of_isUnit](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Inversion.lean/declarations/isunit-of-isunit.md) | 35 | `result-track:e61a339392e9243ce4ea878472ca220acbab762f4fedf0632114050d827cf2c1` |
| 4 | `theorem` | [ι_mul_ι_mul_invOf_ι](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Inversion.lean/declarations/mul-mul-invof.md) | 41 | `result-track:632893c6389d9cf96a4fd18c4c1eaed968d9f11b7643429d3ae5a17f115219e4` |
| 5 | `theorem` | [invOf_ι_mul_ι_mul_ι](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Inversion.lean/declarations/invof-mul-mul.md) | 47 | `result-track:028909224e556e80810b7d492075023b017c5809e02bf084afca8dcc84932d5d` |
| 6 | `def` | [invertibleOfInvertibleι](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Inversion.lean/declarations/invertibleofinvertible.md) | 56 | `declaration-track:40f4115e8f68939ae6a625c7f63821ecc7af56b63195605b77cc803118054fb0` |
| 7 | `theorem` | [isUnit_of_isUnit_ι](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Inversion.lean/declarations/isunit-of-isunit-source-edition-2.md) | 61 | `result-track:f1259687b36152c1906d966600ff8904063967b162fae5a4cf69432535777eb8` |
| 8 | `theorem` | [isUnit_ι_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/Inversion.lean/declarations/isunit-iff.md) | 66 | `result-track:63dc71e53f37b2b115d294de081d59b83395450e26781585645b793bab7591c5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=8b0279bf5bf9c4a5e462e19dc3dd378dcb38b6084399eacbfb93243f81ec1ad7 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Inversion/Variant0048fafb9ab7ef4a39ea622b0c533e408a4fcf293569a0ae4ae4e07e511d1d78.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/Inversion/Variant0048fafb9ab7ef4a39ea622b0c533e408a4fcf293569a0ae4ae4e07e511d1d78.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
