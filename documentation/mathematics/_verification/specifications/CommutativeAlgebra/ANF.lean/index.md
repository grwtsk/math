# Verification target: ANF

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7c15caa7414202db60f7f6752d2a3ff04c5ccd00",
  "lexical_observation_count": 43,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/ANF/Variant25effbab7d2c834d57dbea14eec3ebefa2d4d174aa042caa73b087f0ecaeec03.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../CommutativeAlgebra/ANF.lean/index.md) · [Full source](../../../../CommutativeAlgebra/ANF.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7c15caa7414202db60f7f6752d2a3ff04c5ccd00`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/ANF/Variant25effbab7d2c834d57dbea14eec3ebefa2d4d174aa042caa73b087f0ecaeec03.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/ANF/Variant25effbab7d2c834d57dbea14eec3ebefa2d4d174aa042caa73b087f0ecaeec03.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Boolean.Formula.Eval` — import line 1; external provider; requires a separately pinned dependency.
- `Boolean.Tree.Eval` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [Monomial](../../../../CommutativeAlgebra/ANF.lean/declarations/monomial.md) | 13 | `declaration-track:b621f96852fa31e3778b6b5bee685a3521b2bab98710abb44506b9b8ba420311` |
| 2 | `structure` | [Polynomial](../../../../CommutativeAlgebra/ANF.lean/declarations/polynomial.md) | 17 | `declaration-track:a7b28b962404d9b9904839ad78846e2e8635e6c5b857900dc7b760253bd68a06` |
| 3 | `def` | [xorTree](../../../../CommutativeAlgebra/ANF.lean/declarations/xortree.md) | 22 | `declaration-track:214ce74f2b9d9d816d181e8811f51a7e3417628f1704019e1140574f9e11d62e` |
| 4 | `theorem` | [eval_xorTree](../../../../CommutativeAlgebra/ANF.lean/declarations/eval-xortree.md) | 25 | `result-track:e8053d2c3815b96650f1edd2f55ee0bf48ef5d7435df9875548d4b43f4b9c0c1` |
| 5 | `def` | [Monomial.eval](../../../../CommutativeAlgebra/ANF.lean/declarations/monomial-eval.md) | 34 | `declaration-track:a27d1b7f97720b626652e7e4deecfc18bbaf75c6508ff84997c49c0658eb81c5` |
| 6 | `def` | [Monomial.toTree](../../../../CommutativeAlgebra/ANF.lean/declarations/monomial-totree.md) | 39 | `declaration-track:73d27135842bbd2b1f736d91b7428986817bb1793c3ffe568625521a5809a25f` |
| 7 | `theorem` | [Monomial.eval_toTree](../../../../CommutativeAlgebra/ANF.lean/declarations/monomial-eval-totree.md) | 43 | `result-track:b9ec6d79bdafcf7d2447b504d7ab2db7c646a523ce3a3de0627077a2ad570586` |
| 8 | `def` | [evalTerms](../../../../CommutativeAlgebra/ANF.lean/declarations/evalterms.md) | 53 | `declaration-track:b773d5af1e7f3c69ece8aa3876822cb18e63d880a068ec64707d1dfd9658162c` |
| 9 | `def` | [termsToTree](../../../../CommutativeAlgebra/ANF.lean/declarations/termstotree.md) | 58 | `declaration-track:a8dce1c9f1e55c5088870023c667cb3b4566bb511871a74024a0ae801b2a3332` |
| 10 | `def` | [Polynomial.eval](../../../../CommutativeAlgebra/ANF.lean/declarations/polynomial-eval.md) | 63 | `declaration-track:7d40b99d391fa21c3376e9e2c66b37c05237e60c4a7da6d76318a79b4b625605` |
| 11 | `def` | [Polynomial.toTree](../../../../CommutativeAlgebra/ANF.lean/declarations/polynomial-totree.md) | 67 | `declaration-track:dd3c357584a440937b1009a1f5b7c3e8cc192ebd6dc9a220d71357e9903e0d1a` |
| 12 | `def` | [Polynomial.zero](../../../../CommutativeAlgebra/ANF.lean/declarations/polynomial-zero.md) | 71 | `declaration-track:9677fc3c06d62c5eea04c3a1803666a60653a7229194d62cb57af104d4e613d5` |
| 13 | `def` | [Polynomial.one](../../../../CommutativeAlgebra/ANF.lean/declarations/polynomial-one.md) | 75 | `declaration-track:fa6ff2411bdc1e721c7979c8f299ed6a6fcb3e6d6c127bba7500c6cec9f6f982` |
| 14 | `def` | [Polynomial.var](../../../../CommutativeAlgebra/ANF.lean/declarations/polynomial-var.md) | 79 | `declaration-track:057ab20cef62a7b61ce937327785b4078c01b65d544d0ee77f3474716b64bea5` |
| 15 | `def` | [Polynomial.add](../../../../CommutativeAlgebra/ANF.lean/declarations/polynomial-add.md) | 83 | `declaration-track:8ccc8a6ff06127655e04eae1648c05740833e38678b32df3535746d4ffb4f3e1` |
| 16 | `def` | [multiplyMonomial](../../../../CommutativeAlgebra/ANF.lean/declarations/multiplymonomial.md) | 87 | `declaration-track:1055e2788fc02d0785e42056cdb05bcf9469f6ab0d833fb9fdf4d3e7ab31add7` |
| 17 | `def` | [multiplyTerms](../../../../CommutativeAlgebra/ANF.lean/declarations/multiplyterms.md) | 92 | `declaration-track:1ebb085ddbfa9291c8a60539085593db1f006da94ab9bb9a7066be8819e209df` |
| 18 | `def` | [Polynomial.mul](../../../../CommutativeAlgebra/ANF.lean/declarations/polynomial-mul.md) | 97 | `declaration-track:dff92c10b6f1b8ac6973df9145dc7dcf9b56181a1e3cb4dce83829cb187c9fe7` |
| 19 | `def` | [Polynomial.compl](../../../../CommutativeAlgebra/ANF.lean/declarations/polynomial-compl.md) | 101 | `declaration-track:13ee83f37f5bd7080cdfbf9e9c9483da26f28646b1b283009320f4e53bfb2d25` |
| 20 | `def` | [Polynomial.disj](../../../../CommutativeAlgebra/ANF.lean/declarations/polynomial-disj.md) | 105 | `declaration-track:630a400cbb05e65512087c20a5e29c31ca286f5f7df50f062d08249c83dc06c0` |
| 21 | `def` | [Polynomial.impl](../../../../CommutativeAlgebra/ANF.lean/declarations/polynomial-impl.md) | 109 | `declaration-track:90d181bc786e6c4ed8df91ce2e5e78eb9bc34b7f0ef1e02ac20138b0fca79831` |
| 22 | `def` | [Polynomial.eqv](../../../../CommutativeAlgebra/ANF.lean/declarations/polynomial-eqv.md) | 113 | `declaration-track:d2f952680faa6beeea98c415ac1504bec218ef2356bf3cde48609f51fe99133d` |
| 23 | `def` | [Polynomial.nand](../../../../CommutativeAlgebra/ANF.lean/declarations/polynomial-nand.md) | 117 | `declaration-track:7f33cd37dc5f240798e8dace6276faf0985af4d5828e309068313f270b763d50` |
| 24 | `theorem` | [Monomial.eval_append](../../../../CommutativeAlgebra/ANF.lean/declarations/monomial-eval-append.md) | 120 | `result-track:5400081b9ac4c5aa0787a484c203aa9db4ac7ebc9a0ae3d0b0cd42b86f04afaf` |
| 25 | `theorem` | [evalTerms_append](../../../../CommutativeAlgebra/ANF.lean/declarations/evalterms-append.md) | 133 | `result-track:6dcd739d9886777a2b1f563292bf1025f863f285748b4943d1e42d666fad865b` |
| 26 | `theorem` | [evalTerms_multiplyMonomial](../../../../CommutativeAlgebra/ANF.lean/declarations/evalterms-multiplymonomial.md) | 147 | `result-track:eb22701e6ef3b078883eb1c2c6d1bd02f0b4c943983dcdd72891f6dcac041d9d` |
| 27 | `theorem` | [evalTerms_multiplyTerms](../../../../CommutativeAlgebra/ANF.lean/declarations/evalterms-multiplyterms.md) | 162 | `result-track:bb6936fbf59e77be2bac67761feaa11009cd874e4f088f9bf234d59b55a463a3` |
| 28 | `theorem` | [Polynomial.eval_zero](../../../../CommutativeAlgebra/ANF.lean/declarations/polynomial-eval-zero.md) | 176 | `result-track:a6b9ffbb2e4530c5e4d53e9547ca5631bc7c57c6d070cf2ae0a7b0db82d51d2d` |
| 29 | `theorem` | [Polynomial.eval_one](../../../../CommutativeAlgebra/ANF.lean/declarations/polynomial-eval-one.md) | 180 | `result-track:fe776d7bcefa84f8244bb777413282233eda8c92c75834d2cc9b472406c1122e` |
| 30 | `theorem` | [Polynomial.eval_var](../../../../CommutativeAlgebra/ANF.lean/declarations/polynomial-eval-var.md) | 184 | `result-track:8a68212ad83233312a50f3de9f6c3e5774a35e4b900e7d14516b55116246cda6` |
| 31 | `theorem` | [Polynomial.eval_add](../../../../CommutativeAlgebra/ANF.lean/declarations/polynomial-eval-add.md) | 190 | `result-track:5c4a1da3bc3ac8aa2d84488abe5338dca9860a9985551bc0356e7b533fc58862` |
| 32 | `theorem` | [Polynomial.eval_mul](../../../../CommutativeAlgebra/ANF.lean/declarations/polynomial-eval-mul.md) | 199 | `result-track:2e2157de6b13b12d27cc53294167d5f5f9541dcfc9fb38e0dd55108de9cb5507` |
| 33 | `theorem` | [Polynomial.eval_compl](../../../../CommutativeAlgebra/ANF.lean/declarations/polynomial-eval-compl.md) | 208 | `result-track:321534dd6ca6ae1a3f95bd7ce70d497775a17e72f087a5f2f4b2e89e8d7c366c` |
| 34 | `theorem` | [Polynomial.eval_disj](../../../../CommutativeAlgebra/ANF.lean/declarations/polynomial-eval-disj.md) | 214 | `result-track:c99574773ae6f313a3ac2fcf7a0c899dbf4708e600b15bb15849e590147ba726` |
| 35 | `theorem` | [Polynomial.eval_impl](../../../../CommutativeAlgebra/ANF.lean/declarations/polynomial-eval-impl.md) | 223 | `result-track:1caedca1d8f484705bb6a8aa89548934bae738c662a1804399d4a7692aa29d94` |
| 36 | `theorem` | [Polynomial.eval_eqv](../../../../CommutativeAlgebra/ANF.lean/declarations/polynomial-eval-eqv.md) | 232 | `result-track:c6df1eb743c91acab0f17fc7d1efda87626335f38977bc8fe42075f835987f6b` |
| 37 | `theorem` | [Polynomial.eval_nand](../../../../CommutativeAlgebra/ANF.lean/declarations/polynomial-eval-nand.md) | 241 | `result-track:7dfee3d4eb5bd83f6812c2620a88f13543984988040586bb5a977c971de59fc4` |
| 38 | `theorem` | [evalTerms_toTree](../../../../CommutativeAlgebra/ANF.lean/declarations/evalterms-totree.md) | 250 | `result-track:04177df1023a75cb414a473e5bfdfbf066197af8519b49a3fb6965e88791d86b` |
| 39 | `theorem` | [Polynomial.eval_toTree](../../../../CommutativeAlgebra/ANF.lean/declarations/polynomial-eval-totree.md) | 259 | `result-track:a4f38efbddf730f7ac34f26c93e51ebf14698c740024f98d535c39d18d887301` |
| 40 | `def` | [toANF](../../../../CommutativeAlgebra/ANF.lean/declarations/toanf.md) | 269 | `declaration-track:4744aabbacc9d2428fdcf84b758e911e6689e029ed9e4e956d3dd640f0070383` |
| 41 | `theorem` | [eval_toANF](../../../../CommutativeAlgebra/ANF.lean/declarations/eval-toanf.md) | 280 | `result-track:05622ba90ba927d5df34bd9bca99b5f6b31e1bfbcda21398151c227af78b900c` |
| 42 | `def` | [toANF](../../../../CommutativeAlgebra/ANF.lean/declarations/toanf-source-edition-2.md) | 300 | `declaration-track:74d3f4cfdf32f3c27d00ed412995bb578f1a5ab25826b0ea9b98e1a602c8a04d` |
| 43 | `theorem` | [eval_toANF](../../../../CommutativeAlgebra/ANF.lean/declarations/eval-toanf-source-edition-2.md) | 310 | `result-track:d8363baad390a318622eb281252799bc1bc3fd681d7376eb314873ca347f6364` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=7a5d5968f4b763cfecadf46f424317f573708b95750e86c7129da85bff575ec6 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/CommutativeAlgebra/ANF/Variant25effbab7d2c834d57dbea14eec3ebefa2d4d174aa042caa73b087f0ecaeec03.lean","GRWTSK/_verification/specifications/Algebra/CommutativeAlgebra/ANF/Variant25effbab7d2c834d57dbea14eec3ebefa2d4d174aa042caa73b087f0ecaeec03.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
