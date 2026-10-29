# Verification target: Measurably Generated

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "73366e091247b018b2dc5546bb0bce5ce0686750",
  "lexical_observation_count": 48,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/MeasurablyGenerated/Varianta4787a23adb93f31d176f9e0aa53132a51202e9164b3d77e5244b1e8ce802dd2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasurablyGenerated.lean/index.md) · [Full source](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasurablyGenerated.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `73366e091247b018b2dc5546bb0bce5ce0686750`.

Source path: `GRWTSK/Analysis/MeasureTheory/MeasurablyGenerated/Varianta4787a23adb93f31d176f9e0aa53132a51202e9164b3d77e5244b1e8ce802dd2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/MeasurablyGenerated/Varianta4787a23adb93f31d176f9e0aa53132a51202e9164b3d77e5244b1e8ce802dd2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.MeasurableSpace.Constructions` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Filter.AtTopBot.CompleteLattice` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Filter.AtTopBot.CountablyGenerated` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Filter.SmallSets` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Order.LiminfLimsup` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.FinCases` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [generateFrom_singleton](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasurablyGenerated.lean/declarations/generatefrom-singleton.md) | 29 | `result-track:0415ba899c89a7d412a851466ca5371b36571a3793e39bb2e4a668774a8cc047` |
| 2 | `lemma` | [generateFrom_singleton_le](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasurablyGenerated.lean/declarations/generatefrom-singleton-le.md) | 37 | `result-track:8376b4e5f4e6d3a3372da266b29ae67c88d733c28979500ac0e683eb60542f3e` |
| 3 | `theorem` | [measurableSet_generateFrom_singleton_iff](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasurablyGenerated.lean/declarations/measurableset-generatefrom-singleton-iff.md) | 45 | `result-track:3964e85de0b4b7d06764eb2a1c62b25412590603b3ea0940ae2c6d2a8477215a` |
| 4 | `class` | [IsMeasurablyGenerated](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasurablyGenerated.lean/declarations/ismeasurablygenerated.md) | 102 | `declaration-track:9bc26173aef593ad60634c2a1a02bd103622869b25c29e558a4e61016cbed859` |
| 5 | `instance` | [isMeasurablyGenerated_bot](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasurablyGenerated.lean/declarations/ismeasurablygenerated-bot.md) | 105 | `declaration-track:bdc59239fa73403e5754687eccfdb3656036804d14320387019c13885695d627` |
| 6 | `instance` | [isMeasurablyGenerated_top](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasurablyGenerated.lean/declarations/ismeasurablygenerated-top.md) | 108 | `declaration-track:e3da77defcddab2ac1e77497e456f9181f0659640e21ce41fe39d96bd5116b0d` |
| 7 | `theorem` | [Eventually.exists_measurable_mem](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasurablyGenerated.lean/declarations/eventually-exists-measurable-mem.md) | 111 | `result-track:c320373ced6fab852c3fad2bfc4b7262cbeccb2659b8ba3ceb79b0942139e6cf` |
| 8 | `theorem` | [Eventually.exists_measurable_mem_of_smallSets](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasurablyGenerated.lean/declarations/eventually-exists-measurable-mem-of-smallsets.md) | 115 | `result-track:3cffa9b71535cb2813ce2b619f82fffc8f7f43b3ea32f162df355b1f4d66a093` |
| 9 | `instance` | [inf_isMeasurablyGenerated](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasurablyGenerated.lean/declarations/inf-ismeasurablygenerated.md) | 121 | `declaration-track:5f7c1fa3d9f7eb9c47cec64df0cecc21af325fb2645f71442a2617487ab22ba0` |
| 10 | `theorem` | [principal_isMeasurablyGenerated_iff](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasurablyGenerated.lean/declarations/principal-ismeasurablygenerated-iff.md) | 130 | `result-track:1207212275e7d05621eee7bc4a6a040467b50e4778ebef52bc2e84eba1c349a2` |
| 11 | `instance` | [iInf_isMeasurablyGenerated](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasurablyGenerated.lean/declarations/iinf-ismeasurablygenerated.md) | 141 | `declaration-track:61f194817610a729dc928fbd725a37344842b1591142d688b745c5fcacfdd0ed` |
| 12 | `lemma` | [measurableSet_tendsto](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasurablyGenerated.lean/declarations/measurableset-tendsto.md) | 159 | `result-track:978a5f421dde26035b8e545e5fb4576ba77b1618a5888ab900d973ae6171a6b4` |
| 13 | `theorem` | [iUnion_of_monotone_of_frequently](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasurablyGenerated.lean/declarations/iunion-of-monotone-of-frequently.md) | 175 | `result-track:ec03dc25e073e7a8d47a18827cba0804a1c3241d358b488ac6c6674cd9cf15b0` |
| 14 | `theorem` | [iInter_of_antitone_of_frequently](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasurablyGenerated.lean/declarations/iinter-of-antitone-of-frequently.md) | 182 | `result-track:79c473fe178188bf6507311eece0f527647de46757c7c35b22e1c51d55a61296` |
| 15 | `theorem` | [iUnion_of_monotone](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasurablyGenerated.lean/declarations/iunion-of-monotone.md) | 188 | `result-track:251bb9201672cd419f9c326aec73e60772df7aaaf107d4ca54bc946416a23433` |
| 16 | `theorem` | [iInter_of_antitone](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasurablyGenerated.lean/declarations/iinter-of-antitone.md) | 195 | `result-track:6c15414e14352540ee3e41d0737f938922097f7824901f0c16720fea9eb913a1` |
| 17 | `instance` | [Subtype.instMembership](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasurablyGenerated.lean/declarations/subtype-instmembership.md) | 205 | `declaration-track:db0fcb5d7441240933cb34fa34f09641a5c5b97e5e1fd9114b8ae693af888287` |
| 18 | `theorem` | [mem_coe](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasurablyGenerated.lean/declarations/mem-coe.md) | 209 | `result-track:fbe4bb24c841a9746aee5523031fe36eff50a9ac3ba0930bbe44b360454c0575` |
| 19 | `instance` | [Subtype.instEmptyCollection](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasurablyGenerated.lean/declarations/subtype-instemptycollection.md) | 212 | `declaration-track:1e6acb0e64a82b34e2e7c4412fa376e3bcfb358778c361a9b8462f808c06328d` |
| 20 | `theorem` | [coe_empty](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasurablyGenerated.lean/declarations/coe-empty.md) | 216 | `result-track:f973eb438c910c7af091f93e006c4aa49b5e532b22613f617f4aa7b321c5811f` |
| 21 | `instance` | [Subtype.instInsert](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasurablyGenerated.lean/declarations/subtype-instinsert.md) | 219 | `declaration-track:00b0b1fd0e9856bb6827854b94f45bbccc4aaae06694cf51cd55a1c6d1df04b4` |
| 22 | `theorem` | [coe_insert](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasurablyGenerated.lean/declarations/coe-insert.md) | 224 | `result-track:340b6fe7d510bb14331d4f45b1c49b79182ad430339326f0b82c566b187e1d7a` |
| 23 | `instance` | [Subtype.instSingleton](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasurablyGenerated.lean/declarations/subtype-instsingleton.md) | 229 | `declaration-track:fb9f9dfafcb8807c9c298b46d639891ba2ec20d9952df17f115252f3db09b865` |
| 24 | `theorem` | [coe_singleton](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasurablyGenerated.lean/declarations/coe-singleton.md) | 233 | `result-track:c383b310afec5523cba041bc55114036eae9f47f77871b592837d359bb9fd128` |
| 25 | `instance` | [Subtype.instLawfulSingleton](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasurablyGenerated.lean/declarations/subtype-instlawfulsingleton.md) | 237 | `declaration-track:dcb09ffc437e3996b7a99f79e6462f7e6cc6e1a7357ee775da6bf7ed883757b9` |
| 26 | `instance` | [Subtype.instHasCompl](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasurablyGenerated.lean/declarations/subtype-insthascompl.md) | 241 | `declaration-track:81386e89464c960c7e5de7970071337acd3a591d45b0ab7090af0586a99b5337` |
| 27 | `theorem` | [coe_compl](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasurablyGenerated.lean/declarations/coe-compl.md) | 245 | `result-track:e47be5f14dc9c0e0e84a89ad5bd721575e32f6c0acb6713d6032915fcf448295` |
| 28 | `instance` | [Subtype.instUnion](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasurablyGenerated.lean/declarations/subtype-instunion.md) | 248 | `declaration-track:bb871e3fa34084df13f950bc3d6a1a472a97d1d9bc8aa7792cf9814de16f5f0f` |
| 29 | `theorem` | [coe_union](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasurablyGenerated.lean/declarations/coe-union.md) | 252 | `result-track:fa33f459814bab5930b294944caafa54abab465c59788ccb3d4910e2f6982601` |
| 30 | `instance` | [Subtype.instSup](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasurablyGenerated.lean/declarations/subtype-instsup.md) | 255 | `declaration-track:7b7cdd9513be987d75e849196cdc3053261ef45ae42e7758471a18065e898828` |
| 31 | `theorem` | [sup_eq_union](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasurablyGenerated.lean/declarations/sup-eq-union.md) | 259 | `result-track:cbbf15be563863398beffc0fe04bff0b1917097e18e9d25aab33c1cf920c63e4` |
| 32 | `instance` | [Subtype.instInter](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasurablyGenerated.lean/declarations/subtype-instinter.md) | 261 | `declaration-track:9e3020b25e18edd0bbaa6a552f84aed8a00c4a2b51a7c334b9422d46b9116b8a` |
| 33 | `theorem` | [coe_inter](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasurablyGenerated.lean/declarations/coe-inter.md) | 265 | `result-track:ab36d118e753b99c09721d5e6a1d940c43d44dd9651ff019d64e27a7ea981c3e` |
| 34 | `instance` | [Subtype.instInf](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasurablyGenerated.lean/declarations/subtype-instinf.md) | 268 | `declaration-track:ec168bcd555afa9608962fe33df7617c64be556e5a626faf3881030e1cb76687` |
| 35 | `theorem` | [inf_eq_inter](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasurablyGenerated.lean/declarations/inf-eq-inter.md) | 272 | `result-track:2e12f62eb4eb8a30bc1e5ab95c0a1b1093d7aede0cfcd637edcd2b0a3bbb267a` |
| 36 | `instance` | [Subtype.instSDiff](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasurablyGenerated.lean/declarations/subtype-instsdiff.md) | 274 | `declaration-track:cfc3298d23414b2f0a718d3c50488cc51f306f58ab1e64381b0fa9f8a89d2e3d` |
| 37 | `instance` | [Subtype.instHImp](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasurablyGenerated.lean/declarations/subtype-insthimp.md) | 278 | `declaration-track:78610a754a6ed4d0c2870e476bf3104ad71f8579c28a62611df7fd8a1b2405e2` |
| 38 | `theorem` | [coe_sdiff](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasurablyGenerated.lean/declarations/coe-sdiff.md) | 282 | `result-track:3ad78cb475e1783443b887e51b5cc2a12bd38bd1c342e10df8a4c6c12c655167` |
| 39 | `lemma` | [coe_himp](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasurablyGenerated.lean/declarations/coe-himp.md) | 286 | `result-track:d6ac3412859d10ac4f9d3351a94cc8859ef53d6f8fb2dc195d1775c82ee8908a` |
| 40 | `instance` | [Subtype.instBot](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasurablyGenerated.lean/declarations/subtype-instbot.md) | 288 | `declaration-track:3e9251cd1538d3f26eee22d88f06d5b82c4c2daaa227824c9a5eb6fc6b56e27b` |
| 41 | `theorem` | [coe_bot](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasurablyGenerated.lean/declarations/coe-bot.md) | 291 | `result-track:7e452e87c9bd114d7446006fbd7ddf85d68edda66cabebd32b8fc3bd767d382b` |
| 42 | `instance` | [Subtype.instTop](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasurablyGenerated.lean/declarations/subtype-insttop.md) | 294 | `declaration-track:0d2a37c1ca6817ec250480b82905b0d6fbb682088ddd960d1c28ffe5d9a43b40` |
| 43 | `theorem` | [coe_top](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasurablyGenerated.lean/declarations/coe-top.md) | 298 | `result-track:3f4ae8c642bf4edba167d3b68529d781cbb60f3cb9ac8c749059c8a34abfcbc8` |
| 44 | `instance` | [Subtype.instBooleanAlgebra](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasurablyGenerated.lean/declarations/subtype-instbooleanalgebra.md) | 301 | `declaration-track:8b414b55910bb2c80eac5e6d558f7afd20dfc8100017587077b5bbbef262d9a0` |
| 45 | `theorem` | [measurableSet_blimsup](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasurablyGenerated.lean/declarations/measurableset-blimsup.md) | 307 | `result-track:c9c3fd6f79d8c78aaa72202e5b0b125c4fdcd97b077fdd678463d08003b4f18c` |
| 46 | `theorem` | [measurableSet_bliminf](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasurablyGenerated.lean/declarations/measurableset-bliminf.md) | 313 | `result-track:f91bc5ec7dfe76252acf7f015c0efa5f946a6caf446c8941e8b69c8c12f1ab6c` |
| 47 | `theorem` | [measurableSet_limsup](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasurablyGenerated.lean/declarations/measurableset-limsup.md) | 319 | `result-track:315aa49bc2dea2218b22932d1abeee7bef183a15608e3be2a6c2b7a99e37e7d2` |
| 48 | `theorem` | [measurableSet_liminf](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/MeasurablyGenerated.lean/declarations/measurableset-liminf.md) | 324 | `result-track:f64b6059c714f2cfab3400585b8e312ce9993f9c11fbc628e2790213e484e936` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=2709513c525b8ad5f5f528ec265205283cc63c653381cfaa5c879df0c13be4d3 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/MeasureTheory/MeasurablyGenerated/Varianta4787a23adb93f31d176f9e0aa53132a51202e9164b3d77e5244b1e8ce802dd2.lean","GRWTSK/_verification/specifications/Analysis/MeasureTheory/MeasurablyGenerated/Varianta4787a23adb93f31d176f9e0aa53132a51202e9164b3d77e5244b1e8ce802dd2.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
