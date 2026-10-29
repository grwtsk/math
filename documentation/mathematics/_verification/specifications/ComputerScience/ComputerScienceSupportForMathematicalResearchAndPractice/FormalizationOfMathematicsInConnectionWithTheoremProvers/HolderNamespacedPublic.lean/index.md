# Verification target: Holder Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0070d63aa16146e4fd79b4568c5f5fd3a08b6cd3",
  "lexical_observation_count": 31,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Holder/Variant258b0b6420254966063018ad7db51a44cd3710a35ab4d811086d63dc37f8777b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/HolderNamespacedPublic.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/HolderNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0070d63aa16146e4fd79b4568c5f5fd3a08b6cd3`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Holder/Variant258b0b6420254966063018ad7db51a44cd3710a35ab4d811086d63dc37f8777b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Holder/Variant258b0b6420254966063018ad7db51a44cd3710a35ab4d811086d63dc37f8777b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [HolderTriple](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/HolderNamespacedPublic.lean/declarations/holdertriple.md) | 50 | `declaration-track:8dbf032669161ac16997b3de191eabefdbc93b0400751514a88f8b58022f5399` |
| 2 | `abbrev` | [HolderConjugate](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/HolderNamespacedPublic.lean/declarations/holderconjugate.md) | 54 | `declaration-track:ef29a14f21d2e2a1fbae124fc5b192fe3a9be82b1bd1d4f7c8ede37597a0aaa5` |
| 3 | `lemma` | [holderConjugate_iff](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/HolderNamespacedPublic.lean/declarations/holderconjugate-iff.md) | 56 | `result-track:a3041199d51ef87c6d97afa2534cdea9b7d64ca413ba2ddcf1e95f289a10c668` |
| 4 | `lemma` | [of](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/HolderNamespacedPublic.lean/declarations/of.md) | 65 | `result-track:46cf8b7eeec901deae9640343c5f396eb4ac01902a5cd752f3f546a9e797b03b` |
| 5 | `instance` | [symm](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/HolderNamespacedPublic.lean/declarations/symm.md) | 70 | `declaration-track:8b0d7c3e34ac998419f5e4d967c8ea9ac72c4a5b0905b51f38151dedc01bfcb5` |
| 6 | `instance` | [instInfty](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/HolderNamespacedPublic.lean/declarations/instinfty.md) | 73 | `declaration-track:50d341c0a3aac0422937c8b810afcc6850b1650dfa879d8fb6271fc5639a944f` |
| 7 | `instance` | [instZero](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/HolderNamespacedPublic.lean/declarations/instzero.md) | 76 | `declaration-track:139f635989721aed6a477bd4d0f95fdbb1a6d5abf44b31da6a49d9659c146f69` |
| 8 | `lemma` | [inv_eq](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/HolderNamespacedPublic.lean/declarations/inv-eq.md) | 81 | `result-track:3e3312513bd055c0aaa7d71a1a053d0f68ad95ad5c61e6f6f89ab4c3a13d9be2` |
| 9 | `lemma` | [unique](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/HolderNamespacedPublic.lean/declarations/unique-source-edition-2.md) | 83 | `result-track:75cb40c58ef6d1a7c07944d0dbe1cc999ab04de7ab66870ed9e53f372b92d64a` |
| 10 | `lemma` | [one_div_add_one_div](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/HolderNamespacedPublic.lean/declarations/one-div-add-one-div.md) | 86 | `result-track:6a4c89b695c700021abfbf2099a500728cfcce05727a01e9440cde40c059c9cf` |
| 11 | `lemma` | [one_div_eq](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/HolderNamespacedPublic.lean/declarations/one-div-eq.md) | 88 | `result-track:0f35beb15d87445686fc9859807f0fd0fadde563d3a710287c4ae7d2e0936344` |
| 12 | `lemma` | [inv_inv_add_inv](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/HolderNamespacedPublic.lean/declarations/inv-inv-add-inv.md) | 91 | `result-track:f95e19d42cc29fb9a8d5a09af22e9a7a7e4222a09e003e5c1616a35fb87211d6` |
| 13 | `lemma` | [le](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/HolderNamespacedPublic.lean/declarations/le.md) | 95 | `result-track:2b7b1a091e02c8d6b9d596c6f45078231154bc4587e160b0290048d1c4515aa5` |
| 14 | `lemma` | [inv_le_inv](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/HolderNamespacedPublic.lean/declarations/inv-le-inv.md) | 99 | `result-track:47c3a1e1c2dbfefec79942a4a8eb3ab04e6ec42ed9ab284083a109db59e8bac2` |
| 15 | `lemma` | [inv_sub_inv_eq_inv](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/HolderNamespacedPublic.lean/declarations/inv-sub-inv-eq-inv.md) | 103 | `result-track:3e7acb634680a25d2b1b995afd4d93ccefce7d708553fc15a0efc44628edf8dd` |
| 16 | `lemma` | [inv_sub_inv_eq_inv'](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/HolderNamespacedPublic.lean/declarations/inv-sub-inv-eq-inv-source-edition-2.md) | 110 | `result-track:ecf3298f1e9bd85a2712610650f459577e5a75b8d028383a21c3c9aa74aab95d` |
| 17 | `lemma` | [unique_of_ne_zero](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/HolderNamespacedPublic.lean/declarations/unique-of-ne-zero.md) | 122 | `result-track:97e348941467efb90cac598e6bdda778e96501430615a56d0ae8a54579c88177` |
| 18 | `lemma` | [holderConjugate_div_div](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/HolderNamespacedPublic.lean/declarations/holderconjugate-div-div.md) | 125 | `result-track:2695df8646809194253fe8a61b2928b671dd498b44a3bd242c2d697769c75f88` |
| 19 | `instance` | [symm](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/HolderNamespacedPublic.lean/declarations/symm-source-edition-2.md) | 138 | `declaration-track:e7bd6b20050c61d90217fb95c47e71e413afe90a865365eed735e0a770d5438d` |
| 20 | `instance` | [instTwoTwo](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/HolderNamespacedPublic.lean/declarations/insttwotwo.md) | 141 | `declaration-track:52b8eeea06961a7237c6b24c294ef505e06b030663b4efe7904891c4741a0284` |
| 21 | `instance` | [instOneInfty](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/HolderNamespacedPublic.lean/declarations/instoneinfty.md) | 147 | `declaration-track:d7b7cc0e66ecec7d538b415a1ba98ab34689a99db955e1db2a7ba568b130958e` |
| 22 | `lemma` | [one_le](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/HolderNamespacedPublic.lean/declarations/one-le.md) | 152 | `result-track:1e32e158e3014cf61f120bca1f4091f49ba7c843aa601619c3a5b9c92a8d05c0` |
| 23 | `lemma` | [pos](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/HolderNamespacedPublic.lean/declarations/pos.md) | 155 | `result-track:ad4dba3bc27be487aaa26a19c691605e8f094e3875efd9fa43a581fd28eb01fe` |
| 24 | `lemma` | [ne_zero](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/HolderNamespacedPublic.lean/declarations/ne-zero.md) | 158 | `result-track:9083a818425d0cae5f0ef50dad8051a89b7a3bb27ded33babc803be71dab77ec` |
| 25 | `lemma` | [inv_add_inv_eq_one](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/HolderNamespacedPublic.lean/declarations/inv-add-inv-eq-one.md) | 160 | `result-track:88031dacbad4af21224855275eee169b622bd265a6c66cbe972a9d8dfdfa29dc` |
| 26 | `lemma` | [one_sub_inv](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/HolderNamespacedPublic.lean/declarations/one-sub-inv.md) | 162 | `result-track:a74ac341f2de72898f99ac034f2c29beacc971140a1a76b556227a36712860bf` |
| 27 | `lemma` | [unique](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/HolderNamespacedPublic.lean/declarations/unique.md) | 165 | `result-track:3c6b5d800a7ef2825cc1c7b1c84a5f7b46b0668a51f7faa24a1d57257a531d8e` |
| 28 | `lemma` | [eq_top_iff_eq_one](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/HolderNamespacedPublic.lean/declarations/eq-top-iff-eq-one.md) | 168 | `result-track:0b0a485d217f9bf8dabf12e8ec45aee45b873fe3128f969b54afc6789946d51b` |
| 29 | `lemma` | [ne_top_iff_ne_one](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/HolderNamespacedPublic.lean/declarations/ne-top-iff-ne-one.md) | 177 | `result-track:724308a86e85e8fc22582e78176d4550d2d4034da7f1340569fda93dedee763d` |
| 30 | `lemma` | [lt_top_iff_one_lt](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/HolderNamespacedPublic.lean/declarations/lt-top-iff-one-lt.md) | 180 | `result-track:53a210adc2c97d06f65952f220a4510183446822e5e04b49d4b85aafc634aed8` |
| 31 | `lemma` | [sub_one_mul_inv](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/FormalizationOfMathematicsInConnectionWithTheoremProvers/HolderNamespacedPublic.lean/declarations/sub-one-mul-inv.md) | 184 | `result-track:92e6fae0882d280caaad76585db877b22bd2a21fe0b6ebee4a09aaddf317591f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=355c8cb6a269f64a0233398ce21c4c15dfff3e55cccf8e3faebf637cbf5b0940 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Holder/Variant258b0b6420254966063018ad7db51a44cd3710a35ab4d811086d63dc37f8777b.lean","GRWTSK/_verification/specifications/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Holder/Variant258b0b6420254966063018ad7db51a44cd3710a35ab4d811086d63dc37f8777b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
