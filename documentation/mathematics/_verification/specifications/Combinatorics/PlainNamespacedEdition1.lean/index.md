# Verification target: Plain Namespaced Edition1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1dadfd51351e694ce248b985665033300d6d75fb",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Plain/Variantbdce3fc12efae50ea138a4690bf5bb784c050c4671821e2cb9dc91a55dec9734.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../Combinatorics/PlainNamespacedEdition1.lean/index.md) · [Full source](../../../../Combinatorics/PlainNamespacedEdition1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1dadfd51351e694ce248b985665033300d6d75fb`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Plain/Variantbdce3fc12efae50ea138a4690bf5bb784c050c4671821e2cb9dc91a55dec9734.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Plain/Variantbdce3fc12efae50ea138a4690bf5bb784c050c4671821e2cb9dc91a55dec9734.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.TypeTheory.PureTypeSystem.Spaces` — import line 21; external provider; requires a separately pinned dependency.
- `FormalResearch.TypeTheory.PureTypeSystem.Potential` — import line 22; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Node](../../../../Combinatorics/PlainNamespacedEdition1.lean/declarations/node.md) | 39 | `declaration-track:382009908e4a32178f34dc8f0217526d048c806c4d333cc33a1022baa5350dbc` |
| 2 | `structure` | [Key](../../../../Combinatorics/PlainNamespacedEdition1.lean/declarations/key.md) | 48 | `declaration-track:7e8201fd7e957bbb12250036223e55d62fd31d82941dd0a166eb54beb55b4d48` |
| 3 | `theorem` | [sorted](../../../../Combinatorics/PlainNamespacedEdition1.lean/declarations/sorted.md) | 67 | `result-track:af87027b7d29291d87229d2998a1b6c5f3739a5b870301c4b3c0d17a053cc0cc` |
| 4 | `theorem` | [target_reach](../../../../Combinatorics/PlainNamespacedEdition1.lean/declarations/target-reach.md) | 73 | `result-track:3e52bc86aced339ba3324cfe8d32d6a6c1bcf5d1875a17ea31f99ca07f137766` |
| 5 | `theorem` | [open_active](../../../../Combinatorics/PlainNamespacedEdition1.lean/declarations/open-active.md) | 83 | `result-track:cccbe96e90a6cee2368b1226253971efe808d1197260f590692b4cc7f6ad6525` |
| 6 | `theorem` | [domain_edge](../../../../Combinatorics/PlainNamespacedEdition1.lean/declarations/domain-edge.md) | 93 | `result-track:0f64d187e8e7b6bc2b678e7a73b6e86a54fcb350244faa0feb6a23c03a924bf6` |
| 7 | `def` | [target](../../../../Combinatorics/PlainNamespacedEdition1.lean/declarations/target.md) | 100 | `declaration-track:59418540b3453f6a4b78eb0b8541afa99b44d75ddf6fd461c07ed77ef66e03fe` |
| 8 | `def` | [domainNode](../../../../Combinatorics/PlainNamespacedEdition1.lean/declarations/domainnode.md) | 116 | `declaration-track:7f7db8031749846b7e2ef2063c2500cfe69c302cd5fa3bc26ca94b6eea111aaa` |
| 9 | `theorem` | [target_profile](../../../../Combinatorics/PlainNamespacedEdition1.lean/declarations/target-profile.md) | 128 | `result-track:3b3e6505b19522acdb70d5099f6c47359808f04d3a1b05acc069536ea42cd7be` |
| 10 | `theorem` | [domainNode_type](../../../../Combinatorics/PlainNamespacedEdition1.lean/declarations/domainnode-type.md) | 132 | `result-track:97b2f763c2b7aea0f2b068a0dc0c1cd3579602cf04fe406af524bce694b6425f` |
| 11 | `def` | [schema](../../../../Combinatorics/PlainNamespacedEdition1.lean/declarations/schema.md) | 138 | `declaration-track:a7e072887349d693c3b21f36cbd61e2cb700f8e2015cb94b561ce899c07ffdd5` |
| 12 | `theorem` | [target_reach](../../../../Combinatorics/PlainNamespacedEdition1.lean/declarations/target-reach-source-edition-2.md) | 149 | `result-track:a88c844a4bd5e599e079d8abac0cffbd784519af25f61e941df24f2c54a12b01` |
| 13 | `theorem` | [domain_eq](../../../../Combinatorics/PlainNamespacedEdition1.lean/declarations/domain-eq.md) | 154 | `result-track:1dd65ebeb90c2df26c94687bdfd4cbc06b289d141f96193e4adfaed7a7f275ba` |
| 14 | `theorem` | [dependency_path](../../../../Combinatorics/PlainNamespacedEdition1.lean/declarations/dependency-path.md) | 165 | `result-track:d3000d16f3498b8bd090a0fac178e6b39667d012008f89e12da3095916abc7fe` |
| 15 | `theorem` | [dependency_reach](../../../../Combinatorics/PlainNamespacedEdition1.lean/declarations/dependency-reach.md) | 177 | `result-track:c0eb5b5b087bd122fca02a774b91cc83c4de8a857e2211582a57de075217f412` |
| 16 | `theorem` | [dependency_negative](../../../../Combinatorics/PlainNamespacedEdition1.lean/declarations/dependency-negative.md) | 183 | `result-track:25a3bd4afeff54a672e737bbbf6ab7e313904730dcd1bf82e665ac313477bf11` |
| 17 | `theorem` | [dependency_drop](../../../../Combinatorics/PlainNamespacedEdition1.lean/declarations/dependency-drop.md) | 194 | `result-track:3a71ee42863a4bace71f57d77103fdb56fe623392788ecba25ad4a1bfde2e1ef` |
| 18 | `def` | [measure](../../../../Combinatorics/PlainNamespacedEdition1.lean/declarations/measure.md) | 225 | `declaration-track:063c2e443eda2ec8809810f5d5dfec9e9951ab5ae8c982ee5aaaa16a8ea5ce91` |
| 19 | `theorem` | [dependency_wellFounded](../../../../Combinatorics/PlainNamespacedEdition1.lean/declarations/dependency-wellfounded.md) | 233 | `result-track:cc9f5cefb27f7ac534b87c8b76223b289b66bc10c02d94fd371e1379f2a428ec` |
| 20 | `def` | [Space](../../../../Combinatorics/PlainNamespacedEdition1.lean/declarations/space.md) | 260 | `declaration-track:c8c24016d01ba1efb42a9218e5e60eb66b81357ac6028547f93a624f3c243aed` |
| 21 | `def` | [prefixEquiv](../../../../Combinatorics/PlainNamespacedEdition1.lean/declarations/prefixequiv.md) | 266 | `declaration-track:634f187e1d80307fccd501a7e99f0b315146cce3b95da7d31c6c696c83774a86` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=3751a2d689aad8c7d396e6c783accc9b8a6fae08e291ed45b6e796dc46193894 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/Plain/Variantbdce3fc12efae50ea138a4690bf5bb784c050c4671821e2cb9dc91a55dec9734.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/Plain/Variantbdce3fc12efae50ea138a4690bf5bb784c050c4671821e2cb9dc91a55dec9734.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
