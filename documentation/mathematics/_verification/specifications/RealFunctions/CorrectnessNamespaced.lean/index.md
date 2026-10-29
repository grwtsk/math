# Verification target: Correctness Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1988cb11eec1d32e19cb2fb7e00b68142bade502",
  "lexical_observation_count": 38,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Correctness/Variant8b262bd1d21d1d8516e6f1c735f8e20c2880c86007114f3614ef7722c99fb259.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../RealFunctions/CorrectnessNamespaced.lean/index.md) · [Full source](../../../../RealFunctions/CorrectnessNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1988cb11eec1d32e19cb2fb7e00b68142bade502`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Correctness/Variant8b262bd1d21d1d8516e6f1c735f8e20c2880c86007114f3614ef7722c99fb259.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/Correctness/Variant8b262bd1d21d1d8516e6f1c735f8e20c2880c86007114f3614ef7722c99fb259.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `LeanCert.Engine.AD.Eval` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.Deriv.Add` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.Deriv.Mul` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.Deriv.Comp` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.Deriv.Inv` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Trigonometric.Deriv` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [evalDual_val_correct](../../../../RealFunctions/CorrectnessNamespaced.lean/declarations/evaldual-val-correct.md) | 53 | `result-track:4b6469eaa0bdb75faa8524a1e25aa7a57058ac01e67e148dcfa1c475dcd29ff9` |
| 2 | `abbrev` | [evalFunc1](../../../../RealFunctions/CorrectnessNamespaced.lean/declarations/evalfunc1.md) | 86 | `declaration-track:0b7594e19ebed3966f3644c0fe27e72f6dd60caa57a45982b17f8af3b0c7ad64` |
| 3 | `theorem` | [evalFunc1_differentiable](../../../../RealFunctions/CorrectnessNamespaced.lean/declarations/evalfunc1-differentiable.md) | 96 | `result-track:7a54dfe3aa0b035b3f84cfac10f688fce02e3edd8c04f1dc8be23f7a5471ab94` |
| 4 | `theorem` | [cos_mem_cosInterval_of_any](../../../../RealFunctions/CorrectnessNamespaced.lean/declarations/cos-mem-cosinterval-of-any.md) | 120 | `result-track:1e480daec113f67e0eb3de0ad1cb76b25159d030e7a8a5d33c1acfd263e8701a` |
| 5 | `theorem` | [sin_mem_sinInterval_of_any](../../../../RealFunctions/CorrectnessNamespaced.lean/declarations/sin-mem-sininterval-of-any.md) | 127 | `result-track:0db22c8bf53a42ee34d75411f0d42b0c926f4049de4fb81356605fe1525b6fd3` |
| 6 | `theorem` | [neg_sin_mem_neg_sinInterval](../../../../RealFunctions/CorrectnessNamespaced.lean/declarations/neg-sin-mem-neg-sininterval.md) | 134 | `result-track:ac3309912e281c7dc81384d0af3f8c93d6722123fff703aade634b35098298bd` |
| 7 | `theorem` | [updateVar_mem_mkDualEnv_val](../../../../RealFunctions/CorrectnessNamespaced.lean/declarations/updatevar-mem-mkdualenv-val.md) | 140 | `result-track:6dfee6349f97a8ab6ef7c702d8aaf4351dcd11146b6898a4298b6892ba694181` |
| 8 | `theorem` | [evalFunc1_add](../../../../RealFunctions/CorrectnessNamespaced.lean/declarations/evalfunc1-add.md) | 154 | `result-track:86d8c91541a255a4cee788cce5c737c1d4087d639b6911dc0fc02ac075300d33` |
| 9 | `theorem` | [evalFunc1_add_pi](../../../../RealFunctions/CorrectnessNamespaced.lean/declarations/evalfunc1-add-pi.md) | 158 | `result-track:a6e648554d8fbd978827dd3def9de2a4f44068e2b8558c74c1b1a7f59f1d4539` |
| 10 | `theorem` | [evalFunc1_mul](../../../../RealFunctions/CorrectnessNamespaced.lean/declarations/evalfunc1-mul.md) | 162 | `result-track:62d97634229d1379f72110e95d1f72f17696696591c6e36251affc15b3a92c41` |
| 11 | `theorem` | [evalFunc1_mul_pi](../../../../RealFunctions/CorrectnessNamespaced.lean/declarations/evalfunc1-mul-pi.md) | 166 | `result-track:0c6beddd31ce30bb856ad6118196df7a48809cab5023799293d233f45a833d96` |
| 12 | `theorem` | [evalFunc1_neg](../../../../RealFunctions/CorrectnessNamespaced.lean/declarations/evalfunc1-neg.md) | 170 | `result-track:27f38761f66cd6b6628c3c94a132813f38c00c7e325cfc6ee3441fc5ef3b2cba` |
| 13 | `theorem` | [evalFunc1_neg_pi](../../../../RealFunctions/CorrectnessNamespaced.lean/declarations/evalfunc1-neg-pi.md) | 174 | `result-track:15d056ad0d3e673bf117ff37fdd1bf167070a8451cc535f4592be3be1eb57fe0` |
| 14 | `theorem` | [evalFunc1_sin](../../../../RealFunctions/CorrectnessNamespaced.lean/declarations/evalfunc1-sin.md) | 178 | `result-track:496977716ab0487e17af0fab24fd404db2c545ae1d1f7ec5175a884018b5cf3c` |
| 15 | `theorem` | [evalFunc1_cos](../../../../RealFunctions/CorrectnessNamespaced.lean/declarations/evalfunc1-cos.md) | 182 | `result-track:da7e2458fb73fa22af4279ded38ffc65526def8c4e9cbd930f3c265d756ed222` |
| 16 | `theorem` | [evalFunc1_exp](../../../../RealFunctions/CorrectnessNamespaced.lean/declarations/evalfunc1-exp.md) | 186 | `result-track:e80b7f9a30b13168f8f67f486292a477b0f470f32c6146937a84266e9ac01d6b` |
| 17 | `theorem` | [evalFunc1_log](../../../../RealFunctions/CorrectnessNamespaced.lean/declarations/evalfunc1-log.md) | 190 | `result-track:3dc46c7969c79e9e58e7c042f7f23eae6887a8c524a2cb702ccfee9fcfbc98d9` |
| 18 | `theorem` | [evalFunc1_atan](../../../../RealFunctions/CorrectnessNamespaced.lean/declarations/evalfunc1-atan.md) | 194 | `result-track:51c41876880025435d3c13c6fe3b21532523e35d03466d300170566d173c99e3` |
| 19 | `theorem` | [evalFunc1_arsinh](../../../../RealFunctions/CorrectnessNamespaced.lean/declarations/evalfunc1-arsinh.md) | 198 | `result-track:e87d9435f9a30fc7860f540e72af5f7c3daea9435008f8df9104c440b4135422` |
| 20 | `theorem` | [evalFunc1_atanh](../../../../RealFunctions/CorrectnessNamespaced.lean/declarations/evalfunc1-atanh.md) | 202 | `result-track:18eae6f31203d38b6ba414cae81823b2da52f3162add942cd66a8c61468f4b23` |
| 21 | `theorem` | [evalFunc1_sinc](../../../../RealFunctions/CorrectnessNamespaced.lean/declarations/evalfunc1-sinc.md) | 206 | `result-track:f4d932ecf2bbec34262004b20fd8c0911e2deb25eb8f62319b4b92bd36fb67af` |
| 22 | `theorem` | [evalFunc1_erf](../../../../RealFunctions/CorrectnessNamespaced.lean/declarations/evalfunc1-erf.md) | 210 | `result-track:aabfb944dc035df0b16ef4132a8a652ceb29ef03791837af5205956af5d9b3a4` |
| 23 | `theorem` | [evalFunc1_sqrt](../../../../RealFunctions/CorrectnessNamespaced.lean/declarations/evalfunc1-sqrt.md) | 214 | `result-track:e7ba9378f4864194017becfd78a6bd65cbe1d758ca66b99d07faa840ab8aaf96` |
| 24 | `theorem` | [evalFunc1_const](../../../../RealFunctions/CorrectnessNamespaced.lean/declarations/evalfunc1-const.md) | 219 | `result-track:3e7d1b58d8e7383a1140b7fc6be78bfffcada6f18086ba7deddcde9266cd5b40` |
| 25 | `theorem` | [evalFunc1_var](../../../../RealFunctions/CorrectnessNamespaced.lean/declarations/evalfunc1-var.md) | 223 | `result-track:d3a301521fbabc10c41a13ee7a063e11eb84139a7f5281e47015b8393a96afce` |
| 26 | `theorem` | [evalFunc1_namedConst](../../../../RealFunctions/CorrectnessNamespaced.lean/declarations/evalfunc1-namedconst.md) | 227 | `result-track:a31ccde7a9d9b4dcc409561ece961abcb8fc480adab89789fc60d8ae00119f2c` |
| 27 | `theorem` | [evalFunc1_pi](../../../../RealFunctions/CorrectnessNamespaced.lean/declarations/evalfunc1-pi.md) | 231 | `result-track:09e64de2e3315b31967f7ff1ecf798ce45623e0472d824b1aacd238652e9e646` |
| 28 | `theorem` | [evalFunc1_eulerMascheroni](../../../../RealFunctions/CorrectnessNamespaced.lean/declarations/evalfunc1-eulermascheroni.md) | 235 | `result-track:24424aa5b3e6dbdb8c102d6c109b5decf040ee7636b684bbf05ff735d3f6fdf8` |
| 29 | `theorem` | [deriv_mem_dualDer](../../../../RealFunctions/CorrectnessNamespaced.lean/declarations/deriv-mem-dualder.md) | 241 | `result-track:b2b827571b238aa7507bf9f38dca98739479054caa34fd1e0ec947d11837ffa0` |
| 30 | `theorem` | [evalDual_der_correct](../../../../RealFunctions/CorrectnessNamespaced.lean/declarations/evaldual-der-correct.md) | 314 | `result-track:7b1a11d57e4bb0d667ed8b078fbc6a5c0ac435b8edbf901efbd4983b3838f66b` |
| 31 | `theorem` | [evalAlong_differentiable](../../../../RealFunctions/CorrectnessNamespaced.lean/declarations/evalalong-differentiable.md) | 323 | `result-track:537c69f6c5533ec8c92635914bbcb168d56b8d2d0d3ff33a988692880905c200` |
| 32 | `theorem` | [evalDual_der_correct_idx](../../../../RealFunctions/CorrectnessNamespaced.lean/declarations/evaldual-der-correct-idx.md) | 365 | `result-track:b102f88bf12c61140d4be10e2690c761b514033baf6b7bd9f5ef19474e397326` |
| 33 | `theorem` | [derivInterval_correct_idx](../../../../RealFunctions/CorrectnessNamespaced.lean/declarations/derivinterval-correct-idx.md) | 425 | `result-track:1b37eb01803d98a0ebbc33856b74fd8779de7a042f1df0eaa4c37599bd15c9d6` |
| 34 | `inductive` | [UsesOnlyVar0](../../../../RealFunctions/CorrectnessNamespaced.lean/declarations/usesonlyvar0.md) | 438 | `declaration-track:147eda9688f5f25b5f76fac7f0cd7e1c9667c569b928b2e50bc757b8a3065fff` |
| 35 | `theorem` | [evalDual_congr_at_0](../../../../RealFunctions/CorrectnessNamespaced.lean/declarations/evaldual-congr-at-0.md) | 451 | `result-track:c3cb37feb4d7317b8a018c6df4dff2584d66bd58866c563ad8ff250a34e20716` |
| 36 | `theorem` | [mkDualEnv_at_0](../../../../RealFunctions/CorrectnessNamespaced.lean/declarations/mkdualenv-at-0.md) | 475 | `result-track:bf613b7c73fe80b07739897af92c57cb155da6a50190e13b819ef958b437280b` |
| 37 | `theorem` | [derivInterval_eq_evalWithDeriv1_of_UsesOnlyVar0](../../../../RealFunctions/CorrectnessNamespaced.lean/declarations/derivinterval-eq-evalwithderiv1-of-usesonlyvar0.md) | 480 | `result-track:2757ef7a69caa16724e69411b12c40d1f08f22477e12109ef104b310a0f801b3` |
| 38 | `theorem` | [evalWithDeriv1_correct](../../../../RealFunctions/CorrectnessNamespaced.lean/declarations/evalwithderiv1-correct.md) | 491 | `result-track:3bc12098eb30cf03ed1478392631212618012508e7261c265bc0169aea5675bd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=17e255ff666bfd57ae883abdbedd128f9dc57e65b1ecdbe058f6f885685b710f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Correctness/Variant8b262bd1d21d1d8516e6f1c735f8e20c2880c86007114f3614ef7722c99fb259.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/DifferentialCalculus/Correctness/Variant8b262bd1d21d1d8516e6f1c735f8e20c2880c86007114f3614ef7722c99fb259.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
