# Verification target: Limits Of Products And Equalizers Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0cb07be533ff817a9e71312353f10ec070224669",
  "lexical_observation_count": 34,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/LimitsOfProductsAndEqualizers/Variant8d8c377f69f8d05cc2b62e3818ff3b0b1aead7a5b8eb2e5bcdb6d3096ac9516a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsOfProductsAndEqualizersPublic.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsOfProductsAndEqualizersPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0cb07be533ff817a9e71312353f10ec070224669`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/LimitsOfProductsAndEqualizers/Variant8d8c377f69f8d05cc2b62e3818ff3b0b1aead7a5b8eb2e5bcdb6d3096ac9516a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/LimitsOfProductsAndEqualizers/Variant8d8c377f69f8d05cc2b62e3818ff3b0b1aead7a5b8eb2e5bcdb6d3096ac9516a.lean.json)

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
| 1 | `def` | [buildLimit](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsOfProductsAndEqualizersPublic.lean/declarations/buildlimit.md) | 59 | `declaration-track:88160ed012fa5a09dbf5f78251602385797dd8a13c4af1888cb1f47b76da3138` |
| 2 | `def` | [buildIsLimit](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsOfProductsAndEqualizersPublic.lean/declarations/buildislimit.md) | 80 | `declaration-track:e7c2b072ff986dfa019908c6c92706fb64c252da0242825d3ec24e5eb567d0b5` |
| 3 | `def` | [limitConeOfEqualizerAndProduct](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsOfProductsAndEqualizersPublic.lean/declarations/limitconeofequalizerandproduct.md) | 100 | `declaration-track:4a475d44ab1932d4f198148d5b00789ac35f71f3e9584ad50daa52c9898d358a` |
| 4 | `theorem` | [hasLimit_of_equalizer_and_product](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsOfProductsAndEqualizersPublic.lean/declarations/haslimit-of-equalizer-and-product.md) | 114 | `result-track:d7a2c26f882840248fadb508b4605e80104e0dce68ecd0a9ffce50f381b97d5e` |
| 5 | `def` | [limitSubobjectProduct](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsOfProductsAndEqualizersPublic.lean/declarations/limitsubobjectproduct.md) | 120 | `declaration-track:364d59739e56f59af6c382af5ff89a8198dc819558387f08fd2d25cf3835210e` |
| 6 | `instance` | [limitSubobjectProduct_mono](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsOfProductsAndEqualizersPublic.lean/declarations/limitsubobjectproduct-mono.md) | 126 | `declaration-track:f0e310a7faa46ba09308d3c20232e9182034d6538407d1874634e62216144bfa` |
| 7 | `theorem` | [has_limits_of_hasEqualizers_and_products](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsOfProductsAndEqualizersPublic.lean/declarations/has-limits-of-hasequalizers-and-products.md) | 132 | `result-track:573fbf19a3f2e4d33baf8e8c6c654c24a7c5cb29f649af6313f8b09017b664f1` |
| 8 | `theorem` | [hasFiniteLimits_of_hasEqualizers_and_finite_products](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsOfProductsAndEqualizersPublic.lean/declarations/hasfinitelimits-of-hasequalizers-and-finite-products.md) | 139 | `result-track:a01ec36eb29c046bff2c7af084bd52b9e419348d1c252fbe90345e6f859492db` |
| 9 | `lemma` | [preservesLimit_of_preservesEqualizers_and_product](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsOfProductsAndEqualizersPublic.lean/declarations/preserveslimit-of-preservesequalizers-and-product.md) | 157 | `result-track:abf0bb2b3a57fd23f7d9450bae15f5c6c0405074b13fdc598945aa8141ff5287` |
| 10 | `lemma` | [preservesFiniteLimits_of_preservesEqualizers_and_finiteProducts](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsOfProductsAndEqualizersPublic.lean/declarations/preservesfinitelimits-of-preservesequalizers-and-finiteproducts.md) | 196 | `result-track:cc129497edf3df5f462b39fac04c31ff888bef0dea3ab5528e27f7e6c3186433` |
| 11 | `lemma` | [preservesLimits_of_preservesEqualizers_and_products](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsOfProductsAndEqualizersPublic.lean/declarations/preserveslimits-of-preservesequalizers-and-products.md) | 205 | `result-track:de7adefbcf10e8e3e3fe72a95d635fbbb2d9e4ad895cd136555e9c296decd819` |
| 12 | `def` | [createsLimitsOfShapeOfCreatesEqualizersAndProducts](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsOfProductsAndEqualizersPublic.lean/declarations/createslimitsofshapeofcreatesequalizersandproducts.md) | 227 | `declaration-track:ea5ccecf693397fd1dfa085a665db1e6b28152faaed6403ba8bbb115e2d4185a` |
| 13 | `def` | [createsFiniteLimitsOfCreatesEqualizersAndFiniteProducts](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsOfProductsAndEqualizersPublic.lean/declarations/createsfinitelimitsofcreatesequalizersandfiniteproducts.md) | 248 | `declaration-track:66c61d2dee5670e5970bc731a2fab5542de74ff187dc556a653c4001278055b1` |
| 14 | `def` | [createsLimitsOfSizeOfCreatesEqualizersAndProducts](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsOfProductsAndEqualizersPublic.lean/declarations/createslimitsofsizeofcreatesequalizersandproducts.md) | 261 | `declaration-track:c2e87585814f93d2cc62fc8f44042d8d8e86c64398ed1804e62c13010851f009` |
| 15 | `theorem` | [hasFiniteLimits_of_hasTerminal_and_pullbacks](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsOfProductsAndEqualizersPublic.lean/declarations/hasfinitelimits-of-hasterminal-and-pullbacks.md) | 267 | `result-track:f9d2bb8db1a2c42625673a957ab4cd4be19589fbe0ada4d64b17ee586c9f838a` |
| 16 | `lemma` | [preservesFiniteLimits_of_preservesTerminal_and_pullbacks](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsOfProductsAndEqualizersPublic.lean/declarations/preservesfinitelimits-of-preservesterminal-and-pullbacks.md) | 276 | `result-track:3e32d0d5a74b4573cfd0801e5942545a4f73a49ba05212644ae23140206b7618` |
| 17 | `def` | [createsFiniteLimitsOfCreatesTerminalAndPullbacks](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsOfProductsAndEqualizersPublic.lean/declarations/createsfinitelimitsofcreatesterminalandpullbacks.md) | 295 | `declaration-track:e4d4fadbf5ea6ea5c3c17c37af68bd357070629e3c1d0521e220e97147484611` |
| 18 | `def` | [buildColimit](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsOfProductsAndEqualizersPublic.lean/declarations/buildcolimit.md) | 322 | `declaration-track:6b5a5c2b5f4c6555cf59aee89f14d6340271b81f6fde68ad1d8e664b6286a25b` |
| 19 | `def` | [buildIsColimit](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsOfProductsAndEqualizersPublic.lean/declarations/buildiscolimit.md) | 346 | `declaration-track:f49345c7f23ac2a7b4f87266f29600157f72fc8500dd822acc34255fb28dbd10` |
| 20 | `def` | [colimitCoconeOfCoequalizerAndCoproduct](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsOfProductsAndEqualizersPublic.lean/declarations/colimitcoconeofcoequalizerandcoproduct.md) | 374 | `declaration-track:e7b414ad22727022515f802997ca109cf4f4d2628fac38f31f746be683b29157` |
| 21 | `theorem` | [hasColimit_of_coequalizer_and_coproduct](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsOfProductsAndEqualizersPublic.lean/declarations/hascolimit-of-coequalizer-and-coproduct.md) | 388 | `result-track:ba52678ec7d3c084819f35ff6a9a1fcf960df7596f46ce5cd2e61e4e4560bc4c` |
| 22 | `def` | [colimitQuotientCoproduct](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsOfProductsAndEqualizersPublic.lean/declarations/colimitquotientcoproduct.md) | 394 | `declaration-track:01c98c84d7a8396371616e669d8f5b0ffb1f12762e326082d3141849d8a65993` |
| 23 | `instance` | [colimitQuotientCoproduct_epi](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsOfProductsAndEqualizersPublic.lean/declarations/colimitquotientcoproduct-epi.md) | 400 | `declaration-track:7497dfba6e3edee92a2bf15d5662296a5b82586151cd21942d7c5d8b3e5e3261` |
| 24 | `theorem` | [has_colimits_of_hasCoequalizers_and_coproducts](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsOfProductsAndEqualizersPublic.lean/declarations/has-colimits-of-hascoequalizers-and-coproducts.md) | 406 | `result-track:3db2233a3e75ebac0d2b90e065361f928594d6bdb3459c0535e45f130dcbc7de` |
| 25 | `theorem` | [hasFiniteColimits_of_hasCoequalizers_and_finite_coproducts](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsOfProductsAndEqualizersPublic.lean/declarations/hasfinitecolimits-of-hascoequalizers-and-finite-coproducts.md) | 413 | `result-track:bb36c0173a9ff53eeb33f1f135282dc2dd485b80eac2d902d9e587a2acd700c0` |
| 26 | `lemma` | [preservesColimit_of_preservesCoequalizers_and_coproduct](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsOfProductsAndEqualizersPublic.lean/declarations/preservescolimit-of-preservescoequalizers-and-coproduct.md) | 428 | `result-track:cfc22aeda1937c8e726eb29564ff2ca5a87f2cd2f2325662359d245a57e8ec7a` |
| 27 | `lemma` | [preservesFiniteColimits_of_preservesCoequalizers_and_finiteCoproducts](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsOfProductsAndEqualizersPublic.lean/declarations/preservesfinitecolimits-of-preservescoequalizers-and-finitecoproducts.md) | 470 | `result-track:73a4952ae9b2f5e2a09b6216dcde68d21ad5547c5289660de2d1a81d848f593b` |
| 28 | `lemma` | [preservesColimits_of_preservesCoequalizers_and_coproducts](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsOfProductsAndEqualizersPublic.lean/declarations/preservescolimits-of-preservescoequalizers-and-coproducts.md) | 479 | `result-track:1a39b48045f9b91674df4a2bd1b2a71b65e5ab5ea980e9fc88a90d409ea56bf1` |
| 29 | `def` | [createsColimitsOfShapeOfCreatesCoequalizersAndCoproducts](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsOfProductsAndEqualizersPublic.lean/declarations/createscolimitsofshapeofcreatescoequalizersandcoproducts.md) | 501 | `declaration-track:8bf584979276d345c8b144848947b603874029a3252a7bf67643e8776e71d163` |
| 30 | `def` | [createsFiniteColimitsOfCreatesCoequalizersAndFiniteCoproducts](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsOfProductsAndEqualizersPublic.lean/declarations/createsfinitecolimitsofcreatescoequalizersandfinitecoproducts.md) | 522 | `declaration-track:57f5ec70a518bc7c43ddf4ebddbec029da42c6c3e3dd6f0c9e17ed699b30067f` |
| 31 | `def` | [createsColimitsOfSizeOfCreatesCoequalizersAndCoproducts](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsOfProductsAndEqualizersPublic.lean/declarations/createscolimitsofsizeofcreatescoequalizersandcoproducts.md) | 535 | `declaration-track:94dfa24114f7f1b95d2f63ef716d40317103d05ae0bca268223afc4fa6226208` |
| 32 | `theorem` | [hasFiniteColimits_of_hasInitial_and_pushouts](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsOfProductsAndEqualizersPublic.lean/declarations/hasfinitecolimits-of-hasinitial-and-pushouts.md) | 541 | `result-track:8e904cdd060f0e930b66b487d83fe07586c4fb4ac982c49cb7ae1bc2157f8ad2` |
| 33 | `lemma` | [preservesFiniteColimits_of_preservesInitial_and_pushouts](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsOfProductsAndEqualizersPublic.lean/declarations/preservesfinitecolimits-of-preservesinitial-and-pushouts.md) | 550 | `result-track:9333aa7fc672d502bcb47cf131e0ed4658654d0aa1c77146102c961000343f4c` |
| 34 | `def` | [createsFiniteColimitsOfCreatesInitialAndPushouts](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsOfProductsAndEqualizersPublic.lean/declarations/createsfinitecolimitsofcreatesinitialandpushouts.md) | 571 | `declaration-track:99904d005dd10708cec55cddf38e8c8327b6a36f985e8319ed7fb91a991aafdb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=2bbef9bf839d0368d6de188c86f12686fede227fb2e59f5649c70bdea3e361f7 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/LimitsOfProductsAndEqualizers/Variant8d8c377f69f8d05cc2b62e3818ff3b0b1aead7a5b8eb2e5bcdb6d3096ac9516a.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/LimitsOfProductsAndEqualizers/Variant8d8c377f69f8d05cc2b62e3818ff3b0b1aead7a5b8eb2e5bcdb6d3096ac9516a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
