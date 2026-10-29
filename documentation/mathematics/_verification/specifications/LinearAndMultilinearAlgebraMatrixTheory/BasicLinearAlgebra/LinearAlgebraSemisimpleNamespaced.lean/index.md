# Verification target: Linear Algebra Semisimple Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "548a7037c0ca9fa892b20ff0c38edc81b4b5d899",
  "lexical_observation_count": 30,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Semisimple/Variant36eccce6ef0c85375a9d89c6fdf6da6544a7a889e22858e914dc04491f822c1f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraSemisimpleNamespaced.lean/index.md) · [Full source](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraSemisimpleNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `548a7037c0ca9fa892b20ff0c38edc81b4b5d899`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Semisimple/Variant36eccce6ef0c85375a9d89c6fdf6da6544a7a889e22858e914dc04491f822c1f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Semisimple/Variant36eccce6ef0c85375a9d89c6fdf6da6544a7a889e22858e914dc04491f822c1f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Module.Torsion` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.FieldTheory.Perfect` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.AnnihilatingPolynomial` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Artinian.Instances` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Ideal.Quotient.Nilpotent` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.SimpleModule.Basic` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsSemisimple](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraSemisimpleNamespaced.lean/declarations/issemisimple.md) | 64 | `declaration-track:4ae8bf3016d1d250bb6fd248fe00d83d002628e3e2d3bee0215642989a6142f7` |
