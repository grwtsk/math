# Verification target: Abstract Func Eq

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ae226f9708f6749b7e8280ce7b8d4379bed5493f",
  "lexical_observation_count": 33,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/AbstractFuncEq/Variantf36578666e0e00e5d6c6c1ef7c7a45abb3a39f0a6ce845dd2c1b1fedfbc42a67.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/AbstractFuncEq.lean/index.md) · [Full source](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/AbstractFuncEq.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ae226f9708f6749b7e8280ce7b8d4379bed5493f`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/AbstractFuncEq/Variantf36578666e0e00e5d6c6c1ef7c7a45abb3a39f0a6ce845dd2c1b1fedfbc42a67.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/AbstractFuncEq/Variantf36578666e0e00e5d6c6c1ef7c7a45abb3a39f0a6ce845dd2c1b1fedfbc42a67.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.MellinTransform` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [WeakFEPair](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/AbstractFuncEq.lean/declarations/weakfepair.md) | 78 | `declaration-track:61ca1fa81b13ba9788f5913709b607e5742bfb1e768a317ee7c3354b26d594fb` |
| 2 | `structure` | [StrongFEPair](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/AbstractFuncEq.lean/declarations/strongfepair.md) | 97 | `declaration-track:a37d5fc1938e7870d2142e470b9411706c51dbd2ca551a43a6b5a266c5869d03` |
| 3 | `lemma` | [WeakFEPair.h_feq'](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/AbstractFuncEq.lean/declarations/weakfepair-h-feq.md) | 104 | `result-track:20300eb8ee4a88949f4eacb2e1e288c99bfe73fd514cc50951542efd8020fcac` |
| 4 | `def` | [WeakFEPair.symm](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/AbstractFuncEq.lean/declarations/weakfepair-symm.md) | 112 | `declaration-track:932e292c67a53496b9d75de9829192dbcd9d2215e5d3139e44d2272bdfdd9d33` |
| 5 | `def` | [StrongFEPair.symm](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/AbstractFuncEq.lean/declarations/strongfepair-symm.md) | 128 | `declaration-track:4f094829ed0967456896ca32ee2f068777807728e0d494bb7807c7c34b17a4df` |
| 6 | `lemma` | [hf_zero](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/AbstractFuncEq.lean/declarations/hf-zero.md) | 142 | `result-track:0819e89e737361a05aff5171552d64f5edcbc691072f0ce1c1566c8f29907ed9` |
| 7 | `lemma` | [hf_zero'](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/AbstractFuncEq.lean/declarations/hf-zero-source-edition-2.md) | 165 | `result-track:7f28c2688bd83e7c8e245b634a80d69b396feac9539887dc32779311be832bb7` |
| 8 | `lemma` | [hf_top'](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/AbstractFuncEq.lean/declarations/hf-top.md) | 185 | `result-track:76e64914925777d328b398cd9ac7e0b413a7c8fec37cdebb177920b55590ba94` |
| 9 | `lemma` | [hf_zero'](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/AbstractFuncEq.lean/declarations/hf-zero-source-edition-3.md) | 189 | `result-track:c6832239a5ef42436b43b9e4da0ac43a4b6b3cc9d1e860910fc087af224897af` |
| 10 | `def` | [Λ](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/AbstractFuncEq.lean/declarations/anonymous-source-edition-3.md) | 197 | `declaration-track:a8b6ee975712cc96758f5c6b6b1a0fa88e40adc7fc0274e00d61ef52ff34fc0a` |
| 11 | `theorem` | [hasMellin](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/AbstractFuncEq.lean/declarations/hasmellin.md) | 200 | `result-track:a20982475e2af9217efc85cc290ed1756b05f29ba54fca7fe3e0c22d303b081c` |
| 12 | `lemma` | [Λ_eq](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/AbstractFuncEq.lean/declarations/eq-source-edition-2.md) | 205 | `result-track:c611b68ce660fec1ec81099a7d54e44914eda3f9e896ce85977e82014b400320` |
| 13 | `lemma` | [symm_Λ_eq](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/AbstractFuncEq.lean/declarations/symm-eq-source-edition-2.md) | 207 | `result-track:cd5fecab75cf5037f7089ef9218c1e76d8faf86bb5f1b6176a2bf8b6f7e6e9d1` |
| 14 | `theorem` | [differentiable_Λ](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/AbstractFuncEq.lean/declarations/differentiable-source-edition-2.md) | 210 | `result-track:f08db9263c7d998f29110f7678f4098a53e8318f88c987ad7879d79122bb8141` |
| 15 | `theorem` | [functional_equation](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/AbstractFuncEq.lean/declarations/functional-equation.md) | 219 | `result-track:59580d5db62e905d005f790852fdb20bb7b197bf5563edd626af3ff1b69799bc` |
| 16 | `def` | [f_modif](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/AbstractFuncEq.lean/declarations/f-modif.md) | 255 | `declaration-track:6d44dfd9e42010d5c3e3ac0e4b45084b0dc040897e58cccf121ff7a877c19bae` |
| 17 | `def` | [g_modif](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/AbstractFuncEq.lean/declarations/g-modif.md) | 260 | `declaration-track:7b4c39a4c92df8f0f1a9a4f4b3367fef55cb4390125581c2de7c4063ae0700bd` |
| 18 | `lemma` | [hf_modif_int](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/AbstractFuncEq.lean/declarations/hf-modif-int.md) | 264 | `result-track:e44ee31e71dbdd515ac800c1ea1b2e6874b518f113924fc2f2ba975de6690123` |
| 19 | `lemma` | [hf_modif_FE](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/AbstractFuncEq.lean/declarations/hf-modif-fe.md) | 283 | `result-track:c1195a35609d8a83a38b00623552e76f64c240b6bb4e84b1a6c9e9874fa9870e` |
| 20 | `def` | [toStrongFEPair](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/AbstractFuncEq.lean/declarations/tostrongfepair.md) | 303 | `declaration-track:12f5096d2a4a54a7751cb0ad2cdab0566d70a1a357c596bf5e30ca55248855a5` |
| 21 | `lemma` | [f_modif_aux1](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/AbstractFuncEq.lean/declarations/f-modif-aux1.md) | 330 | `result-track:262ee19248cfd95c860851a7469373d8239da0433911e8b4acdcafa7f9a00513` |
| 22 | `lemma` | [f_modif_aux2](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/AbstractFuncEq.lean/declarations/f-modif-aux2.md) | 348 | `result-track:1b8bfe5a1208efc39b93227a9eb954c1eb13859e6be98b1327ae7931b3970066` |
| 23 | `def` | [Λ₀](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/AbstractFuncEq.lean/declarations/anonymous-source-edition-2.md) | 390 | `declaration-track:3b66ca00a1e9516b646513d4962126378825a0727d0b5179626f74b4fb5741a1` |
| 24 | `def` | [Λ](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/AbstractFuncEq.lean/declarations/anonymous.md) | 393 | `declaration-track:0d3c1007b0c93f763d2b566a50878242e505b531754ca9892bfc1a6a387e8504` |
| 25 | `lemma` | [Λ₀_eq](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/AbstractFuncEq.lean/declarations/eq.md) | 395 | `result-track:bffbd9b6edcd313a783a5208a620159da7d73ad216828b4f17362527c61c3643` |
| 26 | `lemma` | [symm_Λ₀_eq](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/AbstractFuncEq.lean/declarations/symm-eq.md) | 399 | `result-track:7f88670122e4e9750d46b60c4e9de9606328b0d66377a87a839a5770683cd91c` |
| 27 | `theorem` | [differentiable_Λ₀](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/AbstractFuncEq.lean/declarations/differentiable.md) | 404 | `result-track:ddb4eda58a89b8529ea225931fb211c1759dc6060f5df07d6d748e527fc34967` |
| 28 | `theorem` | [differentiableAt_Λ](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/AbstractFuncEq.lean/declarations/differentiableat.md) | 406 | `result-track:7313ae20d7a4ffb384918e4fabfc1eeee71360e58c36b9a2684693986fddf1c0` |
| 29 | `theorem` | [hasMellin](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/AbstractFuncEq.lean/declarations/hasmellin-source-edition-2.md) | 419 | `result-track:bca7cfd24594f5f3709f95874bf7951f707af3bdda602f06607b8ece5b234c74` |
| 30 | `theorem` | [functional_equation₀](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/AbstractFuncEq.lean/declarations/functional-equation-source-edition-2.md) | 434 | `result-track:851fcc0edf7ad20382b2b5dc6ce636d6873b214b0769a56fece10236fb56b925` |
| 31 | `theorem` | [functional_equation](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/AbstractFuncEq.lean/declarations/functional-equation-source-edition-3.md) | 438 | `result-track:f2a79165703b77521ac802fc32b72f2d73f15732492eda0206d9482b91976b8c` |
| 32 | `theorem` | [Λ_residue_k](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/AbstractFuncEq.lean/declarations/residue-k.md) | 444 | `result-track:98569de833669cd705dac8f099d6ac28aab761f7768309cafe8d1ddf99511484` |
| 33 | `theorem` | [Λ_residue_zero](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/AbstractFuncEq.lean/declarations/residue-zero.md) | 460 | `result-track:b5726f01c8550532bd928c4642abf9609804c6f129d194b85481321b1580a4d1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f2d1f838fbd290d7ea5141b600457be604a49dd914ac649efd72f06b2b9fd3fe -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/AbstractFuncEq/Variantf36578666e0e00e5d6c6c1ef7c7a45abb3a39f0a6ce845dd2c1b1fedfbc42a67.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/DifferentialCalculus/AbstractFuncEq/Variantf36578666e0e00e5d6c6c1ef7c7a45abb3a39f0a6ce845dd2c1b1fedfbc42a67.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
