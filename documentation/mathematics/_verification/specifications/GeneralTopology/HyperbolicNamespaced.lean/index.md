# Verification target: Hyperbolic Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c7aeee2aaf3c61bbb1db59f1c08119012d375839",
  "lexical_observation_count": 70,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/Hyperbolic/Variant0e45cfe12d41633603c1ceda07f0ac70ee3b4b10bebf5fae1f73cdcd7c6e3974.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/HyperbolicNamespaced.lean/index.md) · [Full source](../../../../GeneralTopology/HyperbolicNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c7aeee2aaf3c61bbb1db59f1c08119012d375839`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/Hyperbolic/Variant0e45cfe12d41633603c1ceda07f0ac70ee3b4b10bebf5fae1f73cdcd7c6e3974.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/Hyperbolic/Variant0e45cfe12d41633603c1ceda07f0ac70ee3b4b10bebf5fae1f73cdcd7c6e3974.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `LeanCert.Engine.TaylorModel.Core` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Analytic.Binomial` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Analytic.Uniqueness` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Complex.ExponentialBounds` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [sinhTaylorCoeffs](../../../../GeneralTopology/HyperbolicNamespaced.lean/declarations/sinhtaylorcoeffs.md) | 45 | `declaration-track:5127961e8982622f767dd93fffa5e3096d5b1b1a542bea8893f7b4e7029a8a4e` |
| 2 | `def` | [sinhTaylorPoly](../../../../GeneralTopology/HyperbolicNamespaced.lean/declarations/sinhtaylorpoly.md) | 53 | `declaration-track:6a7ca6da1c0eb730b4387bf5c438e110d55e1a20e441099fc768513a50c2d2c3` |
| 3 | `def` | [sinhRemainderBound](../../../../GeneralTopology/HyperbolicNamespaced.lean/declarations/sinhremainderbound.md) | 58 | `declaration-track:be4228ab44219eff5034c1764a60d837ef6d4df0e91d3aa1c30e03ada7e7b168` |
| 4 | `theorem` | [sinhRemainderBound_nonneg](../../../../GeneralTopology/HyperbolicNamespaced.lean/declarations/sinhremainderbound-nonneg.md) | 64 | `result-track:fbe12a0c3ed2e3d4e9f7d582d6d93c023a1f82999fb2a2f36caae3829676b240` |
| 5 | `def` | [coshTaylorCoeffs](../../../../GeneralTopology/HyperbolicNamespaced.lean/declarations/coshtaylorcoeffs.md) | 79 | `declaration-track:76a589e89a2f2901255c5e933e4a3fe463a11109dcc30953042c5a0043d11734` |
| 6 | `def` | [coshTaylorPoly](../../../../GeneralTopology/HyperbolicNamespaced.lean/declarations/coshtaylorpoly.md) | 87 | `declaration-track:b965be402860c9eff1bbb6703defb17896f6957fae6a3effa9864807e8d6965a` |
| 7 | `def` | [coshRemainderBound](../../../../GeneralTopology/HyperbolicNamespaced.lean/declarations/coshremainderbound.md) | 92 | `declaration-track:be5a346fdb742913f0ba3e2ad973b80c1e21636319cf70f5da4844e561fcf81c` |
| 8 | `theorem` | [coshRemainderBound_nonneg](../../../../GeneralTopology/HyperbolicNamespaced.lean/declarations/coshremainderbound-nonneg.md) | 98 | `result-track:0b003f3ce64db4aaa6bb182532e614fe318cad334fa0785e03a569692ddb9393` |
| 9 | `def` | [atanTaylorCoeffs](../../../../GeneralTopology/HyperbolicNamespaced.lean/declarations/atantaylorcoeffs.md) | 117 | `declaration-track:22c341e8029f91db7ce8096632423dc12f993a785e93877134c612aa761a694f` |
| 10 | `def` | [atanTaylorPoly](../../../../GeneralTopology/HyperbolicNamespaced.lean/declarations/atantaylorpoly.md) | 126 | `declaration-track:3e5e2e8bac1dd392253168fb71ca7ba6dc610e73c6aa0134f06cf73deab95773` |
| 11 | `def` | [atanRemainderBound](../../../../GeneralTopology/HyperbolicNamespaced.lean/declarations/atanremainderbound.md) | 130 | `declaration-track:7f964d5be530801abaac3a5b330ce38e5223e68e806b4c2c3d474b5d77fd8aa6` |
| 12 | `theorem` | [atanRemainderBound_nonneg](../../../../GeneralTopology/HyperbolicNamespaced.lean/declarations/atanremainderbound-nonneg.md) | 137 | `result-track:9396708ce116129659dfb30f2b0d8533a8b2934262643ee2fc485b414a52700b` |
| 13 | `def` | [atanhTaylorCoeffs](../../../../GeneralTopology/HyperbolicNamespaced.lean/declarations/atanhtaylorcoeffs.md) | 156 | `declaration-track:a9ac725c9a65283f7c5848c330ec66c09d39073a288ec264b594a1674634e7d5` |
| 14 | `def` | [atanhTaylorPoly](../../../../GeneralTopology/HyperbolicNamespaced.lean/declarations/atanhtaylorpoly.md) | 165 | `declaration-track:c0f0d48f6c52f5deee45b15399dc50a5b64b669a38c75a2e8eabed869844f750` |
| 15 | `def` | [atanhRemainderBound](../../../../GeneralTopology/HyperbolicNamespaced.lean/declarations/atanhremainderbound.md) | 169 | `declaration-track:efa31bc63797086c2cb3ee10676b844088d2302fa2cb1ef71e38ce0ddf011d35` |
| 16 | `theorem` | [atanhRemainderBound_nonneg](../../../../GeneralTopology/HyperbolicNamespaced.lean/declarations/atanhremainderbound-nonneg.md) | 176 | `result-track:c33930668f592f0b76dd63d28d17fb3e1388304e00eb4859ffe9a530656c4498` |
| 17 | `def` | [asinhTaylorCoeffs](../../../../GeneralTopology/HyperbolicNamespaced.lean/declarations/asinhtaylorcoeffs.md) | 190 | `declaration-track:5aabc6522012578a71e0ecc6e3bac2e207e84d15975ee11df65c07f834ca22b7` |
| 18 | `def` | [asinhTaylorPoly](../../../../GeneralTopology/HyperbolicNamespaced.lean/declarations/asinhtaylorpoly.md) | 199 | `declaration-track:a6170646b8e5edd93033f0446aa14cf0b13a46976118be17a47c3f136f48a223` |
| 19 | `def` | [asinhDerivSup](../../../../GeneralTopology/HyperbolicNamespaced.lean/declarations/asinhderivsup.md) | 203 | `declaration-track:1ff79486bb3f65243b43c4667d3b11801abcb5e2f839bcc41c37dc9974390705` |
| 20 | `def` | [asinhRemainderBound](../../../../GeneralTopology/HyperbolicNamespaced.lean/declarations/asinhremainderbound.md) | 209 | `declaration-track:6d218c3c8acfcf7913a2800daf1d318feefe35aca2674b45b4b2dd023f9aaf76` |
| 21 | `theorem` | [asinhRemainderBound_nonneg](../../../../GeneralTopology/HyperbolicNamespaced.lean/declarations/asinhremainderbound-nonneg.md) | 215 | `result-track:3d58057ba4b0cc5431221a8ca3c1dcf4d331c7a8e45124cf46e88277e19a344e` |
| 22 | `def` | [tmSinh](../../../../GeneralTopology/HyperbolicNamespaced.lean/declarations/tmsinh.md) | 238 | `declaration-track:2f98e2c7fe5e33ee058395728afca9392218f6afea4b8e0f1c3ae05182aa988c` |
| 23 | `def` | [tmCosh](../../../../GeneralTopology/HyperbolicNamespaced.lean/declarations/tmcosh.md) | 246 | `declaration-track:f382b85b624d7ee4a0e6f0ae25b391c02ded297429637daf87c47d6209de7d7c` |
| 24 | `def` | [tmTanh](../../../../GeneralTopology/HyperbolicNamespaced.lean/declarations/tmtanh.md) | 255 | `declaration-track:5a9a7a3709d137f34124941adbba437c48bf20b48d4d4fae4f6e6ddf99167ebb` |
| 25 | `def` | [tmAtan](../../../../GeneralTopology/HyperbolicNamespaced.lean/declarations/tmatan.md) | 271 | `declaration-track:fbf1fc24669034b36e23663a5f738d3853599aea4fba3d372bc942feca9aae4a` |
| 26 | `def` | [tmAtanh](../../../../GeneralTopology/HyperbolicNamespaced.lean/declarations/tmatanh.md) | 280 | `declaration-track:1c0b08c0008a2f482ed50817b65cc49e1775b6e3bea1725221da15e45d1da761` |
| 27 | `def` | [tmAsinh](../../../../GeneralTopology/HyperbolicNamespaced.lean/declarations/tmasinh.md) | 288 | `declaration-track:d35ce5983c9e7ed81d9b59142687fc1a917eca5005fc75085ee9d429c6a69042` |
| 28 | `theorem` | [abs_le_interval_radius'](../../../../GeneralTopology/HyperbolicNamespaced.lean/declarations/abs-le-interval-radius.md) | 298 | `result-track:618233ee2d0b551b7c6b80032b03cf060b713985b5abe99719e7f03a10fdfb78` |
| 29 | `theorem` | [mem_Icc_of_mem_interval](../../../../GeneralTopology/HyperbolicNamespaced.lean/declarations/mem-icc-of-mem-interval.md) | 312 | `result-track:a4903c2fe8c66be6e06b82284e9551a440995212841ab97077820ceedbecf151` |
| 30 | `theorem` | [abs_le_interval_radius](../../../../GeneralTopology/HyperbolicNamespaced.lean/declarations/abs-le-interval-radius-source-edition-2.md) | 318 | `result-track:690fbb3710cebf961c3025775afcc388d402bfda38114eb4eaa460150044c60c` |
| 31 | `theorem` | [iteratedDeriv_sinh_cosh_zero](../../../../GeneralTopology/HyperbolicNamespaced.lean/declarations/iteratedderiv-sinh-cosh-zero.md) | 326 | `result-track:caf4bdd1e6df8e5ece987d35d18e1df4efef4a6c24955b5b863c11ad0b3974d2` |
| 32 | `theorem` | [iteratedDeriv_sinh_zero](../../../../GeneralTopology/HyperbolicNamespaced.lean/declarations/iteratedderiv-sinh-zero.md) | 344 | `result-track:2abb75ade7d2dd9dc6a51839ac90b76001894e1415ed993f43d753584c9074af` |
| 33 | `theorem` | [iteratedDeriv_cosh_zero](../../../../GeneralTopology/HyperbolicNamespaced.lean/declarations/iteratedderiv-cosh-zero.md) | 349 | `result-track:8c20da8f5d80ba81e26e26f727e753e4a3319797cd88d49f8576123bd9237894` |
| 34 | `lemma` | [iteratedDeriv_even_odd_zero](../../../../GeneralTopology/HyperbolicNamespaced.lean/declarations/iteratedderiv-even-odd-zero.md) | 359 | `result-track:cdbd23a506e280ce7fc50eb11f7eed95781a7df568cdd2e09f745556715707ac` |
| 35 | `lemma` | [iteratedDeriv_odd_even_zero](../../../../GeneralTopology/HyperbolicNamespaced.lean/declarations/iteratedderiv-odd-even-zero.md) | 381 | `result-track:3b20dc1e03fefa90e994053e14516699e3f043149f5cafddf48a1ee6148d0301` |
| 36 | `lemma` | [arsinh_continuous_iteratedDeriv](../../../../GeneralTopology/HyperbolicNamespaced.lean/declarations/arsinh-continuous-iteratedderiv.md) | 396 | `result-track:8d251b387ce7f98889545fff071296eda08774f8c7d0042388319c756dadf327` |
| 37 | `lemma` | [deriv_arsinh_eq](../../../../GeneralTopology/HyperbolicNamespaced.lean/declarations/deriv-arsinh-eq.md) | 401 | `result-track:b22962638d30dbb810681b8763b7f99846fdda435bbcf6b066202426607c7cea` |
| 38 | `lemma` | [deriv_arsinh](../../../../GeneralTopology/HyperbolicNamespaced.lean/declarations/deriv-arsinh.md) | 407 | `result-track:22c165db3603bc6359093105bd1fab9fa1997a51c05f67406a884a9c316525df` |
| 39 | `lemma` | [iteratedDeriv_arsinh_succ](../../../../GeneralTopology/HyperbolicNamespaced.lean/declarations/iteratedderiv-arsinh-succ.md) | 411 | `result-track:5e68f191ea0c504d3d5626ea1b13d416a18ac021fe24e43c660bef01dfe38a82` |
| 40 | `def` | [sqSeries](../../../../GeneralTopology/HyperbolicNamespaced.lean/declarations/sqseries.md) | 417 | `declaration-track:43796acf401fb7af2fe5e6600e014cc1f67380974ad76e9c9fabd527384793df` |
| 41 | `lemma` | [sqSeries_apply_const](../../../../GeneralTopology/HyperbolicNamespaced.lean/declarations/sqseries-apply-const.md) | 420 | `result-track:86bc956ce99202caf3f0294c7735f033404e472d91af5dbd4ba4f4a4a2cf27bb` |
| 42 | `lemma` | [iteratedDeriv_one_add_rpow_zero](../../../../GeneralTopology/HyperbolicNamespaced.lean/declarations/iteratedderiv-one-add-rpow-zero.md) | 427 | `result-track:f01b1e7d1da401c73ea6077b71f8c5590694c016564cfccfc81d82ff33ed40b6` |
| 43 | `def` | [twosComposition](../../../../GeneralTopology/HyperbolicNamespaced.lean/declarations/twoscomposition.md) | 451 | `declaration-track:6abf0615935cca0676015787f0bc96f462e64fb53b889f8fadd40aae4eeb7923` |
| 44 | `lemma` | [twosComposition_length](../../../../GeneralTopology/HyperbolicNamespaced.lean/declarations/twoscomposition-length.md) | 456 | `result-track:aa7eb94f4186a89db5ecf53901037c04f9a1ee7897c051c61bd1078b4ab2662a` |
| 45 | `lemma` | [twosComposition_blocksFun](../../../../GeneralTopology/HyperbolicNamespaced.lean/declarations/twoscomposition-blocksfun.md) | 459 | `result-track:c81b002a35079251e28747aac6a3568730b5ec160e095238c9b555e0a02fbc87` |
| 46 | `lemma` | [twosComposition_unique](../../../../GeneralTopology/HyperbolicNamespaced.lean/declarations/twoscomposition-unique.md) | 463 | `result-track:a44c32e151ae8a7764ad0e43e7ca58566e509f12deb6a530309701616b730060` |
| 47 | `lemma` | [blocks_all_two_implies](../../../../GeneralTopology/HyperbolicNamespaced.lean/declarations/blocks-all-two-implies.md) | 481 | `result-track:71d7952df3dda74f3adb432a6650db03a4ce86a34555a4656ff5e37eebbeb7ca` |
| 48 | `lemma` | [odd_composition_has_non_two_block](../../../../GeneralTopology/HyperbolicNamespaced.lean/declarations/odd-composition-has-non-two-block.md) | 488 | `result-track:f5849ed519c97883d271798bded56eabde3d42549ea5fdea0892f6b3bad58abc` |
| 49 | `lemma` | [ofScalars_apply_prod](../../../../GeneralTopology/HyperbolicNamespaced.lean/declarations/ofscalars-apply-prod.md) | 494 | `result-track:868f2aa7491c8e6ec9679e60672bb26a41172807065e649c4810c350cff06877` |
| 50 | `lemma` | [sqSeries_const_one](../../../../GeneralTopology/HyperbolicNamespaced.lean/declarations/sqseries-const-one.md) | 502 | `result-track:6321a21c03ba91f5394ac723026405da6eaf267becbcc9483376228f3790063d` |
| 51 | `lemma` | [sqSeries_applyComposition_one_i](../../../../GeneralTopology/HyperbolicNamespaced.lean/declarations/sqseries-applycomposition-one-i.md) | 507 | `result-track:134f23204d282eea0a99fec6ffec2bd34b1ee74a02d0a55755a4ab77dbec4560` |
| 52 | `lemma` | [prod_sqSeries_applyComposition](../../../../GeneralTopology/HyperbolicNamespaced.lean/declarations/prod-sqseries-applycomposition.md) | 515 | `result-track:00058463f15348faf6f6b015c8b417741ed012ddb545d3bf5a989e6eb5e2de15` |
| 53 | `lemma` | [coeff_comp_sq_ofScalars](../../../../GeneralTopology/HyperbolicNamespaced.lean/declarations/coeff-comp-sq-ofscalars.md) | 538 | `result-track:114e0417395d4d10e041833868496a4d445dcb2f4b990589fc47b617a48f8613` |
| 54 | `lemma` | [sqSeries_hasFPowerSeriesAt_zero](../../../../GeneralTopology/HyperbolicNamespaced.lean/declarations/sqseries-hasfpowerseriesat-zero.md) | 593 | `result-track:dbc748552ed28af60b981dd2bf4d28090147f4b348a9e907f78cad2fe1493d94` |
| 55 | `lemma` | [iteratedDeriv_one_add_sq_rpow_zero](../../../../GeneralTopology/HyperbolicNamespaced.lean/declarations/iteratedderiv-one-add-sq-rpow-zero.md) | 616 | `result-track:d98945dcc55fa2e97dedb45e90c7390b90eceb506422e41b44d7a5b0df5ba10c` |
| 56 | `theorem` | [sinhTaylorCoeffs_eq_iteratedDeriv](../../../../GeneralTopology/HyperbolicNamespaced.lean/declarations/sinhtaylorcoeffs-eq-iteratedderiv.md) | 667 | `result-track:813dd9e82dfc6e6d8382a479723c9aca7852dad62051dc3f9d736ccd07bab968` |
| 57 | `theorem` | [coshTaylorCoeffs_eq_iteratedDeriv](../../../../GeneralTopology/HyperbolicNamespaced.lean/declarations/coshtaylorcoeffs-eq-iteratedderiv.md) | 681 | `result-track:e7368e54802e5e6cdf959517cdd381fdab902836284a2fccb95fea44cfbee719` |
| 58 | `theorem` | [sinhTaylorPoly_aeval_eq](../../../../GeneralTopology/HyperbolicNamespaced.lean/declarations/sinhtaylorpoly-aeval-eq.md) | 696 | `result-track:743c03efa519e24588fe9af2fa392164a51404e96ababc841338dfcfacc01ac2` |
| 59 | `theorem` | [coshTaylorPoly_aeval_eq](../../../../GeneralTopology/HyperbolicNamespaced.lean/declarations/coshtaylorpoly-aeval-eq.md) | 709 | `result-track:3ff2e4721a5aaa4c704db1b3ed3e9bd5b74638c65c6df1fdc5e54865f7f4ad61` |
| 60 | `theorem` | [Real.atanh_hasSum](../../../../GeneralTopology/HyperbolicNamespaced.lean/declarations/real-atanh-hassum.md) | 725 | `result-track:2dddd4c9d6b85832c873e9605801dd42e88bce3a301782e44e44f759191228e3` |
| 61 | `theorem` | [atanhTaylorPoly_aeval_eq](../../../../GeneralTopology/HyperbolicNamespaced.lean/declarations/atanhtaylorpoly-aeval-eq.md) | 741 | `result-track:d1b92c213ee3f8534f7d6166072a375fd8de10b049a8b16df9821b8427cc10a9` |
| 62 | `theorem` | [atanh_series_remainder_bound](../../../../GeneralTopology/HyperbolicNamespaced.lean/declarations/atanh-series-remainder-bound.md) | 758 | `result-track:a4df2064d37bc4cfd8736ffb741e07680d30af9a33c67a45b8ae35048475373a` |
| 63 | `theorem` | [tmAtanh_correct](../../../../GeneralTopology/HyperbolicNamespaced.lean/declarations/tmatanh-correct.md) | 895 | `result-track:069dca6376d9e489bf400f61f36a43e6b8ba8dab7716599f3216fb92aed4ea54` |
| 64 | `theorem` | [tmSinh_correct](../../../../GeneralTopology/HyperbolicNamespaced.lean/declarations/tmsinh-correct.md) | 975 | `result-track:f5cb5b34042897f103ee69fcd63a16bd103efd65fcc73f38f510d388aea56fce` |
| 65 | `theorem` | [tmCosh_correct](../../../../GeneralTopology/HyperbolicNamespaced.lean/declarations/tmcosh-correct.md) | 1056 | `result-track:fe14cae30423aac4d2abb3b42897cfe91a33192c21c7842d1d9807db43c25581` |
| 66 | `theorem` | [iteratedDeriv_arsinh_zero](../../../../GeneralTopology/HyperbolicNamespaced.lean/declarations/iteratedderiv-arsinh-zero.md) | 1147 | `result-track:a8befdc02c81ebab2b6e7ef92a43b7babb1a536a6375d16b1891c2e97101c60b` |
| 67 | `theorem` | [asinhTaylorCoeffs_eq_iteratedDeriv](../../../../GeneralTopology/HyperbolicNamespaced.lean/declarations/asinhtaylorcoeffs-eq-iteratedderiv.md) | 1171 | `result-track:874951d77ffef56995b21bd11658fc17174463fc443b2255ed976f31e1eeff1a` |
| 68 | `theorem` | [asinhTaylorPoly_aeval_eq](../../../../GeneralTopology/HyperbolicNamespaced.lean/declarations/asinhtaylorpoly-aeval-eq.md) | 1205 | `result-track:fcd3d4c4e8593202c398189d2811f810a248901e8630aec231f984fe0b9b0b99` |
| 69 | `theorem` | [arsinh_deriv_bound](../../../../GeneralTopology/HyperbolicNamespaced.lean/declarations/arsinh-deriv-bound.md) | 1218 | `result-track:0ece5f7331f85a0c6f9f3708a69d0a2890f6f4f6be6c2cb3c43d4bc913d41447` |
| 70 | `theorem` | [tmAsinh_correct](../../../../GeneralTopology/HyperbolicNamespaced.lean/declarations/tmasinh-correct.md) | 1236 | `result-track:bfe02ab93df3a84c898547d9bc65148ef4295a718006c1320b8a52b75ab2b916` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=16531f044d4ecca495cd5a1d09656c778f59a080e944847fbecedab2fa4c65e1 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/CommutativeAlgebra/Hyperbolic/Variant0e45cfe12d41633603c1ceda07f0ac70ee3b4b10bebf5fae1f73cdcd7c6e3974.lean","GRWTSK/_verification/specifications/Algebra/CommutativeAlgebra/Hyperbolic/Variant0e45cfe12d41633603c1ceda07f0ac70ee3b4b10bebf5fae1f73cdcd7c6e3974.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
