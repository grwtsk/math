# Verification target: ANFNamespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b14e77061c98c656270d872a4980d1fd6c841f9a",
  "lexical_observation_count": 43,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/ANF/Variantd49b40f543815784f5ecbbcfd7687e2a92fc1497972476d82d0bc98c7b11723d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../CommutativeAlgebra/ANFNamespaced.lean/index.md) · [Full source](../../../../CommutativeAlgebra/ANFNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b14e77061c98c656270d872a4980d1fd6c841f9a`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/ANF/Variantd49b40f543815784f5ecbbcfd7687e2a92fc1497972476d82d0bc98c7b11723d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/ANF/Variantd49b40f543815784f5ecbbcfd7687e2a92fc1497972476d82d0bc98c7b11723d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Boolean.Formula.Eval` — import line 6; external provider; requires a separately pinned dependency.
- `Boolean.Tree.Eval` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [Monomial](../../../../CommutativeAlgebra/ANFNamespaced.lean/declarations/monomial.md) | 21 | `declaration-track:4ebcb46ce7f113d6fce2b40599bdcc4d4482c0a6172e1318d568cd67984e2db8` |
| 2 | `structure` | [Polynomial](../../../../CommutativeAlgebra/ANFNamespaced.lean/declarations/polynomial.md) | 25 | `declaration-track:7c8478b014c6437ad9ff6fdd9a40ac3afd63b863f976ececc43439b028fdf643` |
| 3 | `def` | [xorTree](../../../../CommutativeAlgebra/ANFNamespaced.lean/declarations/xortree.md) | 30 | `declaration-track:5c9ca05d68c56f0bd0360444377200e67fad2fbd7f6671d33686ca4551c8dfed` |
| 4 | `theorem` | [eval_xorTree](../../../../CommutativeAlgebra/ANFNamespaced.lean/declarations/eval-xortree.md) | 33 | `result-track:9b470a824d6d338a745b8e964bae2a78167b0f08148c064a0fba194f2252594a` |
| 5 | `def` | [Monomial.eval](../../../../CommutativeAlgebra/ANFNamespaced.lean/declarations/monomial-eval.md) | 42 | `declaration-track:507408a03276ac6afb03bdaeda9ad529a81e288625278ba1378cdc09f04b2d1d` |
| 6 | `def` | [Monomial.toTree](../../../../CommutativeAlgebra/ANFNamespaced.lean/declarations/monomial-totree.md) | 47 | `declaration-track:fa734fd07fdf784f4ded75bef762d7b708400397de4382408677c673d90153cd` |
| 7 | `theorem` | [Monomial.eval_toTree](../../../../CommutativeAlgebra/ANFNamespaced.lean/declarations/monomial-eval-totree.md) | 51 | `result-track:d678c771ee27cef0deea3894576f1be4cd81a7b5d09054ead0fa7b9d5b034b9a` |
| 8 | `def` | [evalTerms](../../../../CommutativeAlgebra/ANFNamespaced.lean/declarations/evalterms.md) | 61 | `declaration-track:2eeed5cc0416642b1171b326c8aca8194ae1d60678fa915b987bfee2133e884c` |
| 9 | `def` | [termsToTree](../../../../CommutativeAlgebra/ANFNamespaced.lean/declarations/termstotree.md) | 66 | `declaration-track:c007dca8b69ba05533c9f7e95ef3c2607aa561cc0c7aa48095ffb6eb0608220c` |
| 10 | `def` | [Polynomial.eval](../../../../CommutativeAlgebra/ANFNamespaced.lean/declarations/polynomial-eval.md) | 71 | `declaration-track:07a7f856d1e31328ddcd6193bf22c75f5bc2e3f7bdc8eeba51f387c0474df618` |
| 11 | `def` | [Polynomial.toTree](../../../../CommutativeAlgebra/ANFNamespaced.lean/declarations/polynomial-totree.md) | 75 | `declaration-track:b0270d4799a363029d127666af28423f2204efc4970621d6ce84c5b2efd1e6b0` |
| 12 | `def` | [Polynomial.zero](../../../../CommutativeAlgebra/ANFNamespaced.lean/declarations/polynomial-zero.md) | 79 | `declaration-track:dc197d968ad27e6b440a11c18cf4a69f3d4d6268a676edbaa1f93f369284e7bc` |
| 13 | `def` | [Polynomial.one](../../../../CommutativeAlgebra/ANFNamespaced.lean/declarations/polynomial-one.md) | 83 | `declaration-track:e6bf706e1a9f43e0b3609115d9246e1f0d009c0c200cd25de09b46e3c930b11e` |
| 14 | `def` | [Polynomial.var](../../../../CommutativeAlgebra/ANFNamespaced.lean/declarations/polynomial-var.md) | 87 | `declaration-track:c2dc12945e37b775f706bbc71e1e93a7780635c3985ddd8ef116575b6db95637` |
| 15 | `def` | [Polynomial.add](../../../../CommutativeAlgebra/ANFNamespaced.lean/declarations/polynomial-add.md) | 91 | `declaration-track:386dd9bdce7b78c836ce5a3c9bad53a747123e1f96167d2c6019ea3d497642ca` |
| 16 | `def` | [multiplyMonomial](../../../../CommutativeAlgebra/ANFNamespaced.lean/declarations/multiplymonomial.md) | 95 | `declaration-track:979e16cbfc77ef8a7fe081d11e6c2801b8fadd66d04dd2d8bdf0f78b800b1888` |
| 17 | `def` | [multiplyTerms](../../../../CommutativeAlgebra/ANFNamespaced.lean/declarations/multiplyterms.md) | 100 | `declaration-track:3dc2a1527b78ab0902d987370406485f74b951585a9726df06f2e0baca50cfbd` |
| 18 | `def` | [Polynomial.mul](../../../../CommutativeAlgebra/ANFNamespaced.lean/declarations/polynomial-mul.md) | 105 | `declaration-track:95c481807621478c89a24937ee1a99f4d846706a90a29f49e8aa20c2def83510` |
| 19 | `def` | [Polynomial.compl](../../../../CommutativeAlgebra/ANFNamespaced.lean/declarations/polynomial-compl.md) | 109 | `declaration-track:c4e37f523121f2133f85658739fff95f28dca886f70cc2e40c0b6e5c4abaccd0` |
| 20 | `def` | [Polynomial.disj](../../../../CommutativeAlgebra/ANFNamespaced.lean/declarations/polynomial-disj.md) | 113 | `declaration-track:d64477490eebd66c99406d5a33a3588d8552772a22722f00199687ed324db5fd` |
| 21 | `def` | [Polynomial.impl](../../../../CommutativeAlgebra/ANFNamespaced.lean/declarations/polynomial-impl.md) | 117 | `declaration-track:fb153446e55652983f7d3333e588376d7d3ff3aaab30a9921f56b3e73484975d` |
| 22 | `def` | [Polynomial.eqv](../../../../CommutativeAlgebra/ANFNamespaced.lean/declarations/polynomial-eqv.md) | 121 | `declaration-track:e1c8a8a76f64fa323ad1027230def229c18f109011e2de1b9e9878ec20aa066e` |
| 23 | `def` | [Polynomial.nand](../../../../CommutativeAlgebra/ANFNamespaced.lean/declarations/polynomial-nand.md) | 125 | `declaration-track:56425c744ae51e9b5f27c4286b6410f93c01a1ec93dbc6d28b42eddec916bbf9` |
| 24 | `theorem` | [Monomial.eval_append](../../../../CommutativeAlgebra/ANFNamespaced.lean/declarations/monomial-eval-append.md) | 128 | `result-track:8e6134d0d79c4dae56be60af471090bfdc672f125b654e1970a75784faa7f8f7` |
| 25 | `theorem` | [evalTerms_append](../../../../CommutativeAlgebra/ANFNamespaced.lean/declarations/evalterms-append.md) | 141 | `result-track:31f62be4514078bc8879d918ef6701ab13e29916f8855947e09d4cb11d94cbf0` |
| 26 | `theorem` | [evalTerms_multiplyMonomial](../../../../CommutativeAlgebra/ANFNamespaced.lean/declarations/evalterms-multiplymonomial.md) | 155 | `result-track:f130a16248367fa5baf303d82d63b18797b5664242c56cd3d70194c8b83e105c` |
| 27 | `theorem` | [evalTerms_multiplyTerms](../../../../CommutativeAlgebra/ANFNamespaced.lean/declarations/evalterms-multiplyterms.md) | 170 | `result-track:4b0024cca0e57e80378b12b2a2f18c683dba64627c080f2b72b0fbb6d73496d3` |
| 28 | `theorem` | [Polynomial.eval_zero](../../../../CommutativeAlgebra/ANFNamespaced.lean/declarations/polynomial-eval-zero.md) | 184 | `result-track:01939522b8507abf5530285ccf11b2f6c968402a9e205906d6cc93d8d6de8158` |
| 29 | `theorem` | [Polynomial.eval_one](../../../../CommutativeAlgebra/ANFNamespaced.lean/declarations/polynomial-eval-one.md) | 188 | `result-track:505048862e9c76681c3a23843aced4d8d19717ee316c8a712a6bff5139f3fb1c` |
| 30 | `theorem` | [Polynomial.eval_var](../../../../CommutativeAlgebra/ANFNamespaced.lean/declarations/polynomial-eval-var.md) | 192 | `result-track:5a5640a739c98dd4e914d4e8df74b2dc68a7d160af06a623abbffb7548261553` |
| 31 | `theorem` | [Polynomial.eval_add](../../../../CommutativeAlgebra/ANFNamespaced.lean/declarations/polynomial-eval-add.md) | 198 | `result-track:8362a38dc5418bac7c31e720e40b25d62b5984692acab3b76ed045daac497353` |
| 32 | `theorem` | [Polynomial.eval_mul](../../../../CommutativeAlgebra/ANFNamespaced.lean/declarations/polynomial-eval-mul.md) | 207 | `result-track:cbdbaf398684d78ee0424cf8c801529fc0ea34f4c8d51901e99662623083c1e8` |
| 33 | `theorem` | [Polynomial.eval_compl](../../../../CommutativeAlgebra/ANFNamespaced.lean/declarations/polynomial-eval-compl.md) | 216 | `result-track:458a52732c6fa6172321e9733ea0c18b4580c83ea6955b0606c838cb834190a6` |
| 34 | `theorem` | [Polynomial.eval_disj](../../../../CommutativeAlgebra/ANFNamespaced.lean/declarations/polynomial-eval-disj.md) | 222 | `result-track:2867a2c2965d52269ff39d0472a388827b0cb58be0d5a0ba6b1d83b64cf63463` |
| 35 | `theorem` | [Polynomial.eval_impl](../../../../CommutativeAlgebra/ANFNamespaced.lean/declarations/polynomial-eval-impl.md) | 231 | `result-track:238fb1b99787c9800f1d3dee3f9c252a9011f237fa3e2e91efd2282415bd1f5d` |
| 36 | `theorem` | [Polynomial.eval_eqv](../../../../CommutativeAlgebra/ANFNamespaced.lean/declarations/polynomial-eval-eqv.md) | 240 | `result-track:9221758ab592a35fdc5ac3c8e71f7003c89ebda792f1626d4dfe2052617f5dae` |
| 37 | `theorem` | [Polynomial.eval_nand](../../../../CommutativeAlgebra/ANFNamespaced.lean/declarations/polynomial-eval-nand.md) | 249 | `result-track:a89ec713a704160652796abf4ce868a127a40d2b420d3a23e5e2596c6fe28637` |
| 38 | `theorem` | [evalTerms_toTree](../../../../CommutativeAlgebra/ANFNamespaced.lean/declarations/evalterms-totree.md) | 258 | `result-track:a5cdad45b25a86ad7f33f088d6928d6955b551ab0127872392c4b6c913239cb0` |
| 39 | `theorem` | [Polynomial.eval_toTree](../../../../CommutativeAlgebra/ANFNamespaced.lean/declarations/polynomial-eval-totree.md) | 267 | `result-track:b12f79d85ecda64aa513686035d4c1bf20bf12643747cdf638ea02d15c92b301` |
| 40 | `def` | [toANF](../../../../CommutativeAlgebra/ANFNamespaced.lean/declarations/toanf-source-edition-2.md) | 277 | `declaration-track:865fc6cfd285f58eba65e16ba1f8160fabf71dafe90e43b1e788dc1aa24d7284` |
| 41 | `theorem` | [eval_toANF](../../../../CommutativeAlgebra/ANFNamespaced.lean/declarations/eval-toanf-source-edition-2.md) | 288 | `result-track:3e9a07d6d7632197eb8ed4fda526c97638f641c651563fa904badd6e8feacdf2` |
| 42 | `def` | [toANF](../../../../CommutativeAlgebra/ANFNamespaced.lean/declarations/toanf.md) | 308 | `declaration-track:7ffa06989417d1a3b653931c99fc46ed32dd9ab22058e4866e1fe16927b066c7` |
| 43 | `theorem` | [eval_toANF](../../../../CommutativeAlgebra/ANFNamespaced.lean/declarations/eval-toanf.md) | 318 | `result-track:2b1ce2d319ac63ade9ba47600b744eac24db9c753d7ad35e77786147142caa92` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a7d2c1ca784036307cd1bf35adb9fb81fcab25a4a70f3ed4bcd640c232422325 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/CommutativeAlgebra/ANF/Variantd49b40f543815784f5ecbbcfd7687e2a92fc1497972476d82d0bc98c7b11723d.lean","GRWTSK/_verification/specifications/Algebra/CommutativeAlgebra/ANF/Variantd49b40f543815784f5ecbbcfd7687e2a92fc1497972476d82d0bc98c7b11723d.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
