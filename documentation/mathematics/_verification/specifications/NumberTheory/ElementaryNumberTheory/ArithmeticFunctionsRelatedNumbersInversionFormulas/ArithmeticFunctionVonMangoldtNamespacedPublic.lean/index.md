# Verification target: Arithmetic Function Von Mangoldt Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8c81cd1fc0c3b4e15a1261685f19c35959d129db",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/VonMangoldt/Variantee1a539e31adb91d85010adffe2dc2a09954bae3939c562e110c4c1bb413e422.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ArithmeticFunctionVonMangoldtNamespacedPublic.lean/index.md) · [Full source](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ArithmeticFunctionVonMangoldtNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8c81cd1fc0c3b4e15a1261685f19c35959d129db`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/VonMangoldt/Variantee1a539e31adb91d85010adffe2dc2a09954bae3939c562e110c4c1bb413e422.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/VonMangoldt/Variantee1a539e31adb91d85010adffe2dc2a09954bae3939c562e110c4c1bb413e422.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [log](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ArithmeticFunctionVonMangoldtNamespacedPublic.lean/declarations/log.md) | 56 | `declaration-track:c9ff3b63ec96831b459271437c439ab6bf9c7f921694e91acdb5ac678bdf044d` |
| 2 | `theorem` | [log_apply](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ArithmeticFunctionVonMangoldtNamespacedPublic.lean/declarations/log-apply.md) | 60 | `result-track:7ee21243c513e9aa731936c95ec0a99f97808e5305270bd63d364f0eaf9ab8d6` |
| 3 | `def` | [vonMangoldt](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ArithmeticFunctionVonMangoldtNamespacedPublic.lean/declarations/vonmangoldt.md) | 73 | `declaration-track:185a3ee63a50cf98f18aa4599834d65fb729db041e9e863b206fe363149523e2` |
| 4 | `theorem` | [vonMangoldt_apply](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ArithmeticFunctionVonMangoldtNamespacedPublic.lean/declarations/vonmangoldt-apply.md) | 81 | `result-track:0c1411efea173d95e5273887167636a723b986a816260e4ca651408007c3e091` |
| 5 | `theorem` | [vonMangoldt_apply_one](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ArithmeticFunctionVonMangoldtNamespacedPublic.lean/declarations/vonmangoldt-apply-one.md) | 85 | `result-track:d4ace3d09882e5c6c7a52516c354fe9686e00d2f998e72270f318d3fe46f7c9b` |
| 6 | `theorem` | [vonMangoldt_nonneg](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ArithmeticFunctionVonMangoldtNamespacedPublic.lean/declarations/vonmangoldt-nonneg.md) | 88 | `result-track:ca61f3a51bc13f5727732e3f75405d88a9055ab9f54f9eb46de5319a936f5536` |
| 7 | `theorem` | [vonMangoldt_apply_pow](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ArithmeticFunctionVonMangoldtNamespacedPublic.lean/declarations/vonmangoldt-apply-pow.md) | 94 | `result-track:3ab1e881a559e9ad0438c2d42da4e3efbf9cb6248f7969c125f0b6a7a9a60dd3` |
| 8 | `theorem` | [vonMangoldt_apply_prime](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ArithmeticFunctionVonMangoldtNamespacedPublic.lean/declarations/vonmangoldt-apply-prime.md) | 97 | `result-track:4833668216eb8cdc7b7aaa8f44dc8643a91c12b2eff89e2afd4ebe96ba6f8e5f` |
| 9 | `theorem` | [vonMangoldt_ne_zero_iff](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ArithmeticFunctionVonMangoldtNamespacedPublic.lean/declarations/vonmangoldt-ne-zero-iff.md) | 100 | `result-track:cea5d61e9b476f761aade1305c635127cb84c6ff7876266fff3459811ed25773` |
| 10 | `theorem` | [vonMangoldt_pos_iff](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ArithmeticFunctionVonMangoldtNamespacedPublic.lean/declarations/vonmangoldt-pos-iff.md) | 104 | `result-track:59c22062f491a743b3a2cccc0d01f99bf1b208441adb1723ea3def7674c297cc` |
| 11 | `theorem` | [vonMangoldt_eq_zero_iff](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ArithmeticFunctionVonMangoldtNamespacedPublic.lean/declarations/vonmangoldt-eq-zero-iff.md) | 107 | `result-track:f045ae2d473b2a742beb1ef5c0978822e292f399e48fdadc8cb66905964fdf14` |
| 12 | `theorem` | [vonMangoldt_sum](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ArithmeticFunctionVonMangoldtNamespacedPublic.lean/declarations/vonmangoldt-sum.md) | 110 | `result-track:bfc992a7fbbabe4b570bbe348577d49eeffeeeea25c18e69f2f5a97db3765600` |
| 13 | `theorem` | [vonMangoldt_mul_zeta](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ArithmeticFunctionVonMangoldtNamespacedPublic.lean/declarations/vonmangoldt-mul-zeta.md) | 127 | `result-track:d5450de5a007442282a8651e2f3fbf17aad8a5ec6d229d0800fd8b7c7194a2ca` |
| 14 | `theorem` | [zeta_mul_vonMangoldt](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ArithmeticFunctionVonMangoldtNamespacedPublic.lean/declarations/zeta-mul-vonmangoldt.md) | 131 | `result-track:ff1879f5fd1df85f560327310b8890ec12cc4b28a5c335986fb6fc416b4daac8` |
| 15 | `theorem` | [log_mul_moebius_eq_vonMangoldt](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ArithmeticFunctionVonMangoldtNamespacedPublic.lean/declarations/log-mul-moebius-eq-vonmangoldt.md) | 134 | `result-track:ca15027a41870c3bd2f09b79985ec49724879745bd46c22cef662ffea95e3ecb` |
| 16 | `theorem` | [moebius_mul_log_eq_vonMangoldt](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ArithmeticFunctionVonMangoldtNamespacedPublic.lean/declarations/moebius-mul-log-eq-vonmangoldt.md) | 138 | `result-track:24b9c68696f166c7b0fa366b0759b2a872d2e84a31856134891f6939e38fa0c7` |
| 17 | `theorem` | [sum_moebius_mul_log_eq](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ArithmeticFunctionVonMangoldtNamespacedPublic.lean/declarations/sum-moebius-mul-log-eq.md) | 141 | `result-track:c9dfae6edfa1b64207d07857fc4bcce6a76a639faff98cf051bc8524bc0fe778` |
| 18 | `theorem` | [vonMangoldt_le_log](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ArithmeticFunctionVonMangoldtNamespacedPublic.lean/declarations/vonmangoldt-le-log.md) | 159 | `result-track:c19bfb9c0147bb441566f69312be1a46af974a32ab6f481e77266b34b38a55ec` |
| 19 | `def` | [evalVonMangoldt](../../../../../../NumberTheory/ElementaryNumberTheory/ArithmeticFunctionsRelatedNumbersInversionFormulas/ArithmeticFunctionVonMangoldtNamespacedPublic.lean/declarations/evalvonmangoldt.md) | 174 | `declaration-track:41c061e52dd9d55af8267f6aa0d932a7da9d080aefe135804d68901c9a590e35` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=2b0e0191766ec0007079fedf41aacfa11444a8d5a5cc0a5b7e0844020fd41c19 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/VonMangoldt/Variantee1a539e31adb91d85010adffe2dc2a09954bae3939c562e110c4c1bb413e422.lean","GRWTSK/_verification/specifications/NumberTheory/AnalyticNumberTheory/VonMangoldt/Variantee1a539e31adb91d85010adffe2dc2a09954bae3939c562e110c4c1bb413e422.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
