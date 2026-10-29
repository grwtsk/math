# Verification target: Trig Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4e85e53361afa174b39a1a749e9fa643b7cb6016",
  "lexical_observation_count": 35,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/Trig/Variantf190716d261dd2604b5494fa449571b91e7d1b938550ccfcf3e87a8cb53fb829.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../CommutativeAlgebra/TrigNamespaced.lean/index.md) · [Full source](../../../../CommutativeAlgebra/TrigNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4e85e53361afa174b39a1a749e9fa643b7cb6016`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/Trig/Variantf190716d261dd2604b5494fa449571b91e7d1b938550ccfcf3e87a8cb53fb829.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/Trig/Variantf190716d261dd2604b5494fa449571b91e7d1b938550ccfcf3e87a8cb53fb829.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `LeanCert.Engine.TaylorModel.Core` — import line 11; external provider; requires a separately pinned dependency.
- `LeanCert.Contrib.Sinc` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Complex.ExponentialBounds` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Trigonometric.Series` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.IteratedDeriv.Defs` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Analytic.Uniqueness` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [sinTaylorCoeffs](../../../../CommutativeAlgebra/TrigNamespaced.lean/declarations/sintaylorcoeffs.md) | 47 | `declaration-track:806ddaef80daad7b5c81355b81a36a3dca419634a117f59d6b3c39e1c600be9f` |
| 2 | `def` | [sinTaylorPoly](../../../../CommutativeAlgebra/TrigNamespaced.lean/declarations/sintaylorpoly.md) | 55 | `declaration-track:fd883cb087af261a9ce6f757c796fb2bf8575a131f245106e1dab62eace8fb07` |
| 3 | `def` | [sinRemainderBound](../../../../CommutativeAlgebra/TrigNamespaced.lean/declarations/sinremainderbound.md) | 59 | `declaration-track:d6c1562769f95eb49ffb479d1b54db398b1bf8e31e8995684d8213c15e7f069a` |
| 4 | `theorem` | [sinRemainderBound_nonneg](../../../../CommutativeAlgebra/TrigNamespaced.lean/declarations/sinremainderbound-nonneg.md) | 64 | `result-track:db86088c5ae552838cfd7a732db55ca869ac4f0d6083787e60ce946c3c0b6b60` |
| 5 | `def` | [cosTaylorCoeffs](../../../../CommutativeAlgebra/TrigNamespaced.lean/declarations/costaylorcoeffs.md) | 76 | `declaration-track:70b4f4b586a43c9fd87b9b860390bc395a1845c94edc7705b85904ace685b04c` |
| 6 | `def` | [cosTaylorPoly](../../../../CommutativeAlgebra/TrigNamespaced.lean/declarations/costaylorpoly.md) | 84 | `declaration-track:fd99b33bc3ed726ef6da77245103b9ee01d774f37536b7ae49b8539a81407228` |
| 7 | `def` | [cosRemainderBound](../../../../CommutativeAlgebra/TrigNamespaced.lean/declarations/cosremainderbound.md) | 88 | `declaration-track:2baf570ebb43a88ba5b1d9d40f6c330e47a8186c7080bb68c22452f73fd12760` |
| 8 | `theorem` | [cosRemainderBound_nonneg](../../../../CommutativeAlgebra/TrigNamespaced.lean/declarations/cosremainderbound-nonneg.md) | 93 | `result-track:66761003d5c477b3d252a25c5f43b2f1124b867419c3dad5d80ee9edd6930181` |
| 9 | `def` | [sincTaylorCoeffs](../../../../CommutativeAlgebra/TrigNamespaced.lean/declarations/sinctaylorcoeffs.md) | 112 | `declaration-track:683e3204bab576310443119e158908263f6b714ffbd1391acb045124f07b6322` |
| 10 | `def` | [sincTaylorPoly](../../../../CommutativeAlgebra/TrigNamespaced.lean/declarations/sinctaylorpoly.md) | 121 | `declaration-track:3660af53643259c89ea3d7e6302b35fd7ef52c212ff206fff7094d52ae73f9c6` |
| 11 | `def` | [sincRemainderBound](../../../../CommutativeAlgebra/TrigNamespaced.lean/declarations/sincremainderbound.md) | 127 | `declaration-track:708f9ba86b27136fe57e600ff178ea04a92513b06255dc8bc6da883ee7e8b915` |
| 12 | `theorem` | [sincRemainderBound_nonneg](../../../../CommutativeAlgebra/TrigNamespaced.lean/declarations/sincremainderbound-nonneg.md) | 133 | `result-track:cdc20705693a60748adf9febc3af6f22a172d483f3827ba432c76dcfc13602fc` |
| 13 | `def` | [tmSin](../../../../CommutativeAlgebra/TrigNamespaced.lean/declarations/tmsin.md) | 146 | `declaration-track:81383054e8cc367f809dd052034399656e1f69c1f7e76cff30f7dfff4e4e259a` |
| 14 | `def` | [tmCos](../../../../CommutativeAlgebra/TrigNamespaced.lean/declarations/tmcos.md) | 155 | `declaration-track:9abf47045f53d79b850cd058447346ee42fc027360c8e09d2629d276fd680f78` |
| 15 | `def` | [tmSinc](../../../../CommutativeAlgebra/TrigNamespaced.lean/declarations/tmsinc.md) | 164 | `declaration-track:a92522f312f75c435c206b481912c00ee886be6af0ca15e8c6f125b39d1507ae` |
| 16 | `theorem` | [iteratedDeriv_sin_cos_zero](../../../../CommutativeAlgebra/TrigNamespaced.lean/declarations/iteratedderiv-sin-cos-zero.md) | 174 | `result-track:8edad12d4b10dea0f4c9eef976d6665bb05b9a57fee948eb6921cd01bcee6b72` |
| 17 | `theorem` | [iteratedDeriv_sin_zero](../../../../CommutativeAlgebra/TrigNamespaced.lean/declarations/iteratedderiv-sin-zero.md) | 200 | `result-track:024a80c8ee527b6e59ca10bc4830df4f8198ef3953ca5a3695869b71e64c6fc9` |
| 18 | `theorem` | [iteratedDeriv_cos_zero](../../../../CommutativeAlgebra/TrigNamespaced.lean/declarations/iteratedderiv-cos-zero.md) | 209 | `result-track:c7332771f7e7cac917442fa1a55158fbacab8178538f2ff60819fe53bb93f96c` |
| 19 | `theorem` | [iteratedDeriv_sin_zero_even](../../../../CommutativeAlgebra/TrigNamespaced.lean/declarations/iteratedderiv-sin-zero-even.md) | 218 | `result-track:a8bcad8d08f2a4b6484d95d8ca68fbb6b00803f1b647bd2d7fbf9cf431779ae1` |
| 20 | `theorem` | [iteratedDeriv_sin_zero_odd](../../../../CommutativeAlgebra/TrigNamespaced.lean/declarations/iteratedderiv-sin-zero-odd.md) | 225 | `result-track:2ad772a647a55b038524a9dcc245caf32616b41494232060b5d6058b92999d1f` |
| 21 | `theorem` | [sinTaylorCoeffs_eq_iteratedDeriv](../../../../CommutativeAlgebra/TrigNamespaced.lean/declarations/sintaylorcoeffs-eq-iteratedderiv.md) | 238 | `result-track:b6140799e57f1ecb8bbbaf5ab6413407c677558550c52acff1f62521d434c735` |
| 22 | `theorem` | [iteratedDeriv_cos_zero_even](../../../../CommutativeAlgebra/TrigNamespaced.lean/declarations/iteratedderiv-cos-zero-even.md) | 252 | `result-track:8b058ea066e2dd47a7303919ee4f2728a6d230116f027d9210725ca25eba7112` |
| 23 | `theorem` | [iteratedDeriv_cos_zero_odd](../../../../CommutativeAlgebra/TrigNamespaced.lean/declarations/iteratedderiv-cos-zero-odd.md) | 265 | `result-track:74eab2efec5c081a531324cec32682e3836a3bb8a251f8fb65a7fd8bbed9b82b` |
| 24 | `theorem` | [cosTaylorCoeffs_eq_iteratedDeriv](../../../../CommutativeAlgebra/TrigNamespaced.lean/declarations/costaylorcoeffs-eq-iteratedderiv.md) | 272 | `result-track:69446eb35414a25fc630694e7a32a24b3a8a242299e0dbcb3b5b4c17ab525d25` |
| 25 | `theorem` | [sinTaylorPoly_aeval_eq](../../../../CommutativeAlgebra/TrigNamespaced.lean/declarations/sintaylorpoly-aeval-eq.md) | 289 | `result-track:8862239b2ae749bcdf82717dccf07ee075c24493277f14914d6395ba38a2c2ad` |
| 26 | `theorem` | [cosTaylorPoly_aeval_eq](../../../../CommutativeAlgebra/TrigNamespaced.lean/declarations/costaylorpoly-aeval-eq.md) | 303 | `result-track:8e1b9f69ca5dfa7c0d0929f8b037e67048720bda7f44550b88c941d8267fddff` |
| 27 | `theorem` | [abs_le_interval_radius](../../../../CommutativeAlgebra/TrigNamespaced.lean/declarations/abs-le-interval-radius.md) | 318 | `result-track:5618edec712f38bb86db6e23b524e478ec993a31a1ed9226ebc0928c72d73afc` |
| 28 | `theorem` | [mem_Icc_of_mem_interval](../../../../CommutativeAlgebra/TrigNamespaced.lean/declarations/mem-icc-of-mem-interval.md) | 332 | `result-track:e5b3fd5a1c642d5de31763561d3b830134edb605db3e2195a0e51a70c10f3301` |
| 29 | `theorem` | [tmSin_correct](../../../../CommutativeAlgebra/TrigNamespaced.lean/declarations/tmsin-correct.md) | 339 | `result-track:47ea131755ea9bf95582054ec1fa15c14154a0b23d4896c9e02f1c1b75923453` |
| 30 | `theorem` | [tmCos_correct](../../../../CommutativeAlgebra/TrigNamespaced.lean/declarations/tmcos-correct.md) | 399 | `result-track:2b542ea462ebfa4b50c65d0da5beee8a5d440faa063596820ff5442b0b780bf5` |
| 31 | `theorem` | [contDiff_sinc](../../../../CommutativeAlgebra/TrigNamespaced.lean/declarations/contdiff-sinc.md) | 469 | `result-track:22fc41b3b1f0df276441dd2089ea8b8ee06a9ddde84ec3b458b7a56dbee27a4e` |
| 32 | `theorem` | [iteratedDeriv_sinc_zero](../../../../CommutativeAlgebra/TrigNamespaced.lean/declarations/iteratedderiv-sinc-zero.md) | 479 | `result-track:7f3c269657a1588f27cc1af0c4c5b7ef9c8d7e558334e9f6d5d625c2297e17b9` |
| 33 | `theorem` | [sincTaylorCoeffs_eq_iteratedDeriv](../../../../CommutativeAlgebra/TrigNamespaced.lean/declarations/sinctaylorcoeffs-eq-iteratedderiv.md) | 601 | `result-track:af87c78967f3e90931c1c08f49d00053cd5b55f2291c8e795135dd6d6de589b6` |
| 34 | `theorem` | [sincTaylorPoly_aeval_eq](../../../../CommutativeAlgebra/TrigNamespaced.lean/declarations/sinctaylorpoly-aeval-eq.md) | 631 | `result-track:6b43e44e90086dc1b06af99dabc9cea51d449bbd345bfd117be4a371739f43a1` |
| 35 | `theorem` | [tmSinc_correct](../../../../CommutativeAlgebra/TrigNamespaced.lean/declarations/tmsinc-correct.md) | 645 | `result-track:3bf7d7365487e5af076dff64b3491c7634fba667bbf052d67f58b445c3c2499e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=917fcbcfac4a8ebef61019da0637b38bb75c9679eb7ee763c171726065cf5a44 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/CommutativeAlgebra/Trig/Variantf190716d261dd2604b5494fa449571b91e7d1b938550ccfcf3e87a8cb53fb829.lean","GRWTSK/_verification/specifications/Algebra/CommutativeAlgebra/Trig/Variantf190716d261dd2604b5494fa449571b91e7d1b938550ccfcf3e87a8cb53fb829.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
