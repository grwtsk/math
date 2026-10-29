# Verification target: Constructions Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c25ac4ede22ac5dd022433ba1439b46afac2df0d",
  "lexical_observation_count": 38,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Constructions/Variant4f767091dccb4682861b62ae70457702cda1d775258d4ba52c04e3d001eb5a3c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../FunctionalAnalysis/ConstructionsNamespacedPublic.lean/index.md) · [Full source](../../../../FunctionalAnalysis/ConstructionsNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c25ac4ede22ac5dd022433ba1439b46afac2df0d`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Constructions/Variant4f767091dccb4682861b62ae70457702cda1d775258d4ba52c04e3d001eb5a3c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Constructions/Variant4f767091dccb4682861b62ae70457702cda1d775258d4ba52c04e3d001eb5a3c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.CStarAlgebra.ContinuousFunctionalCalculus.Order` — import line 17; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../FunctionalAnalysis/ConstructionsNamespacedPublic.lean/declarations/instance-source-edition-5.md) | 86 | `declaration-track:7fe30d22e2bd8e18a8be1afb26b6499880fa8a9282affa060efc22ea584d73d9` |
| 2 | `lemma` | [inner_def](../../../../FunctionalAnalysis/ConstructionsNamespacedPublic.lean/declarations/inner-def.md) | 99 | `result-track:d2e7e043f6526403c031d994670210037e30565b5759f4f42390dbdcaa92608b` |
| 3 | `instance` | [(anonymous)](../../../../FunctionalAnalysis/ConstructionsNamespacedPublic.lean/declarations/instance-source-edition-9.md) | 114 | `declaration-track:b416e00f35d87b1b26f137d984cbcdec1f63b70e4ba9072d881a29beb0c56970` |
| 4 | `lemma` | [prod_norm](../../../../FunctionalAnalysis/ConstructionsNamespacedPublic.lean/declarations/prod-norm.md) | 117 | `result-track:0017b176232735ac7611440b5ac67f462b6892826361f7509cbe07b03952facc` |
| 5 | `lemma` | [prod_norm_sq](../../../../FunctionalAnalysis/ConstructionsNamespacedPublic.lean/declarations/prod-norm-sq.md) | 119 | `result-track:cbfd2a9c2fb1f9c10a7ee8b1e010f73e96967c53761272f2c3975b09bf3506c1` |
| 6 | `lemma` | [prod_norm_le_norm_add](../../../../FunctionalAnalysis/ConstructionsNamespacedPublic.lean/declarations/prod-norm-le-norm-add.md) | 122 | `result-track:3a8c1d7a4bf8f905238bf8c8e3216598a8055ce8305e731f84d6e3040307fa86` |
| 7 | `instance` | [(anonymous)](../../../../FunctionalAnalysis/ConstructionsNamespacedPublic.lean/declarations/instance-source-edition-8.md) | 131 | `declaration-track:a076de1f1daa4bcaad6661f63ae6a7f0f33ede12c7ca3f4de78256321b338d19` |
| 8 | `lemma` | [prod_inner](../../../../FunctionalAnalysis/ConstructionsNamespacedPublic.lean/declarations/prod-inner.md) | 148 | `result-track:00efa061d7abde4cf071ef1b461f01ba0e4e4a00959b1073a2b833837a0a2dbb` |
| 9 | `lemma` | [max_le_prod_norm](../../../../FunctionalAnalysis/ConstructionsNamespacedPublic.lean/declarations/max-le-prod-norm.md) | 150 | `result-track:fa63c503168bda80054a0da24fadc3a95bcc7acd6dfd2b33d4c5ef86561eaf48` |
| 10 | `lemma` | [norm_equiv_le_norm_prod](../../../../FunctionalAnalysis/ConstructionsNamespacedPublic.lean/declarations/norm-equiv-le-norm-prod.md) | 161 | `result-track:984a7f2a6dcfc3788bf6373eef2228d4a930b7490272031d435c401c9289b169` |
| 11 | `def` | [normedAddCommGroupProdAux](../../../../FunctionalAnalysis/ConstructionsNamespacedPublic.lean/declarations/normedaddcommgroupprodaux.md) | 174 | `declaration-track:08f72deb2ec9ffd4f1492560690b06b27432b42b0599bd86ccf9ccbefcedbd59` |
| 12 | `lemma` | [antilipschitzWith_two_equiv_prod_aux](../../../../FunctionalAnalysis/ConstructionsNamespacedPublic.lean/declarations/antilipschitzwith-two-equiv-prod-aux.md) | 183 | `result-track:752cf0fa1fd872b75442906e9b443c0e87803dae470e12f93eae29d34338cfb6` |
| 13 | `lemma` | [lipschitzWith_one_equiv_prod_aux](../../../../FunctionalAnalysis/ConstructionsNamespacedPublic.lean/declarations/lipschitzwith-one-equiv-prod-aux.md) | 191 | `result-track:e18a94879eab1bd4287eab2a32050279fb85d6e92c80a80c22e3b323c81cf35a` |
| 14 | `lemma` | [uniformity_prod_eq_aux](../../../../FunctionalAnalysis/ConstructionsNamespacedPublic.lean/declarations/uniformity-prod-eq-aux.md) | 195 | `result-track:0c54344576860ce27d763aa9accc532469662c4ef0c24b59861a27b32088b84d` |
| 15 | `lemma` | [isBounded_prod_iff_aux](../../../../FunctionalAnalysis/ConstructionsNamespacedPublic.lean/declarations/isbounded-prod-iff-aux.md) | 199 | `result-track:a061225b75838975cdf1f23a9b5432f376ce89af1e86f4cf33c38283e26f38b5` |
| 16 | `instance` | [(anonymous)](../../../../FunctionalAnalysis/ConstructionsNamespacedPublic.lean/declarations/instance-source-edition-7.md) | 206 | `declaration-track:9340ba531ed524d01920e1fdd63a6b254efd94358861a758cb78a9dd45489729` |
| 17 | `instance` | [(anonymous)](../../../../FunctionalAnalysis/ConstructionsNamespacedPublic.lean/declarations/instance-source-edition-4.md) | 211 | `declaration-track:3758fba37bb7ba61d2db04ce639a6c29f26fba1ff213a9e957303cb8cf527a28` |
| 18 | `instance` | [(anonymous)](../../../../FunctionalAnalysis/ConstructionsNamespacedPublic.lean/declarations/instance.md) | 225 | `declaration-track:080fbc6bbac6e1667d6bb8394336211b0a878da88328c83b83b535dd5cf2302f` |
| 19 | `lemma` | [pi_norm](../../../../FunctionalAnalysis/ConstructionsNamespacedPublic.lean/declarations/pi-norm.md) | 228 | `result-track:bac7c94b1ea6f3594046cae23ad53e4cfc126eb07a952da2eb9d1949a1907602` |
| 20 | `lemma` | [pi_norm_sq](../../../../FunctionalAnalysis/ConstructionsNamespacedPublic.lean/declarations/pi-norm-sq.md) | 231 | `result-track:04ab293749042de2cf3f89d9b34ed5c7e7e1eb820511e037ab9b5c2f9c6f1684` |
| 21 | `lemma` | [pi_norm_le_sum_norm](../../../../FunctionalAnalysis/ConstructionsNamespacedPublic.lean/declarations/pi-norm-le-sum-norm.md) | 235 | `result-track:b65c1d4f1405e7453b66eabd51d3a03059f2321efd060ea5b9eb2c91fbe306f2` |
| 22 | `instance` | [(anonymous)](../../../../FunctionalAnalysis/ConstructionsNamespacedPublic.lean/declarations/instance-source-edition-3.md) | 244 | `declaration-track:26b10de8a1400954316f9e00f6642e577f9ce1b2b3142c7ec7267d20220bc686` |
| 23 | `lemma` | [pi_inner](../../../../FunctionalAnalysis/ConstructionsNamespacedPublic.lean/declarations/pi-inner.md) | 258 | `result-track:3bafb1330c6e1e1b4b5eea29d39db89b0c7b3221554fbcf341cad95418e421f2` |
| 24 | `lemma` | [inner_single_left](../../../../FunctionalAnalysis/ConstructionsNamespacedPublic.lean/declarations/inner-single-left.md) | 261 | `result-track:e41962f66c0e90cc793dc5c2e69e33154d55204d6a970fdcaea211ddf04ea665` |
| 25 | `lemma` | [inner_single_right](../../../../FunctionalAnalysis/ConstructionsNamespacedPublic.lean/declarations/inner-single-right.md) | 268 | `result-track:68fa5d68b6856ac85ccad4ec0efb8f9a47fab0bf1896a9866908a9895f917cb4` |
| 26 | `lemma` | [norm_single](../../../../FunctionalAnalysis/ConstructionsNamespacedPublic.lean/declarations/norm-single.md) | 275 | `result-track:6d25e9c2f089e7b118f031158d9d59538d9d9bdc72c55821defda60dceab891b` |
| 27 | `lemma` | [norm_apply_le_norm](../../../../FunctionalAnalysis/ConstructionsNamespacedPublic.lean/declarations/norm-apply-le-norm.md) | 281 | `result-track:db7f17c855e085d6ebb39afaaaf4395d7ce1566e6f8fd467f1ad227b439c23a7` |
| 28 | `lemma` | [norm_equiv_le_norm_pi](../../../../FunctionalAnalysis/ConstructionsNamespacedPublic.lean/declarations/norm-equiv-le-norm-pi.md) | 289 | `result-track:206331dff77fa45f7ce5eaf19acf238c63179afff95829d1b5d32fc10cacb4e2` |
| 29 | `def` | [normedAddCommGroupPiAux](../../../../FunctionalAnalysis/ConstructionsNamespacedPublic.lean/declarations/normedaddcommgrouppiaux.md) | 304 | `declaration-track:9c8499c9c197d06af402ec5fcb99535dc3628374814fbd620966988677c2486d` |
| 30 | `lemma` | [antilipschitzWith_card_equiv_pi_aux](../../../../FunctionalAnalysis/ConstructionsNamespacedPublic.lean/declarations/antilipschitzwith-card-equiv-pi-aux.md) | 313 | `result-track:501de5cbdb39cf747edea03c0d9fbc219478b911aeae5e947b37fd15caaa9d43` |
| 31 | `lemma` | [lipschitzWith_one_equiv_pi_aux](../../../../FunctionalAnalysis/ConstructionsNamespacedPublic.lean/declarations/lipschitzwith-one-equiv-pi-aux.md) | 321 | `result-track:29475c39704d646aa424dcf3583e9bb676c26b59b416b6bc888a15a5aec60e24` |
| 32 | `lemma` | [uniformity_pi_eq_aux](../../../../FunctionalAnalysis/ConstructionsNamespacedPublic.lean/declarations/uniformity-pi-eq-aux.md) | 325 | `result-track:628ef5e56e539ca9ae846c344a7c75e025806cfe1522dd1773bc2cb9801f89f1` |
| 33 | `lemma` | [isBounded_pi_iff_aux](../../../../FunctionalAnalysis/ConstructionsNamespacedPublic.lean/declarations/isbounded-pi-iff-aux.md) | 329 | `result-track:e9a43d57ba04708723085aa9501983334320a75d62bbace3d90ef628b58a842a` |
| 34 | `instance` | [(anonymous)](../../../../FunctionalAnalysis/ConstructionsNamespacedPublic.lean/declarations/instance-source-edition-6.md) | 335 | `declaration-track:8ecb22d2f35b6a06ae949f2ca15ac91d9c65131a622cd038b089e0e45d9ea73f` |
| 35 | `instance` | [(anonymous)](../../../../FunctionalAnalysis/ConstructionsNamespacedPublic.lean/declarations/instance-source-edition-2.md) | 340 | `declaration-track:1841cddddcc5274a1d934474cfeb9140a0c727145934c02faf03d6029b04cd91` |
| 36 | `instance` | [instCStarModuleComplex](../../../../FunctionalAnalysis/ConstructionsNamespacedPublic.lean/declarations/instcstarmodulecomplex.md) | 360 | `declaration-track:97ab1fe9a28d9ddc9355eaf6f0b75bcbc2aed93697d70cc7d72285d4ef42c327` |
| 37 | `example` | [(anonymous)](../../../../FunctionalAnalysis/ConstructionsNamespacedPublic.lean/declarations/example.md) | 374 | `declaration-track:3fdf64f89151635b7339d0c5252424effed7b2626f13276bff0a6fe44ed9f611` |
| 38 | `example` | [(anonymous)](../../../../FunctionalAnalysis/ConstructionsNamespacedPublic.lean/declarations/example-source-edition-2.md) | 379 | `declaration-track:f32b6d4bbac4c06fec823d33bc8b3e13f04b107adae005bc1a978f8029e2be92` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=2828845c703f6f19820da01258cbb2f1e0006c97e4575349668646116bf02f7f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Constructions/Variant4f767091dccb4682861b62ae70457702cda1d775258d4ba52c04e3d001eb5a3c.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/MathematicalLogic/Constructions/Variant4f767091dccb4682861b62ae70457702cda1d775258d4ba52c04e3d001eb5a3c.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
