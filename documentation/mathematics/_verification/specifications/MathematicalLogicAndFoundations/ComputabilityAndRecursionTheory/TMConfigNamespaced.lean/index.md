# Verification target: TMConfig Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a8c8040b3bf85ea393560e6de1a257c3b2450957",
  "lexical_observation_count": 41,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/Computability/TMConfig/Variantd40576bb69b0d917852f5e1f6450c9185ceb5be4b81314b1457a074e71a0bc27.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/TMConfigNamespaced.lean/index.md) · [Full source](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/TMConfigNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a8c8040b3bf85ea393560e6de1a257c3b2450957`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/Computability/TMConfig/Variantd40576bb69b0d917852f5e1f6450c9185ceb5be4b81314b1457a074e71a0bc27.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/Computability/TMConfig/Variantd40576bb69b0d917852f5e1f6450c9185ceb5be4b81314b1457a074e71a0bc27.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Computability.Halting` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Computability.PostTuringMachine` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.DeriveFintype` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [Code](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/TMConfigNamespaced.lean/declarations/code.md) | 81 | `declaration-track:f208a9bf17d33e608b1ebc8d82c29afb070a6d19a4319db561dc1f4dafc98e19` |
| 2 | `def` | [Code.eval](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/TMConfigNamespaced.lean/declarations/code-eval.md) | 117 | `declaration-track:238b74dc454d6bc9a2246d726ece012a15e15958c82021be882333a24ad3648b` |
| 3 | `theorem` | [zero'_eval](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/TMConfigNamespaced.lean/declarations/zero-eval.md) | 133 | `result-track:2c324ec6f570f740f2b4e95a09611dc94e7fa4a921c3b77f23ace5a87838f360` |
| 4 | `theorem` | [succ_eval](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/TMConfigNamespaced.lean/declarations/succ-eval.md) | 136 | `result-track:9488b3d53f22d47d4907aeef873610fb29354f58754abd4b197d54c5c9b3105f` |
| 5 | `theorem` | [tail_eval](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/TMConfigNamespaced.lean/declarations/tail-eval.md) | 139 | `result-track:e01ac3f5259c95852ece58f57185422747fc9768da69334550d662135f576a42` |
| 6 | `theorem` | [cons_eval](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/TMConfigNamespaced.lean/declarations/cons-eval.md) | 142 | `result-track:60674d18373b0db60fab3177e876ea428dd76157034e394ed9417a20114ea345` |
| 7 | `theorem` | [comp_eval](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/TMConfigNamespaced.lean/declarations/comp-eval.md) | 148 | `result-track:7c1d573377355ffc73015977f4ce708a885aab8c9bf61a7ac793c53eb95a80ab` |
| 8 | `theorem` | [case_eval](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/TMConfigNamespaced.lean/declarations/case-eval.md) | 151 | `result-track:eac1031b3332201b9a15d8184b63909c5abc8dd2d212e8f5c5a9469ec823c112` |
| 9 | `theorem` | [fix_eval](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/TMConfigNamespaced.lean/declarations/fix-eval.md) | 156 | `result-track:52b389a0180e2ce7935b7f983385e546899f0a40df5f44393918c813d7a10be5` |
| 10 | `def` | [nil](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/TMConfigNamespaced.lean/declarations/nil.md) | 162 | `declaration-track:dc8d445bd9ced28e284852aa3f1e6ff1a758a0c8dbda071db294677a39afd656` |
| 11 | `theorem` | [nil_eval](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/TMConfigNamespaced.lean/declarations/nil-eval.md) | 166 | `result-track:ce1bbc3400bc9622c94ec3cd4e7f009e0206b05e9256e5026f46eaf344762559` |
| 12 | `def` | [id](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/TMConfigNamespaced.lean/declarations/id.md) | 169 | `declaration-track:ab336f05220936d4c12b2c77ef4dcfbf92d252ed770d25288e72776970e042e1` |
| 13 | `theorem` | [id_eval](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/TMConfigNamespaced.lean/declarations/id-eval.md) | 173 | `result-track:7f28a12918877822d925236abdbb20588731c9841e73a47a5b8a4e3a91d7ffdb` |
| 14 | `def` | [head](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/TMConfigNamespaced.lean/declarations/head.md) | 176 | `declaration-track:bb34fc5d590260bf9ac8d39f11e71bf22bc91716a38c99b79a7e92f528293d8c` |
| 15 | `theorem` | [head_eval](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/TMConfigNamespaced.lean/declarations/head-eval.md) | 180 | `result-track:1547bba1d43a95be0ade83a70aa48332060354a651a9be9b423cffa3a627c10c` |
| 16 | `def` | [zero](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/TMConfigNamespaced.lean/declarations/zero.md) | 183 | `declaration-track:fb4cd6691ce4142bac997c22e3c9946187442bef5609a8385d9740b859483ffe` |
| 17 | `theorem` | [zero_eval](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/TMConfigNamespaced.lean/declarations/zero-eval-source-edition-2.md) | 187 | `result-track:49d05bdda92009050bf295bcc88facdd973ed7f1096869b146270cfebaeada54` |
| 18 | `def` | [pred](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/TMConfigNamespaced.lean/declarations/pred.md) | 191 | `declaration-track:74374ceddaa83d325eb49b7db5b24d7fb1b0dd4aa0b6fc29e3b014c1b432e4a8` |
| 19 | `theorem` | [pred_eval](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/TMConfigNamespaced.lean/declarations/pred-eval.md) | 195 | `result-track:69e1936072fa18e7910096fb4d80f198f2097d4389bd39bff0fd544572fb3ff6` |
| 20 | `def` | [rfind](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/TMConfigNamespaced.lean/declarations/rfind.md) | 209 | `declaration-track:cabd0a2ce579550a47a34fb70339d21a37efb9ea023502c560afc39bd50a2108` |
| 21 | `def` | [prec](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/TMConfigNamespaced.lean/declarations/prec.md) | 234 | `declaration-track:0cc0d76ec71c6947e4301092cccdbb1eb9e7c73d1fea153128b2221904fd2f54` |
| 22 | `theorem` | [exists_code.comp](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/TMConfigNamespaced.lean/declarations/exists-code-comp.md) | 245 | `result-track:6012c85d572e18205a2efa5fff03faef9993989e68f9bd32c0b0faf7cda336c3` |
| 23 | `theorem` | [exists_code](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/TMConfigNamespaced.lean/declarations/exists-code.md) | 267 | `result-track:aa0a097f4786353e106e20a401959f4e68a4f1edbf4fe6c6fdfe6fd2c0ae9f97` |
| 24 | `inductive` | [Cont](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/TMConfigNamespaced.lean/declarations/cont.md) | 415 | `declaration-track:62e9e25626aed5e9067ce19648deedbf2f085358df73d33d0b7b3c12af401c99` |
| 25 | `def` | [Cont.eval](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/TMConfigNamespaced.lean/declarations/cont-eval.md) | 424 | `declaration-track:fe25daaefbc497a54d1826ff9f180971b70258c7b81e826bad1765190473651a` |
| 26 | `inductive` | [Cfg](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/TMConfigNamespaced.lean/declarations/cfg.md) | 440 | `declaration-track:a592d1dde997c5b128344d9215c50feec8d54a141ceb242dffa54495fabfff21` |
| 27 | `def` | [stepNormal](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/TMConfigNamespaced.lean/declarations/stepnormal.md) | 462 | `declaration-track:3e2fbddb6d39e9a0f9c7c39d4a166905d3df566688252a738b641704b062b73c` |
| 28 | `def` | [stepRet](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/TMConfigNamespaced.lean/declarations/stepret.md) | 485 | `declaration-track:b4e1148e3232e63bdc673503899ff3519397b05524a17dec7b7d7778ef281bbc` |
| 29 | `def` | [step](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/TMConfigNamespaced.lean/declarations/step.md) | 495 | `declaration-track:644b02540ad698444c0bfc82d3bfac6adb84af868d14dd127a621abaffd9415b` |
| 30 | `def` | [Cont.then](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/TMConfigNamespaced.lean/declarations/cont-then.md) | 511 | `declaration-track:e127e8d6b7bf26b206d28b165f891ee54036743fdc976e576353d8cf42c046a7` |
| 31 | `theorem` | [Cont.then_eval](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/TMConfigNamespaced.lean/declarations/cont-then-eval.md) | 518 | `result-track:dce5bc4e29726f07a98d926942d43baed98136fea319b13dcbd8afb8ec7bfa10` |
| 32 | `def` | [Cfg.then](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/TMConfigNamespaced.lean/declarations/cfg-then.md) | 531 | `declaration-track:c85045f045fb573ff18db7d1907b68d224e1e327cb9f86d29074f469e96b8fb3` |
| 33 | `theorem` | [stepNormal_then](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/TMConfigNamespaced.lean/declarations/stepnormal-then.md) | 538 | `result-track:f34499b75c3dc372cb1f0998d0ea0bac94578d27e018a18a4cbeb3d2b06c798f` |
| 34 | `theorem` | [stepRet_then](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/TMConfigNamespaced.lean/declarations/stepret-then.md) | 550 | `result-track:afc452d7bee8914e9220c9c3017ed6ee29e994a64437e47a31bd33fccfcaeb56` |
| 35 | `def` | [Code.Ok](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/TMConfigNamespaced.lean/declarations/code-ok.md) | 571 | `declaration-track:fea4617fe6761834c2cf1de0f5a08d6a1011ea952895fc0113b15c9b99dfefb3` |
| 36 | `theorem` | [Code.Ok.zero](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/TMConfigNamespaced.lean/declarations/code-ok-zero.md) | 575 | `result-track:56866b0d64e612a7d990c240b337997c86cd93f32dd85559bd1920e17069e58d` |
| 37 | `theorem` | [stepNormal.is_ret](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/TMConfigNamespaced.lean/declarations/stepnormal-is-ret.md) | 580 | `result-track:31d0434e4be71a92af22afc82d5e6c9fbbe0a191a15accacb0d89bd4a043e238` |
| 38 | `theorem` | [cont_eval_fix](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/TMConfigNamespaced.lean/declarations/cont-eval-fix.md) | 591 | `result-track:14dc420a06eb113578e16b1fb29fb8c0dfce783d0b398db91c25249eb1b726ad` |
| 39 | `theorem` | [code_is_ok](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/TMConfigNamespaced.lean/declarations/code-is-ok.md) | 663 | `result-track:1b2caaa51a0d8ac723572ce9b4441bef6b0ca4fedf19843b69af59324bf842a2` |
| 40 | `theorem` | [stepNormal_eval](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/TMConfigNamespaced.lean/declarations/stepnormal-eval.md) | 685 | `result-track:bc62173384f090e82a1140b1c1d86d97839b79f8fe80974f585294603c7e272f` |
| 41 | `theorem` | [stepRet_eval](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/TMConfigNamespaced.lean/declarations/stepret-eval.md) | 688 | `result-track:85d1c532d07c78ad129125427f6508b31bb8876857c35d49ebd8d97601a3b3a3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=68199eb5d745658a5cefe7e782bc6131a6e1ffca106de878a7672a2b703aacbf -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/Computability/TMConfig/Variantd40576bb69b0d917852f5e1f6450c9185ceb5be4b81314b1457a074e71a0bc27.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/Computability/TMConfig/Variantd40576bb69b0d917852f5e1f6450c9185ceb5be4b81314b1457a074e71a0bc27.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
