# Verification target: Canonically Ordered Comm Semiring Two Mul Source Edition2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "460579789437580592d035935b287fcca573b747",
  "lexical_observation_count": 32,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CanonicallyOrderedCommSemiringTwoMul/Varianta7271b3f4bf62bbdb5a306073c977f9a9707bc0852dcc52752b0c90360d6d09f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../CommutativeAlgebra/CanonicallyOrderedCommSemiringTwoMulSourceEdition2.lean/index.md) · [Full source](../../../../CommutativeAlgebra/CanonicallyOrderedCommSemiringTwoMulSourceEdition2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `460579789437580592d035935b287fcca573b747`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CanonicallyOrderedCommSemiringTwoMul/Varianta7271b3f4bf62bbdb5a306073c977f9a9707bc0852dcc52752b0c90360d6d09f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CanonicallyOrderedCommSemiringTwoMul/Varianta7271b3f4bf62bbdb5a306073c977f9a9707bc0852dcc52752b0c90360d6d09f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Ring.Subsemiring.Order` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.ZMod.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [mem_zmod_2](../../../../CommutativeAlgebra/CanonicallyOrderedCommSemiringTwoMulSourceEdition2.lean/declarations/mem-zmod-2.md) | 30 | `result-track:1bf44b90d5c0e9c83264f6de72e12ab8b8e481eedc5aa63795d270119fec5935` |
| 2 | `theorem` | [add_self_zmod_2](../../../../CommutativeAlgebra/CanonicallyOrderedCommSemiringTwoMulSourceEdition2.lean/declarations/add-self-zmod-2.md) | 35 | `result-track:0a1fff3ccb396466461bfd617abda49517a87731a6b645e5920028db56789b20` |
| 3 | `instance` | [preN2](../../../../CommutativeAlgebra/CanonicallyOrderedCommSemiringTwoMulSourceEdition2.lean/declarations/pren2.md) | 45 | `declaration-track:50550f00246b24558740155955ea5cceb5baf0d97142f9aab56c5075fd909852` |
| 4 | `instance` | [csrN2](../../../../CommutativeAlgebra/CanonicallyOrderedCommSemiringTwoMulSourceEdition2.lean/declarations/csrn2.md) | 62 | `declaration-track:6366f09d0270037341e50b7b61c9dfc0bec0b5a61607b42044b7cf2dc3d2f7c8` |
| 5 | `instance` | [csrN21](../../../../CommutativeAlgebra/CanonicallyOrderedCommSemiringTwoMulSourceEdition2.lean/declarations/csrn21.md) | 64 | `declaration-track:42f3d117dcc728b531ff4449d7eb43dc3cf697b6cb0e87be2f7115eab657d7f5` |
| 6 | `theorem` | [lt_def](../../../../CommutativeAlgebra/CanonicallyOrderedCommSemiringTwoMulSourceEdition2.lean/declarations/lt-def.md) | 69 | `result-track:85bcf6d43179c1a1342e6c37dc8c738f12ca6789d484d4c4b7cc03acba4e2c13` |
| 7 | `theorem` | [add_left_cancel](../../../../CommutativeAlgebra/CanonicallyOrderedCommSemiringTwoMulSourceEdition2.lean/declarations/add-left-cancel.md) | 78 | `result-track:055320831002900d016a68014ffa014118b82c95a2867689034cccb3705879ca` |
| 8 | `theorem` | [add_le_add_left](../../../../CommutativeAlgebra/CanonicallyOrderedCommSemiringTwoMulSourceEdition2.lean/declarations/add-le-add-left.md) | 81 | `result-track:89a0e2ea236479bbb52500f91cdaf0c6c0cbd172bbcd176afb260400c60171b9` |
| 9 | `theorem` | [le_of_add_le_add_left](../../../../CommutativeAlgebra/CanonicallyOrderedCommSemiringTwoMulSourceEdition2.lean/declarations/le-of-add-le-add-left.md) | 86 | `result-track:6147b9526721e23df985fb8ac236c8df881116ae58bb973ae0bb430713d6e07e` |
| 10 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/CanonicallyOrderedCommSemiringTwoMulSourceEdition2.lean/declarations/instance-source-edition-4.md) | 91 | `declaration-track:8ace96010e7384e866cc2406aeb3fd31fe66e97d9a4a5d4e2e4bea54d38364c1` |
| 11 | `theorem` | [mul_lt_mul_of_pos_left](../../../../CommutativeAlgebra/CanonicallyOrderedCommSemiringTwoMulSourceEdition2.lean/declarations/mul-lt-mul-of-pos-left.md) | 94 | `result-track:9560aba6ae4e53f0eea83cf19edfadf444603e34588846b6a1d28a513c9c58a7` |
| 12 | `theorem` | [mul_lt_mul_of_pos_right](../../../../CommutativeAlgebra/CanonicallyOrderedCommSemiringTwoMulSourceEdition2.lean/declarations/mul-lt-mul-of-pos-right.md) | 97 | `result-track:a50dfb4f2180a33ab77d11e6cb12ed3f43b1b00816eb7179a6ca3d537215cf2f` |
| 13 | `instance` | [isorN2](../../../../CommutativeAlgebra/CanonicallyOrderedCommSemiringTwoMulSourceEdition2.lean/declarations/isorn2.md) | 100 | `declaration-track:747d460a7f67c61bafcdbfede529f64364989f44a0b1ffa3c1cc6a80f3732b0b` |
| 14 | `def` | [L](../../../../CommutativeAlgebra/CanonicallyOrderedCommSemiringTwoMulSourceEdition2.lean/declarations/l.md) | 114 | `declaration-track:90e01d0674a0223ebfe33286e6a8f6c25e61df1e7314a14c117c7225fa02358c` |
| 15 | `theorem` | [add_L](../../../../CommutativeAlgebra/CanonicallyOrderedCommSemiringTwoMulSourceEdition2.lean/declarations/add-l.md) | 117 | `result-track:7af6dd524a7c923cb7f9625a151032cb937ea53b62cdfb198f731af2001758ea` |
| 16 | `theorem` | [mul_L](../../../../CommutativeAlgebra/CanonicallyOrderedCommSemiringTwoMulSourceEdition2.lean/declarations/mul-l.md) | 128 | `result-track:018325dcc21bee1ff8891d6c82c2db0837c7890b4434c1c90fcff7a6a7df9881` |
| 17 | `def` | [lSubsemiring](../../../../CommutativeAlgebra/CanonicallyOrderedCommSemiringTwoMulSourceEdition2.lean/declarations/lsubsemiring.md) | 144 | `declaration-track:127f6daa180cd084ec3247db74119603d00331879e8b2090d1c77bcb7772704c` |
| 18 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/CanonicallyOrderedCommSemiringTwoMulSourceEdition2.lean/declarations/instance-source-edition-9.md) | 151 | `declaration-track:ffca38fcba73f3106f8786d56b662d279713febe1bd661e1ff4dc33b8b3a6f0c` |
| 19 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/CanonicallyOrderedCommSemiringTwoMulSourceEdition2.lean/declarations/instance.md) | 154 | `declaration-track:0871400b52bc539827d4834ef2cfa72d65e09bcc05f0b942717fd2ee461d61d9` |
| 20 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/CanonicallyOrderedCommSemiringTwoMulSourceEdition2.lean/declarations/instance-source-edition-8.md) | 157 | `declaration-track:ef4d959bc09b33697258f60c888dc9b4e0b2bbfc096496aac936d1ea70f6cc7a` |
| 21 | `instance` | [inhabited](../../../../CommutativeAlgebra/CanonicallyOrderedCommSemiringTwoMulSourceEdition2.lean/declarations/inhabited.md) | 160 | `declaration-track:b025c4a39ad8fbc4ca8cae02736205fc2c77374837d3c0dd0800f8e37a92e37a` |
| 22 | `theorem` | [bot_le](../../../../CommutativeAlgebra/CanonicallyOrderedCommSemiringTwoMulSourceEdition2.lean/declarations/bot-le.md) | 163 | `result-track:170559d78b82ba1213dfbcc0189913086ab4bec37a2e238e8183d474aa06606b` |
| 23 | `instance` | [orderBot](../../../../CommutativeAlgebra/CanonicallyOrderedCommSemiringTwoMulSourceEdition2.lean/declarations/orderbot.md) | 172 | `declaration-track:7a15842a36cd09dc7469d2fd5d90db5e8be0141a6f59a3a5eab72274353c693b` |
| 24 | `theorem` | [exists_add_of_le](../../../../CommutativeAlgebra/CanonicallyOrderedCommSemiringTwoMulSourceEdition2.lean/declarations/exists-add-of-le.md) | 176 | `result-track:5f3f599e6e49f3cd33c55739c15fbb51aba5f225323bd1dabdbadcc85760bfab` |
| 25 | `theorem` | [le_self_add](../../../../CommutativeAlgebra/CanonicallyOrderedCommSemiringTwoMulSourceEdition2.lean/declarations/le-self-add.md) | 183 | `result-track:6a9ddf11ee9ec55ca36a2b8dd80f1baf00bfe079a0aefb3c739b96d60056a138` |
| 26 | `theorem` | [eq_zero_or_eq_zero_of_mul_eq_zero](../../../../CommutativeAlgebra/CanonicallyOrderedCommSemiringTwoMulSourceEdition2.lean/declarations/eq-zero-or-eq-zero-of-mul-eq-zero.md) | 191 | `result-track:8f5b70d24da94c0b87f9df77d2520f038d673ae05d09151d13136c257549e09c` |
| 27 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/CanonicallyOrderedCommSemiringTwoMulSourceEdition2.lean/declarations/instance-source-edition-5.md) | 206 | `declaration-track:95fd2afe769c83c56813dafb5332d8b4b6b1b7dfc66afbc8e298ed7437f8ab2b` |
| 28 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/CanonicallyOrderedCommSemiringTwoMulSourceEdition2.lean/declarations/instance-source-edition-2.md) | 208 | `declaration-track:0cc0bfd6ec241767fb514db803085be5c92a9b55783dd7265ab91545da0b923d` |
| 29 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/CanonicallyOrderedCommSemiringTwoMulSourceEdition2.lean/declarations/instance-source-edition-7.md) | 210 | `declaration-track:ed4815db10f5236c51eee741a76be01254547c9b094188be117bf6adaed9e7f5` |
| 30 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/CanonicallyOrderedCommSemiringTwoMulSourceEdition2.lean/declarations/instance-source-edition-6.md) | 212 | `declaration-track:a5b656248e0eb914e332173bfc53ae6f303bf2b3e9feb238c2f51ef53ebbb55d` |
| 31 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/CanonicallyOrderedCommSemiringTwoMulSourceEdition2.lean/declarations/instance-source-edition-3.md) | 216 | `declaration-track:4920b2ee0583873dd0ed39e9746ea62a884307e460bb6d04f6c12c7bfd364674` |
| 32 | `example` | [(anonymous)](../../../../CommutativeAlgebra/CanonicallyOrderedCommSemiringTwoMulSourceEdition2.lean/declarations/example.md) | 221 | `declaration-track:d58b9315e2bafa1c9887dd0a4ed2c63682497097666e55e742c2004497d15662` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=abc50540df8f27baf66ee9f33765d74e615450e9437366dee2bfb8a21630de80 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CanonicallyOrderedCommSemiringTwoMul/Varianta7271b3f4bf62bbdb5a306073c977f9a9707bc0852dcc52752b0c90360d6d09f.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CanonicallyOrderedCommSemiringTwoMul/Varianta7271b3f4bf62bbdb5a306073c977f9a9707bc0852dcc52752b0c90360d6d09f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
