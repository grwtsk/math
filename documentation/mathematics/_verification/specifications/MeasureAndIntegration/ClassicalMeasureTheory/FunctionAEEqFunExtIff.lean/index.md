# Verification target: Function AEEq Fun Ext Iff

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7d57a340e95f586ab0bf52ae20dffe86602aff94",
  "lexical_observation_count": 136,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/AEEqFun/Varianta69fc3a57e2720810ed52d677800571108c8933ba9a3083bf5ee039f071ad3a1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FunctionAEEqFunExtIff.lean/index.md) · [Full source](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FunctionAEEqFunExtIff.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7d57a340e95f586ab0bf52ae20dffe86602aff94`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/AEEqFun/Varianta69fc3a57e2720810ed52d677800571108c8933ba9a3083bf5ee039f071ad3a1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/AEEqFun/Varianta69fc3a57e2720810ed52d677800571108c8933ba9a3083bf5ee039f071ad3a1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Integral.Lebesgue` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Filter.Germ` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.ContinuousFunction.Algebra` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Function.StronglyMeasurable.Basic` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Measure.aeEqSetoid](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FunctionAEEqFunExtIff.lean/declarations/measure-aeeqsetoid.md) | 93 | `declaration-track:b72f385390da90922898497a8f54bbae0e7d10c3f0734cfeae07178436e79f69` |
| 2 | `def` | [AEEqFun](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FunctionAEEqFunExtIff.lean/declarations/aeeqfun.md) | 103 | `declaration-track:f14212d77a5f6fa33428d29f320c92aebd038b3017ebd1ebe74e9bc5f272501e` |
| 3 | `def` | [mk](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FunctionAEEqFunExtIff.lean/declarations/mk.md) | 121 | `declaration-track:42346d03839f5b888669857dfbaff5d27e0cabdfe841cb6e23a941152e1eafab` |
| 4 | `def` | [cast](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FunctionAEEqFunExtIff.lean/declarations/cast.md) | 128 | `declaration-track:368ad17bd22124bb2e350f521d5b9017920372a7aa3231b3aa68634dbcaa0600` |
| 5 | `instance` | [instCoeFun](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FunctionAEEqFunExtIff.lean/declarations/instcoefun.md) | 132 | `declaration-track:971720fb868aff385b077a0aad1f3ac27228a83a1d26888ff44d5f2ee30fd523` |
| 6 | `theorem` | [stronglyMeasurable](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FunctionAEEqFunExtIff.lean/declarations/stronglymeasurable.md) | 135 | `result-track:49fd2d4d6e6f012cb727a849a0bd26004c780babce9e78f5d14783e8f3891a0a` |
| 7 | `theorem` | [aestronglyMeasurable](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FunctionAEEqFunExtIff.lean/declarations/aestronglymeasurable.md) | 139 | `result-track:eaeb00c82374bc1810d8e96cc222bbe7d47abb5cf1aa35d7ccd19036273dce72` |
| 8 | `theorem` | [measurable](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FunctionAEEqFunExtIff.lean/declarations/measurable.md) | 143 | `result-track:14f9365a7134b8e96342084bf56058ead2c44fe9dfa1bc3126d72e08c7037612` |
| 9 | `theorem` | [aemeasurable](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FunctionAEEqFunExtIff.lean/declarations/aemeasurable.md) | 148 | `result-track:24099b49aa76fbdad04a293041c3a52ae8629f98984e89dc4c378482ec6bd425` |
| 10 | `theorem` | [quot_mk_eq_mk](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FunctionAEEqFunExtIff.lean/declarations/quot-mk-eq-mk.md) | 154 | `result-track:44399c397ea7ae7ab5b91fad9f73800abeebb540d84e8e2e9cae26e4bd00a2a1` |
| 11 | `theorem` | [mk_eq_mk](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FunctionAEEqFunExtIff.lean/declarations/mk-eq-mk.md) | 160 | `result-track:da8290278cce4b6798b0649336fe003f439434980acb7ea5c4d21582874319af` |
| 12 | `theorem` | [mk_coeFn](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FunctionAEEqFunExtIff.lean/declarations/mk-coefn.md) | 165 | `result-track:bd0a52abde01e3f4b2d4e7b138e1a15cc928e2deda75880e4e90c317e312b136` |
| 13 | `theorem` | [ext](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FunctionAEEqFunExtIff.lean/declarations/ext.md) | 174 | `result-track:1fcc659ad6a7a883f040e7c75f8f61b09d7cea42de97a3b918577df3f06c78f9` |
| 14 | `theorem` | [ext_iff](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FunctionAEEqFunExtIff.lean/declarations/ext-iff.md) | 178 | `result-track:1241cdff6093431747999f892d44d218b10cb883d09303b95f4260c9cce5da92` |
| 15 | `theorem` | [coeFn_mk](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FunctionAEEqFunExtIff.lean/declarations/coefn-mk.md) | 182 | `result-track:4cac392f3ea02e4d5b30db22526ea6c7d0478867d2df74b526b586f767512192` |
| 16 | `theorem` | [induction_on](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FunctionAEEqFunExtIff.lean/declarations/induction-on-source-edition-2.md) | 188 | `result-track:5f8091e3b317a3bac20382f506f171113db4238076b0e555cb672891696e5005` |
| 17 | `theorem` | [induction_on₂](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FunctionAEEqFunExtIff.lean/declarations/induction-on.md) | 193 | `result-track:5a9ed19ab21e253e02800a3dcd78fe9d6b442bd287f1429e08b47c17f340633f` |
| 18 | `theorem` | [induction_on₃](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FunctionAEEqFunExtIff.lean/declarations/induction-on-source-edition-3.md) | 200 | `result-track:85ba6112d325bb83f630818b772c5e76f47f05124230ec5c9f43e8cba5361027` |
| 19 | `def` | [compQuasiMeasurePreserving](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FunctionAEEqFunExtIff.lean/declarations/compquasimeasurepreserving.md) | 221 | `declaration-track:bd79e1c62f28b1c82a69c636f346e8b49180b8aa10d96c9652fbde422bbd4f69` |
| 20 | `theorem` | [compQuasiMeasurePreserving_mk](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FunctionAEEqFunExtIff.lean/declarations/compquasimeasurepreserving-mk.md) | 227 | `result-track:24ce595439e0c131db87c59b74c59959fcb7290650181dfb2b3c5918b85bd482` |
| 21 | `theorem` | [compQuasiMeasurePreserving_eq_mk](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FunctionAEEqFunExtIff.lean/declarations/compquasimeasurepreserving-eq-mk.md) | 232 | `result-track:b098bdd69cac04b18bf8cb47488aad7dc26b9fd3c6a8ce24ff895e64a4e19983` |
| 22 | `theorem` | [coeFn_compQuasiMeasurePreserving](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FunctionAEEqFunExtIff.lean/declarations/coefn-compquasimeasurepreserving.md) | 237 | `result-track:2eed5832a35b1a06a18cdaac4f130bb4940f3d86386023fc65e26c498a49d130` |
| 23 | `def` | [compMeasurePreserving](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FunctionAEEqFunExtIff.lean/declarations/compmeasurepreserving.md) | 252 | `declaration-track:3c373053cce4da5ba2f59e8ea6c01012b91b261d64747268e0e62d329f5fda6e` |
| 24 | `theorem` | [compMeasurePreserving_mk](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FunctionAEEqFunExtIff.lean/declarations/compmeasurepreserving-mk.md) | 256 | `result-track:b61036e855a24446a61934546739d876a71dff0228edb10273e912d496ae56c7` |
| 25 | `theorem` | [compMeasurePreserving_eq_mk](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FunctionAEEqFunExtIff.lean/declarations/compmeasurepreserving-eq-mk.md) | 262 | `result-track:4be5e7145697f0f6cff854f51d920a7ae839581f01d1fc474cf1fa5eb3df573c` |
| 26 | `theorem` | [coeFn_compMeasurePreserving](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FunctionAEEqFunExtIff.lean/declarations/coefn-compmeasurepreserving.md) | 267 | `result-track:97f1df3dbeb96966482e324ba773b7fdd93fd2cf76b39616b0687245aa7d326e` |
| 27 | `def` | [comp](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FunctionAEEqFunExtIff.lean/declarations/comp-source-edition-2.md) | 276 | `declaration-track:474a91c89ffe8c68c36498eb276d7f90611c00d7b8e54b4c75fed84fbce1eb97` |
| 28 | `theorem` | [comp_mk](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FunctionAEEqFunExtIff.lean/declarations/comp-mk.md) | 282 | `result-track:5b26e5398854efd9d1b6176b4c0c2d6f4c5f7b4d3a1b007896c703c420d3c91e` |
| 29 | `theorem` | [comp_eq_mk](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FunctionAEEqFunExtIff.lean/declarations/comp-eq-mk.md) | 287 | `result-track:a5504931583301410e906716906d9d62b4bdc06a72ded216f62d83042c848bc4` |
| 30 | `theorem` | [coeFn_comp](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FunctionAEEqFunExtIff.lean/declarations/coefn-comp-source-edition-2.md) | 292 | `result-track:703ff6a46c28a5354f1bde69143eafedc41a8f13e26134b149fffba8a5be70ef` |
| 31 | `def` | [compMeasurable](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FunctionAEEqFunExtIff.lean/declarations/compmeasurable.md) | 305 | `declaration-track:9348342918d395e9acb4aadda87215b637d5484f8d3b905d5a32fff9f5773e95` |
| 32 | `theorem` | [compMeasurable_mk](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FunctionAEEqFunExtIff.lean/declarations/compmeasurable-mk.md) | 312 | `result-track:380025de1fae42f79f1aa0fd30175018354cbcd6249d40b122e932961fc74106` |
| 33 | `theorem` | [compMeasurable_eq_mk](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FunctionAEEqFunExtIff.lean/declarations/compmeasurable-eq-mk.md) | 319 | `result-track:0cdf71ba4569bd8525cc8ce75c8be48f1ceb0ab5808996f7530b5b6729a53022` |
| 34 | `theorem` | [coeFn_compMeasurable](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FunctionAEEqFunExtIff.lean/declarations/coefn-compmeasurable.md) | 324 | `result-track:74be98303ae2cd969b73703cbf023b4db752ba4daa1eae1b75dc664a16c7d6f7` |
| 35 | `def` | [pair](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FunctionAEEqFunExtIff.lean/declarations/pair.md) | 333 | `declaration-track:ef0f07c030454f1719ac21a63cdd6455e7eb3b1ba3a24dc219084fabd1a8dd84` |
| 36 | `theorem` | [pair_mk_mk](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FunctionAEEqFunExtIff.lean/declarations/pair-mk-mk.md) | 339 | `result-track:dc35803146e6c931d44e271d7a4a20b90f32fc69fec3c90e771d88f87fb83ad9` |
| 37 | `theorem` | [pair_eq_mk](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FunctionAEEqFunExtIff.lean/declarations/pair-eq-mk.md) | 344 | `result-track:c702cb5d408d224947e910924e493d0e8ff437842283e08964b78a433074e053` |
| 38 | `theorem` | [coeFn_pair](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FunctionAEEqFunExtIff.lean/declarations/coefn-pair.md) | 350 | `result-track:1bac15f5995042fd930bbbbc623770496c27227ebcb44e50a7f69aae4075954a` |
| 39 | `def` | [comp₂](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FunctionAEEqFunExtIff.lean/declarations/comp.md) | 359 | `declaration-track:0a24363114c9b86c66c5a029540b0f186049db81987f64431930d0a992810127` |
| 40 | `theorem` | [comp₂_mk_mk](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FunctionAEEqFunExtIff.lean/declarations/comp-mk-mk.md) | 365 | `result-track:a68df28ee513fa6fe2b0eeac455fd9b9319e6517ace9f90b04cc317a5517c396` |
| 41 | `theorem` | [comp₂_eq_pair](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FunctionAEEqFunExtIff.lean/declarations/comp-eq-pair.md) | 372 | `result-track:c1794c9d3b60d94c0d5acbc62b7ea9baa196713b4fe10222844810e12c388911` |
| 42 | `theorem` | [comp₂_eq_mk](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FunctionAEEqFunExtIff.lean/declarations/comp-eq-mk-source-edition-2.md) | 377 | `result-track:eba177183849f3cfc1d5b6f5b2106a4e460b5b66206f5378b69ec85b0351e867` |
| 43 | `theorem` | [coeFn_comp₂](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FunctionAEEqFunExtIff.lean/declarations/coefn-comp.md) | 385 | `result-track:55c3c8cf18e7d583763423e6a8a091b350aec81907f53ab405c9fd6b03dc60e3` |
| 44 | `def` | [comp₂Measurable](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FunctionAEEqFunExtIff.lean/declarations/comp-measurable.md) | 401 | `declaration-track:29408c7d817aa5e6b7e61bf5a4e17663cce297c993a00553e6c5cbfe29c03805` |
| 45 | `theorem` | [comp₂Measurable_mk_mk](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FunctionAEEqFunExtIff.lean/declarations/comp-measurable-mk-mk.md) | 407 | `result-track:d6c8c7f18b89b6131bb1ea16b37e469129c5743becb548cd75c96ea27de5fb50` |
| 46 | `theorem` | [comp₂Measurable_eq_pair](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FunctionAEEqFunExtIff.lean/declarations/comp-measurable-eq-pair.md) | 415 | `result-track:d1a4e39e29c3a19d32d7354037ba8372bd9536c7744abaa00d80c660536129ff` |
| 47 | `theorem` | [comp₂Measurable_eq_mk](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FunctionAEEqFunExtIff.lean/declarations/comp-measurable-eq-mk.md) | 420 | `result-track:d2e583b71f49b797ee7f45e89ea12460d5d4072d9d2c958b539a8c5418d04652` |
| 48 | `theorem` | [coeFn_comp₂Measurable](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FunctionAEEqFunExtIff.lean/declarations/coefn-comp-measurable.md) | 428 | `result-track:a4b0639a668ad22bbaf31d5681d0cd817cb357beea5fb8b39913e28c0b340ec6` |
| 49 | `def` | [toGerm](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FunctionAEEqFunExtIff.lean/declarations/togerm.md) | 438 | `declaration-track:96b4e474c48b4f89fc2e5e5b811012aa5374085c4041165f50b0633d35e9e8b9` |
| 50 | `theorem` | [mk_toGerm](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FunctionAEEqFunExtIff.lean/declarations/mk-togerm.md) | 443 | `result-track:da3df8046f2b6c61c1c9e9d1bae0f8dbe46ca4bea25d7f8633694ff6b1aa986d` |
| 51 | `theorem` | [toGerm_eq](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FunctionAEEqFunExtIff.lean/declarations/togerm-eq.md) | 447 | `result-track:5051556f654c37a750dafcd790044c1b654ba1b95eb4613185d1ffcb48f1a6a3` |
| 52 | `theorem` | [toGerm_injective](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FunctionAEEqFunExtIff.lean/declarations/togerm-injective.md) | 450 | `result-track:551584d6c4e253d2284a301ac284dd545cad458239a617cf8d23ac96dda97cec` |
| 53 | `theorem` | [comp_toGerm](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FunctionAEEqFunExtIff.lean/declarations/comp-togerm.md) | 454 | `result-track:0d09b9e0ff76e980dcb909cbf7a3aa0828b9e7c36945c6b67c57d09babeb571e` |
| 54 | `theorem` | [compMeasurable_toGerm](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FunctionAEEqFunExtIff.lean/declarations/compmeasurable-togerm.md) | 459 | `result-track:07f7f0a7b3ab5909985d210417808577ec64e6dfa7516a3abe94c61a2f6a7724` |
| 55 | `theorem` | [comp₂_toGerm](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FunctionAEEqFunExtIff.lean/declarations/comp-togerm-source-edition-2.md) | 466 | `result-track:b1c0509551081faf33a3b34e8cde7af696f705577db90200fc66559cad7af888` |
| 56 | `theorem` | [comp₂Measurable_toGerm](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FunctionAEEqFunExtIff.lean/declarations/comp-measurable-togerm.md) | 471 | `result-track:24de92ee4df17c1c5386c18c085c1ecbf8d6940b4ebbc8f162859dddef777f06` |
| 57 | `def` | [LiftPred](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FunctionAEEqFunExtIff.lean/declarations/liftpred.md) | 482 | `declaration-track:1a119882bfad72aba4eac0ddfae6b88ffef90f7b4ea2193d41e0f0b2bd8db48a` |
| 58 | `def` | [LiftRel](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FunctionAEEqFunExtIff.lean/declarations/liftrel.md) | 488 | `declaration-track:a83adcbe28bf1a823c82babe6fac1a4359fec883bd9bbfd42fb29766a6e404d7` |
| 59 | `theorem` | [liftRel_mk_mk](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FunctionAEEqFunExtIff.lean/declarations/liftrel-mk-mk.md) | 492 | `result-track:d7196dfe0618638d5a5613791290527e0ac1f4b9a50f8c0a89a6e85352fec241` |
| 60 | `theorem` | [liftRel_iff_coeFn](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FunctionAEEqFunExtIff.lean/declarations/liftrel-iff-coefn.md) | 497 | `result-track:83f7765f43a5fe2e03a91a76f18f6738bda4bee73b3ab1b3ae6b47dbdbcdc26d` |
| 61 | `instance` | [instPreorder](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FunctionAEEqFunExtIff.lean/declarations/instpreorder.md) | 503 | `declaration-track:b4e5304a4c86c0b0ed815fc8af5a82d4dac89e8a9ec9678675bbdedf22b81fae` |
| 62 | `theorem` | [mk_le_mk](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FunctionAEEqFunExtIff.lean/declarations/mk-le-mk.md) | 508 | `result-track:a93026dd4c899f88445d6a4b72b3b88c86d67ce387b3c776b75e408df5c7acce` |
| 63 | `theorem` | [coeFn_le](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FunctionAEEqFunExtIff.lean/declarations/coefn-le.md) | 513 | `result-track:aa7edb61ea985763641cb5c155abadce79869ebe7ed343c0d2cb97ea9865d29f` |
| 64 | `instance` | [instPartialOrder](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FunctionAEEqFunExtIff.lean/declarations/instpartialorder.md) | 517 | `declaration-track:b5815bce5c4015a31de5ba2d1b291e73ee1bc5aba1a649f3f98b307f94d57f6f` |
| 65 | `instance` | [instSup](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FunctionAEEqFunExtIff.lean/declarations/instsup.md) | 527 | `declaration-track:7a7a009abff646a93c64af06b40d9cca586c4c098c73a0bb98520d491844f456` |
| 66 | `theorem` | [coeFn_sup](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FunctionAEEqFunExtIff.lean/declarations/coefn-sup.md) | 530 | `result-track:9c814cba25f8dbaa4d7d8e87b77f9ef7e45b4134ed6de828283aa27226a3622e` |
| 67 | `theorem` | [le_sup_left](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FunctionAEEqFunExtIff.lean/declarations/le-sup-left.md) | 534 | `result-track:155d2b503e83a285f13bf3d3d15b660d0adef74dc18a643e66eeb68a76f04f97` |
| 68 | `theorem` | [le_sup_right](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FunctionAEEqFunExtIff.lean/declarations/le-sup-right.md) | 541 | `result-track:fac7f4514a0146be8d74f3572730212c42d97e9800bc5cc9f2b887ca728b351c` |
| 69 | `theorem` | [sup_le](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FunctionAEEqFunExtIff.lean/declarations/sup-le.md) | 548 | `result-track:d61722699cc962634e81ceca3a5ee82e28b1a88f8501c42c2b11f84f86f0d57e` |
| 70 | `instance` | [instInf](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FunctionAEEqFunExtIff.lean/declarations/instinf.md) | 561 | `declaration-track:1100647bc784d60909d069996878fa09421b2513628d3da67175b14e624d3da1` |
| 71 | `theorem` | [coeFn_inf](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FunctionAEEqFunExtIff.lean/declarations/coefn-inf.md) | 564 | `result-track:3a71c758e9c9c9d6d5edf6ee29dc52dc661c2a93cd728988b0b4415053b6fb9f` |
| 72 | `theorem` | [inf_le_left](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FunctionAEEqFunExtIff.lean/declarations/inf-le-left.md) | 568 | `result-track:e9a0860b5fb7152f62483234f6514bdd6509d2fd5a0bfa62b3aa5cdbb1ba1c19` |
| 73 | `theorem` | [inf_le_right](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FunctionAEEqFunExtIff.lean/declarations/inf-le-right.md) | 575 | `result-track:d298cb3e629328d0139979842ebea7de335dcde489d7d3560baf8daae205d39e` |
| 74 | `theorem` | [le_inf](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FunctionAEEqFunExtIff.lean/declarations/le-inf.md) | 582 | `result-track:afa6e9c716f1861e08d2af351f918ba96b194f7f2ee155ff2c0e5d661358d8f0` |
| 75 | `instance` | [instLattice](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FunctionAEEqFunExtIff.lean/declarations/instlattice.md) | 591 | `declaration-track:9e6ce8571d9f45a7c1440c74703d8c6191c05769d14041d5ebc2ce0211528ca3` |
| 76 | `def` | [const](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FunctionAEEqFunExtIff.lean/declarations/const.md) | 611 | `declaration-track:f936f2a3e6d62e8d3e2095fc7f7452df8f074cb5d5be935ab2f6cbb563a6a062` |
| 77 | `theorem` | [coeFn_const](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FunctionAEEqFunExtIff.lean/declarations/coefn-const.md) | 615 | `result-track:afc65d89f56c88f9a6f480da33d6ef92d45cc6219e9270c95336debfbfe7f6e2` |
| 78 | `instance` | [instInhabited](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FunctionAEEqFunExtIff.lean/declarations/instinhabited.md) | 621 | `declaration-track:c6c0ef13612488d8ed4b0fa6c93a8773de7504234881065e26bea4397af846b1` |
| 79 | `instance` | [instOne](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FunctionAEEqFunExtIff.lean/declarations/instone.md) | 626 | `declaration-track:be1c18f1e972b43b8a2d9da79abd7e787b4f0135ba92b13d0ec1515a6e89a292` |
| 80 | `theorem` | [one_def](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FunctionAEEqFunExtIff.lean/declarations/one-def.md) | 632 | `result-track:3a8ec1fce35ae307237829281bb0196abe3bd93f61204769f6d2c4b6b4e0c32c` |
| 81 | `theorem` | [coeFn_one](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FunctionAEEqFunExtIff.lean/declarations/coefn-one.md) | 638 | `result-track:24f317aafefbd8d65ae1f20d1a0ebd011bb72d92a9ff20f643052563d2e71ec8` |
| 82 | `theorem` | [one_toGerm](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FunctionAEEqFunExtIff.lean/declarations/one-togerm.md) | 644 | `result-track:62d15a7fca31b92c5007e3fbd2c14d80e80f233f1d5ab7f824480b52a9dab49b` |
| 83 | `instance` | [instSMul](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FunctionAEEqFunExtIff.lean/declarations/instsmul.md) | 659 | `declaration-track:34db423a48e30af0f856cf86a1da19d37e57ff1d9cb4917f9a7591099995fc7f` |
| 84 | `theorem` | [smul_mk](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FunctionAEEqFunExtIff.lean/declarations/smul-mk.md) | 664 | `result-track:d5511288bb900a057f7385c8aeb96efe1d9a0c94804ee711cc8e060a1e64991e` |
| 85 | `theorem` | [coeFn_smul](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FunctionAEEqFunExtIff.lean/declarations/coefn-smul.md) | 669 | `result-track:4ce35c4975b29d685e852ebd02ce2270cca4058fccdc0c3ac96b2127d7a5b115` |
| 86 | `theorem` | [smul_toGerm](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FunctionAEEqFunExtIff.lean/declarations/smul-togerm.md) | 673 | `result-track:5825249225122cb49d85e2f67f365902d8b93fb37ef379fcf4f63b03af0cb786` |
| 87 | `instance` | [instSMulCommClass](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FunctionAEEqFunExtIff.lean/declarations/instsmulcommclass.md) | 677 | `declaration-track:3c85e5e50b481ce3f71f2f04ea5c63b92998aca5a2ec40b3a3cfb58042ada2b1` |
| 88 | `instance` | [instIsScalarTower](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FunctionAEEqFunExtIff.lean/declarations/instisscalartower.md) | 681 | `declaration-track:8177dee76617fed6a92c21ad5b2b26848737820d1530ea7967452050cb4da0ab` |
| 89 | `instance` | [instIsCentralScalar](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FunctionAEEqFunExtIff.lean/declarations/instiscentralscalar.md) | 685 | `declaration-track:da157229d37c4420c364d31c091dca54c92f3802193dab03be075f1f2e70a9db` |
| 90 | `instance` | [instMul](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FunctionAEEqFunExtIff.lean/declarations/instmul.md) | 696 | `declaration-track:92a8602455bbd4cd432c741227960a894f44407c56359ae6ae3b4b904f2c66ea` |
| 91 | `theorem` | [mk_mul_mk](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FunctionAEEqFunExtIff.lean/declarations/mk-mul-mk.md) | 702 | `result-track:05dfda989dd1ea5b65d2fd549dfd33feade9bc983c5ea747116f522d18c43bed` |
| 92 | `theorem` | [coeFn_mul](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FunctionAEEqFunExtIff.lean/declarations/coefn-mul.md) | 709 | `result-track:e43d8e0fc3cb1e20ef7c3a29d31eb4388bcf7ac7af6bdb63cb57e47292d56a8b` |
| 93 | `theorem` | [mul_toGerm](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FunctionAEEqFunExtIff.lean/declarations/mul-togerm.md) | 715 | `result-track:22b674b2c80bb782b2808976752e68f64c6bcd30716585f4022b8038982e72dc` |
| 94 | `instance` | [instAddMonoid](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FunctionAEEqFunExtIff.lean/declarations/instaddmonoid.md) | 722 | `declaration-track:649e6c779d97046a4b49ef61188ad5d67cc28a1b09c17e567e2b3ccc34bc3b30` |
| 95 | `instance` | [instAddCommMonoid](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FunctionAEEqFunExtIff.lean/declarations/instaddcommmonoid.md) | 726 | `declaration-track:bed96ec230ed1f6bce659b692e213642af2ad950a513a5878b28ca5d75cd5e16` |
| 96 | `instance` | [instPowNat](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FunctionAEEqFunExtIff.lean/declarations/instpownat.md) | 734 | `declaration-track:26772346fea0f4f3af051b106f8ac5cfcd960948967fd18881e5e5581bcb6e89` |
| 97 | `theorem` | [mk_pow](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FunctionAEEqFunExtIff.lean/declarations/mk-pow.md) | 739 | `result-track:fa5617c756d80479dd51babbcbf895c429311a665be74adc3b1d92ff969b76e9` |
| 98 | `theorem` | [coeFn_pow](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FunctionAEEqFunExtIff.lean/declarations/coefn-pow.md) | 745 | `result-track:f1514c0e836bb9bd80bf3b65d0f613ad36189e23453ecb1a921ca2f473f86112` |
| 99 | `theorem` | [pow_toGerm](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FunctionAEEqFunExtIff.lean/declarations/pow-togerm.md) | 750 | `result-track:14f449cc0935561fb3aa3f2a50ad5a339f1f06e9c31e64bea9a06533334cfd7e` |
| 100 | `instance` | [instMonoid](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FunctionAEEqFunExtIff.lean/declarations/instmonoid.md) | 755 | `declaration-track:8b240cb84b6da938e87825ee5f78af73f1300cb3cb0b4203f6550cbf23a91ff2` |
| 101 | `def` | [toGermMonoidHom](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FunctionAEEqFunExtIff.lean/declarations/togermmonoidhom.md) | 761 | `declaration-track:7a4c7f9854e03ab566527ba37e7c67d4d56f328e9b0d9ed7639223de8d649365` |
| 102 | `instance` | [instCommMonoid](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FunctionAEEqFunExtIff.lean/declarations/instcommmonoid.md) | 773 | `declaration-track:9cf266d5246ea231610ecd205604af84c05fd768f0999b4f913fc48fd6ef2a22` |
| 103 | `instance` | [instInv](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FunctionAEEqFunExtIff.lean/declarations/instinv.md) | 784 | `declaration-track:61eb5559d873e09a5d54926a5d30d20d66a56400e5d9909bd4e16db0010277d5` |
| 104 | `theorem` | [inv_mk](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FunctionAEEqFunExtIff.lean/declarations/inv-mk.md) | 790 | `result-track:6bf7c2f3800db8c4a017bfaa9cf9d64adb7041a88be71d52afa778d697e01ea0` |
| 105 | `theorem` | [coeFn_inv](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FunctionAEEqFunExtIff.lean/declarations/coefn-inv.md) | 796 | `result-track:2b882b8b09af6b9d8d83cdc86c477ece20b38cead122e5eccc7447fca3e48e96` |
| 106 | `theorem` | [inv_toGerm](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FunctionAEEqFunExtIff.lean/declarations/inv-togerm.md) | 802 | `result-track:b3f387184ac8fa160e79b586bc0ca40cf4ec20415c8c7c947acea4fda185d0b4` |
| 107 | `instance` | [instDiv](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FunctionAEEqFunExtIff.lean/declarations/instdiv.md) | 812 | `declaration-track:b42f86897afca4b4f561cbbe78062419ef1f5d9da763e5c74645a8dc2fc40981` |
| 108 | `theorem` | [mk_div](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FunctionAEEqFunExtIff.lean/declarations/mk-div.md) | 818 | `result-track:1b41ad30df6406966b3df21838854dd96485191dc492e91ef7e2234c81c2f72f` |
| 109 | `theorem` | [coeFn_div](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FunctionAEEqFunExtIff.lean/declarations/coefn-div.md) | 825 | `result-track:819b0a06e7f08a6932cb00f8795b3e44c27885bed6a0755c728884ced9956d9c` |
| 110 | `theorem` | [div_toGerm](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FunctionAEEqFunExtIff.lean/declarations/div-togerm.md) | 831 | `result-track:3b518e8303f78578528b6a0d00ea6b30898435c8b3c5065322d8d6af99327d5d` |
| 111 | `instance` | [instPowInt](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FunctionAEEqFunExtIff.lean/declarations/instpowint.md) | 840 | `declaration-track:01eed2ee96149b6c477d5e5f50a2a25b127d9bdc3c2dc6c0f666bd22403ca73d` |
| 112 | `theorem` | [mk_zpow](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FunctionAEEqFunExtIff.lean/declarations/mk-zpow.md) | 845 | `result-track:1b37fe9fe2b8caee7d489b8ac2fc5ad21bd6b8e8d1f5c0e5492e97ddbb563a6c` |
| 113 | `theorem` | [coeFn_zpow](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FunctionAEEqFunExtIff.lean/declarations/coefn-zpow.md) | 850 | `result-track:a3af314738e314f96180036b0db072711bd5d28b00b2b28054646516007ec676` |
| 114 | `theorem` | [zpow_toGerm](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FunctionAEEqFunExtIff.lean/declarations/zpow-togerm.md) | 855 | `result-track:ecef4a73f0ba4c277c802184e79e181688bbf84f6108780aac039969dcaa0802` |
| 115 | `instance` | [instAddGroup](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FunctionAEEqFunExtIff.lean/declarations/instaddgroup.md) | 863 | `declaration-track:639e9dc9472129d5b0b5d0e145ef6ac9225ee2b29c36cb05f545bf6db1118f69` |
| 116 | `instance` | [instAddCommGroup](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FunctionAEEqFunExtIff.lean/declarations/instaddcommgroup.md) | 868 | `declaration-track:9d717f10eb36e773d48c3759a581e8cd02665eee3934825e3472a0906e5487da` |
| 117 | `instance` | [instGroup](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FunctionAEEqFunExtIff.lean/declarations/instgroup.md) | 874 | `declaration-track:93d28cd2421ec7b6e09e3cffb05bd2d7a2a22e1eb119bf4a51c19efd3fb5407a` |
| 118 | `instance` | [instCommGroup](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FunctionAEEqFunExtIff.lean/declarations/instcommgroup.md) | 879 | `declaration-track:89f79b6c426c22684186d3ddfc73f205c2441040e1512949f709c156bc0ac67a` |
| 119 | `instance` | [instMulAction](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FunctionAEEqFunExtIff.lean/declarations/instmulaction.md) | 887 | `declaration-track:00f70da5f2a06327c73acd7b6da1fe4b866306f928b8acd0f8e96232a64c5cac` |
| 120 | `instance` | [instDistribMulAction](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FunctionAEEqFunExtIff.lean/declarations/instdistribmulaction.md) | 892 | `declaration-track:3ea778b9834d73b50428d77bc30f6426f923a0e5e0e5cbc48c175d5d7a2d28ff` |
| 121 | `instance` | [instModule](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FunctionAEEqFunExtIff.lean/declarations/instmodule.md) | 898 | `declaration-track:f889027dc25820df046eb98ef38edc23a4da1dc1b7ab56bf3361cbbbd517772b` |
| 122 | `def` | [lintegral](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FunctionAEEqFunExtIff.lean/declarations/lintegral.md) | 908 | `declaration-track:41db939576f392c7a31e1ec8e5aea834b6ceb63b1d544bbf41d854a0697d8445` |
| 123 | `theorem` | [lintegral_mk](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FunctionAEEqFunExtIff.lean/declarations/lintegral-mk.md) | 913 | `result-track:88d46ba1d76a1c607e2f3328cada3b90e7564e0833596a99e5bab5b7a727f9b6` |
| 124 | `theorem` | [lintegral_coeFn](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FunctionAEEqFunExtIff.lean/declarations/lintegral-coefn.md) | 917 | `result-track:b6f5eaccc57f1a378e5313038fb5f503798eb23948f35d3510c6fd6510114de6` |
| 125 | `theorem` | [lintegral_zero](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FunctionAEEqFunExtIff.lean/declarations/lintegral-zero.md) | 922 | `result-track:9ef227f3eab47be886541918e5d916087be80c9fe098ac84142139dab5dff6ff` |
| 126 | `theorem` | [lintegral_eq_zero_iff](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FunctionAEEqFunExtIff.lean/declarations/lintegral-eq-zero-iff.md) | 927 | `result-track:820628c7bed88645d26116098a2aa1a12115f46a048ba0fa5f0bd6df4ff593cd` |
| 127 | `theorem` | [lintegral_add](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FunctionAEEqFunExtIff.lean/declarations/lintegral-add.md) | 931 | `result-track:15cbce1eda6d72ee93122203bc0562353e58d563a51eb01cb88c3aed552ed7f7` |
| 128 | `theorem` | [lintegral_mono](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FunctionAEEqFunExtIff.lean/declarations/lintegral-mono.md) | 935 | `result-track:f53e6cb3b8f3914eddb154a140f3063dd0246c28acb316f84c77363a67d2db03` |
| 129 | `theorem` | [coeFn_abs](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FunctionAEEqFunExtIff.lean/declarations/coefn-abs.md) | 941 | `result-track:147df89c68f7413ecdbd048633544bb4eb2f91cf99a8b0e6340d68322dffea76` |
| 130 | `def` | [posPart](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FunctionAEEqFunExtIff.lean/declarations/pospart.md) | 955 | `declaration-track:5c3634b8c261c61dcbfd6b16df68c592c24c0e3a381b50e8a7d444a51f7d6695` |
| 131 | `theorem` | [posPart_mk](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FunctionAEEqFunExtIff.lean/declarations/pospart-mk.md) | 960 | `result-track:cd92afda78db6fe43090319b64878b5ffc4c044c93dbf620eb075f5649948b34` |
| 132 | `theorem` | [coeFn_posPart](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FunctionAEEqFunExtIff.lean/declarations/coefn-pospart.md) | 967 | `result-track:508489449d84f738df14c5a7332e086c319b132a5dc31728fc9f44d0c5924edf` |
| 133 | `def` | [toAEEqFun](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FunctionAEEqFunExtIff.lean/declarations/toaeeqfun.md) | 987 | `declaration-track:d7fee90d3d2d6c65f76a187d53528a98b4feae01a45aa60ee06b18a9c8ca9255` |
| 134 | `theorem` | [coeFn_toAEEqFun](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FunctionAEEqFunExtIff.lean/declarations/coefn-toaeeqfun.md) | 991 | `result-track:b1b6165d068a5a75297748cfe4f23c2a328ed05de30760c2371080e6be58f633` |
| 135 | `def` | [toAEEqFunMulHom](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FunctionAEEqFunExtIff.lean/declarations/toaeeqfunmulhom.md) | 1001 | `declaration-track:e3c30eed700c5fd56131a7aaeea6528f1deb073864a608b252a1ff0b4cee5f00` |
| 136 | `def` | [toAEEqFunLinearMap](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/FunctionAEEqFunExtIff.lean/declarations/toaeeqfunlinearmap.md) | 1016 | `declaration-track:e2250ea52420511691ff6312f900f8902210e131b84ddf9d82c7c328b2c6dba7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=138f900d24a746d8e14cdf8633ffd7021528487a1779624ff6218cf41e3b1ee2 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/AEEqFun/Varianta69fc3a57e2720810ed52d677800571108c8933ba9a3083bf5ee039f071ad3a1.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/Integration/AEEqFun/Varianta69fc3a57e2720810ed52d677800571108c8933ba9a3083bf5ee039f071ad3a1.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
