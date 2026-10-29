# Verification target: Variation Basic Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c7836aa16693a37e7f996edaede97ec168ebeb2e",
  "lexical_observation_count": 38,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/Basic/Variant4fc300cd5d1da688d32f3889e15f7227612635bf6d431dfe93631367a8f74e1e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VariationBasicPublic.lean/index.md) · [Full source](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VariationBasicPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c7836aa16693a37e7f996edaede97ec168ebeb2e`.

Source path: `GRWTSK/Analysis/MeasureTheory/Basic/Variant4fc300cd5d1da688d32f3889e15f7227612635bf6d431dfe93631367a8f74e1e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/Basic/Variant4fc300cd5d1da688d32f3889e15f7227612635bf6d431dfe93631367a8f74e1e.lean.json)

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
| 1 | `lemma` | [sum_finpartition](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VariationBasicPublic.lean/declarations/sum-finpartition.md) | 45 | `result-track:29d3817a61de2b210badea68f05e332f94fc5eaa137a96dd0c72d2209b6c6a80` |
| 2 | `lemma` | [variation_apply](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VariationBasicPublic.lean/declarations/variation-apply.md) | 56 | `result-track:9ca0746341a4c6d1d94cf59af1b517a7fee118bf988bead3571b94c9df7bf690` |
| 3 | `lemma` | [ennrealVariation_apply](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VariationBasicPublic.lean/declarations/ennrealvariation-apply.md) | 60 | `result-track:c7642dc165e6bb29d73067d19424c4c6c9a727a1d6b25d356bf13b1cb4adacc5` |
| 4 | `lemma` | [le_variation](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VariationBasicPublic.lean/declarations/le-variation.md) | 64 | `result-track:0a33a8d274dccf2e50b35fc3ef54f54268317f98f359c5ec5ae13922d9d720a2` |
| 5 | `lemma` | [exists_lt_sum_of_lt_variation](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VariationBasicPublic.lean/declarations/exists-lt-sum-of-lt-variation.md) | 88 | `result-track:4b0ac5fe98f0458d0a5ae748cfa5ab4222883ab1d91ec4ea1f128594e0d57028` |
| 6 | `lemma` | [exists_variation_le_add'](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VariationBasicPublic.lean/declarations/exists-variation-le-add-source-edition-2.md) | 113 | `result-track:e6d8c88156a6138fdc59a06ab65615b3e8818236b629c06504a3484c0cf1c032` |
| 7 | `lemma` | [exists_variation_le_add](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VariationBasicPublic.lean/declarations/exists-variation-le-add.md) | 138 | `result-track:85dab728b69d7c782ce1e9f007c1bad0515c8a40d9bca635b9900df4b2a17fe4` |
| 8 | `theorem` | [enorm_measure_le_variation](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VariationBasicPublic.lean/declarations/enorm-measure-le-variation.md) | 144 | `result-track:10bcdb2c6dedd6da1d96a73740b6b25b9059e1d3ca0597a7385a2acd1142b0b1` |
| 9 | `lemma` | [variation_zero](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VariationBasicPublic.lean/declarations/variation-zero.md) | 155 | `result-track:b989df4f3ebcd124ef92716b37da097dda97a9d5937da5d95c20ddd044a4627b` |
| 10 | `lemma` | [absolutelyContinuous](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VariationBasicPublic.lean/declarations/absolutelycontinuous.md) | 159 | `result-track:e5318eae9e907baf59982ab7ce2d3a057120f866d95c456be884ff6b59c0ca92` |
| 11 | `lemma` | [variation_apply_le_of_forall_enorm_le](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VariationBasicPublic.lean/declarations/variation-apply-le-of-forall-enorm-le.md) | 166 | `result-track:5c8cced53f392e3e9323d81144ac9fadf58d3e4cd34ff2850b4b594bf1849924` |
| 12 | `lemma` | [variation_le_of_forall_enorm_le](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VariationBasicPublic.lean/declarations/variation-le-of-forall-enorm-le.md) | 184 | `result-track:b3cfebdcc2ed2c5978f5ca4df318aaee8668aedcc26c123ce1891137df5938f4` |
| 13 | `lemma` | [variation_add_le](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VariationBasicPublic.lean/declarations/variation-add-le.md) | 188 | `result-track:2a4c268c15d35466cefdc6985fdc35ae8e201127728f37715849b90e3e35c13b` |
| 14 | `lemma` | [variation_finsetSum_le](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VariationBasicPublic.lean/declarations/variation-finsetsum-le.md) | 195 | `result-track:8cb87b3812a3b5a29eeb7ada0720a31a67f5d75f9f1d7be326fa2175b42bb1c7` |
| 15 | `lemma` | [variation_apply_eq_zero](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VariationBasicPublic.lean/declarations/variation-apply-eq-zero.md) | 204 | `result-track:bf56eba964537ec665524c77a7dc3dd8265309cc8b92aed69d8507338b1aab97` |
| 16 | `lemma` | [variation_eq_zero](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VariationBasicPublic.lean/declarations/variation-eq-zero.md) | 213 | `result-track:dba97fe1a8d6675d06df6d7a32228c7c157150b049279e0eee799080a409b403` |
| 17 | `lemma` | [variation_restrict](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VariationBasicPublic.lean/declarations/variation-restrict.md) | 223 | `result-track:dc7667d6f0c7f61a5161040823f8b2068e6399992cf99a9c143d893f698e17de` |
| 18 | `lemma` | [variation_restrict_le](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VariationBasicPublic.lean/declarations/variation-restrict-le.md) | 242 | `result-track:ea4b797d67b9e5439a15a9877e716c9b773b4fee25e108d4425c6959b4640451` |
| 19 | `instance` | [(anonymous)](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VariationBasicPublic.lean/declarations/instance.md) | 247 | `declaration-track:55036e1ee7e524a5b31d0813877f7ad732128484394f3017bbd1da2371293588` |
| 20 | `lemma` | [variation_map_le](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VariationBasicPublic.lean/declarations/variation-map-le.md) | 252 | `result-track:c7f54637ad8110a22b4007de86b281f454c3d3f4e9337b23207fa7b71dfa8372` |
| 21 | `instance` | [(anonymous)](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VariationBasicPublic.lean/declarations/instance-source-edition-3.md) | 258 | `declaration-track:94fb4de452379725b64ef1eaf6ae9cb831c415290fc23ad95ce12e0ff8ac51e6` |
| 22 | `theorem` | [_root_.MeasurableEmbedding.variation_map](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VariationBasicPublic.lean/declarations/root-measurableembedding-variation-map.md) | 261 | `result-track:1e48f12dd5b7359d7acd8dd6f5d9f09043c224626a533fa52ae0883fca25b01e` |
| 23 | `lemma` | [variation_dirac](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VariationBasicPublic.lean/declarations/variation-dirac.md) | 279 | `result-track:76fa4e6416c5270313c701cd330ce91b2b7bc1ae2bd952f2e4393caab9d3ae79` |
| 24 | `lemma` | [variation_apply_singleton](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VariationBasicPublic.lean/declarations/variation-apply-singleton.md) | 288 | `result-track:ed607c7a857c79ac9e1cd754a7d0c86a7730b127b96b487eb9d93d23e0828bbb` |
| 25 | `theorem` | [norm_measure_le_variation](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VariationBasicPublic.lean/declarations/norm-measure-le-variation.md) | 301 | `result-track:86e1dc80afb88cc4c857bf18d145fb54dfc31f2755c2041340d4f3b9319484e2` |
| 26 | `lemma` | [variation_neg](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VariationBasicPublic.lean/declarations/variation-neg.md) | 308 | `result-track:d0d6df1a260f0aea8a55e8f9299ec0aa824591fe768c2fad175b4f658e945ed1` |
| 27 | `lemma` | [variation_sub_le](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VariationBasicPublic.lean/declarations/variation-sub-le.md) | 310 | `result-track:8c826e435ed7a73165168020ca6d00064e606afec2bd2563749ea7f6dea3e0c8` |
| 28 | `lemma` | [variation_smul_le](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VariationBasicPublic.lean/declarations/variation-smul-le.md) | 313 | `result-track:43f9a92e9bc484519f20b2b076ae815209c90d4977ff52397f5e553436b34e01` |
| 29 | `lemma` | [variation_smul](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VariationBasicPublic.lean/declarations/variation-smul.md) | 319 | `result-track:dfccc555ce151af34108879045044f2f020af03314c42be497a4477c3bf635d6` |
| 30 | `instance` | [(anonymous)](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VariationBasicPublic.lean/declarations/instance-source-edition-5.md) | 332 | `declaration-track:e2e0eb67d89b1fd7d350b32908d4fdcfd13f4f6e40ea85b5ea030ad243d8dc48` |
| 31 | `instance` | [(anonymous)](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VariationBasicPublic.lean/declarations/instance-source-edition-4.md) | 337 | `declaration-track:c49d95e3d89fe781b625d64b32b2ad8e1e16247712e20564281f0d8f2e16ba5f` |
| 32 | `instance` | [(anonymous)](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VariationBasicPublic.lean/declarations/instance-source-edition-2.md) | 345 | `declaration-track:6d9150dd6702e9792b35152e62d8d43308a2a807160e6c65efcca9f53721877b` |
| 33 | `lemma` | [_root_.MeasureTheory.Measure.variation_toSignedMeasure](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VariationBasicPublic.lean/declarations/root-measuretheory-measure-variation-tosignedmeasure.md) | 349 | `result-track:e9fcef42a47c6bc3f0da98eb932860480b548f4b54cad630ddab3e370d68c301` |
| 34 | `lemma` | [_root_.MeasureTheory.SignedMeasure.exists_subset_lt_enorm_apply_of_lt_variation](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VariationBasicPublic.lean/declarations/root-measuretheory-signedmeasure-exists-subset-lt-enorm-apply-of-lt-vari.md) | 361 | `result-track:9b494d6de51f69b324d0b0f996962e5952eb260863c356f581bacfe7f6825723` |
| 35 | `lemma` | [iSup_sum_finpartition_parts](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VariationBasicPublic.lean/declarations/isup-sum-finpartition-parts.md) | 429 | `result-track:664bfec30210d8b96aeff7583af9c6bf3085510f19b035f9e9c483688232ac9d` |
| 36 | `lemma` | [preVariationFun_apply_of_ennreal](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VariationBasicPublic.lean/declarations/prevariationfun-apply-of-ennreal.md) | 434 | `result-track:b50586eec2b6037de5c23f68e2032551fa883e474a5f3b304cda74be2cba3100` |
| 37 | `theorem` | [variation_eq_ennrealToMeasure](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VariationBasicPublic.lean/declarations/variation-eq-ennrealtomeasure.md) | 440 | `result-track:c2a67d77d6d2accbbfd56f8dca8406ec737aaa913e463685928aeca54dd44ae4` |
| 38 | `theorem` | [ennrealVariation_eq_self](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/VariationBasicPublic.lean/declarations/ennrealvariation-eq-self.md) | 446 | `result-track:98536c6721bd32cd1e19f558e63ed39ec227b70437fa1593bfdf57390c387d6a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ca2f6fb4e8a34a74885686b06f0ea406c9d33f177f9d74c746bd9c29afc84b6a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/MeasureTheory/Basic/Variant4fc300cd5d1da688d32f3889e15f7227612635bf6d431dfe93631367a8f74e1e.lean","GRWTSK/_verification/specifications/Analysis/MeasureTheory/Basic/Variant4fc300cd5d1da688d32f3889e15f7227612635bf6d431dfe93631367a8f74e1e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
