# Verification target: GRWTSK.Analysis.Complex.RationalRoundedArithmetic

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "04e70686faca9ef625b310d3abce194153c705ab",
  "lexical_observation_count": 34,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/Complex/RationalRoundedArithmetic.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../FunctionsOfAComplexVariable/RationalRoundedArithmetic.lean/index.md) · [Full source](../../../../FunctionsOfAComplexVariable/RationalRoundedArithmetic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `04e70686faca9ef625b310d3abce194153c705ab`.

Source path: `GRWTSK/Analysis/Complex/RationalRoundedArithmetic.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/Complex/RationalRoundedArithmetic.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Analysis.Complex.DyadicRoundedSquaring`](../../../../FunctionsOfAComplexVariable/DyadicRoundedSquaring.lean/index.md) — import line 4; pinned internal source present.
- `Mathlib.Data.Rat.Floor` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [QComplex](../../../../FunctionsOfAComplexVariable/RationalRoundedArithmetic.lean/declarations/qcomplex.md) | 24 | `declaration-track:5598ffddbcd0d6888ccd48ddeb98de96553f054d4afc3a09054224cf867a8ac2` |
| 2 | `def` | [zero](../../../../FunctionsOfAComplexVariable/RationalRoundedArithmetic.lean/declarations/zero.md) | 31 | `declaration-track:9d3218a74635000c9aa53b60bf42e215181e1090761b09e65d9de79183a8d6ad` |
| 3 | `def` | [one](../../../../FunctionsOfAComplexVariable/RationalRoundedArithmetic.lean/declarations/one.md) | 32 | `declaration-track:c5d7e5f67e36ddd792ed194f40f23386df04033f603a4a06eefe1530e23540e0` |
| 4 | `def` | [add](../../../../FunctionsOfAComplexVariable/RationalRoundedArithmetic.lean/declarations/add.md) | 33 | `declaration-track:2085f2e6bf66a759841fb7a85c951c09702e1d6de7a7e7563dbce4b9a7533157` |
| 5 | `def` | [mul](../../../../FunctionsOfAComplexVariable/RationalRoundedArithmetic.lean/declarations/mul.md) | 34 | `declaration-track:ac03092460e63cde66035e94a50c5e51031a27916048963131873efeea65469f` |
| 6 | `def` | [smul](../../../../FunctionsOfAComplexVariable/RationalRoundedArithmetic.lean/declarations/smul.md) | 36 | `declaration-track:830e10cba8086b03ddf789795bb012b80f2fe00262278d020314150027fca7e9` |
| 7 | `def` | [pow](../../../../FunctionsOfAComplexVariable/RationalRoundedArithmetic.lean/declarations/pow.md) | 37 | `declaration-track:acbdebd6853b41b660876c6a777e9dc01338ce4a97a93f5c655b37c313aeea0e` |
| 8 | `def` | [rect](../../../../FunctionsOfAComplexVariable/RationalRoundedArithmetic.lean/declarations/rect.md) | 41 | `declaration-track:1f5839d30224a25346108e021b459929c7ae22494dcfab9a59336979b0b4d1ba` |
| 9 | `def` | [polynomial](../../../../FunctionsOfAComplexVariable/RationalRoundedArithmetic.lean/declarations/polynomial.md) | 44 | `declaration-track:878179ccc7a8db2da9327f8925dfaf656c8c1d0ffe83d9ad3e77bf369bed935d` |
| 10 | `def` | [embed](../../../../FunctionsOfAComplexVariable/RationalRoundedArithmetic.lean/declarations/embed.md) | 48 | `declaration-track:1f031d5baf4080654a91476cc02960f11665a96af5bb91ad32aab4dbe8499c57` |
| 11 | `theorem` | [embed_zero](../../../../FunctionsOfAComplexVariable/RationalRoundedArithmetic.lean/declarations/embed-zero.md) | 50 | `result-track:fcef31db29fac98d3df6a747988d7023af749afa4f2443165eba90112e28f221` |
| 12 | `theorem` | [embed_one](../../../../FunctionsOfAComplexVariable/RationalRoundedArithmetic.lean/declarations/embed-one.md) | 51 | `result-track:d2b51792e7eaa1cc33cd91371c631af08a9dc8adb8591ac4d5b5531f86f18628` |
| 13 | `theorem` | [embed_add](../../../../FunctionsOfAComplexVariable/RationalRoundedArithmetic.lean/declarations/embed-add.md) | 53 | `result-track:b95dee8ccb0be1f4ac93e1c81667b4d305cc9648c31752065db0a6936a811423` |
| 14 | `theorem` | [embed_mul](../../../../FunctionsOfAComplexVariable/RationalRoundedArithmetic.lean/declarations/embed-mul.md) | 56 | `result-track:bf14830aa39f310d3d9b7e9d2f412685b7afbbccd0a851ec2a6011f55d38932c` |
| 15 | `theorem` | [embed_smul](../../../../FunctionsOfAComplexVariable/RationalRoundedArithmetic.lean/declarations/embed-smul.md) | 59 | `result-track:e15dbc019117a7c8517e33e5b3bde76da115e170b5ac9fe1dc60a077805e82f1` |
| 16 | `theorem` | [embed_pow](../../../../FunctionsOfAComplexVariable/RationalRoundedArithmetic.lean/declarations/embed-pow.md) | 63 | `result-track:bbc555a80f3188dd623a29687913b889edd9cfb039dba1bf8ba44f621d88f3ca` |
| 17 | `theorem` | [cast_rect](../../../../FunctionsOfAComplexVariable/RationalRoundedArithmetic.lean/declarations/cast-rect.md) | 68 | `result-track:c5cd89c1f9750896eaea6e5766a9c033107548455ed1d4c6dd303b29e635296c` |
| 18 | `theorem` | [embed_polynomial](../../../../FunctionsOfAComplexVariable/RationalRoundedArithmetic.lean/declarations/embed-polynomial.md) | 71 | `result-track:16f06e3761a973304284b0c4acac5884c4b23390a36604cb68e1c5567ecd17c0` |
| 19 | `def` | [scaleQ](../../../../FunctionsOfAComplexVariable/RationalRoundedArithmetic.lean/declarations/scaleq.md) | 82 | `declaration-track:69b8d386b6837b33f881fab56fb4b7f197d714ea560a7fe3f5c0683d7268b05e` |
| 20 | `def` | [downQ](../../../../FunctionsOfAComplexVariable/RationalRoundedArithmetic.lean/declarations/downq.md) | 84 | `declaration-track:28e41a1f8a85befc8c25de9ea65503036a987512dbbca79c5d534c28ca12a271` |
| 21 | `def` | [upQ](../../../../FunctionsOfAComplexVariable/RationalRoundedArithmetic.lean/declarations/upq.md) | 85 | `declaration-track:a01f88ef32081ff534996c03d2fc3f677d987eed9a321d39b4e4df426a183ace` |
| 22 | `def` | [roundoffQ](../../../../FunctionsOfAComplexVariable/RationalRoundedArithmetic.lean/declarations/roundoffq.md) | 86 | `declaration-track:d46c2afdd1dd60522fc88dcc241d7671fefdc99fea13fe9b6f5022904bc1ca3d` |
| 23 | `def` | [quantizeQ](../../../../FunctionsOfAComplexVariable/RationalRoundedArithmetic.lean/declarations/quantizeq.md) | 88 | `declaration-track:e5a436ca9fc35f505f10fa55d6b92c590266c7cb5301802468cadf5b4e4b8771` |
| 24 | `structure` | [State](../../../../FunctionsOfAComplexVariable/RationalRoundedArithmetic.lean/declarations/state.md) | 91 | `declaration-track:17bec2d4f214eb81caff87ad9fc77711441e40258cac5ca91ac87ea83e08c2e9` |
| 25 | `def` | [initialState](../../../../FunctionsOfAComplexVariable/RationalRoundedArithmetic.lean/declarations/initialstate.md) | 97 | `declaration-track:63ea48add93cbb1a53a3e05c5b66a6194991762fc7230c57b1385aeeafc08c86` |
| 26 | `def` | [step](../../../../FunctionsOfAComplexVariable/RationalRoundedArithmetic.lean/declarations/step.md) | 101 | `declaration-track:5065e6a931e95515c1e95a6effaeb22b4428b4267c2a10af3d1370e6abb1452e` |
| 27 | `def` | [run](../../../../FunctionsOfAComplexVariable/RationalRoundedArithmetic.lean/declarations/run.md) | 106 | `declaration-track:92f0317676fc3c10061419877e6084222d2c515301f28047200844859ed1e90d` |
| 28 | `theorem` | [cast_scaleQ](../../../../FunctionsOfAComplexVariable/RationalRoundedArithmetic.lean/declarations/cast-scaleq.md) | 110 | `result-track:fe012188ec01293e1d2d6548e9b3140f32d780541a72700d86bc7b246a05a447` |
| 29 | `theorem` | [cast_downQ](../../../../FunctionsOfAComplexVariable/RationalRoundedArithmetic.lean/declarations/cast-downq.md) | 115 | `result-track:454278817d3fc3aa0f04ca2f28be4799ae6543f2dc07f8f8095956c77bf159cf` |
| 30 | `theorem` | [cast_upQ](../../../../FunctionsOfAComplexVariable/RationalRoundedArithmetic.lean/declarations/cast-upq.md) | 121 | `result-track:1d905fbfee946bbd4af547337023738cb46fec45125c9528881e9f5613221547` |
| 31 | `theorem` | [cast_roundoffQ](../../../../FunctionsOfAComplexVariable/RationalRoundedArithmetic.lean/declarations/cast-roundoffq.md) | 125 | `result-track:4b615ba2fdd91ed30eeb03ef8280934aad6e9e715ecf41f84eefb610ca05df8b` |
| 32 | `theorem` | [embed_quantizeQ](../../../../FunctionsOfAComplexVariable/RationalRoundedArithmetic.lean/declarations/embed-quantizeq.md) | 129 | `result-track:83828b5a1640d143773900715d8662255fdd877aa6ba3ab5afad62b4ee76a0ba` |
| 33 | `theorem` | [run_refines](../../../../FunctionsOfAComplexVariable/RationalRoundedArithmetic.lean/declarations/run-refines.md) | 135 | `result-track:c91a470f600fa64c58b6af6fd9a86878085b75ef6fd68b36901d82944c1deafb` |
| 34 | `theorem` | [run_sound](../../../../FunctionsOfAComplexVariable/RationalRoundedArithmetic.lean/declarations/run-sound.md) | 151 | `result-track:eb227ec114abc168d876b122ffa0777934b4223fd81d5833063dd5a37c0f8c26` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=28e6c41150058af41c8a8b2ca8c02d0fc302df8e763023852428229665c48c36 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/Complex/RationalRoundedArithmetic.lean","GRWTSK/_verification/specifications/Analysis/ComplexAnalysis/RationalRoundedArithmetic.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
