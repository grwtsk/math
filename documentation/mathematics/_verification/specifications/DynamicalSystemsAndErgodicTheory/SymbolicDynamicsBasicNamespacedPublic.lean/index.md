# Verification target: Symbolic Dynamics Basic Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "31bbc053051c9712a6ce08dac692522a01c3a5b8",
  "lexical_observation_count": 32,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Basic/Variant95f6a5dadfcadb5e45912b2fd8d0851f3e8dcdf2f18c72fcc055084317ede27d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../DynamicalSystemsAndErgodicTheory/SymbolicDynamicsBasicNamespacedPublic.lean/index.md) · [Full source](../../../../DynamicalSystemsAndErgodicTheory/SymbolicDynamicsBasicNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `31bbc053051c9712a6ce08dac692522a01c3a5b8`.

Source path: `GRWTSK/Topology/GeneralTopology/Basic/Variant95f6a5dadfcadb5e45912b2fd8d0851f3e8dcdf2f18c72fcc055084317ede27d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Basic/Variant95f6a5dadfcadb5e45912b2fd8d0851f3e8dcdf2f18c72fcc055084317ede27d.lean.json)

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
| 1 | `def` | [mulShift](../../../../DynamicalSystemsAndErgodicTheory/SymbolicDynamicsBasicNamespacedPublic.lean/declarations/mulshift.md) | 158 | `declaration-track:d6a5cfbc30248abaef16db5274b707b047cd3022c369318f8688e424be4b8082` |
| 2 | `lemma` | [mulShift_apply](../../../../DynamicalSystemsAndErgodicTheory/SymbolicDynamicsBasicNamespacedPublic.lean/declarations/mulshift-apply.md) | 161 | `result-track:b9b754563d2a3a856fd3d692c9983ca5638c049de5159fd8e264abbe9c6b473f` |
| 3 | `lemma` | [mulShift_one](../../../../DynamicalSystemsAndErgodicTheory/SymbolicDynamicsBasicNamespacedPublic.lean/declarations/mulshift-one.md) | 164 | `result-track:ba4c7d27619a67beb8499beca31e1562b5d81d487150260ad68221a7384a3e42` |
| 4 | `lemma` | [mulShift_mul](../../../../DynamicalSystemsAndErgodicTheory/SymbolicDynamicsBasicNamespacedPublic.lean/declarations/mulshift-mul.md) | 170 | `result-track:a6a1c69ece3e48c6b82816e569736a89f0ea3d48bf8aa0d4551275a40e161a51` |
| 5 | `lemma` | [continuous_mulShift](../../../../DynamicalSystemsAndErgodicTheory/SymbolicDynamicsBasicNamespacedPublic.lean/declarations/continuous-mulshift.md) | 179 | `result-track:c032ff98933442e878204266edd4abcb8aab6ca1c52241126c1ee05c52030198` |
| 6 | `def` | [cylinder](../../../../DynamicalSystemsAndErgodicTheory/SymbolicDynamicsBasicNamespacedPublic.lean/declarations/cylinder.md) | 206 | `declaration-track:9ccab003dfff324507d704ff0d16a6d62da41a27553ca30daf456dee8ae7a06c` |
| 7 | `lemma` | [cylinder_eq_set_pi](../../../../DynamicalSystemsAndErgodicTheory/SymbolicDynamicsBasicNamespacedPublic.lean/declarations/cylinder-eq-set-pi.md) | 212 | `result-track:e912ffc51e30554c13ab7319218495b9f7533d1ce8e20863aa644ea79d0e95df` |
| 8 | `lemma` | [mem_cylinder](../../../../DynamicalSystemsAndErgodicTheory/SymbolicDynamicsBasicNamespacedPublic.lean/declarations/mem-cylinder.md) | 216 | `result-track:fd7bbd789676c8043e4b45e29f8358555165d6ce7476d4d56abff9297268c84f` |
| 9 | `lemma` | [isOpen_cylinder](../../../../DynamicalSystemsAndErgodicTheory/SymbolicDynamicsBasicNamespacedPublic.lean/declarations/isopen-cylinder.md) | 222 | `result-track:3db8bafd535fdcba4e8e6d9dd53ab4b731f4c14a7f776b14c27d406982fb97b7` |
| 10 | `lemma` | [isClosed_cylinder](../../../../DynamicalSystemsAndErgodicTheory/SymbolicDynamicsBasicNamespacedPublic.lean/declarations/isclosed-cylinder.md) | 227 | `result-track:94371f441019117f61e76c6ac20a80f0e3fc638c9cab568b5a21cd8157a576fb` |
| 11 | `structure` | [Subshift](../../../../DynamicalSystemsAndErgodicTheory/SymbolicDynamicsBasicNamespacedPublic.lean/declarations/subshift.md) | 241 | `declaration-track:8a115072f7b27ee645035ae2a5d527da81f8ff566414a24ba4dbd0b42fe704b6` |
| 12 | `structure` | [MulSubshift](../../../../DynamicalSystemsAndErgodicTheory/SymbolicDynamicsBasicNamespacedPublic.lean/declarations/mulsubshift.md) | 261 | `declaration-track:28792b2707d9640a80e213e54f43ab848e325b95c6e923f90daded1e5b258f05` |
| 13 | `def` | [mulFullShift](../../../../DynamicalSystemsAndErgodicTheory/SymbolicDynamicsBasicNamespacedPublic.lean/declarations/mulfullshift.md) | 280 | `declaration-track:71f8b447c51d412870c250655316850d1eb81cdf615a7c92fd0e014e6cf2acd2` |
| 14 | `structure` | [Pattern](../../../../DynamicalSystemsAndErgodicTheory/SymbolicDynamicsBasicNamespacedPublic.lean/declarations/pattern.md) | 297 | `declaration-track:7e294d00039540fdf34f8d4c5053720dfa9c7cf3fa0992163d02302d93b6d334` |
| 15 | `def` | [Pattern.mulOccursInAt](../../../../DynamicalSystemsAndErgodicTheory/SymbolicDynamicsBasicNamespacedPublic.lean/declarations/pattern-muloccursinat.md) | 329 | `declaration-track:1d8a6b83980547ec73a22401065888191b4265598556582c4edf1af62939b3fc` |
| 16 | `def` | [mulForbidden](../../../../DynamicalSystemsAndErgodicTheory/SymbolicDynamicsBasicNamespacedPublic.lean/declarations/mulforbidden.md) | 349 | `declaration-track:09839456c858e329671cada9b0dd3f656ceb413235cce419a752718f2e8fb6b7` |
| 17 | `def` | [Pattern.mulShift](../../../../DynamicalSystemsAndErgodicTheory/SymbolicDynamicsBasicNamespacedPublic.lean/declarations/pattern-mulshift.md) | 384 | `declaration-track:e1d6c1cae8e166769f3f15540463b204ecf27a24b78f622c0a6ec8271f2092e3` |
| 18 | `def` | [fromConfig](../../../../DynamicalSystemsAndErgodicTheory/SymbolicDynamicsBasicNamespacedPublic.lean/declarations/fromconfig.md) | 401 | `declaration-track:cf91ab295ba72daa78bb058a337bf370b5393ce781923460b02265bbfe0206bf` |
| 19 | `lemma` | [mulShift_apply_mul_left_of_mem](../../../../DynamicalSystemsAndErgodicTheory/SymbolicDynamicsBasicNamespacedPublic.lean/declarations/mulshift-apply-mul-left-of-mem.md) | 422 | `result-track:fd57c845c69be0b1265f43fb9ab509a65dfefc992bc18503c150add2c530d3b6` |
| 20 | `lemma` | [mulOccursInAt_mulShift](../../../../DynamicalSystemsAndErgodicTheory/SymbolicDynamicsBasicNamespacedPublic.lean/declarations/muloccursinat-mulshift.md) | 451 | `result-track:3ec38ad9f8c80b662a307f1dc563416152dc8b0e2dcd85bf3a6b929e8183c641` |
| 21 | `lemma` | [mapsTo_mulShift_mulForbidden](../../../../DynamicalSystemsAndErgodicTheory/SymbolicDynamicsBasicNamespacedPublic.lean/declarations/mapsto-mulshift-mulforbidden.md) | 465 | `result-track:20a1680df868b637b131f7a00e668e1b4a9f2bbf9ce8fd94e8a9538d789717c1` |
| 22 | `lemma` | [mulOccursInAt_eq_cylinder](../../../../DynamicalSystemsAndErgodicTheory/SymbolicDynamicsBasicNamespacedPublic.lean/declarations/muloccursinat-eq-cylinder.md) | 499 | `result-track:2764e05a693c4de893772518ffdfb97ee87abc1dcb285c7e51a2911100066640` |
| 23 | `lemma` | [isOpen_mulOccursInAt](../../../../DynamicalSystemsAndErgodicTheory/SymbolicDynamicsBasicNamespacedPublic.lean/declarations/isopen-muloccursinat.md) | 527 | `result-track:5e2eec78ff928132f7a03852b2c71e046e429c5350cf1fb8783d15aed1902d0d` |
| 24 | `lemma` | [isClosed_mulForbidden](../../../../DynamicalSystemsAndErgodicTheory/SymbolicDynamicsBasicNamespacedPublic.lean/declarations/isclosed-mulforbidden.md) | 542 | `result-track:f117410e94526a16da7f6302dea03c0454158f5c68f585add8743f53130c4fa3` |
| 25 | `lemma` | [isClosed_mulOccursInAt](../../../../DynamicalSystemsAndErgodicTheory/SymbolicDynamicsBasicNamespacedPublic.lean/declarations/isclosed-muloccursinat.md) | 559 | `result-track:e82ae7d6961ce4a00427ff3b3b550230fdec9d310de17276ac50543289729454` |
| 26 | `def` | [MulSubshift.ofForbidden](../../../../DynamicalSystemsAndErgodicTheory/SymbolicDynamicsBasicNamespacedPublic.lean/declarations/mulsubshift-offorbidden.md) | 583 | `declaration-track:3ae0dd5895964747f281d814bf906b8baa9ab33de7e990342a555f39c627bd9b` |
| 27 | `lemma` | [finite_setOfPred_pattern_support_eq](../../../../DynamicalSystemsAndErgodicTheory/SymbolicDynamicsBasicNamespacedPublic.lean/declarations/finite-setofpred-pattern-support-eq.md) | 596 | `result-track:e775b385e6ba53663d1369e9b72b0808523c73ed7c8f36a23645cca741249ec9` |
| 28 | `def` | [LanguageOn](../../../../DynamicalSystemsAndErgodicTheory/SymbolicDynamicsBasicNamespacedPublic.lean/declarations/languageon.md) | 629 | `declaration-track:8b428b11a9a9c648d2b7b937fcf9041057cfa7cd21e6adf00fe4e75b88edc0b6` |
| 29 | `lemma` | [languageOn_mono](../../../../DynamicalSystemsAndErgodicTheory/SymbolicDynamicsBasicNamespacedPublic.lean/declarations/languageon-mono.md) | 634 | `result-track:9b01306aa4212bb5b7d55877fe75b5438475ba9a3659464e6948693be3779967` |
| 30 | `lemma` | [languageOn_union](../../../../DynamicalSystemsAndErgodicTheory/SymbolicDynamicsBasicNamespacedPublic.lean/declarations/languageon-union.md) | 642 | `result-track:b0ac798a0d08ef6ab48072a338c5af72d1cf2824b40271a54c3ab823b28bf983` |
| 31 | `lemma` | [languageOn_inter_subset](../../../../DynamicalSystemsAndErgodicTheory/SymbolicDynamicsBasicNamespacedPublic.lean/declarations/languageon-inter-subset.md) | 651 | `result-track:a90c35a138cbd4789695aaaf18b26f092006f2f3e9572634a7b0f288453275b4` |
| 32 | `def` | [MulSubshift.languageOn](../../../../DynamicalSystemsAndErgodicTheory/SymbolicDynamicsBasicNamespacedPublic.lean/declarations/mulsubshift-languageon.md) | 657 | `declaration-track:37e111981ab03eeec3730536c3f6516985b6b77780bb9fa98dd067639540c60e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=63f6a50da591d426f4c60bb374474e0ca25092a5d5aeebe5c25b5eda28f91a5e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/Basic/Variant95f6a5dadfcadb5e45912b2fd8d0851f3e8dcdf2f18c72fcc055084317ede27d.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/Basic/Variant95f6a5dadfcadb5e45912b2fd8d0851f3e8dcdf2f18c72fcc055084317ede27d.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