| 2 | `def` | [IsFinitelySemisimple](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraSemisimpleNamespaced.lean/declarations/isfinitelysemisimple.md) | 68 | `declaration-track:75494ef02a5c292dc668db229c31b13d658434ebbc5fff10309144ca19b70b39` |
| 3 | `lemma` | [isSemisimple_iff'](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraSemisimpleNamespaced.lean/declarations/issemisimple-iff-source-edition-2.md) | 76 | `result-track:ce8c87c768623047fbafe35579091c0ff9f614616e0aff11c855bcf309c19b7b` |
| 4 | `lemma` | [isSemisimple_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraSemisimpleNamespaced.lean/declarations/issemisimple-iff.md) | 82 | `result-track:1bf607f1cabedfbe82d764b2c8f47de4f546cdbf11f89da03b2b3e4e7481e8b5` |
| 5 | `lemma` | [isSemisimple_restrict_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraSemisimpleNamespaced.lean/declarations/issemisimple-restrict-iff.md) | 86 | `result-track:95e5fa0c11157236ac4fb26627932cea870f9b2e63bb89d1bd4e609ed925915b` |
| 6 | `lemma` | [isFinitelySemisimple_iff'](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraSemisimpleNamespaced.lean/declarations/isfinitelysemisimple-iff-source-edition-2.md) | 102 | `result-track:e9b847bb4ed9e6180339a313cf019563f3623a0f001335e3e9325861296f5bc4` |
| 7 | `lemma` | [isFinitelySemisimple_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraSemisimpleNamespaced.lean/declarations/isfinitelysemisimple-iff.md) | 109 | `result-track:e58350db442e96cc10d6efa3aae6355c4e6cdbbe40737407c721f5cafae12a58` |
| 8 | `lemma` | [isSemisimple_zero](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraSemisimpleNamespaced.lean/declarations/issemisimple-zero.md) | 115 | `result-track:53a41cddecc74a2707a23ebebc8c8f3c0eef174685c1b1d42041d24cf5bd6573` |
| 9 | `lemma` | [isSemisimple_id](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraSemisimpleNamespaced.lean/declarations/issemisimple-id.md) | 119 | `result-track:afcdfcb6448f42b327e457e5f261287fe403d83dfdbb9c9651feca4d5a2752af` |
| 10 | `lemma` | [isSemisimple_neg](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraSemisimpleNamespaced.lean/declarations/issemisimple-neg.md) | 122 | `result-track:26b9bbe4ea3307b34558d15402a46bbc13b74818428608df9b4f092fa65fbd27` |
| 11 | `lemma` | [Linear Algebra Semisimple Namespaced](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraSemisimpleNamespaced.lean/declarations/issemisimple-iff-source-line-126-occurrence-2.md) | 126 | `result-track:6729b2dfabe2f6a2bd9b9fdd8b103c61254bb2dc224f233b67e282d08d568753` |
| 12 | `lemma` | [eq_zero_of_isNilpotent_isSemisimple](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraSemisimpleNamespaced.lean/declarations/eq-zero-of-isnilpotent-issemisimple.md) | 133 | `result-track:b44b0e2a227e2d0513263bc71ec7e6323157e93328b98444cf6a99880ecb8f86` |
| 13 | `lemma` | [eq_zero_of_isNilpotent_of_isFinitelySemisimple](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraSemisimpleNamespaced.lean/declarations/eq-zero-of-isnilpotent-of-isfinitelysemisimple.md) | 139 | `result-track:14db5fca275932d66c642d2b8ced243cf6573ffe4353d0e1c0581bf9b22f6e1c` |
| 14 | `lemma` | [isSemisimple_sub_algebraMap_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraSemisimpleNamespaced.lean/declarations/issemisimple-sub-algebramap-iff.md) | 163 | `result-track:f277e5b682121085594ac9601343b5a5a9ec832a94a757ce6d93c1c2b95a6017` |
| 15 | `lemma` | [IsSemisimple.restrict](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraSemisimpleNamespaced.lean/declarations/issemisimple-restrict.md) | 170 | `result-track:19f10fda6c360bed3292649ecc73af227bc39462c403a57e8c4ea3c4e9cf7533` |
| 16 | `lemma` | [IsSemisimple.isFinitelySemisimple](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraSemisimpleNamespaced.lean/declarations/issemisimple-isfinitelysemisimple.md) | 179 | `result-track:581e3ba8cabf0c5f783f00dd84d95675fb6c9c0380b7f64ae80e491a8ebe999d` |
| 17 | `lemma` | [isFinitelySemisimple_iff_isSemisimple](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraSemisimpleNamespaced.lean/declarations/isfinitelysemisimple-iff-issemisimple.md) | 184 | `result-track:1aa0fef823f6ae3696c390cadb59d6b2127e932deb898865f0456948c1c1d4b4` |
| 18 | `lemma` | [isFinitelySemisimple_sub_algebraMap_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraSemisimpleNamespaced.lean/declarations/isfinitelysemisimple-sub-algebramap-iff.md) | 192 | `result-track:1736a8fa02b51f7772eb44775f866fc1f623efe2d321862d3c29db4b368767b0` |
| 19 | `lemma` | [IsFinitelySemisimple.restrict](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraSemisimpleNamespaced.lean/declarations/isfinitelysemisimple-restrict.md) | 199 | `result-track:055b958ea3db6b64288fa7615f7c2b7438a0477295a15a0239bee2920d76e2e7` |
| 20 | `lemma` | [IsSemisimple_smul_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraSemisimpleNamespaced.lean/declarations/issemisimple-smul-iff.md) | 214 | `result-track:a68ae75a6c190c343e8594e2b6cd5cb37bc9936fe251c1dda4da2c158504226f` |
| 21 | `lemma` | [IsSemisimple_smul](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraSemisimpleNamespaced.lean/declarations/issemisimple-smul.md) | 218 | `result-track:dfcd017da5a79d30990d84fa7b12bca5b4f1688255fbddd3e89511ae1e3c555e` |
| 22 | `theorem` | [isSemisimple_of_squarefree_aeval_eq_zero](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraSemisimpleNamespaced.lean/declarations/issemisimple-of-squarefree-aeval-eq-zero.md) | 223 | `result-track:38d01c98c66f7db5f17e890217dd9e57ff797dc25cb709076469598acd6ecccf` |
| 23 | `theorem` | [IsSemisimple.minpoly_squarefree](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraSemisimpleNamespaced.lean/declarations/issemisimple-minpoly-squarefree.md) | 246 | `result-track:77e9c2f9b196b0168ec11fc3af951e6da36c70442c543deb03e359b83221cca3` |
| 24 | `theorem` | [IsSemisimple.aeval](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraSemisimpleNamespaced.lean/declarations/issemisimple-aeval.md) | 250 | `result-track:466cefbc038d27cdb29aff64f96e22ef598f14710d9f69f2472362c2015fbe7e` |
| 25 | `theorem` | [IsSemisimple.of_mem_adjoin_singleton](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraSemisimpleNamespaced.lean/declarations/issemisimple-of-mem-adjoin-singleton.md) | 262 | `result-track:3971705682244765928078dfbffb9c6c7fe49d9693be8f987e182ca7acd492a9` |
| 26 | `theorem` | [IsSemisimple.pow](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraSemisimpleNamespaced.lean/declarations/issemisimple-pow.md) | 266 | `result-track:1043c15c20e1b9a0b11cfedefc02304c7d3c66dc9426381579161ff415df2856` |
| 27 | `theorem` | [IsSemisimple.of_mem_adjoin_pair](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraSemisimpleNamespaced.lean/declarations/issemisimple-of-mem-adjoin-pair.md) | 277 | `result-track:5ef694957650431ec12010eae768eb351b69df8ca336510ddbb855a7c58299de` |
| 28 | `theorem` | [IsSemisimple.add_of_commute](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraSemisimpleNamespaced.lean/declarations/issemisimple-add-of-commute.md) | 311 | `result-track:f59181c433ce43990ba5796979004ef728bf2908909cce3c60b1714d4f3b4744` |
| 29 | `theorem` | [IsSemisimple.sub_of_commute](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraSemisimpleNamespaced.lean/declarations/issemisimple-sub-of-commute.md) | 314 | `result-track:ddfd74a6b580bf56e6cfcdcd2e81d0dca711ba2bec5efc2b72b402fe7fa3e26e` |
| 30 | `theorem` | [IsSemisimple.mul_of_commute](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraSemisimpleNamespaced.lean/declarations/issemisimple-mul-of-commute.md) | 317 | `result-track:7cc56813e492f90227cdc2e7abb192d31b37dc293bf7ac41e06ad4eae10a5fcc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=3071603868479b98401decbeaae59e0ec5b94134946d8f53c5ac206c95b389a8 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Semisimple/Variant36eccce6ef0c85375a9d89c6fdf6da6544a7a889e22858e914dc04491f822c1f.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/Semisimple/Variant36eccce6ef0c85375a9d89c6fdf6da6544a7a889e22858e914dc04491f822c1f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
