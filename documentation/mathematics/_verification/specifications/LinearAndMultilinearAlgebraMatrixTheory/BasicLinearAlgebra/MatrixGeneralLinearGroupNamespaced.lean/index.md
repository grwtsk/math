# Verification target: Matrix General Linear Group Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0eb70ed5b32e4a556c3b491753a4187a21b8bc36",
  "lexical_observation_count": 33,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/GeneralLinearGroup/Variant1959aa1108c24171f696033bccd2419a3ba13055900c470f70cd9f9ad17d55f7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixGeneralLinearGroupNamespaced.lean/index.md) · [Full source](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixGeneralLinearGroupNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0eb70ed5b32e4a556c3b491753a4187a21b8bc36`.

Source path: `GRWTSK/Algebra/LinearAlgebra/GeneralLinearGroup/Variant1959aa1108c24171f696033bccd2419a3ba13055900c470f70cd9f9ad17d55f7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/GeneralLinearGroup/Variant1959aa1108c24171f696033bccd2419a3ba13055900c470f70cd9f9ad17d55f7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.GeneralLinearGroup` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.NonsingularInverse` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.SpecialLinearGroup` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [GeneralLinearGroup](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixGeneralLinearGroupNamespaced.lean/declarations/generallineargroup.md) | 51 | `declaration-track:7b8e59bb5670cbc2d5e9c099a56a69c87be923f6f7307200b4aaa1203a5174cb` |
| 2 | `instance` | [instCoeFun](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixGeneralLinearGroupNamespaced.lean/declarations/instcoefun.md) | 67 | `declaration-track:036b35920f8ed3e79847cfa2c7c71a63f6cc2c1e9fcb87b04ca9404fd912e3b0` |
| 3 | `def` | [det](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixGeneralLinearGroupNamespaced.lean/declarations/det.md) | 74 | `declaration-track:ee393567ae319a994a6d757bbd0239080e03b3f3f62af889f57cb55c452c03cc` |
| 4 | `def` | [toLin](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixGeneralLinearGroupNamespaced.lean/declarations/tolin.md) | 86 | `declaration-track:6bc38307aa46378a6fd6d42d583167060e346e4c3121dad8a5668f52a476cc69` |
| 5 | `def` | [mk'](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixGeneralLinearGroupNamespaced.lean/declarations/mk-source-edition-2.md) | 91 | `declaration-track:851fb2bee11eccf8708a48dfe10883650937b0c6b73f4572ea1e74b465d2a9e3` |
| 6 | `def` | [mk''](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixGeneralLinearGroupNamespaced.lean/declarations/mk.md) | 96 | `declaration-track:264e4b265315a1cf7c0895baaf76877ab77e7b892bc8fc66a0d0a48219280603` |
| 7 | `def` | [mkOfDetNeZero](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixGeneralLinearGroupNamespaced.lean/declarations/mkofdetnezero.md) | 101 | `declaration-track:736e7f56af56c14ede2aea335d4d27c2c1830030942253e9a7691180479b2b0a` |
| 8 | `theorem` | [ext_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixGeneralLinearGroupNamespaced.lean/declarations/ext-iff.md) | 105 | `result-track:df0c2ed36f2a7728ee0ea3a5a614742e409113dc12e73150c8b43cb498cd4a79` |
| 9 | `theorem` | [ext](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixGeneralLinearGroupNamespaced.lean/declarations/ext.md) | 110 | `result-track:f52ca78f56e85c66ab0705e69c68ba14b59295ba7acd1b5115a4c34d43f3a8d1` |
| 10 | `theorem` | [coe_mul](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixGeneralLinearGroupNamespaced.lean/declarations/coe-mul.md) | 119 | `result-track:45b4cef24908911294c44ead2859d22bed47e8d7425908bba9c1c7708629774f` |
| 11 | `theorem` | [coe_one](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixGeneralLinearGroupNamespaced.lean/declarations/coe-one.md) | 124 | `result-track:aa1758419508309498fbfad1b2da83dc5fa8655450db82b9cd82b935ba0aed91` |
| 12 | `theorem` | [coe_inv](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixGeneralLinearGroupNamespaced.lean/declarations/coe-inv.md) | 128 | `result-track:8bf05e9ffa1f1eebaed9c01d8546ca5dcf2b18a1e7a6f0599ab6af6b7012d4bf` |
| 13 | `def` | [toLinear](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixGeneralLinearGroupNamespaced.lean/declarations/tolinear.md) | 135 | `declaration-track:81d8c7b2177808e6d60a29db0307c8c6186109e3768cb293b41ca30ca76bcfd9` |
| 14 | `theorem` | [coe_toLinear](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixGeneralLinearGroupNamespaced.lean/declarations/coe-tolinear.md) | 144 | `result-track:89e44ce310b2298f38a3c85f7d632edab4212c023368e7fc74ae281a08ac431b` |
| 15 | `theorem` | [toLinear_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixGeneralLinearGroupNamespaced.lean/declarations/tolinear-apply.md) | 150 | `result-track:284e1a0c4a8137bc7013826c5fb5dc30440f5a08b2cbcf8c59a4d5bf6f8030e4` |
| 16 | `def` | [coeToGL](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixGeneralLinearGroupNamespaced.lean/declarations/coetogl.md) | 166 | `declaration-track:e5ee935c657e7fc195c6efd45b41324c800b4e5238ca8634e5518bfd7aa9a842` |
| 17 | `instance` | [hasCoeToGeneralLinearGroup](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixGeneralLinearGroupNamespaced.lean/declarations/hascoetogenerallineargroup.md) | 171 | `declaration-track:72f3e97362b2992d896adc99aa6c875d8a86fcef4d3bb111ac1f13427e681aad` |
| 18 | `theorem` | [coeToGL_det](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixGeneralLinearGroupNamespaced.lean/declarations/coetogl-det.md) | 176 | `result-track:e4822420b6aeac68b98dcc117c0e6b208e0216a45553c311c2baed1eac0a9852` |
| 19 | `def` | [GLPos](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixGeneralLinearGroupNamespaced.lean/declarations/glpos.md) | 194 | `declaration-track:3761f7bc5678d968a39ffb2dea72ce3a3b7333650d61c79060ab490884fea6d6` |
| 20 | `theorem` | [mem_glpos](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixGeneralLinearGroupNamespaced.lean/declarations/mem-glpos.md) | 202 | `result-track:e3cbc68dfb311c87bcf2e4161a60e2f7651cc4fce26604010d8d670db69ce729` |
| 21 | `theorem` | [GLPos.det_ne_zero](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixGeneralLinearGroupNamespaced.lean/declarations/glpos-det-ne-zero.md) | 207 | `result-track:f224667873685ccb29ff3e63e1c0a106d6bceb5e01e2df1957d6ffcc780f972f` |
| 22 | `instance` | [(anonymous)](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixGeneralLinearGroupNamespaced.lean/declarations/instance.md) | 221 | `declaration-track:4a6eca3ce8a78dbd9b195324c2a8c954b6d17a694fac79d8e6997b5feadaa213` |
| 23 | `theorem` | [GLPos.coe_neg_GL](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixGeneralLinearGroupNamespaced.lean/declarations/glpos-coe-neg-gl.md) | 229 | `result-track:9afc0706ae710aaa12fe5a293bf8350e6d9d728eee194cb462b2427b8e6ae758` |
| 24 | `theorem` | [GLPos.coe_neg](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixGeneralLinearGroupNamespaced.lean/declarations/glpos-coe-neg.md) | 235 | `result-track:2c1003b6ea3ff7b2c74f8a503298998f280b1eb0125176a946819042f8c6e85a` |
| 25 | `theorem` | [GLPos.coe_neg_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixGeneralLinearGroupNamespaced.lean/declarations/glpos-coe-neg-apply.md) | 241 | `result-track:0e8998e23bece8564f5dcedc140717a776520644420d666ba50ab559b5c11ceb` |
| 26 | `instance` | [(anonymous)](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixGeneralLinearGroupNamespaced.lean/declarations/instance-source-edition-2.md) | 247 | `declaration-track:9cd9347c4e2cbb17bbc0ae7bee1968bce4782169fcbedd22e63156798661f9b5` |
| 27 | `def` | [toGLPos](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixGeneralLinearGroupNamespaced.lean/declarations/toglpos.md) | 257 | `declaration-track:727aaee487f189a4850454bfa3a60b4d785df25321b456eb44035fbbcc10d9be` |
| 28 | `instance` | [(anonymous)](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixGeneralLinearGroupNamespaced.lean/declarations/instance-source-edition-3.md) | 264 | `declaration-track:f5a749550d8cef737abe1e2711b4dd1714ab7f6bc82a35a242b4f586856e37d3` |
| 29 | `theorem` | [toGLPos_injective](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixGeneralLinearGroupNamespaced.lean/declarations/toglpos-injective.md) | 269 | `result-track:c5b387b41aaa129adabbe930bad706c227f3f44108011dbd5ef6863ac9973f37` |
| 30 | `theorem` | [coe_GLPos_coe_GL_coe_matrix](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixGeneralLinearGroupNamespaced.lean/declarations/coe-glpos-coe-gl-coe-matrix.md) | 282 | `result-track:40ee5ab74de8ce70b01dadc1c34f1f1de60b99a5c0351491f1b05f6b4e76ba9f` |
| 31 | `theorem` | [coe_to_GLPos_to_GL_det](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixGeneralLinearGroupNamespaced.lean/declarations/coe-to-glpos-to-gl-det.md) | 289 | `result-track:0694645d8ba0a98d44a72a2e06bfab65e4a0ee0412c2c815eec676e85eacebae` |
| 32 | `theorem` | [coe_GLPos_neg](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixGeneralLinearGroupNamespaced.lean/declarations/coe-glpos-neg.md) | 298 | `result-track:1bc4ce3036a8ba8d961fa878f38fa3edd27bc181a1a494c79164504b109665ec` |
| 33 | `def` | [planeConformalMatrix](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MatrixGeneralLinearGroupNamespaced.lean/declarations/planeconformalmatrix.md) | 310 | `declaration-track:9989f92b7af75d0de00038f473c706620972dc10de2037c3d001af81ae6151be` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=13686243145c9938cdbe81a082baaca793f550e776d5789047ab13edcf3be16b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/GeneralLinearGroup/Variant1959aa1108c24171f696033bccd2419a3ba13055900c470f70cd9f9ad17d55f7.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/GeneralLinearGroup/Variant1959aa1108c24171f696033bccd2419a3ba13055900c470f70cd9f9ad17d55f7.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
