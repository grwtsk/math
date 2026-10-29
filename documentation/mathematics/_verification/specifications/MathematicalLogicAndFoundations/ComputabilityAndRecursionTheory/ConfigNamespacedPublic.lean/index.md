# Verification target: Config Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a0ea76331ace188dd8f3f634e25a71662305cab1",
  "lexical_observation_count": 41,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/Computability/Config/Variant10123b87838061623184e2c54bd49d83f74c5f73faea2a40cdf33ba76f9d37f3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ConfigNamespacedPublic.lean/index.md) · [Full source](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ConfigNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a0ea76331ace188dd8f3f634e25a71662305cab1`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/Computability/Config/Variant10123b87838061623184e2c54bd49d83f74c5f73faea2a40cdf33ba76f9d37f3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/Computability/Config/Variant10123b87838061623184e2c54bd49d83f74c5f73faea2a40cdf33ba76f9d37f3.lean.json)

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
| 1 | `inductive` | [Code](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ConfigNamespacedPublic.lean/declarations/code.md) | 84 | `declaration-track:a7918404fb3207ad120d7dad48d3251d09f914be708c2fd88e6dabf2ee83cd4a` |
| 2 | `def` | [Code.eval](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ConfigNamespacedPublic.lean/declarations/code-eval.md) | 120 | `declaration-track:adb17d526b9ff16f14834dc075846abcd699e249cfac943036c92e724447d22f` |
| 3 | `theorem` | [zero'_eval](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ConfigNamespacedPublic.lean/declarations/zero-eval.md) | 137 | `result-track:ab992ba5d45336d7261ca6fe42102370a8500a03f937d0b80b91581d675d4ebc` |
| 4 | `theorem` | [succ_eval](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ConfigNamespacedPublic.lean/declarations/succ-eval.md) | 141 | `result-track:4756c0bcd228f0ecdc3f245052c1ca5cf1ab3bdb0770091cf1d3cbad2fc9dfe4` |
| 5 | `theorem` | [tail_eval](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ConfigNamespacedPublic.lean/declarations/tail-eval.md) | 145 | `result-track:623651358880720554d5bddf6615f6d01fa5a3e2192d85aa406745e1a4abcabd` |
| 6 | `theorem` | [cons_eval](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ConfigNamespacedPublic.lean/declarations/cons-eval.md) | 149 | `result-track:8b1a82e18d76fc32ea41398782dd94aee95234f416c6adef428efe362184c96a` |
| 7 | `theorem` | [comp_eval](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ConfigNamespacedPublic.lean/declarations/comp-eval.md) | 156 | `result-track:f7ebd2c847bea97980ce76e180f9eba318f3f5f7a192a76cd0f80faba29c68d3` |
| 8 | `theorem` | [case_eval](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ConfigNamespacedPublic.lean/declarations/case-eval.md) | 160 | `result-track:045bd53b7fbfdd70b9e61cd6c7eb6902b75e24cbbc24e9f669593f5fe26919e4` |
| 9 | `theorem` | [fix_eval](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ConfigNamespacedPublic.lean/declarations/fix-eval.md) | 165 | `result-track:8a570570d0c433482f86c2a2309c8678a624a534b3810ca0dea0373483b02847` |
| 10 | `def` | [nil](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ConfigNamespacedPublic.lean/declarations/nil.md) | 171 | `declaration-track:92452296470fbdef185cb11ceb4471b2e18f4d53e88104b67879dd01edea3e74` |
| 11 | `theorem` | [nil_eval](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ConfigNamespacedPublic.lean/declarations/nil-eval.md) | 175 | `result-track:f0777fd9570043d73ba48012883a1fe50deed0cecc72b3486e190a927a5c44b3` |
| 12 | `def` | [id](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ConfigNamespacedPublic.lean/declarations/id.md) | 178 | `declaration-track:cfebd74548743c46e7b88806c3aefa5fcff6079c246d20f684c9595dee95ee4d` |
| 13 | `theorem` | [id_eval](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ConfigNamespacedPublic.lean/declarations/id-eval.md) | 182 | `result-track:8943bdec9fc482621976e9882a030f1c39dfa0dabeba2053e85517effa7b51e9` |
| 14 | `def` | [head](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ConfigNamespacedPublic.lean/declarations/head.md) | 185 | `declaration-track:a7ad52d9feab40818cec91b86e89abfb7b9901578ba946eb1b17e95c2acfe476` |
| 15 | `theorem` | [head_eval](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ConfigNamespacedPublic.lean/declarations/head-eval.md) | 189 | `result-track:c659492665aef208fd3cd5b06f32d3137c8d596641e5aa46e5236adf632d0305` |
| 16 | `def` | [zero](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ConfigNamespacedPublic.lean/declarations/zero.md) | 192 | `declaration-track:f56ec89ed9ee389b23e29e75637609b6a3f19ea1c43dbb5f8db26c36951abeaa` |
| 17 | `theorem` | [zero_eval](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ConfigNamespacedPublic.lean/declarations/zero-eval-source-edition-2.md) | 196 | `result-track:d50d641494bdcd86947ba75f5b6de592d105aa0f42bdadeb034654cf01b1e826` |
| 18 | `def` | [pred](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ConfigNamespacedPublic.lean/declarations/pred.md) | 200 | `declaration-track:d0ed3ef757787de9dcdb29e1aebd72a50c9388cc9fe4ba8c09296b7907d41ea4` |
| 19 | `theorem` | [pred_eval](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ConfigNamespacedPublic.lean/declarations/pred-eval.md) | 204 | `result-track:3cc437b81a12398a9effb03166431f93bb0422b2f87e103eebe68db66a884c06` |
| 20 | `def` | [rfind](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ConfigNamespacedPublic.lean/declarations/rfind.md) | 218 | `declaration-track:1fe484ba04a2b6e723c5c6fffba21616c2a48514b4bf4bccc304bfb14f0cf88d` |
| 21 | `def` | [prec](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ConfigNamespacedPublic.lean/declarations/prec.md) | 243 | `declaration-track:2b409e80c0eba8e0935a50620c1c80457684e604d7e61f59403dddbf21cf86ed` |
| 22 | `theorem` | [exists_code.comp](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ConfigNamespacedPublic.lean/declarations/exists-code-comp.md) | 255 | `result-track:b6248b52c63bcfb2df2bee746126b52f3fe015302e6a9e49466f6d877495e021` |
| 23 | `theorem` | [exists_code](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ConfigNamespacedPublic.lean/declarations/exists-code.md) | 280 | `result-track:b92f73b625f22946c1e061dfc32b65cc949ece24fe985b767d317b948e5d21bb` |
| 24 | `inductive` | [Cont](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ConfigNamespacedPublic.lean/declarations/cont.md) | 430 | `declaration-track:e117c1d1a24f4664d8ce879303ae4640bf1a89417394468ae9b8d7b01221f47c` |
| 25 | `def` | [Cont.eval](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ConfigNamespacedPublic.lean/declarations/cont-eval.md) | 439 | `declaration-track:ea33fbb0b55a01fda37e95925deff2bb9a66bd55c22ed4b41a17673441705d82` |
| 26 | `inductive` | [Cfg](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ConfigNamespacedPublic.lean/declarations/cfg.md) | 455 | `declaration-track:86b687c417ca6981b4ecfa48c1dac6ac90aca5a2f74b9266779de70604712d76` |
| 27 | `def` | [stepNormal](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ConfigNamespacedPublic.lean/declarations/stepnormal.md) | 477 | `declaration-track:99fc4389928ccdc7c0733894e03cb2b8a2ad9735b014f6ca23dc8188bf509139` |
| 28 | `def` | [stepRet](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ConfigNamespacedPublic.lean/declarations/stepret.md) | 500 | `declaration-track:0b663b0d282a2071c30b37120cd1850316886c843c6d4bb122b096e4e1a5b1cc` |
| 29 | `def` | [step](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ConfigNamespacedPublic.lean/declarations/step.md) | 510 | `declaration-track:624971f38d19efe93eec3d866e8d7c8896d630475171d748943a7df5395894c0` |
| 30 | `def` | [Cont.then](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ConfigNamespacedPublic.lean/declarations/cont-then.md) | 526 | `declaration-track:93e24b0cf62bfe2754b66751d8d81f0108bcf3950322c14a6fad54811cde6035` |
| 31 | `theorem` | [Cont.then_eval](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ConfigNamespacedPublic.lean/declarations/cont-then-eval.md) | 534 | `result-track:7c95c63ec1ecbd1645a5af3e3edde90edc22f548cf02f78bbfef068300968791` |
| 32 | `def` | [Cfg.then](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ConfigNamespacedPublic.lean/declarations/cfg-then.md) | 547 | `declaration-track:dca0a1ad17ab7c460fcd98a0a666e94b7fd9a91407b450bedddbcb1cf7652c3d` |
| 33 | `theorem` | [stepNormal_then](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ConfigNamespacedPublic.lean/declarations/stepnormal-then.md) | 554 | `result-track:4525fcfd3e2025a4a5f97274d78ba1a267ceed4e9e8ec35194f0d0501e3e6249` |
| 34 | `theorem` | [stepRet_then](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ConfigNamespacedPublic.lean/declarations/stepret-then.md) | 566 | `result-track:ada51cf2352c29d2bf7620b65466f06fc2b0212e7abf806ff665c39aa16263c0` |
| 35 | `def` | [Code.Ok](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ConfigNamespacedPublic.lean/declarations/code-ok.md) | 589 | `declaration-track:47c53f06a9e03c0642c8540c2ae78addd5f56a8b2385857445e439d29aac72d0` |
| 36 | `theorem` | [Code.Ok.zero](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ConfigNamespacedPublic.lean/declarations/code-ok-zero.md) | 593 | `result-track:aeb421979d48a9b939884ff5f286a7a807580991e94e77a12ceb2aa94438e6c3` |
| 37 | `theorem` | [stepNormal.is_ret](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ConfigNamespacedPublic.lean/declarations/stepnormal-is-ret.md) | 598 | `result-track:70a49be5f63ab2ff75865165fa3bcfd4189fd77f32314a8bf22246fa75f1827b` |
| 38 | `theorem` | [cont_eval_fix](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ConfigNamespacedPublic.lean/declarations/cont-eval-fix.md) | 609 | `result-track:3587e27fb0b6ba3431dd9fea5fb29ac31274a109ad010fbe60e8cca0f0feef58` |
| 39 | `theorem` | [code_is_ok](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ConfigNamespacedPublic.lean/declarations/code-is-ok.md) | 682 | `result-track:74d0c84bd69f7242b53434659406f55b2b25c1f0a9cace6d4e2ae02af1f630d7` |
| 40 | `theorem` | [stepNormal_eval](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ConfigNamespacedPublic.lean/declarations/stepnormal-eval.md) | 704 | `result-track:1aaa5c5e12e0c0c9ac41296b4c3c772885fb0585f4664a163cf72b156a1c4aa6` |
| 41 | `theorem` | [stepRet_eval](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/ConfigNamespacedPublic.lean/declarations/stepret-eval.md) | 708 | `result-track:c792e8cb13bc26aad7cf701aa259efdc7472d7dc7095adfd7c7f6e990b12e584` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=9b608ef13c20d8d6059fd1f2197e5f197a068d593d63bb5997e6252e42892a13 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/Computability/Config/Variant10123b87838061623184e2c54bd49d83f74c5f73faea2a40cdf33ba76f9d37f3.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/Computability/Config/Variant10123b87838061623184e2c54bd49d83f74c5f73faea2a40cdf33ba76f9d37f3.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
