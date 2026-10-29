# Verification target: Field Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1fb81d4aecefd021b17bcb6103c68357f55aca0e",
  "lexical_observation_count": 41,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Field/Variantf586d591fa8b7144f6b3b85a255e8435913146fd8af4e3db63fa669db04a3d70.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../ComputerScience/AlgorithmsInComputerScience/FieldNamespaced.lean/index.md) · [Full source](../../../../../ComputerScience/AlgorithmsInComputerScience/FieldNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1fb81d4aecefd021b17bcb6103c68357f55aca0e`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Field/Variantf586d591fa8b7144f6b3b85a255e8435913146fd8af4e3db63fa669db04a3d70.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Field/Variantf586d591fa8b7144f6b3b85a255e8435913146fd8af4e3db63fa669db04a3d70.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [FieldLike](../../../../../ComputerScience/AlgorithmsInComputerScience/FieldNamespaced.lean/declarations/fieldlike.md) | 23 | `declaration-track:94f8a42702e6266f756abb4c403df9a90d8e7482232409cd2489ac97603827f2` |
| 2 | `def` | [sub](../../../../../ComputerScience/AlgorithmsInComputerScience/FieldNamespaced.lean/declarations/sub.md) | 36 | `declaration-track:d8ae46ebe872235658eafc452d61fc32e7bbc39e4274eca1287065400212f4c7` |
| 3 | `def` | [square](../../../../../ComputerScience/AlgorithmsInComputerScience/FieldNamespaced.lean/declarations/square.md) | 39 | `declaration-track:3448a21f2fcf292ec676ad108824f7b3c529dae8d0f5982307962240e6c033f8` |
| 4 | `def` | [cube](../../../../../ComputerScience/AlgorithmsInComputerScience/FieldNamespaced.lean/declarations/cube.md) | 42 | `declaration-track:fe1cfb3eaec8bbc1192eed84517f710e4cfdeb93f25cd564c6a1810559b765e3` |
| 5 | `structure` | [FieldLawCertificate](../../../../../ComputerScience/AlgorithmsInComputerScience/FieldNamespaced.lean/declarations/fieldlawcertificate.md) | 54 | `declaration-track:32c67ead880c175a3f09039014589132b70913a68c83e3bcdc1930b4caef5a83` |
| 6 | `structure` | [FieldEqCertificate](../../../../../ComputerScience/AlgorithmsInComputerScience/FieldNamespaced.lean/declarations/fieldeqcertificate.md) | 98 | `declaration-track:5ca90b0e3f8b9026da9c2c4c3a83438d91fe0d15128191c5b89758b88f37fc58` |
| 7 | `structure` | [LawfulFieldLike](../../../../../ComputerScience/AlgorithmsInComputerScience/FieldNamespaced.lean/declarations/lawfulfieldlike.md) | 106 | `declaration-track:7622fb7c41d965d592dd7661c9aee67ace426b51838eeb570797e9c3bb730a15` |
| 8 | `theorem` | [FieldLawCertificate.zero_ne_one_visible](../../../../../ComputerScience/AlgorithmsInComputerScience/FieldNamespaced.lean/declarations/fieldlawcertificate-zero-ne-one-visible.md) | 112 | `result-track:eb02789727d938fc8bbb6012ed366e03e33d063a0548d9598271dfb198137957` |
| 9 | `theorem` | [LawfulFieldLike.zero_ne_one](../../../../../ComputerScience/AlgorithmsInComputerScience/FieldNamespaced.lean/declarations/lawfulfieldlike-zero-ne-one.md) | 118 | `result-track:3a5f39e567174a0c0fc16a4d5e728a49e8a5a9e8294a1c826da7764b6a80ea2e` |
| 10 | `theorem` | [FieldEqCertificate.ne_of_eq_false](../../../../../ComputerScience/AlgorithmsInComputerScience/FieldNamespaced.lean/declarations/fieldeqcertificate-ne-of-eq-false.md) | 123 | `result-track:8b2aba3704369365fd8321c3e6dd1905d17e1c1f41f2dd9d36307e4fd64d9803` |
| 11 | `theorem` | [FieldEqCertificate.eq_false_of_ne](../../../../../ComputerScience/AlgorithmsInComputerScience/FieldNamespaced.lean/declarations/fieldeqcertificate-eq-false-of-ne.md) | 131 | `result-track:eaacf0259a4d1488ae15eddd26a88647adfd2c3c9a77f0fd16c55ce0f8f7a566` |
| 12 | `theorem` | [LawfulFieldLike.eq_false_of_ne](../../../../../ComputerScience/AlgorithmsInComputerScience/FieldNamespaced.lean/declarations/lawfulfieldlike-eq-false-of-ne.md) | 139 | `result-track:6f7ee7d21452096c32f8eb0ecd413b74e4e22efa21010305467fd6db7fb47308` |
| 13 | `theorem` | [LawfulFieldLike.ne_of_eq_false](../../../../../ComputerScience/AlgorithmsInComputerScience/FieldNamespaced.lean/declarations/lawfulfieldlike-ne-of-eq-false.md) | 146 | `result-track:9efdbc58ed79c5b62162b8fbd1a9aff1eead3ed0e5b02cb4bb0e090d06391f07` |
| 14 | `structure` | [NumberFieldLike](../../../../../ComputerScience/AlgorithmsInComputerScience/FieldNamespaced.lean/declarations/numberfieldlike.md) | 154 | `declaration-track:60081a57f73db65b117a5a626cb9a87db29a734300f1e815ba11a0b9b61ab4fd` |
| 15 | `structure` | [NumberFieldCertificate](../../../../../ComputerScience/AlgorithmsInComputerScience/FieldNamespaced.lean/declarations/numberfieldcertificate.md) | 166 | `declaration-track:8a138e3c482165c0e05b3646cf8e9e95de99d53ebff9849b42a5dffcdbba916c` |
| 16 | `def` | [NumberFieldCertificate.certifiedForBSD](../../../../../ComputerScience/AlgorithmsInComputerScience/FieldNamespaced.lean/declarations/numberfieldcertificate-certifiedforbsd.md) | 184 | `declaration-track:30f241c2daa88993cc3c532fea8462fa6e4379265e3d4e8e81a20c76b2b338a2` |
| 17 | `theorem` | [NumberFieldCertificate.certifiedForBSD_of_fields](../../../../../ComputerScience/AlgorithmsInComputerScience/FieldNamespaced.lean/declarations/numberfieldcertificate-certifiedforbsd-of-fields.md) | 191 | `result-track:20db58c84d55b4c81fca9cba4c61115a42fb5304b49a1950fa4d545b8dfdc1da` |
| 18 | `theorem` | [NumberFieldCertificate.finiteDimensionalOverQ_of_certifiedForBSD](../../../../../ComputerScience/AlgorithmsInComputerScience/FieldNamespaced.lean/declarations/numberfieldcertificate-finitedimensionaloverq-of-certifiedforbsd.md) | 199 | `result-track:319c9f6d69e076de1b455306b5238dad18ac6e3b44011fd3a0dd3ae018c1487d` |
| 19 | `theorem` | [NumberFieldCertificate.characteristicZero_of_certifiedForBSD](../../../../../ComputerScience/AlgorithmsInComputerScience/FieldNamespaced.lean/declarations/numberfieldcertificate-characteristiczero-of-certifiedforbsd.md) | 206 | `result-track:87bf02e304c725ee178d1d5b87a67a7404d95de7e452c1ba0487daa1b4150477` |
| 20 | `inductive` | [NumberFieldArithmeticSourceStatus](../../../../../ComputerScience/AlgorithmsInComputerScience/FieldNamespaced.lean/declarations/numberfieldarithmeticsourcestatus.md) | 214 | `declaration-track:b55f7c3867300395d880e764f590350343ec806067c0a1b22f94bbb8daea346a` |
| 21 | `inductive` | [NumberFieldPlaceKind](../../../../../ComputerScience/AlgorithmsInComputerScience/FieldNamespaced.lean/declarations/numberfieldplacekind.md) | 221 | `declaration-track:2ee2a7c396ca127bf4574c7020e787374e5b7b312a0c9937b9896a45924075e5` |
| 22 | `structure` | [NumberFieldPlaceData](../../../../../ComputerScience/AlgorithmsInComputerScience/FieldNamespaced.lean/declarations/numberfieldplacedata.md) | 234 | `declaration-track:653ebd5ca6ec3bfb20d93ebffeac358b2f17a86991587d99b3f35f26045b2f44` |
| 23 | `structure` | [NumberFieldProductFormulaData](../../../../../ComputerScience/AlgorithmsInComputerScience/FieldNamespaced.lean/declarations/numberfieldproductformuladata.md) | 263 | `declaration-track:c32d751c24cd375eb815544c032a025c6cbc330557f010f7225706fc78ab0f05` |
| 24 | `structure` | [NumberFieldPlaceProductFormulaCertificate](../../../../../ComputerScience/AlgorithmsInComputerScience/FieldNamespaced.lean/declarations/numberfieldplaceproductformulacertificate.md) | 282 | `declaration-track:eeb9d3ede5a220b8992df6f0f5d608a731210fdb66c00b83103741165f885668` |
| 25 | `def` | [NumberFieldPlaceProductFormulaCertificate.certifiedForBSD](../../../../../ComputerScience/AlgorithmsInComputerScience/FieldNamespaced.lean/declarations/numberfieldplaceproductformulacertificate-certifiedforbsd.md) | 294 | `declaration-track:759dc439274190ada067d4299261e99dc396e3e8ad8d4856131a1ab522da5201` |
| 26 | `theorem` | [NumberFieldPlaceProductFormulaCertificate.certifiedForBSD_of_fields](../../../../../ComputerScience/AlgorithmsInComputerScience/FieldNamespaced.lean/declarations/numberfieldplaceproductformulacertificate-certifiedforbsd-of-fields.md) | 309 | `result-track:89eedf9ed8dc6a57b9c4183c36b720b603fb8f9f1632255a6b6726e3b25b4043` |
| 27 | `structure` | [NumberFieldProjectiveSpaceData](../../../../../ComputerScience/AlgorithmsInComputerScience/FieldNamespaced.lean/declarations/numberfieldprojectivespacedata.md) | 334 | `declaration-track:94d7f098c7ad260da671dd69f39550ed261876d6589ca448b1b450a125836c43` |
| 28 | `structure` | [NumberFieldProjectiveHeightData](../../../../../ComputerScience/AlgorithmsInComputerScience/FieldNamespaced.lean/declarations/numberfieldprojectiveheightdata.md) | 362 | `declaration-track:3bde57443b2ca35d51b2bdfcc3b365601b9f1258b07048e6bc7b89851561370f` |
| 29 | `structure` | [NumberFieldProjectiveHeightCertificate](../../../../../ComputerScience/AlgorithmsInComputerScience/FieldNamespaced.lean/declarations/numberfieldprojectiveheightcertificate.md) | 397 | `declaration-track:6152b02251bc8b41f6d55fff110b98693b0bc9c8276d1ba0c3a7f695800988a3` |
| 30 | `def` | [NumberFieldProjectiveHeightCertificate.certifiedForBSD](../../../../../ComputerScience/AlgorithmsInComputerScience/FieldNamespaced.lean/declarations/numberfieldprojectiveheightcertificate-certifiedforbsd.md) | 411 | `declaration-track:48a293527e3c7016b5fd7c0d0f9c8eaa8f55040453363a73838bf203215a4df8` |
| 31 | `theorem` | [NumberFieldProjectiveHeightCertificate.certifiedForBSD_of_fields](../../../../../ComputerScience/AlgorithmsInComputerScience/FieldNamespaced.lean/declarations/numberfieldprojectiveheightcertificate-certifiedforbsd-of-fields.md) | 427 | `result-track:083f173879448b3aba6ac3e756c9e008b939471496d7a0d24f96e451c130d3b1` |
| 32 | `structure` | [NumberFieldNorthcottData](../../../../../ComputerScience/AlgorithmsInComputerScience/FieldNamespaced.lean/declarations/numberfieldnorthcottdata.md) | 454 | `declaration-track:032e3db2bbf09174812e261abb819dd7e6126046ac12cd3513bca22c5375d401` |
| 33 | `structure` | [NumberFieldNorthcottCertificate](../../../../../ComputerScience/AlgorithmsInComputerScience/FieldNamespaced.lean/declarations/numberfieldnorthcottcertificate.md) | 493 | `declaration-track:d64b29d1dd356934d64761506ffe2abd042e609df9ccc3f9cba12c679744b867` |
| 34 | `def` | [NumberFieldNorthcottCertificate.certifiedForBSD](../../../../../ComputerScience/AlgorithmsInComputerScience/FieldNamespaced.lean/declarations/numberfieldnorthcottcertificate-certifiedforbsd.md) | 506 | `declaration-track:8dc272a190f9c6692d74bd8cee737377f445db41c576b41af4abb1ba4efedef0` |
| 35 | `theorem` | [NumberFieldNorthcottCertificate.certifiedForBSD_of_fields](../../../../../ComputerScience/AlgorithmsInComputerScience/FieldNamespaced.lean/declarations/numberfieldnorthcottcertificate-certifiedforbsd-of-fields.md) | 520 | `result-track:fa1e95cdc857c5ace3f421d8e10d831773f167dc12c63f2539ddd8a8eb971731` |
| 36 | `structure` | [FiniteEnumeration](../../../../../ComputerScience/AlgorithmsInComputerScience/FieldNamespaced.lean/declarations/finiteenumeration.md) | 538 | `declaration-track:65b559af816a1eff654cf46ef98736c20649e4a75afa5cffd64c4d80dc1b20ea` |
| 37 | `structure` | [FiniteFieldLike](../../../../../ComputerScience/AlgorithmsInComputerScience/FieldNamespaced.lean/declarations/finitefieldlike.md) | 546 | `declaration-track:6afb1c0bc63eb7ee244677206bbe0e259e98b09dd551952cced42518d79ae700` |
| 38 | `structure` | [SymbolicFiniteField](../../../../../ComputerScience/AlgorithmsInComputerScience/FieldNamespaced.lean/declarations/symbolicfinitefield-source-edition-2.md) | 561 | `declaration-track:deb8b8f14a4887466f453bf49129cf97d1af015a80369cc967f13c9d9f53ddb3` |
| 39 | `def` | [symbolicFiniteField](../../../../../ComputerScience/AlgorithmsInComputerScience/FieldNamespaced.lean/declarations/symbolicfinitefield.md) | 570 | `declaration-track:9a834550ec329435369e7ff8215f6db99e8949a9dfc589edb482334d9e53007f` |
| 40 | `def` | [countWhere](../../../../../ComputerScience/AlgorithmsInComputerScience/FieldNamespaced.lean/declarations/countwhere.md) | 582 | `declaration-track:624999990d882ba90d89ea809197043d248af493820f775624deae7b7ae29d14` |
| 41 | `def` | [residueFieldOps](../../../../../ComputerScience/AlgorithmsInComputerScience/FieldNamespaced.lean/declarations/residuefieldops.md) | 590 | `declaration-track:5415cbc6ca718772f277272c3fd1c174087740c5a1ef22b967573795e91419ef` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d20ee90165da9c4b08a58950e5858dd3862c98b2d2317f3393cc00f8c2252539 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Field/Variantf586d591fa8b7144f6b3b85a255e8435913146fd8af4e3db63fa669db04a3d70.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Field/Variantf586d591fa8b7144f6b3b85a255e8435913146fd8af4e3db63fa669db04a3d70.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
