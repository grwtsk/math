# Verification target: Transitivity Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "42d663dda904b3e3a6d1ce15b2bfb6aeaf238716",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Transitivity/Variantb1167c6e13292a0cea1cc3ac7ca676362b9ec33702423558eb178e15b4ed61b1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../CommutativeAlgebra/TransitivityNamespaced.lean/index.md) · [Full source](../../../../CommutativeAlgebra/TransitivityNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `42d663dda904b3e3a6d1ce15b2bfb6aeaf238716`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Transitivity/Variantb1167c6e13292a0cea1cc3ac7ca676362b9ec33702423558eb178e15b4ed61b1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Transitivity/Variantb1167c6e13292a0cea1cc3ac7ca676362b9ec33702423558eb178e15b4ed61b1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.Matrix.Block` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.Charpoly.Coeff` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Norm.Defs` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.PolynomialAlgebra` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [auxMat](../../../../CommutativeAlgebra/TransitivityNamespaced.lean/declarations/auxmat.md) | 40 | `declaration-track:adf5dcc101b99ee64e964336eba317ac4a5f96058ac222b00e66e7b9cac2a7a7` |
| 2 | `lemma` | [auxMat_blockTriangular](../../../../CommutativeAlgebra/TransitivityNamespaced.lean/declarations/auxmat-blocktriangular.md) | 49 | `result-track:88878949eb353edd21555a5702196d90f08bc995b96b6590a34cf90eaed7525c` |
| 3 | `lemma` | [auxMat_toSquareBlock_ne](../../../../CommutativeAlgebra/TransitivityNamespaced.lean/declarations/auxmat-tosquareblock-ne.md) | 54 | `result-track:d20d9a7d4aacb9f5ef41ab1d90c22f87a4df1c6a9e2f3fef0c955af7e704dc24` |
| 4 | `lemma` | [auxMat_toSquareBlock_eq](../../../../CommutativeAlgebra/TransitivityNamespaced.lean/declarations/auxmat-tosquareblock-eq.md) | 59 | `result-track:d606995c4c776a981cb9135f19e64c4c46ae35c5976cb588231215714b3da12a` |
| 5 | `lemma` | [mul_auxMat_blockTriangular](../../../../CommutativeAlgebra/TransitivityNamespaced.lean/declarations/mul-auxmat-blocktriangular.md) | 67 | `result-track:30a1c630e828479a7324805252603215ca7d1c331737d6992ce7fe14331d35ce` |
| 6 | `lemma` | [mul_auxMat_corner](../../../../CommutativeAlgebra/TransitivityNamespaced.lean/declarations/mul-auxmat-corner.md) | 76 | `result-track:f276bc9a851c1e61675f2501f9309de0fcabb35e5af869095058a35a09970afa` |
| 7 | `lemma` | [mul_auxMat_toSquareBlock_eq](../../../../CommutativeAlgebra/TransitivityNamespaced.lean/declarations/mul-auxmat-tosquareblock-eq.md) | 78 | `result-track:51b0fc03b4469803cc1ca15f26e229af08ae8cc64ff70ffe49738483d5bfb3ab` |
| 8 | `lemma` | [det_mul_corner_pow](../../../../CommutativeAlgebra/TransitivityNamespaced.lean/declarations/det-mul-corner-pow.md) | 88 | `result-track:e12d126d4c5bbbdf1ab6771c2eb04ca59b7c21ec53d28c101bb729dffbcb3978` |
| 9 | `def` | [cornerAddX](../../../../CommutativeAlgebra/TransitivityNamespaced.lean/declarations/corneraddx.md) | 101 | `declaration-track:6e43f9c96ace07779b01e081ba2d18e5d461bc34facd6d2932dfc94be8573328` |
| 10 | `lemma` | [polyToMatrix_cornerAddX](../../../../CommutativeAlgebra/TransitivityNamespaced.lean/declarations/polytomatrix-corneraddx.md) | 107 | `result-track:e9a95cb51e754f8502c7c35d84360fc806a37fcced31774b9dc6c058aa52eed6` |
| 11 | `lemma` | [eval_zero_det_det](../../../../CommutativeAlgebra/TransitivityNamespaced.lean/declarations/eval-zero-det-det.md) | 112 | `result-track:d86873da0751ca9cdb48aaea62995233f3a0cf085cce93391eb8d17b9d54023e` |
| 12 | `lemma` | [eval_zero_comp_det](../../../../CommutativeAlgebra/TransitivityNamespaced.lean/declarations/eval-zero-comp-det.md) | 117 | `result-track:675c018587981ee01ea08812fcc49563df005dadc123c564f7169ac0d6cf9ca8` |
| 13 | `theorem` | [comp_det_mul_pow](../../../../CommutativeAlgebra/TransitivityNamespaced.lean/declarations/comp-det-mul-pow.md) | 127 | `result-track:285a0e4805ce87fe3eb45a49bb2e9202f7158a5952b8ac35904e94bb9caa383c` |
| 14 | `lemma` | [det_det_aux](../../../../CommutativeAlgebra/TransitivityNamespaced.lean/declarations/det-det-aux.md) | 144 | `result-track:71f8b93babab83c6dfdf831d8e4ed8f2626ed8b0332f6bb94904869887887248` |
| 15 | `theorem` | [Matrix.det_det](../../../../CommutativeAlgebra/TransitivityNamespaced.lean/declarations/matrix-det-det.md) | 159 | `result-track:577c6ea2a012df2c71609cd5a9ff3a7789a8403e7663bfb0ce7b7ec3b933b3a9` |
| 16 | `theorem` | [LinearMap.det_restrictScalars](../../../../CommutativeAlgebra/TransitivityNamespaced.lean/declarations/linearmap-det-restrictscalars.md) | 178 | `result-track:eaf48ee84daf2d9bede3791947d1d42c1ffd2139562d9e761ebef3bb60ff0a1b` |
| 17 | `theorem` | [Algebra.norm_norm](../../../../CommutativeAlgebra/TransitivityNamespaced.lean/declarations/algebra-norm-norm.md) | 200 | `result-track:f8e6a715fb12168e3c1adb7a01c6e70b88bc14d0d19209bb2c54f115d6e15881` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=bc0ba8660022c8fd502d9c26f16182b161dcf8024db0471cf3accc4ce815ac7b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Transitivity/Variantb1167c6e13292a0cea1cc3ac7ca676362b9ec33702423558eb178e15b4ed61b1.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/Transitivity/Variantb1167c6e13292a0cea1cc3ac7ca676362b9ec33702423558eb178e15b4ed61b1.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
