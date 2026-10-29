# Verification target: Probability Measure Namespaced To Finite Measure Embedding

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8d46b47d5bb5db46fe2deda3c4ab94a407caf6a5",
  "lexical_observation_count": 48,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/ProbabilityMeasure/Variantdf8f272f8b29a6d436959f4866bd6ae8b55dcab62e83e83d20426930864ec674.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ProbabilityMeasureNamespacedToFiniteMeasureEmbedding.lean/index.md) · [Full source](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ProbabilityMeasureNamespacedToFiniteMeasureEmbedding.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8d46b47d5bb5db46fe2deda3c4ab94a407caf6a5`.

Source path: `GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/ProbabilityMeasure/Variantdf8f272f8b29a6d436959f4866bd6ae8b55dcab62e83e83d20426930864ec674.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/ProbabilityMeasure/Variantdf8f272f8b29a6d436959f4866bd6ae8b55dcab62e83e83d20426930864ec674.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Measure.FiniteMeasure` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.Average` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [ProbabilityMeasure](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ProbabilityMeasureNamespacedToFiniteMeasureEmbedding.lean/declarations/probabilitymeasure.md) | 108 | `declaration-track:c841ac9baa7bdc229cb9307df52fa3ae1f7b5ddcee57d45e5edc1cdbe52eb462` |
| 2 | `instance` | [(anonymous)](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ProbabilityMeasureNamespacedToFiniteMeasureEmbedding.lean/declarations/instance-source-edition-4.md) | 116 | `declaration-track:469ab0f683f8ee453ccbd1a1744bfe4612a73bdc93012fb1c6fd663b862b0493` |
| 3 | `def` | [toMeasure](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ProbabilityMeasureNamespacedToFiniteMeasureEmbedding.lean/declarations/tomeasure.md) | 123 | `declaration-track:8b4fcb30cac2184573f3c6f999e1968d3e05064227d9b09a9bfbd79d533d46ed` |
| 4 | `instance` | [(anonymous)](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ProbabilityMeasureNamespacedToFiniteMeasureEmbedding.lean/declarations/instance.md) | 126 | `declaration-track:1183e4c61182285b568c96007b1f4fdd4e7d61218271a2f5a489ad1481812e37` |
| 5 | `instance` | [(anonymous)](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ProbabilityMeasureNamespacedToFiniteMeasureEmbedding.lean/declarations/instance-source-edition-5.md) | 129 | `declaration-track:afcd02d798ed5ed0530486cf831f65a61f253c333ed86d076b162cecb91ad357` |
| 6 | `instance` | [(anonymous)](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ProbabilityMeasureNamespacedToFiniteMeasureEmbedding.lean/declarations/instance-source-edition-2.md) | 132 | `declaration-track:3e50133a10898fd989e68757690c2291d2f96068d3e0cd5f773d45e15911dfff` |
| 7 | `theorem` | [val_eq_to_measure](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ProbabilityMeasureNamespacedToFiniteMeasureEmbedding.lean/declarations/val-eq-to-measure.md) | 139 | `result-track:6aacbad852cfe8b28776439af7cc8996ea85b89224b416ee081c770df88b2c52` |
| 8 | `theorem` | [toMeasure_injective](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ProbabilityMeasureNamespacedToFiniteMeasureEmbedding.lean/declarations/tomeasure-injective.md) | 143 | `result-track:6da61992e820908dd4469bb0387e5e56ec64a1717f55e6d92a8975dfa9b4617c` |
| 9 | `theorem` | [coeFn_univ](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ProbabilityMeasureNamespacedToFiniteMeasureEmbedding.lean/declarations/coefn-univ.md) | 148 | `result-track:5b4b2d79ae771d886eb193ba9816408969e4ac501a3c0a5b7394418fde825a21` |
| 10 | `theorem` | [coeFn_univ_ne_zero](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ProbabilityMeasureNamespacedToFiniteMeasureEmbedding.lean/declarations/coefn-univ-ne-zero.md) | 152 | `result-track:81d97fe4cb839e3d9b6f133169bdb71b9627c092a171f95ca83c9f825cc9afe0` |
| 11 | `def` | [toFiniteMeasure](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ProbabilityMeasureNamespacedToFiniteMeasureEmbedding.lean/declarations/tofinitemeasure.md) | 157 | `declaration-track:be2b26ffb5f02b200f7d6161b6a7030e03fc121f566ee1904f59f3bd9a7fae23` |
| 12 | `theorem` | [toMeasure_comp_toFiniteMeasure_eq_toMeasure](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ProbabilityMeasureNamespacedToFiniteMeasureEmbedding.lean/declarations/tomeasure-comp-tofinitemeasure-eq-tomeasure.md) | 162 | `result-track:564db25c9b89aff59bfbfd2fd3e967327819ef063549669725341a530877e97d` |
| 13 | `theorem` | [coeFn_comp_toFiniteMeasure_eq_coeFn](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ProbabilityMeasureNamespacedToFiniteMeasureEmbedding.lean/declarations/coefn-comp-tofinitemeasure-eq-coefn.md) | 168 | `result-track:71ebbb9743d780f302e5bf09d85046d52a780d5d5d72162a5c4ff5e9bdf756c8` |
| 14 | `theorem` | [ennreal_coeFn_eq_coeFn_toMeasure](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ProbabilityMeasureNamespacedToFiniteMeasureEmbedding.lean/declarations/ennreal-coefn-eq-coefn-tomeasure.md) | 174 | `result-track:9f6c992642a2703bda2addf5a27434383341e1023794dd0ddec4dba2697d81e1` |
| 15 | `theorem` | [apply_mono](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ProbabilityMeasureNamespacedToFiniteMeasureEmbedding.lean/declarations/apply-mono.md) | 180 | `result-track:7e42fa6a7ce0a7e0a3622eb37936ae5181a5454b6ed4e3c04d997f8e14c31b98` |
| 16 | `theorem` | [apply_le_one](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ProbabilityMeasureNamespacedToFiniteMeasureEmbedding.lean/declarations/apply-le-one.md) | 185 | `result-track:db2f2f1b7b8f50560900ad83155462cd1fc6544db0b23de2647cd6f90dd27c43` |
| 17 | `theorem` | [nonempty](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ProbabilityMeasureNamespacedToFiniteMeasureEmbedding.lean/declarations/nonempty.md) | 188 | `result-track:07b4d3798fc827a5dbf995a513c8e2fd6954c27b8fd3e49d390bb3cfad6c628a` |
| 18 | `theorem` | [eq_of_forall_toMeasure_apply_eq](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ProbabilityMeasureNamespacedToFiniteMeasureEmbedding.lean/declarations/eq-of-forall-tomeasure-apply-eq.md) | 197 | `result-track:cb8a845658e93e72a4e5e36a9564fc313fcc7586771d9200699a90bada28024d` |
| 19 | `theorem` | [eq_of_forall_apply_eq](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ProbabilityMeasureNamespacedToFiniteMeasureEmbedding.lean/declarations/eq-of-forall-apply-eq.md) | 204 | `result-track:0fb5a87f2ee4caa4ddb488d2922c6b89aefbb396cccd123d068933a7d46efe33` |
| 20 | `theorem` | [mass_toFiniteMeasure](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ProbabilityMeasureNamespacedToFiniteMeasureEmbedding.lean/declarations/mass-tofinitemeasure.md) | 211 | `result-track:8bb835a304aba0967972df99b8c7145a5c6817491c837ce5eb59f756ad25cb5b` |
| 21 | `theorem` | [toFiniteMeasure_nonzero](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ProbabilityMeasureNamespacedToFiniteMeasureEmbedding.lean/declarations/tofinitemeasure-nonzero.md) | 215 | `result-track:5fd25b638bda456a04febf199d4637df3de149264ef2602b4a2d474044dbedcd` |
| 22 | `theorem` | [testAgainstNN_lipschitz](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ProbabilityMeasureNamespacedToFiniteMeasureEmbedding.lean/declarations/testagainstnn-lipschitz.md) | 222 | `result-track:7701d0ab825ced751c06f63bd690b6b1066c4530e2e3bd3254ea04bc3fe1a186` |
| 23 | `instance` | [(anonymous)](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ProbabilityMeasureNamespacedToFiniteMeasureEmbedding.lean/declarations/instance-source-edition-3.md) | 230 | `declaration-track:42164d9da61c8f2595dd445a25aa6900953b8ae9d2f3008142d585e579e876d9` |
| 24 | `theorem` | [toFiniteMeasure_continuous](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ProbabilityMeasureNamespacedToFiniteMeasureEmbedding.lean/declarations/tofinitemeasure-continuous.md) | 233 | `result-track:9e8d1b27519298d588032e7278e22fac1e3632fb10d72075d400e7e918eadacc` |
| 25 | `def` | [toWeakDualBCNN](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ProbabilityMeasureNamespacedToFiniteMeasureEmbedding.lean/declarations/toweakdualbcnn.md) | 240 | `declaration-track:f52bd477d23414f9fcbc5707bb30d0627aec9634e0e500db54d0cf08dc7ba247` |
| 26 | `theorem` | [coe_toWeakDualBCNN](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ProbabilityMeasureNamespacedToFiniteMeasureEmbedding.lean/declarations/coe-toweakdualbcnn.md) | 245 | `result-track:65be3d28dcca5e974dca289fcb0b8f385c621c8743f9441fa731b9266c9409a5` |
| 27 | `theorem` | [toWeakDualBCNN_apply](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ProbabilityMeasureNamespacedToFiniteMeasureEmbedding.lean/declarations/toweakdualbcnn-apply.md) | 251 | `result-track:97da29f01f6fbb524704bd96839747c0deee5b7c7408a5d7c4293d62bbeb569c` |
| 28 | `theorem` | [toWeakDualBCNN_continuous](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ProbabilityMeasureNamespacedToFiniteMeasureEmbedding.lean/declarations/toweakdualbcnn-continuous.md) | 256 | `result-track:eb5db0a91472085a156ce634cd008658c460cfd3c69a12463090e817622d5a47` |
| 29 | `theorem` | [continuous_testAgainstNN_eval](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ProbabilityMeasureNamespacedToFiniteMeasureEmbedding.lean/declarations/continuous-testagainstnn-eval.md) | 262 | `result-track:1e3849cb38365d131db7bfe277b6c1ac297ac49da677a07c9f945bff060d486b` |
| 30 | `theorem` | [toFiniteMeasure_embedding](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ProbabilityMeasureNamespacedToFiniteMeasureEmbedding.lean/declarations/tofinitemeasure-embedding.md) | 268 | `result-track:a59c5585e25b74fe4919b4538d4b40619932a192654efa8c0bc0988d26fa1406` |
| 31 | `theorem` | [tendsto_nhds_iff_toFiniteMeasure_tendsto_nhds](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ProbabilityMeasureNamespacedToFiniteMeasureEmbedding.lean/declarations/tendsto-nhds-iff-tofinitemeasure-tendsto-nhds.md) | 275 | `result-track:42060566237c108901635b74343ae8303047e3e9c919baf064a2173987315250` |
| 32 | `theorem` | [tendsto_iff_forall_lintegral_tendsto](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ProbabilityMeasureNamespacedToFiniteMeasureEmbedding.lean/declarations/tendsto-iff-forall-lintegral-tendsto.md) | 284 | `result-track:831ac0edcc0d7d003340693ffb4c3386b1b3114fb6993a94538c86df936691fd` |
| 33 | `theorem` | [tendsto_iff_forall_integral_tendsto](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ProbabilityMeasureNamespacedToFiniteMeasureEmbedding.lean/declarations/tendsto-iff-forall-integral-tendsto.md) | 296 | `result-track:7c61be785de556d487600bbedc36db804b887b0203a3bcfe201bb732ab4217aa` |
| 34 | `def` | [normalize](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ProbabilityMeasureNamespacedToFiniteMeasureEmbedding.lean/declarations/normalize.md) | 329 | `declaration-track:767bda1920173e63587edc9eb5418937f71f23ebcaf6e71e350336ffa479d9ce` |
| 35 | `theorem` | [self_eq_mass_mul_normalize](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ProbabilityMeasureNamespacedToFiniteMeasureEmbedding.lean/declarations/self-eq-mass-mul-normalize.md) | 344 | `result-track:b2643fa67a6b1ac1dfea260637e77c58a5cbcc9f0554cb7dfc230f259e5eecc8` |
| 36 | `theorem` | [self_eq_mass_smul_normalize](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ProbabilityMeasureNamespacedToFiniteMeasureEmbedding.lean/declarations/self-eq-mass-smul-normalize.md) | 357 | `result-track:f49247d0a7d24d0582c4ddb83ba93767a4f8ee7c863f72b0993980731ee455b7` |
| 37 | `theorem` | [normalize_eq_of_nonzero](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ProbabilityMeasureNamespacedToFiniteMeasureEmbedding.lean/declarations/normalize-eq-of-nonzero.md) | 364 | `result-track:56467da2f5e671ff72aefa30962994838ea5bdcc6b8a6b36ec845ca6f5e302d2` |
| 38 | `theorem` | [normalize_eq_inv_mass_smul_of_nonzero](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ProbabilityMeasureNamespacedToFiniteMeasureEmbedding.lean/declarations/normalize-eq-inv-mass-smul-of-nonzero.md) | 369 | `result-track:c4581036f4157e97e8fe12b82a1f95e8a65b3f43fe0c6012cf5b64993c27ef25` |
| 39 | `theorem` | [toMeasure_normalize_eq_of_nonzero](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ProbabilityMeasureNamespacedToFiniteMeasureEmbedding.lean/declarations/tomeasure-normalize-eq-of-nonzero.md) | 377 | `result-track:4a9bfa2a17578bccf99ba75ebaaeb7914631307bfd4df513188b1fc1915fdcd5` |
| 40 | `theorem` | [Probability Measure Namespaced To Finite Measure Embedding](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ProbabilityMeasureNamespacedToFiniteMeasureEmbedding.lean/declarations/root-grwtsk-probabilityandmathematicalstatistics-probabilityfoundations.md) | 386 | `result-track:7b4f2d8f5f692b48a45b5b05d6c9ab9532fc0d9fbf04d0653babf671f7786ff9` |
| 41 | `theorem` | [average_eq_integral_normalize](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ProbabilityMeasureNamespacedToFiniteMeasureEmbedding.lean/declarations/average-eq-integral-normalize.md) | 397 | `result-track:9127779a04a0ec38ffab477761aefd757c1238f77e8be6c9e722331c1d52e9e5` |
| 42 | `theorem` | [testAgainstNN_eq_mass_mul](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ProbabilityMeasureNamespacedToFiniteMeasureEmbedding.lean/declarations/testagainstnn-eq-mass-mul.md) | 408 | `result-track:cf010b7ad27b3798433fd04ca75dd96f644af813ffea6ad02dee2905dd718606` |
| 43 | `theorem` | [normalize_testAgainstNN](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ProbabilityMeasureNamespacedToFiniteMeasureEmbedding.lean/declarations/normalize-testagainstnn.md) | 414 | `result-track:8248fab84c9365e92c8e8ad4a977c41bee6d6a43fcb905d97ef8428d0175b9bd` |
| 44 | `theorem` | [tendsto_testAgainstNN_of_tendsto_normalize_testAgainstNN_of_tendsto_mass](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ProbabilityMeasureNamespacedToFiniteMeasureEmbedding.lean/declarations/tendsto-testagainstnn-of-tendsto-normalize-testagainstnn-of-tendsto-mass.md) | 423 | `result-track:761bc35e1738b79926868d4c4f6ff597d189e7bc302b09110ee4ee2b7c9ac645` |
| 45 | `theorem` | [tendsto_normalize_testAgainstNN_of_tendsto](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ProbabilityMeasureNamespacedToFiniteMeasureEmbedding.lean/declarations/tendsto-normalize-testagainstnn-of-tendsto.md) | 442 | `result-track:873027269bd0fcb37ba0eca14a0c1668d6f15d5c712ee04cd7c533b06f1354e9` |
| 46 | `theorem` | [tendsto_of_tendsto_normalize_testAgainstNN_of_tendsto_mass](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ProbabilityMeasureNamespacedToFiniteMeasureEmbedding.lean/declarations/tendsto-of-tendsto-normalize-testagainstnn-of-tendsto-mass.md) | 470 | `result-track:bc090e187bdb61c81642819f92e5e8a0fbd7b434fe160404e6741b270c142768` |
| 47 | `theorem` | [tendsto_normalize_of_tendsto](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ProbabilityMeasureNamespacedToFiniteMeasureEmbedding.lean/declarations/tendsto-normalize-of-tendsto.md) | 480 | `result-track:4c0b86940faea0623d285a155e5c6c5072aa3ae5b5c28aacdd18d48df85c0c4a` |
| 48 | `theorem` | [tendsto_normalize_iff_tendsto](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/ProbabilityMeasureNamespacedToFiniteMeasureEmbedding.lean/declarations/tendsto-normalize-iff-tendsto.md) | 490 | `result-track:dad7cb8c27055ea9a0c0f9c0ef015a7bc9722504ad33f8058c0d1f3950e518f3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c20b531f10064e09a100491344b9505c41d3e502192c8ab98d8f749f1e644d0c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/ProbabilityMeasure/Variantdf8f272f8b29a6d436959f4866bd6ae8b55dcab62e83e83d20426930864ec674.lean","GRWTSK/_verification/specifications/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/ProbabilityMeasure/Variantdf8f272f8b29a6d436959f4866bd6ae8b55dcab62e83e83d20426930864ec674.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
