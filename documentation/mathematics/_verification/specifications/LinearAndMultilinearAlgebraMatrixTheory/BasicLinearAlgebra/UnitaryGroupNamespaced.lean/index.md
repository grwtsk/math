# Verification target: Unitary Group Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6ef947b4246a5bf0e0f587ce002a77156e8cf70a",
  "lexical_observation_count": 33,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/UnitaryGroup/Variant822fe2da1c257d36501e2d0c3654fbcbfd626859c6da6a97a5fcdb4449b94ac2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/UnitaryGroupNamespaced.lean/index.md) · [Full source](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/UnitaryGroupNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6ef947b4246a5bf0e0f587ce002a77156e8cf70a`.

Source path: `GRWTSK/Algebra/LinearAlgebra/UnitaryGroup/Variant822fe2da1c257d36501e2d0c3654fbcbfd626859c6da6a97a5fcdb4449b94ac2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/UnitaryGroup/Variant822fe2da1c257d36501e2d0c3654fbcbfd626859c6da6a97a5fcdb4449b94ac2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.GeneralLinearGroup` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.ToLin` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.NonsingularInverse` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Star.Unitary` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [unitaryGroup](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/UnitaryGroupNamespaced.lean/declarations/unitarygroup.md) | 63 | `declaration-track:76bdf177524e0ebd989c5c3e0db6c4e00013e6858b77f91c638db14c2f7b7f8f` |
| 2 | `theorem` | [mem_unitaryGroup_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/UnitaryGroupNamespaced.lean/declarations/mem-unitarygroup-iff-source-edition-2.md) | 71 | `result-track:e81d8036a2981395e626a25cf4da66b6625fdbd40bc604fe549758ffae718806` |
| 3 | `theorem` | [mem_unitaryGroup_iff'](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/UnitaryGroupNamespaced.lean/declarations/mem-unitarygroup-iff.md) | 75 | `result-track:124bf62713ff1c40100d5ce9ced2758025b3413137ee55b6f47bdf42cbb22c24` |
| 4 | `theorem` | [det_of_mem_unitary](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/UnitaryGroupNamespaced.lean/declarations/det-of-mem-unitary.md) | 79 | `result-track:a8271d4e4e5a50169a0e6f885dce61844c939edfb04de048cc946b0a1c74f301` |
| 5 | `instance` | [coeMatrix](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/UnitaryGroupNamespaced.lean/declarations/coematrix.md) | 87 | `declaration-track:97523fbb93ab0c4cd31d5ca07ceb6401700a82bbde1912b6c45616cd2bd1e7da` |
| 6 | `instance` | [coeFun](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/UnitaryGroupNamespaced.lean/declarations/coefun.md) | 90 | `declaration-track:563486e399a4ec2a01910fe1f9adb9db2a9e1ff77b87742e0038e0f055d0a7e3` |
| 7 | `def` | [toLin'](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/UnitaryGroupNamespaced.lean/declarations/tolin.md) | 97 | `declaration-track:eccc132816b184f83f0a3fbac934172f74c5a0437d08219e79f622204a6b12f2` |
| 8 | `theorem` | [ext_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/UnitaryGroupNamespaced.lean/declarations/ext-iff.md) | 100 | `result-track:4128c87b21057d9870a59bb5204b236c4fe373a06be17c49daa68f8b5074167b` |
| 9 | `theorem` | [ext](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/UnitaryGroupNamespaced.lean/declarations/ext.md) | 104 | `result-track:8d6300c3c79d40acee7033b469b141b8244f7fed8673f7dcd84b672637c44077` |
| 10 | `theorem` | [star_mul_self](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/UnitaryGroupNamespaced.lean/declarations/star-mul-self.md) | 107 | `result-track:0e35d591f798ab03fdc384417328c297191870b2e6952366916b8fad17907297` |
| 11 | `theorem` | [det_isUnit](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/UnitaryGroupNamespaced.lean/declarations/det-isunit.md) | 111 | `result-track:627faf4ae61ad7b6cf8a6dc6cd111d04f17bff55ef175ceff7e850838a6f6630` |
| 12 | `theorem` | [inv_val](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/UnitaryGroupNamespaced.lean/declarations/inv-val.md) | 118 | `result-track:f6e0033d36f0469019e0181dd8e3713e49923f2e5f8b399b6c5587d92d82256e` |
| 13 | `theorem` | [inv_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/UnitaryGroupNamespaced.lean/declarations/inv-apply.md) | 120 | `result-track:c2c7b64753ce789ffdd15ead3e2bb311db1d675b909d42a5abf4099b6587b95a` |
| 14 | `theorem` | [mul_val](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/UnitaryGroupNamespaced.lean/declarations/mul-val.md) | 122 | `result-track:21acbef6281b36445a8c683d220f950c293a85bc0c6aa7cae3c44e5af727d35e` |
| 15 | `theorem` | [mul_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/UnitaryGroupNamespaced.lean/declarations/mul-apply.md) | 124 | `result-track:6a4ca241677d83b6665638b5c199c12cfa869b8a15f6e37a2e81b73c16c64f85` |
| 16 | `theorem` | [one_val](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/UnitaryGroupNamespaced.lean/declarations/one-val.md) | 126 | `result-track:c7f7ca4b08fc7912cb4b3613646cfc5d3f22d88294393d5355cc7be9bd8de70a` |
| 17 | `theorem` | [one_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/UnitaryGroupNamespaced.lean/declarations/one-apply.md) | 128 | `result-track:4209835544dfb63973d257a1d3ada7519060dfa61b5def0568e49d31f8847ce2` |
| 18 | `theorem` | [toLin'_mul](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/UnitaryGroupNamespaced.lean/declarations/tolin-mul.md) | 131 | `result-track:27aefc2cb9a3db14c8eb70a652511c207ae139d4e9dc5a0b989688804c22348d` |
| 19 | `theorem` | [toLin'_one](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/UnitaryGroupNamespaced.lean/declarations/tolin-one.md) | 135 | `result-track:b1845d7e41aa6340b7c8968875663f6046006c1ce69abb9987b8510baca09349` |
| 20 | `example` | [(anonymous)](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/UnitaryGroupNamespaced.lean/declarations/example.md) | 142 | `declaration-track:e7c9874e77160941506b9ece9dd64a7d9d4655fd7f82e9e4dac9d7d6e635699f` |
| 21 | `def` | [toLinearEquiv](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/UnitaryGroupNamespaced.lean/declarations/tolinearequiv.md) | 147 | `declaration-track:27401f984e2ca00a39f151e5affe9078e6f6016cfceebc05a556e55435b87541` |
| 22 | `def` | [toGL](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/UnitaryGroupNamespaced.lean/declarations/togl.md) | 160 | `declaration-track:1414a4eedf1dd18c45219fb7b13527df2870ce70c858c6fb8d0d05b7f37c6537` |
| 23 | `theorem` | [coe_toGL](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/UnitaryGroupNamespaced.lean/declarations/coe-togl.md) | 163 | `result-track:21b923a72ddc4cc42fb60bb7f8d13608783317f893a543499e0813ba7a7e0c1f` |
| 24 | `theorem` | [toGL_one](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/UnitaryGroupNamespaced.lean/declarations/togl-one.md) | 166 | `result-track:95410ebc31478b08c7cce79c79c242debf6a3bbde6c759eda1b2169d8c8c6a5b` |
| 25 | `theorem` | [toGL_mul](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/UnitaryGroupNamespaced.lean/declarations/togl-mul.md) | 171 | `result-track:60b8c87dfea4e33c6f578e5d2e7d4974125c0eeba73f5738a377a11cb6178b7f` |
| 26 | `def` | [embeddingGL](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/UnitaryGroupNamespaced.lean/declarations/embeddinggl.md) | 177 | `declaration-track:ad972c9b9297e9fb0afe42903a408b982c5497057fdd500bc2f92fa2b6299bad` |
| 27 | `abbrev` | [specialUnitaryGroup](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/UnitaryGroupNamespaced.lean/declarations/specialunitarygroup.md) | 188 | `declaration-track:7490c42ed3f2957ebacb6fe40ab0f65ebeb54a63665472a7f711d3bc1bf5f76b` |
| 28 | `theorem` | [mem_specialUnitaryGroup_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/UnitaryGroupNamespaced.lean/declarations/mem-specialunitarygroup-iff.md) | 192 | `result-track:0fd342c7a2e7d41245ec8f389296fc0282311754ce1f7bc3726b16a9a7f81569` |
| 29 | `abbrev` | [orthogonalGroup](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/UnitaryGroupNamespaced.lean/declarations/orthogonalgroup.md) | 209 | `declaration-track:1a48a2be1484198105d4ddd280228963116734ed776782c1d7aab234b05b789a` |
| 30 | `theorem` | [mem_orthogonalGroup_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/UnitaryGroupNamespaced.lean/declarations/mem-orthogonalgroup-iff.md) | 211 | `result-track:2ec2c0503fddc0b2a305bc5c663d337422821053f7783e20d27cdfcf26ce3d60` |
| 31 | `theorem` | [mem_orthogonalGroup_iff'](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/UnitaryGroupNamespaced.lean/declarations/mem-orthogonalgroup-iff-source-edition-2.md) | 216 | `result-track:f413106dd6341cc58e9ed5da2d02a9fd28e253fe3b965d1fb604a4e1f32f1d69` |
| 32 | `abbrev` | [specialOrthogonalGroup](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/UnitaryGroupNamespaced.lean/declarations/specialorthogonalgroup.md) | 231 | `declaration-track:5076fcb08e24cc1a8e7bb752eb6212d5d5441010a90e1c8403ce6bba08ab9adb` |
| 33 | `theorem` | [mem_specialOrthogonalGroup_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/UnitaryGroupNamespaced.lean/declarations/mem-specialorthogonalgroup-iff.md) | 235 | `result-track:95a44dc282389be2a410e0095d8ecbff85c071d0a5cf36f526b8d9e0e21c5d42` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=025c8eaa2115495a9023d2860e773e13e865fd7d48e3585af15d73ad2eec7546 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/UnitaryGroup/Variant822fe2da1c257d36501e2d0c3654fbcbfd626859c6da6a97a5fcdb4449b94ac2.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/UnitaryGroup/Variant822fe2da1c257d36501e2d0c3654fbcbfd626859c6da6a97a5fcdb4449b94ac2.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
