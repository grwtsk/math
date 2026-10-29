# Verification target: Direct Limit

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3aea7f359bfc3646eee25bb62864cb4de14c3916",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/DirectLimit/Varianta3ead0b28881d99e96fcdd9ae1920d36fb59ba7a16c895879f86d08593c8783f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearAlgebraTensorCalculus/DirectLimit.lean/index.md) · [Full source](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearAlgebraTensorCalculus/DirectLimit.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3aea7f359bfc3646eee25bb62864cb4de14c3916`.

Source path: `GRWTSK/Algebra/LinearAlgebra/DirectLimit/Varianta3ead0b28881d99e96fcdd9ae1920d36fb59ba7a16c895879f86d08593c8783f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/DirectLimit/Varianta3ead0b28881d99e96fcdd9ae1920d36fb59ba7a16c895879f86d08593c8783f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Colimit.Module` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.TensorProduct.Basic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [fromDirectLimit](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearAlgebraTensorCalculus/DirectLimit.lean/declarations/fromdirectlimit.md) | 44 | `declaration-track:fe86df2b3a687a59992dfe22c2246796e311956932c63d174481fd03325c6c93` |
| 2 | `lemma` | [fromDirectLimit_of_tmul](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearAlgebraTensorCalculus/DirectLimit.lean/declarations/fromdirectlimit-of-tmul.md) | 50 | `result-track:f462f66960f7993241968b3d4b3b9f9d7f64470bc8edccb8a0e0f74d15c8d5ca` |
| 3 | `def` | [toDirectLimit](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearAlgebraTensorCalculus/DirectLimit.lean/declarations/todirectlimit.md) | 58 | `declaration-track:27f59887d5c6fa939ce4984aa0036ee227766775ce0b40d2e24674d1af70bccf` |
| 4 | `lemma` | [toDirectLimit_tmul_of](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearAlgebraTensorCalculus/DirectLimit.lean/declarations/todirectlimit-tmul-of.md) | 65 | `result-track:5b2de2fce55fda057f76e1ac17501d64fce19439443839be1538c9906b9911ea` |
| 5 | `def` | [directLimitLeft](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearAlgebraTensorCalculus/DirectLimit.lean/declarations/directlimitleft.md) | 74 | `declaration-track:4e09530e5d252342e504392a451ee0379189571600d61dc14a2915b6e0142c2c` |
| 6 | `lemma` | [directLimitLeft_tmul_of](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearAlgebraTensorCalculus/DirectLimit.lean/declarations/directlimitleft-tmul-of.md) | 83 | `result-track:10d3fa6e08b1ea83fa22ee282c72ea930cb3b470ba2ecf94f3e810a1b1f7f858` |
| 7 | `lemma` | [directLimitLeft_symm_of_tmul](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearAlgebraTensorCalculus/DirectLimit.lean/declarations/directlimitleft-symm-of-tmul.md) | 87 | `result-track:31e57e4994b96a4bed258f73660a01928c273ee73cd7ff91a307ae25fdceaf44` |
| 8 | `lemma` | [directLimitLeft_rTensor_of](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearAlgebraTensorCalculus/DirectLimit.lean/declarations/directlimitleft-rtensor-of.md) | 91 | `result-track:54d265b226496d55e9be205a94bb1f04ab4c5e00d8647ca9cf777cdc832ef86c` |
| 9 | `def` | [directLimitRight](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearAlgebraTensorCalculus/DirectLimit.lean/declarations/directlimitright.md) | 98 | `declaration-track:34d9feeacd839a165129c8134ffa4ebcbd529ff22380342f58f0786cb2749909` |
| 10 | `lemma` | [directLimitRight_tmul_of](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearAlgebraTensorCalculus/DirectLimit.lean/declarations/directlimitright-tmul-of.md) | 104 | `result-track:a65e12fd738e7a0265b949aeb879bd87994ff2af29962cd715c02b4d9c7a5c7f` |
| 11 | `lemma` | [directLimitRight_symm_of_tmul](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearAlgebraTensorCalculus/DirectLimit.lean/declarations/directlimitright-symm-of-tmul.md) | 108 | `result-track:a69c307507a5cceda46de876966c66b626328ecfcaf16412eefc0662d7e12b2b` |
| 12 | `instance` | [(anonymous)](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearAlgebraTensorCalculus/DirectLimit.lean/declarations/instance-source-edition-2.md) | 114 | `declaration-track:ea3afad79b84d2656135b4a15c80fa9e9d2692f9e9862811383a2135cfbbf590` |
| 13 | `instance` | [(anonymous)](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearAlgebraTensorCalculus/DirectLimit.lean/declarations/instance.md) | 120 | `declaration-track:85f2fc2601dda016a2c00ab713165eddd3938b4442ccadb4afff0d46d63b0d75` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=4246cfeace98cf4e41f22d810616cc8a8c915738129d66e16f893e0dcc377aa3 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/DirectLimit/Varianta3ead0b28881d99e96fcdd9ae1920d36fb59ba7a16c895879f86d08593c8783f.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/DirectLimit/Varianta3ead0b28881d99e96fcdd9ae1920d36fb59ba7a16c895879f86d08593c8783f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
