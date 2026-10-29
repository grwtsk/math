# Verification target: Partrec Sum Inl Aligned

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e5b32a9fb28e5e6073023a67849921041ec4df68",
  "lexical_observation_count": 113,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/Computability/Partrec/Variant9cbd88ad956142274ab7ece75bffc8cada365c291dd2dc788ea3f46abafc69d1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecSumInlAligned.lean/index.md) · [Full source](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecSumInlAligned.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e5b32a9fb28e5e6073023a67849921041ec4df68`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/Computability/Partrec/Variant9cbd88ad956142274ab7ece75bffc8cada365c291dd2dc788ea3f46abafc69d1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/Computability/Partrec/Variant9cbd88ad956142274ab7ece75bffc8cada365c291dd2dc788ea3f46abafc69d1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Computability.Primrec` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.PSub` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.PFun` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [lbp](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecSumInlAligned.lean/declarations/lbp.md) | 36 | `declaration-track:59f21e64d85aa1ad612898ea6a8bcca4fb6a9dd14c6d8e68c071d7586f77af4d` |
| 2 | `def` | [wf_lbp](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecSumInlAligned.lean/declarations/wf-lbp.md) | 41 | `declaration-track:04f7a1e46c1de16e6e08d35bf8ac68dbcac727492a49c6a501dcbaea8a6ba7d1` |
| 3 | `def` | [rfindX](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecSumInlAligned.lean/declarations/rfindx.md) | 50 | `declaration-track:1727753e7964b2581716aa4e8261c159a31cd03e14942918ff242cd42ffdefd1` |
| 4 | `def` | [rfind](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecSumInlAligned.lean/declarations/rfind-source-edition-2.md) | 75 | `declaration-track:ee54a69337fc2c1b25b23486ee29c33e12ba285123d435d2749375c3fc188b00` |
| 5 | `theorem` | [rfind_spec](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecSumInlAligned.lean/declarations/rfind-spec.md) | 79 | `result-track:5f6c382cc6607bde8e56edd3262d0ed4f1dcd9cbca718a193bace23e34158990` |
| 6 | `theorem` | [rfind_min](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecSumInlAligned.lean/declarations/rfind-min-source-edition-2.md) | 83 | `result-track:f1e5a6b0b2e7acb9ff058fc7bdecf3a6eb99c0df0359a260cea476b60bdeeab1` |
| 7 | `theorem` | [rfind_dom](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecSumInlAligned.lean/declarations/rfind-dom-source-edition-2.md) | 88 | `result-track:b361573e8bb47cc711e18d9e36b7ffeb6690207d1946fac9bcc7f18178becf2f` |
| 8 | `theorem` | [rfind_dom'](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecSumInlAligned.lean/declarations/rfind-dom.md) | 93 | `result-track:0f4528263ec942567f54d396bf161f839047f271a2453ba2a8495de78d489c1f` |
| 9 | `theorem` | [mem_rfind](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecSumInlAligned.lean/declarations/mem-rfind.md) | 102 | `result-track:6248297551e9b19d013bfa129a46474b78ca078f90b6b197b9d60475d898081f` |
| 10 | `theorem` | [rfind_min'](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecSumInlAligned.lean/declarations/rfind-min.md) | 112 | `result-track:449347f94f4fb34bb0f19835498ef097edb5917ae54d051fc1d11562a95fd018` |
| 11 | `theorem` | [rfind_zero_none](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecSumInlAligned.lean/declarations/rfind-zero-none.md) | 118 | `result-track:64755209aa44c59e11f627da12ed3f2c471bc1bf558985d8a39b5329abc07e4b` |
| 12 | `def` | [rfindOpt](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecSumInlAligned.lean/declarations/rfindopt-source-edition-2.md) | 124 | `declaration-track:a34d3761cdf0318e20c5df92a801963c1241a82a60534ae4cb699f5651fa6baa` |
| 13 | `theorem` | [rfindOpt_spec](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecSumInlAligned.lean/declarations/rfindopt-spec.md) | 128 | `result-track:2ebfe80025be41a14e2fd765720bd0be960d02d71033ebac3839c20cdd6ade99` |
| 14 | `theorem` | [rfindOpt_dom](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecSumInlAligned.lean/declarations/rfindopt-dom.md) | 133 | `result-track:cedf9f025484acde86ac2d8b473e94c3de5326119ed5caf0d6dae71619bccc19` |
| 15 | `theorem` | [rfindOpt_mono](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecSumInlAligned.lean/declarations/rfindopt-mono.md) | 146 | `result-track:13f24680d21ad20f559a8d41d7cb0033a982e248f55de307c3b6503b818b6679` |
| 16 | `inductive` | [Partrec](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecSumInlAligned.lean/declarations/partrec.md) | 155 | `declaration-track:09a8d90eb5fc227eb779795adc4d5c3b4c3f3d3773f48b4d7b6524fa81e94fec` |
| 17 | `theorem` | [of_eq](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecSumInlAligned.lean/declarations/of-eq-source-edition-3.md) | 169 | `result-track:9b1224a3253979cc67c21127d5f57c3161231d691bbf98af5023dfba1dadc8de` |
| 18 | `theorem` | [of_eq_tot](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecSumInlAligned.lean/declarations/of-eq-tot-source-edition-2.md) | 173 | `result-track:ac7e576901156438a744d25f4e61f9f023e6a57cbed3c085ffdd2d3a9fc01499` |
| 19 | `theorem` | [of_primrec](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecSumInlAligned.lean/declarations/of-primrec.md) | 177 | `result-track:44dff81cad3555423617f3845666fad212aa67de9b97b66748be8ee234ea645a` |
| 20 | `theorem` | [some](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecSumInlAligned.lean/declarations/some-source-edition-2.md) | 199 | `result-track:c9613d1c4315dc9cdc9641ba29ee865d96ec63d5f514ef3249fbc4501e7347eb` |
| 21 | `theorem` | [none](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecSumInlAligned.lean/declarations/none.md) | 203 | `result-track:538da152713763ec2d359b0757a278c28d60cf17fb694830835a7765af77fd7a` |
| 22 | `theorem` | [prec'](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecSumInlAligned.lean/declarations/prec.md) | 208 | `result-track:93fb72aaaf6410f49cd03b5cc81be29f23d2095dccd4afdc8e26289c9ae79ea9` |
| 23 | `theorem` | [ppred](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecSumInlAligned.lean/declarations/ppred.md) | 215 | `result-track:6e3967cba3b618a2c2f28d673b05da4b069d96927b43e75a84dacd39ce97ffaf` |
| 24 | `def` | [Partrec](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecSumInlAligned.lean/declarations/partrec-source-edition-3.md) | 236 | `declaration-track:a9753dfa7bb053c48c091a2e314ff650de2a180bf1b2180d2b2451f32ba29806` |
| 25 | `def` | [Partrec₂](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecSumInlAligned.lean/declarations/partrec-source-edition-2.md) | 240 | `declaration-track:299d8f0773ee1661df51c1946e5ab510dbc26c41fe2217e9a751a7bc65c2d44b` |
| 26 | `def` | [Computable](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecSumInlAligned.lean/declarations/computable.md) | 244 | `declaration-track:668e2bfc1ccb302c5cc8867bcf2afe7e3bd63d57037989ffcb32d13b089a9838` |
| 27 | `def` | [Computable₂](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecSumInlAligned.lean/declarations/computable-source-edition-2.md) | 248 | `declaration-track:733d1f77421f9cfaf734831d61411a2bbed3ba59990ef2573344759773d6e9d6` |
| 28 | `theorem` | [Primrec.to_comp](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecSumInlAligned.lean/declarations/primrec-to-comp.md) | 252 | `result-track:31857f53728f7ef86109ccd47cc0095dbc9cb6ad7662a5c231bc2144676036b4` |
| 29 | `theorem` | [Primrec₂.to_comp](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecSumInlAligned.lean/declarations/primrec-to-comp-source-edition-2.md) | 258 | `result-track:cef2c41051df1487d9410f3872cb0c6eba320230025de411bc8c347259336d93` |
| 30 | `theorem` | [Computable.partrec](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecSumInlAligned.lean/declarations/computable-partrec-source-edition-2.md) | 263 | `result-track:e00dc2b98625be5e40c67a0730f469f732679b377d883a278a53ca2aff934886` |
| 31 | `theorem` | [Computable₂.partrec₂](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecSumInlAligned.lean/declarations/computable-partrec.md) | 268 | `result-track:0506624d24b3a2c114e0ac178c8a74ccfd210df114a21dbd2b9eb84006b6205f` |
| 32 | `theorem` | [of_eq](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecSumInlAligned.lean/declarations/of-eq.md) | 279 | `result-track:79a03fef99b8bb953b02e63664aa0e9e1cab1e46d6c07ab2f13d04fbfaf9dd0f` |
| 33 | `theorem` | [const](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecSumInlAligned.lean/declarations/const.md) | 283 | `result-track:5c317309390c6d3de6fe8859bbfc6b667c30e9645747b965f141e0d25dfca3ea` |
| 34 | `theorem` | [ofOption](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecSumInlAligned.lean/declarations/ofoption.md) | 287 | `result-track:e54ba9449b06a2d36bcc191fa115cb526b53e91a89a65307b9cd8788dcb585b5` |
| 35 | `theorem` | [to₂](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecSumInlAligned.lean/declarations/to.md) | 293 | `result-track:b47bb99963342aed058e39965d744694028ec91f6d3c915ebfdf1000276441a4` |
| 36 | `theorem` | [id](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecSumInlAligned.lean/declarations/id.md) | 297 | `result-track:9fda61762869462fd6057569cdeadb9564a59f178e0c473c2accddb8f69a0ea8` |
| 37 | `theorem` | [fst](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecSumInlAligned.lean/declarations/fst.md) | 301 | `result-track:6f8f9a16c1054ae650b0e7982655c310ed391204421394db6b3885b97dae174a` |
| 38 | `theorem` | [snd](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecSumInlAligned.lean/declarations/snd.md) | 305 | `result-track:705c9008c5215e7d2d4a1b2b0ca26d5ebee6c008ffcdf4df9c9e47f6cef044b0` |
| 39 | `theorem` | [pair](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecSumInlAligned.lean/declarations/pair.md) | 309 | `result-track:6c998a414e0dba8e71f062db5b8e7c1fab95dfd801f034116af81e73425a6efe` |
| 40 | `theorem` | [unpair](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecSumInlAligned.lean/declarations/unpair.md) | 314 | `result-track:bd7e47b615feda675d96e3dd9badd38215d2edd87c2f001587e9680a5a0ed6bb` |
| 41 | `theorem` | [succ](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecSumInlAligned.lean/declarations/succ.md) | 318 | `result-track:872c1ec160ed517d950ca7cdc8c422838b7d9bacc6c50a88a5582486832de1df` |
| 42 | `theorem` | [pred](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecSumInlAligned.lean/declarations/pred.md) | 322 | `result-track:72b5360b7b2d474603f566f8dc0791c1ccedd626a23f97c36340e18f2294ff57` |
| 43 | `theorem` | [nat_bodd](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecSumInlAligned.lean/declarations/nat-bodd.md) | 326 | `result-track:2e2db9341a93ec4cf46eee26f69375074ce48584848051b7a04f9d3d4b34daac` |
| 44 | `theorem` | [nat_div2](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecSumInlAligned.lean/declarations/nat-div2.md) | 330 | `result-track:c37a6be0895a9b6f2ec459d36bda488841a0ee143d3cfc52fcc243fa3cd6acff` |
| 45 | `theorem` | [sum_inl](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecSumInlAligned.lean/declarations/sum-inl.md) | 334 | `result-track:cea3fd062f2d436dcd9df1f2bb78de1f8ab59aaa80a3522d5584e59a324d8fb6` |
| 46 | `theorem` | [sum_inr](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecSumInlAligned.lean/declarations/sum-inr.md) | 338 | `result-track:0bb9f862126c2c395df5cb82f7150975d10ed9ab394056645b983719311e6952` |
| 47 | `theorem` | [list_cons](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecSumInlAligned.lean/declarations/list-cons.md) | 342 | `result-track:d2a89e0a71f0ea0f2bf6cecab99cb27e7f5655a61d70af26e756b9975cfa0fd3` |
| 48 | `theorem` | [list_reverse](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecSumInlAligned.lean/declarations/list-reverse.md) | 346 | `result-track:dce88bc73a14a8e5e7b53edc119f7468d5b64a4de4ffdbae92f953883f6249f3` |
| 49 | `theorem` | [list_get?](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecSumInlAligned.lean/declarations/list-get.md) | 350 | `result-track:0ac2fb7844e37523f9cd7f08b61166e07684ce74401a7ef82db2af95cca882c5` |
| 50 | `theorem` | [list_append](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecSumInlAligned.lean/declarations/list-append.md) | 354 | `result-track:e901b4bf500990a1b28c3e7a16cdcee92132eb394a144449183bc70a39207c29` |
| 51 | `theorem` | [list_concat](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecSumInlAligned.lean/declarations/list-concat.md) | 358 | `result-track:0282efe270852a3a1e0def79b0b6f90f66f0edfe10e098dd1342cc0930b2c0b5` |
| 52 | `theorem` | [list_length](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecSumInlAligned.lean/declarations/list-length.md) | 362 | `result-track:90c8f59659a7eb120cfedaad01a18ae93027836b6ab94f4a0421ae09632f33ad` |
| 53 | `theorem` | [vector_cons](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecSumInlAligned.lean/declarations/vector-cons.md) | 366 | `result-track:4decb1ebf1e86f256a76d828f9338ad83378521b644b42b8c06619136b86fc63` |
| 54 | `theorem` | [vector_toList](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecSumInlAligned.lean/declarations/vector-tolist.md) | 370 | `result-track:cf49f51550ef12fb41710a45ba8704fbc95a17de570ff1ec0ba86141c90ee05a` |
| 55 | `theorem` | [vector_length](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecSumInlAligned.lean/declarations/vector-length.md) | 374 | `result-track:266de37531d36e5d0a12b5af6e641c1f22a1e5dc16d4626eae56a90c3e5305cb` |
| 56 | `theorem` | [vector_head](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecSumInlAligned.lean/declarations/vector-head.md) | 378 | `result-track:8b094f823ea103da044a2ad80e31baaa6c538508776e928b80622616944ad31f` |
| 57 | `theorem` | [vector_tail](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecSumInlAligned.lean/declarations/vector-tail.md) | 382 | `result-track:29bb15d7a7f9febe365b851b88f00d73772fcb4826d9fb4f3421076a2f1ea030` |
| 58 | `theorem` | [vector_get](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecSumInlAligned.lean/declarations/vector-get.md) | 386 | `result-track:96dd6195ecd0b9a76f2a4b5b436112035739d1abc8f1d3e7dcefc00d6826514c` |
| 59 | `theorem` | [vector_ofFn'](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecSumInlAligned.lean/declarations/vector-offn.md) | 391 | `result-track:3d60a427fa55bd692f0ab55a7715b3f405d90f109f4b311a106e1fb6e71e49b4` |
| 60 | `theorem` | [fin_app](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecSumInlAligned.lean/declarations/fin-app.md) | 395 | `result-track:03e8cc75ff8b8b9b8e98265e087a899b8063adc07691595da8f81bc74cc60332` |
| 61 | `theorem` | [encode](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecSumInlAligned.lean/declarations/encode.md) | 399 | `result-track:dd092c725f777236d94a4d64e349c8eb9de9d1d9c33ceb0a4dcb5c283e732eff` |
| 62 | `theorem` | [decode](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecSumInlAligned.lean/declarations/decode.md) | 403 | `result-track:49e4ac99970b09d62ab35cb9edec429ac6677b81e5736bd3f6eec6f662941e71` |
| 63 | `theorem` | [ofNat](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecSumInlAligned.lean/declarations/ofnat.md) | 407 | `result-track:8d4433f1831ce5273bfdc21f7c1f7f3005fe02747838cafa0b0c2dd91f41ae83` |
| 64 | `theorem` | [encode_iff](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecSumInlAligned.lean/declarations/encode-iff.md) | 411 | `result-track:0214bf6035b08004add76b5298003074bc3dd636e5ee350df62a90c36eebab41` |
| 65 | `theorem` | [option_some](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecSumInlAligned.lean/declarations/option-some.md) | 415 | `result-track:120ab64a9e63a8977d4365297b7a93b8d737f54c00b34580ca4b5b408a2dd579` |
| 66 | `theorem` | [of_eq](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecSumInlAligned.lean/declarations/of-eq-source-edition-2.md) | 429 | `result-track:8521e72cec7477b6a1b895c4997cc7ba5145c0ba34932708c5e60dc4cbdab55e` |
| 67 | `theorem` | [of_eq_tot](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecSumInlAligned.lean/declarations/of-eq-tot.md) | 433 | `result-track:5c69d7ac2392a458ecd56b7a83fd0a9aec5852c58a05ad69000037cd75cbdc38` |
| 68 | `theorem` | [none](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecSumInlAligned.lean/declarations/none-source-edition-2.md) | 437 | `result-track:6365a67aad47adb4626ab53d5b429d38b68cad06387cab05ff8601a14ab5898c` |
| 69 | `theorem` | [some](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecSumInlAligned.lean/declarations/some.md) | 441 | `result-track:4c15a2ad0fc2840f72be800299c82a14360aa0e140f94f0d674a7c2e2dd73756` |
| 70 | `theorem` | [_root_.Decidable.Partrec.const'](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecSumInlAligned.lean/declarations/root-decidable-partrec-const.md) | 445 | `result-track:d5adc4f1884c33c526d80ec058bbab03394039f8e212b11c7d34893126869fd3` |
| 71 | `theorem` | [const'](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecSumInlAligned.lean/declarations/const-source-edition-2.md) | 449 | `result-track:693bf8739c8da3eaf6913dca4f283c371f537cc3b9e24deb1ade336421875105` |
| 72 | `theorem` | [bind](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecSumInlAligned.lean/declarations/bind.md) | 454 | `result-track:8a3ac187e22c58c80a3667c800604ecc0584d82b6a47014f463374472ee4fe41` |
| 73 | `theorem` | [map](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecSumInlAligned.lean/declarations/map.md) | 460 | `result-track:b46124be39a69975a7df6af9a431650f447b05399acaa715d0071873f7f830fd` |
| 74 | `theorem` | [to₂](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecSumInlAligned.lean/declarations/to-source-edition-2.md) | 465 | `result-track:bab3e435d5ee89b26fa4fc2c2cf22ab38dde4611c9731cd506c88ef0b1fad02e` |
| 75 | `theorem` | [nat_rec](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecSumInlAligned.lean/declarations/nat-rec-source-edition-2.md) | 469 | `result-track:f0c13b4e8f07d2df77c338e6556a6c3fe5221f2d629cc840418086b6200e4ae2` |
| 76 | `theorem` | [comp](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecSumInlAligned.lean/declarations/comp-source-edition-4.md) | 479 | `result-track:b1432dc084873fbc61ac9752b16cd313f9195133d91b71e5c7542064a69fbee9` |
| 77 | `theorem` | [nat_iff](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecSumInlAligned.lean/declarations/nat-iff.md) | 484 | `result-track:e8948a6369cf72cd6551cb66b30eef25cdc0df942829ddcb95b0cb5d49a2129a` |
| 78 | `theorem` | [map_encode_iff](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecSumInlAligned.lean/declarations/map-encode-iff.md) | 487 | `result-track:390f529965b58523542469190dafb395a316e8361a2a83fd10eb143399595e30` |
| 79 | `theorem` | [unpaired](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecSumInlAligned.lean/declarations/unpaired.md) | 499 | `result-track:253d788f11872ed425bc3139e6a49c7bf19c7ebce492c3ea8ed5950a4ac2f500` |
| 80 | `theorem` | [unpaired'](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecSumInlAligned.lean/declarations/unpaired-source-edition-2.md) | 504 | `result-track:6e551455363e1b1d581f172b59407d223a408492377325eba531dd70f0ebff8f` |
| 81 | `theorem` | [comp](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecSumInlAligned.lean/declarations/comp-source-edition-7.md) | 508 | `result-track:cd6cc461e71916985ab64f2d407478e6efb85e855a5e54d990281a4b5c6843d4` |
| 82 | `theorem` | [comp₂](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecSumInlAligned.lean/declarations/comp.md) | 513 | `result-track:16385962f2f10781d28ff127ff9de8ff92c97f54202141e1fdfd31e5095c0783` |
| 83 | `theorem` | [comp](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecSumInlAligned.lean/declarations/comp-source-edition-5.md) | 526 | `result-track:bd7fe59288977467bcc2479c7a8890540a927bc5a64faa372951d5a9564741f8` |
| 84 | `theorem` | [comp₂](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecSumInlAligned.lean/declarations/comp-source-edition-3.md) | 531 | `result-track:7398ab920a65c504ad4c33731115d051779bc70c4cb2d7e479bc1f97dbe5bf35` |
| 85 | `theorem` | [comp](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecSumInlAligned.lean/declarations/comp-source-edition-2.md) | 544 | `result-track:34c34d34db4bc199449820ef3636775ef35307735786e249b071d814d3c2e598` |
| 86 | `theorem` | [comp₂](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecSumInlAligned.lean/declarations/comp-source-edition-6.md) | 549 | `result-track:ca114993d879ff5de0d3c254b4e16097cc14ee3836615d83e1d5ef0c16015a22` |
| 87 | `theorem` | [rfind](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecSumInlAligned.lean/declarations/rfind.md) | 564 | `result-track:953d67feba4c709efff71cba023a83cf871fafd2e83f6dc48452a88faa94dc34` |
| 88 | `theorem` | [rfindOpt](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecSumInlAligned.lean/declarations/rfindopt.md) | 575 | `result-track:0558e6f08bb2c260aba6a1629b7615620863147a3ee6a9f8ba514def6669f90b` |
| 89 | `theorem` | [nat_casesOn_right](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecSumInlAligned.lean/declarations/nat-caseson-right.md) | 580 | `result-track:b94a8fcb2d386f22f62167947b8ff1d9f4f6bebcf217906fb1ed97ff741b36a1` |
| 90 | `theorem` | [bind_decode₂_iff](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecSumInlAligned.lean/declarations/bind-decode-iff-source-edition-2.md) | 594 | `result-track:5d868ba53504ff157e949d0ce22192a8ea78b9d5d38daf5f6b49c045dc1efd02` |
| 91 | `theorem` | [vector_mOfFn](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecSumInlAligned.lean/declarations/vector-moffn.md) | 604 | `result-track:6d04d9f1474d39a05e0513a0133cc752804c91ae9bd339534fffdd468177e335` |
| 92 | `theorem` | [Vector.mOfFn_part_some](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecSumInlAligned.lean/declarations/vector-moffn-part-some.md) | 619 | `result-track:21fbb914f45e4fbd9bd32894b87883a692271d1461408b589af8b552eea80d4d` |
| 93 | `theorem` | [option_some_iff](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecSumInlAligned.lean/declarations/option-some-iff.md) | 630 | `result-track:087555dff6e25e5dbc96d9aea9356e5c778937b608a4f2a03742bcc01c1e2325` |
| 94 | `theorem` | [bind_decode_iff](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecSumInlAligned.lean/declarations/bind-decode-iff.md) | 634 | `result-track:52c035d85c70a9d79bafb2e184f9821476d4cb2a79341c3aea2e21ae69438d5b` |
| 95 | `theorem` | [map_decode_iff](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecSumInlAligned.lean/declarations/map-decode-iff.md) | 658 | `result-track:8d4fd6bcf574c16be7e2b93b959ffa7caf0f19d4daa0b868a57d97a6f0538ca9` |
| 96 | `theorem` | [nat_rec](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecSumInlAligned.lean/declarations/nat-rec.md) | 664 | `result-track:1df6f83388bc18d920685d7ac9c255b1e70ec0e62b385cd8982d86cec3cc678e` |
| 97 | `theorem` | [nat_casesOn](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecSumInlAligned.lean/declarations/nat-caseson.md) | 670 | `result-track:c9079cf666c5f150301f48ea5f0c984130d2cc7b07f8122591c81d83abb93e30` |
| 98 | `theorem` | [cond](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecSumInlAligned.lean/declarations/cond.md) | 676 | `result-track:486ba29607f9a2026a620068ba4b5dc33f61ba07624d30ec8e648831a2ea671f` |
| 99 | `theorem` | [option_casesOn](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecSumInlAligned.lean/declarations/option-caseson.md) | 681 | `result-track:fdd6820bdd64adf1006b4484386b59dd9e2a1f1b5b05963aeae9b0ec563ebda9` |
| 100 | `theorem` | [option_bind](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecSumInlAligned.lean/declarations/option-bind.md) | 689 | `result-track:1aa7b0a045d98a6ef427fa002d0a947b8d5f4d4ffbc0cdc79b591debc115bf56` |
| 101 | `theorem` | [option_map](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecSumInlAligned.lean/declarations/option-map.md) | 694 | `result-track:62994306f1b726226207545eff7cfd2bba9db492bcd908c1eaf351e466577217` |
| 102 | `theorem` | [option_getD](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecSumInlAligned.lean/declarations/option-getd.md) | 700 | `result-track:ade5714b8fb63f5caaac7c5483112c15df37e4024f7be9b961a0c1a7bf523b2e` |
| 103 | `theorem` | [subtype_mk](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecSumInlAligned.lean/declarations/subtype-mk.md) | 706 | `result-track:58cc30997c29c6a20a2b302d7c351279f27f5cac9be92a17c5bdc866392f0f68` |
| 104 | `theorem` | [sum_casesOn](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecSumInlAligned.lean/declarations/sum-caseson.md) | 712 | `result-track:85a3bc092156470faf58e09d9498bad94ece70015bd128c06f06c7a9c0f9851e` |
| 105 | `theorem` | [nat_strong_rec](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecSumInlAligned.lean/declarations/nat-strong-rec.md) | 723 | `result-track:7819f3a49a686f5440fe279d1602a1d3e67b74141053fcd938d818a43f7dcd04` |
| 106 | `theorem` | [list_ofFn](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecSumInlAligned.lean/declarations/list-offn.md) | 741 | `result-track:43665ea94cc388dc277210cbf34ed03abcd7c57ef4db232f21745d16d1f48f93` |
| 107 | `theorem` | [vector_ofFn](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecSumInlAligned.lean/declarations/vector-offn-source-edition-2.md) | 750 | `result-track:d2f80da974a8c84a7ad9078e0be003f82154946e8d61f8896314c9f646026c42` |
| 108 | `theorem` | [option_some_iff](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecSumInlAligned.lean/declarations/option-some-iff-source-edition-2.md) | 765 | `result-track:23fc176f34f8de1aecbaba5f2d226305f667ddb2c25c2e7f895a2806de957723` |
| 109 | `theorem` | [option_casesOn_right](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecSumInlAligned.lean/declarations/option-caseson-right.md) | 774 | `result-track:55d1825aa948dab6b73b06a9c21ea7da764d14b93621dba69c74b04cbad85dfe` |
| 110 | `theorem` | [sum_casesOn_right](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecSumInlAligned.lean/declarations/sum-caseson-right.md) | 786 | `result-track:4a70785c837056e34391a341fa6658050ac667e9efcdcec24b1c265a383cca67` |
| 111 | `theorem` | [sum_casesOn_left](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecSumInlAligned.lean/declarations/sum-caseson-left.md) | 803 | `result-track:b3e4772caa923823555d3108f15aa79d1cd89ef6f8ddcbcd1570c85a399a059b` |
| 112 | `theorem` | [fix_aux](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecSumInlAligned.lean/declarations/fix-aux.md) | 810 | `result-track:938f5665b0ba137e87ceb07350ffb5ad8379684e22e8ae05a553d8c5e664aa48` |
| 113 | `theorem` | [fix](../../../../../MathematicalLogicAndFoundations/ComputabilityAndRecursionTheory/PartrecSumInlAligned.lean/declarations/fix.md) | 850 | `result-track:27b50034a3cdaeedbf0f7e6a63b48565b713f150a5574ec3feeb2bc691931908` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=26ae9b788c730eb05b3d78165488f642bde5de5e32db82cdb425c9c3ee2d7b69 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/Computability/Partrec/Variant9cbd88ad956142274ab7ece75bffc8cada365c291dd2dc788ea3f46abafc69d1.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/Computability/Partrec/Variant9cbd88ad956142274ab7ece75bffc8cada365c291dd2dc788ea3f46abafc69d1.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
