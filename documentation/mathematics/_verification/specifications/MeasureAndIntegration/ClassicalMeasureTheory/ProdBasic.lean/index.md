# Verification target: Prod Basic

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ec42012f3ef56d56a62b0b643e9b0dede2e15700",
  "lexical_observation_count": 90,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/Basic/Variante50679355347a34d673b634646d9d8aaca61ae1d2f08f77b7f71b1d12f6ab1b3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ProdBasic.lean/index.md) · [Full source](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ProdBasic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ec42012f3ef56d56a62b0b643e9b0dede2e15700`.

Source path: `GRWTSK/Analysis/MeasureTheory/Basic/Variante50679355347a34d673b634646d9d8aaca61ae1d2f08f77b7f71b1d12f6ab1b3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/Basic/Variante50679355347a34d673b634646d9d8aaca61ae1d2f08f77b7f71b1d12f6ab1b3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Measure.GiryMonad` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Dynamics.Ergodic.MeasurePreserving` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.Lebesgue` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Measure.OpenPos` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [IsPiSystem.prod](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ProdBasic.lean/declarations/ispisystem-prod-source-edition-2.md) | 72 | `result-track:a3bf494022181e166e2727fd81d1a7d3a6fae4ffe289d1d5ff764d7d2770c436` |
| 2 | `theorem` | [IsCountablySpanning.prod](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ProdBasic.lean/declarations/iscountablyspanning-prod.md) | 80 | `result-track:8aa5dd9e9c36e8b24f4b775f704e599e9e7aa690136dc0f1b232df5a4cf268c3` |
| 3 | `theorem` | [generateFrom_prod_eq](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ProdBasic.lean/declarations/generatefrom-prod-eq.md) | 105 | `result-track:9a1f0c559af27db1c80b6bc5c45930f8ede83be7798e2a0cb4952d167cc444b1` |
| 4 | `theorem` | [generateFrom_eq_prod](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ProdBasic.lean/declarations/generatefrom-eq-prod.md) | 135 | `result-track:f18f19a349ad8db15de8b2a8d16bce3dac785279cd938660976e3bdcc4c37b4c` |
| 5 | `theorem` | [generateFrom_prod](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ProdBasic.lean/declarations/generatefrom-prod.md) | 143 | `result-track:93e9b289d28904917c758c5f1a2e7386bb3c7db6228f9162ae43d29bbcde5fa7` |
| 6 | `theorem` | [isPiSystem_prod](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ProdBasic.lean/declarations/ispisystem-prod.md) | 151 | `result-track:1e7e11f1e5b9b0be0497724a817cb89f9a2f2d35cc368353f981e3bad823d3e1` |
| 7 | `theorem` | [measurable_measure_prod_mk_left_finite](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ProdBasic.lean/declarations/measurable-measure-prod-mk-left-finite.md) | 158 | `result-track:af0b935c4724b7b3f3fb2ce2fc95edd445d1f83f333c816add26d9e8461cd279` |
| 8 | `theorem` | [measurable_measure_prod_mk_left](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ProdBasic.lean/declarations/measurable-measure-prod-mk-left.md) | 180 | `result-track:74c92f8f08ad40ff70134de216d4275b8fcf2d933aa3c01645b6a23897530571` |
| 9 | `theorem` | [measurable_measure_prod_mk_right](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ProdBasic.lean/declarations/measurable-measure-prod-mk-right.md) | 191 | `result-track:a5b9d7f3a80b9a7be611051707d821554c40037ba08ee6815b7bd795fa754e39` |
| 10 | `theorem` | [Measurable.map_prod_mk_left](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ProdBasic.lean/declarations/measurable-map-prod-mk-left.md) | 196 | `result-track:67e7a597df05aec2016e801120da6579c8a79aff86c3a43b4e6a30f7a858e54d` |
| 11 | `theorem` | [Measurable.map_prod_mk_right](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ProdBasic.lean/declarations/measurable-map-prod-mk-right.md) | 203 | `result-track:62c6fa064b5339f4ba8eb324dca54f3e91c4dfe0af4e6cc0d8ce13d280b725e0` |
| 12 | `theorem` | [MeasurableEmbedding.prod_mk](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ProdBasic.lean/declarations/measurableembedding-prod-mk.md) | 210 | `result-track:df88f1582df8ca2d2901d09b249983e120924eea9c35c1fa0dfda77e6c9427c5` |
| 13 | `theorem` | [Measurable.lintegral_prod_right'](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ProdBasic.lean/declarations/measurable-lintegral-prod-right.md) | 241 | `result-track:038cf6c7bcf6f5f63ccec3e5520d26206d418699af09313e8345623971bc6161` |
| 14 | `theorem` | [Measurable.lintegral_prod_right](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ProdBasic.lean/declarations/measurable-lintegral-prod-right-source-edition-2.md) | 264 | `result-track:f0763236c9ff2f7df9dd078bba6aa7703aec645f49d366265a10566084074a68` |
| 15 | `theorem` | [Measurable.lintegral_prod_left'](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ProdBasic.lean/declarations/measurable-lintegral-prod-left-source-edition-2.md) | 271 | `result-track:e16a874c8edbccb931979b902f0ffec31beee40a0936faaf824789fd5838b6df` |
| 16 | `theorem` | [Measurable.lintegral_prod_left](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ProdBasic.lean/declarations/measurable-lintegral-prod-left.md) | 279 | `result-track:1a540b019c312610ea20cb2950b071da0f2a863c1bff81dcd4199c0659ddf0fb` |
| 17 | `instance` | [prod.measureSpace](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ProdBasic.lean/declarations/prod-measurespace.md) | 297 | `declaration-track:1a5dd95702e4aaded69e4d33473f9696b0bb9fcc499d46e5d3ead47ef016779f` |
| 18 | `theorem` | [volume_eq_prod](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ProdBasic.lean/declarations/volume-eq-prod.md) | 303 | `result-track:3363fe738ab9a615fc12e1501d789cb65fda4ab39f6f1ad0a80a75c1d888ccb1` |
| 19 | `theorem` | [prod_apply](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ProdBasic.lean/declarations/prod-apply.md) | 308 | `result-track:2b8f899aec5e871f65bb0b3012e7697e935dce09a445803d177282b1c6fdb1ba` |
| 20 | `theorem` | [prod_prod](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ProdBasic.lean/declarations/prod-prod.md) | 317 | `result-track:3d731df1922a4ee41f1743e15875365f1e29826a3fbe76c94a459961a769db18` |
| 21 | `instance` | [prod.instIsOpenPosMeasure](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ProdBasic.lean/declarations/prod-instisopenposmeasure.md) | 348 | `declaration-track:541388439d1459534fec5a4f1dcc8fc12a28a0e35bc0bbf8ab4abf5d522b5d84` |
| 22 | `instance` | [(anonymous)](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ProdBasic.lean/declarations/instance-source-edition-3.md) | 361 | `declaration-track:8e62624623a85559f825534ed0ce5e31dd1a8d6051fc9fd19e0fe870745b9781` |
| 23 | `instance` | [prod.instIsFiniteMeasure](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ProdBasic.lean/declarations/prod-instisfinitemeasure.md) | 367 | `declaration-track:a2c8ae2278ec43aeac64725539f7a0bc480e0cc604900428c8fa018be96d4b66` |
| 24 | `instance` | [(anonymous)](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ProdBasic.lean/declarations/instance.md) | 375 | `declaration-track:631597c8ae03b50b3884a5f2afaa0d48fda6eb6e8f378c6a690a7bbf991c8e8c` |
| 25 | `instance` | [prod.instIsProbabilityMeasure](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ProdBasic.lean/declarations/prod-instisprobabilitymeasure.md) | 379 | `declaration-track:5f0c58993353e51cb2f2f67af085b925a0801562f7326b07249e3126bbc809ac` |
| 26 | `instance` | [(anonymous)](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ProdBasic.lean/declarations/instance-source-edition-5.md) | 385 | `declaration-track:fd8299e62cf878c0ca5cb48416c66054427c48025e1606a2e962c320cf5f17d4` |
| 27 | `instance` | [prod.instIsFiniteMeasureOnCompacts](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ProdBasic.lean/declarations/prod-instisfinitemeasureoncompacts.md) | 390 | `declaration-track:3a7b6a087e1980600119302c9ed44538ef5946493555cf1a2117d03fc627e649` |
| 28 | `instance` | [(anonymous)](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ProdBasic.lean/declarations/instance-source-edition-2.md) | 407 | `declaration-track:825c88929cb47859cdb23a49189cb327fddc052c28fff29d34945193572fd62e` |
| 29 | `theorem` | [ae_measure_lt_top](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ProdBasic.lean/declarations/ae-measure-lt-top.md) | 413 | `result-track:86cdc7981d0d304a69170ba9e4109cde711aaa1f12c47268de9851e766d03ca5` |
| 30 | `theorem` | [measure_prod_null](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ProdBasic.lean/declarations/measure-prod-null.md) | 421 | `result-track:8276360c29f4627a68481257df79bfcd653ddefa0c1de26740f6c6d31a4e5fbd` |
| 31 | `theorem` | [measure_ae_null_of_prod_null](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ProdBasic.lean/declarations/measure-ae-null-of-prod-null.md) | 428 | `result-track:1ebc5246b3cd64d2ab26a8745ccfa31010b1c5fe7480cb215c8e1c61f096b1c0` |
| 32 | `theorem` | [AbsolutelyContinuous.prod](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ProdBasic.lean/declarations/absolutelycontinuous-prod.md) | 439 | `result-track:cc8d227bd6a2157ca7239e6a829f18de4617ba995cfde5107651cce37189fa69` |
| 33 | `theorem` | [ae_ae_of_ae_prod](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ProdBasic.lean/declarations/ae-ae-of-ae-prod.md) | 448 | `result-track:cbfeacea379842c90e1acfa92cf57e84d1192f29dcec7160a642688c1ee060fb` |
| 34 | `def` | [FiniteSpanningSetsIn.prod](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ProdBasic.lean/declarations/finitespanningsetsin-prod.md) | 453 | `declaration-track:acc4140503e0c3559e7d9268c2cf076fd448b0da177b7a77620674bbc291969c` |
| 35 | `theorem` | [quasiMeasurePreserving_fst](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ProdBasic.lean/declarations/quasimeasurepreserving-fst.md) | 465 | `result-track:6b914a2bc92c9ec8c07b4128c7dd85d0028f25431cda98a7b0ae0407755f0722` |
| 36 | `theorem` | [quasiMeasurePreserving_snd](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ProdBasic.lean/declarations/quasimeasurepreserving-snd.md) | 470 | `result-track:6afe4a4d376e3c2f7fd401fdd294fdaf72d094774c6611fca78abef701a817d4` |
| 37 | `instance` | [prod.instSigmaFinite](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ProdBasic.lean/declarations/prod-instsigmafinite.md) | 477 | `declaration-track:778a2334b87ba6da964837d24e04633ff341707a24783e1980dabe4656c17153` |
| 38 | `instance` | [(anonymous)](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ProdBasic.lean/declarations/instance-source-edition-4.md) | 481 | `declaration-track:ebab80a9bfefdeab4ea8f5c1e3a21baf4009e705039669d98ccf5375bd431dcd` |
| 39 | `theorem` | [prod_eq_generateFrom](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ProdBasic.lean/declarations/prod-eq-generatefrom.md) | 487 | `result-track:f23cddf7388cfeb7115c7f9221fe039698671827fa07ef9a558c71d8b3bde25c` |
| 40 | `theorem` | [prod_eq](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ProdBasic.lean/declarations/prod-eq.md) | 501 | `result-track:305cd277ebd9e5917ecedad75b670a9faa213702180c7a39378e46796a87c423` |
| 41 | `theorem` | [prod_swap](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ProdBasic.lean/declarations/prod-swap.md) | 508 | `result-track:8f6651f076c722e71f3436d2d5f94307ebf747a0caafd3f0b91925cc76d02b67` |
| 42 | `theorem` | [measurePreserving_swap](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ProdBasic.lean/declarations/measurepreserving-swap.md) | 514 | `result-track:791e6180936d6bd4aaff7730062ea56a4f491ebe1d8598e175c8b83872179a61` |
| 43 | `theorem` | [prod_apply_symm](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ProdBasic.lean/declarations/prod-apply-symm.md) | 518 | `result-track:b5b2b8d340396c36d2b050ac792116faf0613359eb3c4b240adf93016648b274` |
| 44 | `theorem` | [prodAssoc_prod](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ProdBasic.lean/declarations/prodassoc-prod.md) | 524 | `result-track:698880b3dc027e1ae0909f47d847547d8f9e7e4b63d113b975c90281f7623486` |
| 45 | `theorem` | [prod_restrict](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ProdBasic.lean/declarations/prod-restrict.md) | 539 | `result-track:ffccaa20b7b00b5338e927d41a70c081b539e8f020eba270a847bb4344736670` |
| 46 | `theorem` | [restrict_prod_eq_prod_univ](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ProdBasic.lean/declarations/restrict-prod-eq-prod-univ.md) | 546 | `result-track:d864d671364e441140fcddb7a64e666714322762813981e74f7b89271c3e5ce9` |
| 47 | `theorem` | [prod_dirac](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ProdBasic.lean/declarations/prod-dirac.md) | 552 | `result-track:bf3257e46676c3c2b75cf2d4228732e63c20f5b37f0de90dc1b582433a43bd89` |
| 48 | `theorem` | [dirac_prod](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ProdBasic.lean/declarations/dirac-prod.md) | 558 | `result-track:5fac5d7bfc24259ada5b1e28154f5221fc6d42b5fdf5acf48fc2b0b3177b693d` |
| 49 | `theorem` | [dirac_prod_dirac](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ProdBasic.lean/declarations/dirac-prod-dirac.md) | 564 | `result-track:3f3bf921984ffb7cea8caebacc206827d5053bf3782f6521de7da073c6820219` |
| 50 | `theorem` | [prod_sum](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ProdBasic.lean/declarations/prod-sum.md) | 568 | `result-track:26383e226613e348e76262c38e2ec3e50fe82884854be7071cd8089030aa5548` |
| 51 | `theorem` | [sum_prod](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ProdBasic.lean/declarations/sum-prod.md) | 574 | `result-track:03294b14baf46c2af886620406a34fcd8cd186b36b05b00d17bb3f71c71bdaf3` |
| 52 | `theorem` | [prod_add](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ProdBasic.lean/declarations/prod-add.md) | 580 | `result-track:6b98a6aae0a62c0891e5aa7e818f15d7763ec605e7755d8965f5049d20960266` |
| 53 | `theorem` | [add_prod](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ProdBasic.lean/declarations/add-prod.md) | 585 | `result-track:9a79c12641474f4bcacb0fd1604d4da60fda33f57cf1b16cb3d2812efd08b0c4` |
| 54 | `theorem` | [zero_prod](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ProdBasic.lean/declarations/zero-prod.md) | 591 | `result-track:5e451e4116e0afb9dd084357155c150764fc3ade99dfa5bb0479395dacb3bee7` |
| 55 | `theorem` | [prod_zero](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ProdBasic.lean/declarations/prod-zero.md) | 597 | `result-track:7ae7786fd4e25cbef97540f5be45c63a73645c1bba702fb7386d0d8a47a16fd1` |
| 56 | `theorem` | [map_prod_map](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ProdBasic.lean/declarations/map-prod-map.md) | 600 | `result-track:fe671371c33fee820d731caa993e3d2bb4ad1ffb4391a31c8db0e279947b2b90` |
| 57 | `theorem` | [skew_product](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ProdBasic.lean/declarations/skew-product.md) | 619 | `result-track:beeb104192b54f489680b95104af66e602cb4456e420a57d75232bc075feff30` |
| 58 | `theorem` | [prod](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ProdBasic.lean/declarations/prod.md) | 650 | `result-track:3cc841552509e79eb485045281a6ab1ac60991a46d9eed5421246f09411e7c16` |
| 59 | `theorem` | [prod_of_right](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ProdBasic.lean/declarations/prod-of-right.md) | 661 | `result-track:45dddb15ab40188a16bb1653d856ad26aa25d20c264e1e3c04e1fb2291c4dcb7` |
| 60 | `theorem` | [prod_of_left](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ProdBasic.lean/declarations/prod-of-left.md) | 671 | `result-track:7af1a16f684e2f47cc5a6d76ac5543cfa354084b383f20b24206dcf84cb90232` |
| 61 | `theorem` | [AEMeasurable.prod_swap](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ProdBasic.lean/declarations/aemeasurable-prod-swap.md) | 690 | `result-track:b718f3d4290dd6ce329bd6545c778c020605fa554b470c5e7e79b85b1a649239` |
| 62 | `theorem` | [AEMeasurable.fst](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ProdBasic.lean/declarations/aemeasurable-fst.md) | 696 | `result-track:002589168501ae7e32373f3e73e3e8eeafa20728086b5dc4673060ff11d7ae48` |
| 63 | `theorem` | [AEMeasurable.snd](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ProdBasic.lean/declarations/aemeasurable-snd.md) | 701 | `result-track:471a617953dbcc7ad483db9019a0a2281d6ccdf643998f56dbae3b7c8a2c6e98` |
| 64 | `theorem` | [lintegral_prod_swap](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ProdBasic.lean/declarations/lintegral-prod-swap.md) | 715 | `result-track:0c608c7df9b147e5e52ee2c4da513242dc8a91692ddffea2ccd701cb68ebe12f` |
| 65 | `theorem` | [lintegral_prod_of_measurable](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ProdBasic.lean/declarations/lintegral-prod-of-measurable.md) | 723 | `result-track:83499e65ea09f0e62f635c83d29517074dffe2587dd0fefe202e2be888d5afe3` |
| 66 | `theorem` | [lintegral_prod](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ProdBasic.lean/declarations/lintegral-prod.md) | 753 | `result-track:c23a383e67b034961d9fffc0c83d62ed8a4be4b8193dee895f306e392b596626` |
| 67 | `theorem` | [lintegral_prod_symm](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ProdBasic.lean/declarations/lintegral-prod-symm.md) | 764 | `result-track:195e3a6d45731ee583a8ad710bfca30b5bb109702d6b71b1e4e75d4f54b6efd4` |
| 68 | `theorem` | [lintegral_prod_symm'](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ProdBasic.lean/declarations/lintegral-prod-symm-source-edition-2.md) | 772 | `result-track:c6450ddf58d565a8b0294f2190065212cf981d5cf8189991bde50300c5013e20` |
| 69 | `theorem` | [lintegral_lintegral](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ProdBasic.lean/declarations/lintegral-lintegral.md) | 779 | `result-track:c014e0bb5af01581b12f9c3d0c10f205eddd794d6288fba8593fe727932fa981` |
| 70 | `theorem` | [lintegral_lintegral_symm](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ProdBasic.lean/declarations/lintegral-lintegral-symm.md) | 786 | `result-track:93d1d1df389e21bcbbd97adcf65c5ca68d1d75a0be224606ebe590e291f689d1` |
| 71 | `theorem` | [lintegral_lintegral_swap](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ProdBasic.lean/declarations/lintegral-lintegral-swap.md) | 793 | `result-track:788c496bd53c1c332ddd0a2182c3fbb63ad78e5537d7d81e91f9022689db4f6e` |
| 72 | `theorem` | [lintegral_prod_mul](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ProdBasic.lean/declarations/lintegral-prod-mul.md) | 799 | `result-track:e6d6e2f896566a130e89f928306e1d6ec836c2c0d39fc2c6e951ffa6294633db` |
| 73 | `def` | [fst](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ProdBasic.lean/declarations/fst.md) | 812 | `declaration-track:a3e94bdc62fabb2f959cd2bf58f3d0a3af764e134c9fe820a6ea33ceca9891f6` |
| 74 | `theorem` | [fst_apply](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ProdBasic.lean/declarations/fst-apply.md) | 816 | `result-track:3dcf4120a8d6b8dbf327ab95d5711f0260bafc5d3a66370922016ba47b051af2` |
| 75 | `theorem` | [fst_univ](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ProdBasic.lean/declarations/fst-univ.md) | 820 | `result-track:79171db50a4655e68d1ff7cd7e8336ea08ff9df1d51cc5b888a3864c9f7ca057` |
| 76 | `theorem` | [fst_zero](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ProdBasic.lean/declarations/fst-zero.md) | 823 | `result-track:2ccda7131320973524f9c682559f2506d7336cb0452cf6da107e0d20aae7095c` |
| 77 | `instance` | [fst.instIsFiniteMeasure](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ProdBasic.lean/declarations/fst-instisfinitemeasure.md) | 825 | `declaration-track:66458ac2888476083699cd7d2e5e884a0057b0cb0ad2a690a1e46f2db5ed8888` |
| 78 | `instance` | [fst.instIsProbabilityMeasure](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ProdBasic.lean/declarations/fst-instisprobabilitymeasure.md) | 830 | `declaration-track:309be1a224f6a2afdf566fddd498e7a9eb1be269f9595af3329d913e5b4ad624` |
| 79 | `lemma` | [fst_prod](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ProdBasic.lean/declarations/fst-prod.md) | 837 | `result-track:4b028af3eb13cbc3fa9879bcf7be425ea2d8efd502107ec7cce1c57693d1804b` |
| 80 | `theorem` | [fst_map_prod_mk₀](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ProdBasic.lean/declarations/fst-map-prod-mk-source-edition-2.md) | 841 | `result-track:e0f68f5be350e32a9426e6508d6176e9954b1faf433b61f071b7a6ed5ec4ae8f` |
| 81 | `theorem` | [fst_map_prod_mk](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ProdBasic.lean/declarations/fst-map-prod-mk.md) | 853 | `result-track:6323693266081c1ab71342204cca635bf6d1eb92c44c4f65bf8b0a240588323d` |
| 82 | `def` | [snd](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ProdBasic.lean/declarations/snd.md) | 859 | `declaration-track:74c741630d51f865834b1619cf887eec493a529e9c44d917017d13063f440751` |
| 83 | `theorem` | [snd_apply](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ProdBasic.lean/declarations/snd-apply.md) | 863 | `result-track:48de8dba69d078bfea6bcbb1059a25666e5e37f0b7bc86933ac9a83ef8624af6` |
| 84 | `theorem` | [snd_univ](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ProdBasic.lean/declarations/snd-univ.md) | 867 | `result-track:d9d66015cc0a0adfbe683347f55664ec504108bf42b32515dfbd9817af008fa4` |
| 85 | `theorem` | [snd_zero](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ProdBasic.lean/declarations/snd-zero.md) | 870 | `result-track:cb80786aac3207843942e53bf80337a7ece88b0e8ac5901c72b714a280551885` |
| 86 | `instance` | [snd.instIsFiniteMeasure](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ProdBasic.lean/declarations/snd-instisfinitemeasure.md) | 872 | `declaration-track:c818636856ec905b28d1ac6a39008760b734dcaec9d85bf305bf0e805e7a1bb0` |
| 87 | `instance` | [snd.instIsProbabilityMeasure](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ProdBasic.lean/declarations/snd-instisprobabilitymeasure.md) | 877 | `declaration-track:0f3482f9c4a52ccdfbd9842b8cd8b0e209c692c612415591a2e806107bb5dc7a` |
| 88 | `lemma` | [snd_prod](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ProdBasic.lean/declarations/snd-prod.md) | 884 | `result-track:6affa00cdbcb0b4a0873dfe929ef2bec9f875850a46a84e3e6eb77dfc256e2a3` |
| 89 | `theorem` | [snd_map_prod_mk₀](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ProdBasic.lean/declarations/snd-map-prod-mk-source-edition-2.md) | 888 | `result-track:d98b4295e0c8f94d03dcae8fc20dd8b994da4c9e3a2d056a69d72dcae1dd98f0` |
| 90 | `theorem` | [snd_map_prod_mk](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ProdBasic.lean/declarations/snd-map-prod-mk.md) | 901 | `result-track:8a37e42109a6f8b2557563f39abac296206213574ca94578766b012a0cd40856` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=85b8756b3f2b961b754ee9e646d5017f7d28ef9748cbe12143ac6afc5e8f8e56 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/MeasureTheory/Basic/Variante50679355347a34d673b634646d9d8aaca61ae1d2f08f77b7f71b1d12f6ab1b3.lean","GRWTSK/_verification/specifications/Analysis/MeasureTheory/Basic/Variante50679355347a34d673b634646d9d8aaca61ae1d2f08f77b7f71b1d12f6ab1b3.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
