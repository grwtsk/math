# Verification target: Abstract Func Eq Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "30095bdf9e394e36b0dcd6c6b6bd40a334f14559",
  "lexical_observation_count": 37,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/AbstractFuncEq/Variant2ce68bc0f97e26f000842650de22ef8511288ae9f135afcb485fbab84f26f0c0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/AbstractFuncEqNamespacedPublic.lean/index.md) · [Full source](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/AbstractFuncEqNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `30095bdf9e394e36b0dcd6c6b6bd40a334f14559`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/AbstractFuncEq/Variant2ce68bc0f97e26f000842650de22ef8511288ae9f135afcb485fbab84f26f0c0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/AbstractFuncEq/Variant2ce68bc0f97e26f000842650de22ef8511288ae9f135afcb485fbab84f26f0c0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [WeakFEPair](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/AbstractFuncEqNamespacedPublic.lean/declarations/weakfepair.md) | 90 | `declaration-track:9536ea59054b7081b43278cf9973e57e67488e05d62fad109903bb5d32c86dc9` |
| 2 | `structure` | [IsStrongFEPair](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/AbstractFuncEqNamespacedPublic.lean/declarations/isstrongfepair.md) | 110 | `declaration-track:28dd888818e9a38ee3a4d3101bfd3f4b217f4ab47a7c99b87b63aa40589e5d57` |
| 3 | `lemma` | [WeakFEPair.h_feq'](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/AbstractFuncEqNamespacedPublic.lean/declarations/weakfepair-h-feq.md) | 117 | `result-track:cd59805b2d294f14da055b5c2c7f7dc5f3da2a06ce492e6cfd8c46b511ad3b33` |
| 4 | `def` | [WeakFEPair.symm](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/AbstractFuncEqNamespacedPublic.lean/declarations/weakfepair-symm.md) | 126 | `declaration-track:6216639e8b0253cc7a13488c6bd444c167a721c64ece15f60a33960813f2ed6a` |
| 5 | `lemma` | [isStrongFEPair_symm](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/AbstractFuncEqNamespacedPublic.lean/declarations/isstrongfepair-symm-source-edition-2.md) | 141 | `result-track:d56038576f250aefac4dc785fb84a09071758dbbbf092ed4d0d7ecbe50ff5224` |
| 6 | `lemma` | [IsStrongFEPair.symm](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/AbstractFuncEqNamespacedPublic.lean/declarations/isstrongfepair-symm.md) | 146 | `result-track:c5a2682f58b3baf5c8e4c7b80513b3d1905e07c775f3513c36d1bf54f3300283` |
| 7 | `lemma` | [hf_zero](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/AbstractFuncEqNamespacedPublic.lean/declarations/hf-zero.md) | 160 | `result-track:2ead196182ca15c8fa3427d009665f44bfd5d1fb249a9d0e3f7d0408ccf1eb00` |
| 8 | `lemma` | [hf_zero'](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/AbstractFuncEqNamespacedPublic.lean/declarations/hf-zero-source-edition-3.md) | 182 | `result-track:7c24cba455917016c0ba2d7c1f839e880d815e46eb63ae5de7e7e70fffbc2a43` |
| 9 | `theorem` | [functional_equation_aux](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/AbstractFuncEqNamespacedPublic.lean/declarations/functional-equation-aux.md) | 194 | `result-track:62fd17c062595aa8c1590575782c81e4682840d766431296d0b8333dff9b6390` |
| 10 | `lemma` | [hf_top](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/AbstractFuncEqNamespacedPublic.lean/declarations/hf-top.md) | 223 | `result-track:a4e9cdc9f90175f00ffe58c4bed39c4ee80cb804aa55ebf138c10d868a78774a` |
| 11 | `lemma` | [hf_zero](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/AbstractFuncEqNamespacedPublic.lean/declarations/hf-zero-source-edition-2.md) | 227 | `result-track:59d2bcc21260afab81305865f6095d038746ea241e09fe17eefee5dd48f93478` |
| 12 | `theorem` | [mellinConvergent](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/AbstractFuncEqNamespacedPublic.lean/declarations/mellinconvergent.md) | 232 | `result-track:d04083b4f3eb014b5ae0a9d68a40fcef7406062706c1ce6b63f5bf2fa8b78748` |
| 13 | `theorem` | [differentiable_mellin](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/AbstractFuncEqNamespacedPublic.lean/declarations/differentiable-mellin.md) | 239 | `result-track:48ff971c0e5ab2f2d188231e3834e8f27688aae8df1d50619e8e75d585eb744e` |
| 14 | `def` | [f_modif](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/AbstractFuncEqNamespacedPublic.lean/declarations/f-modif.md) | 257 | `declaration-track:cf6c926214aa81eba9c74a4408088cf24136bf3214759ea4534ef5bbd63048d7` |
| 15 | `def` | [g_modif](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/AbstractFuncEqNamespacedPublic.lean/declarations/g-modif.md) | 262 | `declaration-track:8fcd3e8fe8cd2410407de1a04dc3bc6d36f26535debca887a9400e62eef9fa25` |
| 16 | `lemma` | [hf_modif_int](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/AbstractFuncEqNamespacedPublic.lean/declarations/hf-modif-int.md) | 266 | `result-track:2e53d4eeb2a9d81a9112d5791a10ef7863f4de834bdf46bcf1b9652be46be649` |
| 17 | `lemma` | [hf_modif_FE](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/AbstractFuncEqNamespacedPublic.lean/declarations/hf-modif-fe.md) | 279 | `result-track:67a3bd2060fcabf07fd41061144b1f6e7b3767bd804ab7f3fb4b4eec3f1b95a4` |
| 18 | `lemma` | [hf_modif_top](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/AbstractFuncEqNamespacedPublic.lean/declarations/hf-modif-top.md) | 297 | `result-track:c71caa9ae89a5373b4b607280a8fd98d89f7f8069b43afe3038fb60ae6dd8885` |
| 19 | `def` | [toStrongFEPair](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/AbstractFuncEqNamespacedPublic.lean/declarations/tostrongfepair.md) | 308 | `declaration-track:7e903dafc3baaf934c6f0182d59b8d486d526014ad53e37118cc99f22b210f8f` |
| 20 | `lemma` | [isStrongFEPair_toStrongFEPair](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/AbstractFuncEqNamespacedPublic.lean/declarations/isstrongfepair-tostrongfepair.md) | 323 | `result-track:4dafdde097fd73c6827f671440d5cb9329b05a21f7a5f5fb933becddaf5f471a` |
| 21 | `lemma` | [f_modif_aux1](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/AbstractFuncEqNamespacedPublic.lean/declarations/f-modif-aux1.md) | 328 | `result-track:f7b547963ba9c78cbb77aa7a8542f30633174076d5f16fd3ebd50c0a25bbcf06` |
| 22 | `lemma` | [f_modif_aux2](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/AbstractFuncEqNamespacedPublic.lean/declarations/f-modif-aux2.md) | 344 | `result-track:8dab2ecbd7d796dfaa860a99397b176a1dd9da2c56974e7c7f4505fce3a757ce` |
| 23 | `def` | [Λ₀](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/AbstractFuncEqNamespacedPublic.lean/declarations/anonymous.md) | 386 | `declaration-track:0d01a036a9c89e98fe4e4721cf556dc10ab25cc85c1c2dabe97ca271531958cd` |
| 24 | `def` | [Λ](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/AbstractFuncEqNamespacedPublic.lean/declarations/anonymous-source-edition-2.md) | 389 | `declaration-track:bb00c8de7b60b57a9780fc033d97a56d134f2c3f0f7ef86a458f664123653086` |
| 25 | `lemma` | [Λ₀_eq](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/AbstractFuncEqNamespacedPublic.lean/declarations/eq.md) | 391 | `result-track:10e82ffaf46f0d88a4f8e201372fce7621c6e27a9a5ba208cf203fad0474f6ae` |
| 26 | `lemma` | [symm_Λ₀_eq](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/AbstractFuncEqNamespacedPublic.lean/declarations/symm-eq-source-edition-2.md) | 395 | `result-track:a46cfec5bafc2e3a4bad4ddcfd8c2dbb94055733ef6fbb59a7cab4038e390cc6` |
| 27 | `theorem` | [differentiable_Λ₀](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/AbstractFuncEqNamespacedPublic.lean/declarations/differentiable-source-edition-2.md) | 399 | `result-track:77bc06569c8793c092eb66a99f053c46f985517dbd256b7f7565e3614e07e336` |
| 28 | `theorem` | [differentiableAt_Λ](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/AbstractFuncEqNamespacedPublic.lean/declarations/differentiableat.md) | 402 | `result-track:7ec0791ead086ece5368a5339f2fd24a8d12f49c6cfb634d7e507cf758e9cc8a` |
| 29 | `theorem` | [hasMellin](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/AbstractFuncEqNamespacedPublic.lean/declarations/hasmellin-source-edition-2.md) | 415 | `result-track:51f44900e4b4cde4d536e17b6d37984934ed74d3817ec17a17682d9d71a54e70` |
| 30 | `theorem` | [functional_equation₀](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/AbstractFuncEqNamespacedPublic.lean/declarations/functional-equation-source-edition-2.md) | 431 | `result-track:85147367366f4b21df9697ba4841765c2f0607af72966645aec9c8fd33170c28` |
| 31 | `theorem` | [functional_equation](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/AbstractFuncEqNamespacedPublic.lean/declarations/functional-equation.md) | 435 | `result-track:0ff5628b14b52456b30ea61a6f33e4f422d5e48541312678b31ddf0a47312526` |
| 32 | `theorem` | [Λ_residue_k](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/AbstractFuncEqNamespacedPublic.lean/declarations/residue-k.md) | 441 | `result-track:e0a3dc65e3fa53bb6d56933d732aa0458dfd9e9c55c813ae73cbf3b76a32f88d` |
| 33 | `theorem` | [Λ_residue_zero](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/AbstractFuncEqNamespacedPublic.lean/declarations/residue-zero.md) | 457 | `result-track:3c6495f3b6ce660e9d18a1c012d8e982187787db41c1acc6206d0debb2437d63` |
| 34 | `lemma` | [Λ_eq](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/AbstractFuncEqNamespacedPublic.lean/declarations/eq-source-edition-2.md) | 482 | `result-track:3ac3c3d66f89f95fa3889425a64810361ba52fdfa37c90a36edc62041a3814f0` |
| 35 | `lemma` | [symm_Λ_eq](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/AbstractFuncEqNamespacedPublic.lean/declarations/symm-eq.md) | 491 | `result-track:67031239194ced2da5da2147025d320e16918bf9ea6dc048321ac7abc17d9ac0` |
| 36 | `theorem` | [hasMellin](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/AbstractFuncEqNamespacedPublic.lean/declarations/hasmellin.md) | 494 | `result-track:02d383de8ec011e9bae3d361f7dd9ffa3b67fe2a8e70a4f80fc96e66d406dfa8` |
| 37 | `theorem` | [differentiable_Λ](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/AbstractFuncEqNamespacedPublic.lean/declarations/differentiable.md) | 498 | `result-track:0911430bd458d1c9caf9599730faa9d55257e463e0cff6c300bd3be68a2490d2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=dfac88912677775e9a288c4be90de91c2c2d90ddb0390c927a13a483ed4d537d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/AbstractFuncEq/Variant2ce68bc0f97e26f000842650de22ef8511288ae9f135afcb485fbab84f26f0c0.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/DifferentialCalculus/AbstractFuncEq/Variant2ce68bc0f97e26f000842650de22ef8511288ae9f135afcb485fbab84f26f0c0.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
