# Verification target: Numeric Cert Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f3a761c50704f71cc60e17e6edc7cc0a2d3e94f7",
  "lexical_observation_count": 30,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/NumericCert/Variant228d1bb3a5879cfded8a49524ebcb6ba8f6a07c5abd87ea3a27742b8926f1e45.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NumericCertNamespaced.lean/index.md) · [Full source](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NumericCertNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f3a761c50704f71cc60e17e6edc7cc0a2d3e94f7`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/NumericCert/Variant228d1bb3a5879cfded8a49524ebcb6ba8f6a07c5abd87ea3a27742b8926f1e45.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/NumericCert/Variant228d1bb3a5879cfded8a49524ebcb6ba8f6a07c5abd87ea3a27742b8926f1e45.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecialFunctions.Pow.Real` — import line 32; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Floor.Defs` — import line 33; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.BigOperators.Intervals` — import line 34; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [T](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NumericCertNamespaced.lean/declarations/t.md) | 52 | `declaration-track:9f7a38f86d6b13556d0549928a4982893e085f778e26dd3429296815c46a842f` |
| 2 | `def` | [U](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NumericCertNamespaced.lean/declarations/u.md) | 55 | `declaration-track:2d5b741ca6b49020373c47f4db50c67010e31a648662044528acb085848be011` |
| 3 | `def` | [Dright](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NumericCertNamespaced.lean/declarations/dright.md) | 58 | `declaration-track:5aea91cbb52dd4ce19f8b6b3111d19823d9ec428fc661c8ae0dbfa632f90bf0c` |
| 4 | `def` | [Dleft](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NumericCertNamespaced.lean/declarations/dleft.md) | 61 | `declaration-track:1e43424e2428d36fecb59478969f1f20038ad5b050238abad630c9e1bbc75d3e` |
| 5 | `def` | [Egrid](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NumericCertNamespaced.lean/declarations/egrid.md) | 64 | `declaration-track:30332989411969d318315113dae2d7a223a8c91f305a3d61c547af479460f3ad` |
| 6 | `def` | [D1](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NumericCertNamespaced.lean/declarations/d1.md) | 67 | `declaration-track:02a57424d35ea519f732e2875a23aa65a599387ffefdc732203c61dfa53ff310` |
| 7 | `def` | [E1](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NumericCertNamespaced.lean/declarations/e1.md) | 68 | `declaration-track:b057d0dbae649795968f260e0668740e47bffd6212d49cab7d9b05359ccd8e30` |
| 8 | `lemma` | [T_zero](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NumericCertNamespaced.lean/declarations/t-zero.md) | 70 | `result-track:caae29baa90eec3e342043d4af7ab742d55a198baa08445a17d0f7f58ae82a07` |
| 9 | `lemma` | [T_succ](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NumericCertNamespaced.lean/declarations/t-succ.md) | 71 | `result-track:f3084d117cc80cdff5cb811595106d7f93e400f2dc628490b5312e63a5f2f393` |
| 10 | `lemma` | [U_zero](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NumericCertNamespaced.lean/declarations/u-zero.md) | 72 | `result-track:043f820d340d4065ac65131542a5180458fc8a530957385a0b6bf31396f57458` |
| 11 | `lemma` | [U_succ](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NumericCertNamespaced.lean/declarations/u-succ.md) | 73 | `result-track:8ebbffc161391ba7ff03ba617faf506b3a4293390d298fd69fd2a98903124ac9` |
| 12 | `def` | [EnclOK](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NumericCertNamespaced.lean/declarations/enclok.md) | 80 | `declaration-track:b3918a4d4b8c3410082e0cec33b5c105dd89cd240cc8e683b511fff7f8c7a655` |
| 13 | `structure` | [CertData](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NumericCertNamespaced.lean/declarations/certdata.md) | 88 | `declaration-track:6bff79a5e8cd3fbeedfb8b1309e099b61d8eb252cd54fc04012888cf4d6252d1` |
| 14 | `structure` | [St](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NumericCertNamespaced.lean/declarations/st.md) | 103 | `declaration-track:d06404524eb4e79d352976d399330b59eb2c939392c38cfbe29bc388213edd61` |
| 15 | `def` | [St.init](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NumericCertNamespaced.lean/declarations/st-init.md) | 114 | `declaration-track:df87c7876d98255c0f19d97d3ee16ab1ed83dcec0f10a7a035c90ca12de8c8e1` |
| 16 | `def` | [step](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NumericCertNamespaced.lean/declarations/step.md) | 117 | `declaration-track:3f40fededc1ab907a23d7775872ace765120d3acdf748af2749e0ee713bff18c` |
| 17 | `def` | [run](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NumericCertNamespaced.lean/declarations/run.md) | 129 | `declaration-track:c6eb3515f6472be6b7d370844681f62ed42fa94ff005c74a14b3ebff91e67ca8` |
| 18 | `def` | [check](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NumericCertNamespaced.lean/declarations/check.md) | 132 | `declaration-track:e3aabecee1649aadc3141a1e3d58d8e696474135435f11a0250fa080c6563dab` |
| 19 | `lemma` | [abs_le_max_abs](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NumericCertNamespaced.lean/declarations/abs-le-max-abs.md) | 150 | `result-track:d1ed7e1986bfd9853e6bdfa2ed5d71918377163a36b8de17e8040fd09f200a78` |
| 20 | `structure` | [LoopInv](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NumericCertNamespaced.lean/declarations/loopinv.md) | 156 | `declaration-track:c941619f7e665d52540b4cf6ce723dce0fbe3c9620a3f9e742be5a55a425af10` |
| 21 | `lemma` | [loopInv_init](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NumericCertNamespaced.lean/declarations/loopinv-init.md) | 165 | `result-track:b7b037e2895e3f62039751c75c3768924d99908e34e7b677fb7a3b08910e14dd` |
| 22 | `lemma` | [scaled_Dright](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NumericCertNamespaced.lean/declarations/scaled-dright.md) | 171 | `result-track:85e35532d8a7a64418187e3fba7a6a9855238e9316063f8f8fb3865535429610` |
| 23 | `lemma` | [scaled_Dleft](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NumericCertNamespaced.lean/declarations/scaled-dleft.md) | 175 | `result-track:45da869e9581a66d7c4a6a4f297479be7bd7d471127fd521ced09c8c55f89959` |
| 24 | `lemma` | [scaled_Egrid](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NumericCertNamespaced.lean/declarations/scaled-egrid.md) | 179 | `result-track:f0ac768c41f90fc5c059d16984b105fa48f2c67da64111ae86cc8e61c713cb10` |
| 25 | `lemma` | [loopInv_step](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NumericCertNamespaced.lean/declarations/loopinv-step.md) | 185 | `result-track:1f008d3308f5703fde244069dab6724279da74bc0d5a93eb6d86616b7062fa94` |
| 26 | `lemma` | [step_ok_imp](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NumericCertNamespaced.lean/declarations/step-ok-imp.md) | 236 | `result-track:a3c22ec544885490942adf553a868bfc653dccecf04d7cdbff4691ea7f90c68d` |
| 27 | `lemma` | [run_ok_imp](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NumericCertNamespaced.lean/declarations/run-ok-imp.md) | 239 | `result-track:d171217d8288eb30196b19adc52df45914c121aff63be0464fb66021fa9fb305` |
| 28 | `lemma` | [run_j](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NumericCertNamespaced.lean/declarations/run-j.md) | 244 | `result-track:ab34806debd318c122cb50e17e620c6cbb2db2b44bd380131ff28aa8412e84c9` |
| 29 | `lemma` | [loopInv_run](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NumericCertNamespaced.lean/declarations/loopinv-run.md) | 250 | `result-track:3ccaa55d3ca996d5774656059f9a4ad98251d8835f1ac5bc880fb74763352c35` |
| 30 | `theorem` | [cert_of_check](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NumericCertNamespaced.lean/declarations/cert-of-check.md) | 261 | `result-track:343b7ba3d86122ce4dde70f32c35f7e9b4a83effc7c6e5e3cff911c12771c92c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c93ab1cd03ec1a3fbfbe7d12a8eb86cad37232ce85b2ab501ba5167cd75307c6 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/NumericCert/Variant228d1bb3a5879cfded8a49524ebcb6ba8f6a07c5abd87ea3a27742b8926f1e45.lean","GRWTSK/_verification/specifications/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/NumericCert/Variant228d1bb3a5879cfded8a49524ebcb6ba8f6a07c5abd87ea3a27742b8926f1e45.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
