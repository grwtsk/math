# Verification target: Lie Cartan Matrix Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f39644c43c889b625d8f3b13ecfb5c77a5ac786e",
  "lexical_observation_count": 26,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/CartanMatrix/Variant84fcce39775566fed4f77d1015fa8dfe0f2c000865aafaf6e2cf56802354e600.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieCartanMatrixNamespaced.lean/index.md) · [Full source](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieCartanMatrixNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f39644c43c889b625d8f3b13ecfb5c77a5ac786e`.

Source path: `GRWTSK/Algebra/LinearAlgebra/CartanMatrix/Variant84fcce39775566fed4f77d1015fa8dfe0f2c000865aafaf6e2cf56802354e600.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/CartanMatrix/Variant84fcce39775566fed4f77d1015fa8dfe0f2c000865aafaf6e2cf56802354e600.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Lie.Free` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Lie.Quotient` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Matrix.Notation` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [Generators](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieCartanMatrixNamespaced.lean/declarations/generators.md) | 103 | `declaration-track:13d196428bf14270ad92587f40b8f96487d00d20c8cb5660cf23eb554426b042` |
| 2 | `instance` | [(anonymous)](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieCartanMatrixNamespaced.lean/declarations/instance.md) | 108 | `declaration-track:bb05fbebff7e5338d8ed89c2407717328b4801bbb11d1db14f6eaf4f55607510` |
| 3 | `def` | [HH](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieCartanMatrixNamespaced.lean/declarations/hh.md) | 123 | `declaration-track:58efde332861b6039a09809a4f2abf8d4d5e29d270a3a754ad7e561a6230b9ab` |
| 4 | `def` | [EF](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieCartanMatrixNamespaced.lean/declarations/ef.md) | 127 | `declaration-track:705d3bccee9ab296fa440e761fc7774fcdff3e2d1f04f482728e8201b112eac7` |
| 5 | `def` | [HE](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieCartanMatrixNamespaced.lean/declarations/he.md) | 131 | `declaration-track:4039f0d1e445b59180c0a25f15344814822918e51e40c3148059a49d90e2bf14` |
| 6 | `def` | [HF](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieCartanMatrixNamespaced.lean/declarations/hf.md) | 135 | `declaration-track:f17a32d89a4207109ff85fc209fb7376a6b9ceed62f886b5bb4ce442852a5f50` |
| 7 | `def` | [adE](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieCartanMatrixNamespaced.lean/declarations/ade.md) | 143 | `declaration-track:f07e656867ac966b34de33057eca0c9106c13b1bda3e32eea9993d35f966fef7` |
| 8 | `def` | [adF](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieCartanMatrixNamespaced.lean/declarations/adf.md) | 149 | `declaration-track:3ff4d25cc5bdb6fe1d302816215a95437e6bb14be68ecb615d2fd513158582b7` |
| 9 | `theorem` | [adE_of_eq_eq_zero](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieCartanMatrixNamespaced.lean/declarations/ade-of-eq-eq-zero.md) | 152 | `result-track:1eb34007d83c72bf93fca9109b23192dfcbdb53394e6409823426547dc2eb916` |
| 10 | `theorem` | [adF_of_eq_eq_zero](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieCartanMatrixNamespaced.lean/declarations/adf-of-eq-eq-zero.md) | 156 | `result-track:4b1c910ba89c2823388a527809187d2564409ab2c8b7aee5aacde3bb82630b17` |
| 11 | `def` | [toSet](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieCartanMatrixNamespaced.lean/declarations/toset.md) | 161 | `declaration-track:8f699a9350f8fce380103720d9f3d2cb3a753eb5428dde54d3de6bdbfac21461` |
| 12 | `def` | [toIdeal](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieCartanMatrixNamespaced.lean/declarations/toideal.md) | 167 | `declaration-track:31773a3ed1d8471b4f7b13a6ab460f4319b04f406c2449dad584976260772e67` |
| 13 | `def` | [Matrix.ToLieAlgebra](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieCartanMatrixNamespaced.lean/declarations/matrix-toliealgebra.md) | 180 | `declaration-track:104eb1a21507e8aab4c922861bd92dd1d5281c03187722a5b9abacb3ee6d0aa2` |
| 14 | `instance` | [Matrix.ToLieAlgebra.instLieRing](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieCartanMatrixNamespaced.lean/declarations/matrix-toliealgebra-instliering.md) | 185 | `declaration-track:66fecfffdada76338b18c64f2f3424bd2b8a09bc0a340b455e51433f66e06741` |
| 15 | `instance` | [Matrix.ToLieAlgebra.instInhabited](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieCartanMatrixNamespaced.lean/declarations/matrix-toliealgebra-instinhabited.md) | 188 | `declaration-track:2ec9b565458ba34f8e47dec106f940170ae9f64e6adcfb4bf8f5acc611bfc989` |
| 16 | `instance` | [Matrix.ToLieAlgebra.instLieAlgebra](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieCartanMatrixNamespaced.lean/declarations/matrix-toliealgebra-instliealgebra.md) | 191 | `declaration-track:267d262aba71476f9cb86079dd65494a85999fee896ba5b01e6848754cc3853e` |
| 17 | `def` | [E₆](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieCartanMatrixNamespaced.lean/declarations/e-source-edition-2.md) | 205 | `declaration-track:94dde282cdf38e47f9e7db13fb47be5a6c573a9de244303d37eaba9aeb739707` |
| 18 | `def` | [E₇](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieCartanMatrixNamespaced.lean/declarations/e-source-edition-5.md) | 222 | `declaration-track:dd79bbd0f6ce7cc1cd0685a696c20653e5b9d7cd0009dcf5fe72aeaf0fa73362` |
| 19 | `def` | [E₈](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieCartanMatrixNamespaced.lean/declarations/e-source-edition-6.md) | 240 | `declaration-track:eeb65d20b5e38f1b269649c7531e94648786ae4b56862714448d7e03e991bb90` |
| 20 | `def` | [F₄](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieCartanMatrixNamespaced.lean/declarations/f-source-edition-2.md) | 257 | `declaration-track:76997ae91b9c6fa95300118403c2c36abb62401d3dd11f1d58e7b24ab1fefe39` |
| 21 | `def` | [G₂](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieCartanMatrixNamespaced.lean/declarations/g-source-edition-2.md) | 268 | `declaration-track:e6ca2d3893b8c92da3cea64d0506379a44faf156f8034ea3b9e9f243667ae959` |
| 22 | `abbrev` | [e₆](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieCartanMatrixNamespaced.lean/declarations/e-source-edition-3.md) | 276 | `declaration-track:c43958f8fcb56e1f244ae8cb6c35560267b325f5807b2ce988b1e563fdc61c10` |
| 23 | `abbrev` | [e₇](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieCartanMatrixNamespaced.lean/declarations/e.md) | 280 | `declaration-track:6ecaefb736e8055fe8acd74efe55e16ed85267b5f96d1b9593749f3651a92066` |
| 24 | `abbrev` | [e₈](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieCartanMatrixNamespaced.lean/declarations/e-source-edition-4.md) | 284 | `declaration-track:db5e5003348cce0ee74f1e26af2c82205cc841b3aa845984eb1d384141c50506` |
| 25 | `abbrev` | [f₄](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieCartanMatrixNamespaced.lean/declarations/f.md) | 288 | `declaration-track:25d776c2123ec1a39652c0d701048c359a9b2ef474d3d8e73fd4a86948a3552a` |
| 26 | `abbrev` | [g₂](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieCartanMatrixNamespaced.lean/declarations/g.md) | 292 | `declaration-track:313acd5a227ccfc63d8f6d58dfc73c0b92add7151a1390a6c4f364dcf0a862e8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=4a83f6cc733cfc2ea857649297ebb47084e8ef1975b88e63cb6c3c5cf0998eff -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/CartanMatrix/Variant84fcce39775566fed4f77d1015fa8dfe0f2c000865aafaf6e2cf56802354e600.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/CartanMatrix/Variant84fcce39775566fed4f77d1015fa8dfe0f2c000865aafaf6e2cf56802354e600.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
