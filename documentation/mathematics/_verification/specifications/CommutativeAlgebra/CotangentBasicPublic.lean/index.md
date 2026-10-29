# Verification target: Cotangent Basic Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "42c98901b2485eac9cc7ca39d34541979ac3c956",
  "lexical_observation_count": 60,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant45306bb5cca99b49e9bfb879abcf56a4a6d7df9f383520fc61a60d93a9ab2f2e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../CommutativeAlgebra/CotangentBasicPublic.lean/index.md) · [Full source](../../../../CommutativeAlgebra/CotangentBasicPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `42c98901b2485eac9cc7ca39d34541979ac3c956`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant45306bb5cca99b49e9bfb879abcf56a4a6d7df9f383520fc61a60d93a9ab2f2e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant45306bb5cca99b49e9bfb879abcf56a4a6d7df9f383520fc61a60d93a9ab2f2e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [CotangentSpace](../../../../CommutativeAlgebra/CotangentBasicPublic.lean/declarations/cotangentspace.md) | 58 | `declaration-track:a557a2549333038cb7d0eebf1ed42acfb39e3f2f421e72b1f4b5b767300a00fb` |
| 2 | `def` | [cotangentComplex](../../../../CommutativeAlgebra/CotangentBasicPublic.lean/declarations/cotangentcomplex.md) | 61 | `declaration-track:2df8bd2fd9d4bb4b5aad7915e74cda510f56b9a0955299437414901dc27f2486` |
| 3 | `lemma` | [cotangentComplex_mk](../../../../CommutativeAlgebra/CotangentBasicPublic.lean/declarations/cotangentcomplex-mk.md) | 67 | `result-track:6962f72ba22b5699184e3d75971375e211e47075ae82275f18bccb2fd25accce` |
| 4 | `lemma` | [Cotangent.mk_C_mem_ker_cotangentComplex](../../../../CommutativeAlgebra/CotangentBasicPublic.lean/declarations/cotangent-mk-c-mem-ker-cotangentcomplex.md) | 70 | `result-track:15f5903607318d3982b85f5b829529740b4bc0f4b9a37ec76679ab2608968081` |
| 5 | `def` | [_root_.KaehlerDifferential.cotangentComplexBaseChange](../../../../CommutativeAlgebra/CotangentBasicPublic.lean/declarations/root-kaehlerdifferential-cotangentcomplexbasechange.md) | 83 | `declaration-track:c0806fda36e5cfc04915f525f7ffbf91e2e87292c55714c6df11f483c70601fb` |
| 6 | `lemma` | [_root_.KaehlerDifferential.cotangentComplexBaseChange_tmul](../../../../CommutativeAlgebra/CotangentBasicPublic.lean/declarations/root-kaehlerdifferential-cotangentcomplexbasechange-tmul.md) | 91 | `result-track:53b5ddaedd137275959820cdc8dc94f24fa0bff4e5ee1b92966b3601f004dee5` |
| 7 | `lemma` | [cotangentComplexBaseChange_eq_lTensor_cotangentComplex](../../../../CommutativeAlgebra/CotangentBasicPublic.lean/declarations/cotangentcomplexbasechange-eq-ltensor-cotangentcomplex.md) | 98 | `result-track:fc0b56d3d485bc2cdd66d1e28a9733a1f3b4f79a3c09854896ffc8ac3f44e67a` |
| 8 | `lemma` | [lTensor_cotangentComplex_eq_cotangentComplexBaseChange](../../../../CommutativeAlgebra/CotangentBasicPublic.lean/declarations/ltensor-cotangentcomplex-eq-cotangentcomplexbasechange.md) | 108 | `result-track:05d720dd889bcecde1c7e3476e088848fb5d9be59632184b2ffc717698f0395e` |
| 9 | `def` | [map](../../../../CommutativeAlgebra/CotangentBasicPublic.lean/declarations/map.md) | 147 | `declaration-track:3684eac3c50d7fb5e175641c1cfda444b87674c30e2ef7d4d83ef98a7bdd4271` |
| 10 | `lemma` | [map_tmul](../../../../CommutativeAlgebra/CotangentBasicPublic.lean/declarations/map-tmul.md) | 158 | `result-track:73698e784e9b3b4274bdd0946740d3a4d34de529dcd627a317537cb4ba4506b5` |
| 11 | `lemma` | [map_tmul_eq_tmul_map](../../../../CommutativeAlgebra/CotangentBasicPublic.lean/declarations/map-tmul-eq-tmul-map.md) | 165 | `result-track:11701b38d7e5888d8e5ef4781c95b3e7b67e59d0a48264f984b5c48e0599b8f9` |
| 12 | `lemma` | [map_id](../../../../CommutativeAlgebra/CotangentBasicPublic.lean/declarations/map-id.md) | 173 | `result-track:4e1ddcc88a158746283eb7385d30033980ece7cbc1ff5c189472a6c72d14a404` |
| 13 | `lemma` | [map_comp](../../../../CommutativeAlgebra/CotangentBasicPublic.lean/declarations/map-comp.md) | 176 | `result-track:cea989fe495c90d032a76c51b378c24dcbb994670d8aee6b8282e2a4464657e3` |
| 14 | `lemma` | [map_comp_apply](../../../../CommutativeAlgebra/CotangentBasicPublic.lean/declarations/map-comp-apply.md) | 193 | `result-track:b0908c7319e372f63f212e78963c95d8aba36dd889282c676a0f6a79ae1e5918` |
| 15 | `lemma` | [map_cotangentComplex](../../../../CommutativeAlgebra/CotangentBasicPublic.lean/declarations/map-cotangentcomplex.md) | 197 | `result-track:4df14babe01c7a063d3b1fc2b23e0f5f1e67ea2b8dcaa3bee8e3d702924beb81` |
| 16 | `lemma` | [map_comp_cotangentComplex](../../../../CommutativeAlgebra/CotangentBasicPublic.lean/declarations/map-comp-cotangentcomplex.md) | 202 | `result-track:3ac3d2b35a90b4c110b746bee6ddfe090ff6fd5998ca813d0b8874c94ed4a591` |
| 17 | `lemma` | [Hom.sub_aux](../../../../CommutativeAlgebra/CotangentBasicPublic.lean/declarations/hom-sub-aux.md) | 209 | `result-track:dc4d25268767258fd2f367f3cdf8bbd620d367ae52e93c16cd89a11995d5b088` |
| 18 | `def` | [Hom.subToKer](../../../../CommutativeAlgebra/CotangentBasicPublic.lean/declarations/hom-subtoker.md) | 235 | `declaration-track:09f981e93389f4fc667d6bd6d465122b8489108940bf70d2adcf669c7d718155` |
| 19 | `def` | [Hom.sub](../../../../CommutativeAlgebra/CotangentBasicPublic.lean/declarations/hom-sub.md) | 249 | `declaration-track:528a13641daff0f04687ab033b67c21c1bc48cf2dcf075ed3e2effbed3efaaca` |
| 20 | `lemma` | [Hom.sub_one_tmul](../../../../CommutativeAlgebra/CotangentBasicPublic.lean/declarations/hom-sub-one-tmul.md) | 275 | `result-track:3dcaa24739e6cbf9cb2517d23ffa5dcba70fe8219df5145cb14c5265ffaa320f` |
| 21 | `lemma` | [Hom.sub_tmul](../../../../CommutativeAlgebra/CotangentBasicPublic.lean/declarations/hom-sub-tmul.md) | 282 | `result-track:5d67dc54849108f77ddcae20670ea2dd036e66484d801f24ba66f8ff7340aaee` |
| 22 | `lemma` | [CotangentSpace.map_sub_map](../../../../CommutativeAlgebra/CotangentBasicPublic.lean/declarations/cotangentspace-map-sub-map.md) | 287 | `result-track:70faa8272c55e03ba50a58df54b2c0fa5338fd27ff6965d7367df790cc907529` |
| 23 | `lemma` | [Cotangent.map_sub_map](../../../../CommutativeAlgebra/CotangentBasicPublic.lean/declarations/cotangent-map-sub-map.md) | 305 | `result-track:1e1749382d23249b3ea2d894255c35a83b9379c5ab9df9e36a27a670bfe46c32` |
| 24 | `abbrev` | [toKaehler](../../../../CommutativeAlgebra/CotangentBasicPublic.lean/declarations/tokaehler.md) | 319 | `declaration-track:b8d12636cafd6d6e628e49a646d7ae157deb35f2356810f17370735719017d81` |
| 25 | `lemma` | [toKaehler_surjective](../../../../CommutativeAlgebra/CotangentBasicPublic.lean/declarations/tokaehler-surjective.md) | 321 | `result-track:fb257be25bfbd8bc4930c212be1bdc80fad71acce252621b53b82c0388fd8b2e` |
| 26 | `lemma` | [exact_cotangentComplex_toKaehler](../../../../CommutativeAlgebra/CotangentBasicPublic.lean/declarations/exact-cotangentcomplex-tokaehler.md) | 324 | `result-track:7272ee4a2a8224f1a6f3c771cf4add1f826490fb6ce5bf02084fdfd21bb7c0fd` |
| 27 | `def` | [H1Cotangent](../../../../CommutativeAlgebra/CotangentBasicPublic.lean/declarations/h1cotangent-source-edition-2.md) | 333 | `declaration-track:45ef20ee9bf0b02cb51769133e7866f733920e65f7d005123e87c8ebd21ecd98` |
| 28 | `lemma` | [H1Cotangent.val_add](../../../../CommutativeAlgebra/CotangentBasicPublic.lean/declarations/h1cotangent-val-add.md) | 340 | `result-track:3b32b0154fcb0ec6aa999fb0dd9c00c80316ab39f79a01048ce0e47d04ab17ce` |
| 29 | `lemma` | [H1Cotangent.val_zero](../../../../CommutativeAlgebra/CotangentBasicPublic.lean/declarations/h1cotangent-val-zero.md) | 341 | `result-track:a4712be044f39af13bad1f00ae4b186d34998e76ee56200cfe9ee4d8bc4eff63` |
| 30 | `lemma` | [H1Cotangent.val_smul](../../../../CommutativeAlgebra/CotangentBasicPublic.lean/declarations/h1cotangent-val-smul.md) | 342 | `result-track:8a859f5fba11b9a035bed3319fde48369125dfcafedbb67ce236d1d332d92e9a` |
| 31 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/CotangentBasicPublic.lean/declarations/instance-source-edition-3.md) | 345 | `declaration-track:930b180cb4d828d5351fe83d932322eed00f0c0308e52c5b53fb095a6866830e` |
| 32 | `lemma` | [subsingleton_h1Cotangent](../../../../CommutativeAlgebra/CotangentBasicPublic.lean/declarations/subsingleton-h1cotangent.md) | 353 | `result-track:eb25cd5565de2fa00ffa0dcd8ff9c9a9bdb8e096592a992ad21f4dff513668ad` |
| 33 | `def` | [h1Cotangentι](../../../../CommutativeAlgebra/CotangentBasicPublic.lean/declarations/h1cotangent.md) | 360 | `declaration-track:1e09df6fea45ef4e5b1e16d37881e8b52cce729b2c22c784902aeb5544a626e7` |
| 34 | `lemma` | [h1Cotangentι_injective](../../../../CommutativeAlgebra/CotangentBasicPublic.lean/declarations/h1cotangent-injective.md) | 362 | `result-track:7609c3942df35360e56771cb2e130d463745b0380c96e0ba13324bfc902f46b8` |
| 35 | `lemma` | [h1Cotangentι_ext](../../../../CommutativeAlgebra/CotangentBasicPublic.lean/declarations/h1cotangent-ext.md) | 364 | `result-track:b6bc32ec0dc080f885376dbed0f9d225d7b30bd720aa5c98b32564c1f3f3f310` |
| 36 | `lemma` | [exact_hCotangentι_cotangentComplex](../../../../CommutativeAlgebra/CotangentBasicPublic.lean/declarations/exact-hcotangent-cotangentcomplex.md) | 367 | `result-track:e4f0f0fa2d8ec569964a55631d4b1a7a05e0bea3adcfcbc3baa147a3022a58e8` |
| 37 | `def` | [H1Cotangent.map](../../../../CommutativeAlgebra/CotangentBasicPublic.lean/declarations/h1cotangent-map-source-edition-2.md) | 375 | `declaration-track:ccb19d657da90e2444447eac12486f6c62802c8ee35156a6cac7ab4ab43bc7fe` |
| 38 | `lemma` | [H1Cotangent.map_eq](../../../../CommutativeAlgebra/CotangentBasicPublic.lean/declarations/h1cotangent-map-eq.md) | 385 | `result-track:3fd56a4176ed68c02c0a3b28243ce22b70cbd2a298162b9db59b090da6357628` |
| 39 | `lemma` | [H1Cotangent.map_id](../../../../CommutativeAlgebra/CotangentBasicPublic.lean/declarations/h1cotangent-map-id.md) | 393 | `result-track:e76c7d0c390b3a6b68e647732422b3e56a384b9213ef70705fcaf5307c948ee8` |
| 40 | `lemma` | [H1Cotangent.map_comp](../../../../CommutativeAlgebra/CotangentBasicPublic.lean/declarations/h1cotangent-map-comp.md) | 397 | `result-track:cfa517755c4cbcf091e14b047f1404320b01892be64dbe860cd00da2d195deff` |
| 41 | `lemma` | [H1Cotangent.map_comp_apply](../../../../CommutativeAlgebra/CotangentBasicPublic.lean/declarations/h1cotangent-map-comp-apply.md) | 404 | `result-track:9d5f9b21042dd3080d6fed7059730715c83c0949e11a70f92875fea5fc940c80` |
| 42 | `def` | [H1Cotangent.equiv](../../../../CommutativeAlgebra/CotangentBasicPublic.lean/declarations/h1cotangent-equiv.md) | 411 | `declaration-track:f5821cb4a0e1a6bdd3a14002978f23c3dad2b2125e88dbe0972e41882652f66c` |
| 43 | `lemma` | [Cotangent.map_comp_h1Cotangentι](../../../../CommutativeAlgebra/CotangentBasicPublic.lean/declarations/cotangent-map-comp-h1cotangent.md) | 425 | `result-track:4371dcbb872d6c1c314506d880899a3face13e831cb8dcdf706deeab699313e1` |
| 44 | `def` | [cotangentSpaceBasis](../../../../CommutativeAlgebra/CotangentBasicPublic.lean/declarations/cotangentspacebasis.md) | 436 | `declaration-track:f5782d139132304f2e4fdaf854e9bbead9d3c5d3e6614b763331eb104fc55a61` |
| 45 | `lemma` | [cotangentSpaceBasis_repr_tmul](../../../../CommutativeAlgebra/CotangentBasicPublic.lean/declarations/cotangentspacebasis-repr-tmul.md) | 441 | `result-track:98939f013a150896185338cd25f931f6b8afed488c9b457cf5494e3b0cc9fcd1` |
| 46 | `lemma` | [cotangentSpaceBasis_repr_one_tmul](../../../../CommutativeAlgebra/CotangentBasicPublic.lean/declarations/cotangentspacebasis-repr-one-tmul.md) | 449 | `result-track:e7ac221ce07e3bcc50e41f1528976cab49eb2debe69dd563b5834a5c95ff55bd` |
| 47 | `lemma` | [cotangentSpaceBasis_apply](../../../../CommutativeAlgebra/CotangentBasicPublic.lean/declarations/cotangentspacebasis-apply.md) | 454 | `result-track:6fdea3abedb8431194ab4cad109af8c5fc0dc647bf98be54562fa6be557d813c` |
| 48 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/CotangentBasicPublic.lean/declarations/instance.md) | 458 | `declaration-track:4e22a959b01b08197ad26b6147fe4e293f37df98f058da98bd8cba14b00e6b77` |
| 49 | `def` | [cotangentRestrict](../../../../CommutativeAlgebra/CotangentBasicPublic.lean/declarations/cotangentrestrict.md) | 463 | `declaration-track:af9439511d0619c563aebe51e48bfe3dc5855f27ec9bd3c3c266f6da73d9335d` |
| 50 | `lemma` | [cotangentRestrict_mk](../../../../CommutativeAlgebra/CotangentBasicPublic.lean/declarations/cotangentrestrict-mk.md) | 470 | `result-track:11523fc6bf9a200bc4da5c6166acda22c4e370407b0d8aa81bec7ace4c604311` |
| 51 | `lemma` | [repr_CotangentSpaceMap](../../../../CommutativeAlgebra/CotangentBasicPublic.lean/declarations/repr-cotangentspacemap.md) | 494 | `result-track:a8241f29201ccd3b8550823eb90ea1e23b6651b0ecae6c7e20d13f3078ee5077` |
| 52 | `lemma` | [toKaehler_tmul_D](../../../../CommutativeAlgebra/CotangentBasicPublic.lean/declarations/tokaehler-tmul-d.md) | 504 | `result-track:13a90d73347ee618a32eda55c27e369d8e82a9cfa7c91dcaacdcc2a653f80c28` |
| 53 | `lemma` | [toKaehler_cotangentSpaceBasis](../../../../CommutativeAlgebra/CotangentBasicPublic.lean/declarations/tokaehler-cotangentspacebasis.md) | 509 | `result-track:522e363a2554348e95a543168f27683cb846110f599bf330c4a6118dd93f99c0` |
| 54 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/CotangentBasicPublic.lean/declarations/instance-source-edition-4.md) | 521 | `declaration-track:b20321a2c2537c7aea2f5c7b1a998a1f42cdadc8f2b55ae7c834d8d7505d0dd7` |
| 55 | `def` | [Generators.H1Cotangent.equiv](../../../../CommutativeAlgebra/CotangentBasicPublic.lean/declarations/generators-h1cotangent-equiv.md) | 534 | `declaration-track:1d9fc1fe86b2614c6bbae7378eed7bfbf0ff462760c33e4b0e9af56413ef0fc4` |
| 56 | `abbrev` | [H1Cotangent](../../../../CommutativeAlgebra/CotangentBasicPublic.lean/declarations/h1cotangent-source-edition-3.md) | 546 | `declaration-track:cc68b1c69cb12ba79518509ddbf1748656c3927dafdac0fa9fae837d46306fde` |
| 57 | `def` | [H1Cotangent.map](../../../../CommutativeAlgebra/CotangentBasicPublic.lean/declarations/h1cotangent-map.md) | 549 | `declaration-track:1f713c20ac17f5a9cfa153b01d37c7e00f5a69a4c85636e7f5ca446cc33e2ea6` |
| 58 | `def` | [H1Cotangent.mapEquiv](../../../../CommutativeAlgebra/CotangentBasicPublic.lean/declarations/h1cotangent-mapequiv.md) | 553 | `declaration-track:230e1ea901faba522b05725504a3c12dabf07dc1cb198811af3f11a8598ae4ca` |
| 59 | `abbrev` | [Generators.equivH1Cotangent](../../../../CommutativeAlgebra/CotangentBasicPublic.lean/declarations/generators-equivh1cotangent.md) | 578 | `declaration-track:60e1c2559addc2de84607e4047db46a69f8b59b00c88787afc1bd5f5f12e0db1` |
| 60 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/CotangentBasicPublic.lean/declarations/instance-source-edition-2.md) | 585 | `declaration-track:56fbb4ee5eda72c37406289b2d21f0ebbb5587b8543a906e8fcaa9899d090bff` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=2fbeb9660670f2daa033b27be1adf8b390993ea99d56639dd10afd129736bfb8 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant45306bb5cca99b49e9bfb879abcf56a4a6d7df9f383520fc61a60d93a9ab2f2e.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant45306bb5cca99b49e9bfb879abcf56a4a6d7df9f383520fc61a60d93a9ab2f2e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
