# Verification target: Registry Namespaced Edition2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bb7715b3f511a4154568af213ca496b8232de57b",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Registry/Variantdfb2f7ba6689e7ecd4bba518c116c1940bbb81b3c70fbcd85e7d69c03292e75a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../Combinatorics/RegistryNamespacedEdition2.lean/index.md) · [Full source](../../../../Combinatorics/RegistryNamespacedEdition2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bb7715b3f511a4154568af213ca496b8232de57b`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Registry/Variantdfb2f7ba6689e7ecd4bba518c116c1940bbb81b3c70fbcd85e7d69c03292e75a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Registry/Variantdfb2f7ba6689e7ecd4bba518c116c1940bbb81b3c70fbcd85e7d69c03292e75a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.Taxonomy.Projection` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Registry](../../../../Combinatorics/RegistryNamespacedEdition2.lean/declarations/registry.md) | 15 | `declaration-track:79dbd8a2bf7ee1349ddf9d28acc0ca71db2339648f3a7708c8d2ae75472d556e` |
| 2 | `def` | [UniqueTaxonIds](../../../../Combinatorics/RegistryNamespacedEdition2.lean/declarations/uniquetaxonids.md) | 27 | `declaration-track:d316cb232c29d5583441713dd62d93a5fd7049d04b8360261856c26c7026b696` |
| 3 | `def` | [UniqueConceptTaxa](../../../../Combinatorics/RegistryNamespacedEdition2.lean/declarations/uniqueconcepttaxa.md) | 30 | `declaration-track:0e0d5cbde2deea79c32efa9fbd5a2d2fc560cdc8850c0678ce9b86651f57d3b6` |
| 4 | `def` | [UniqueEvidenceIds](../../../../Combinatorics/RegistryNamespacedEdition2.lean/declarations/uniqueevidenceids.md) | 33 | `declaration-track:bbf9d1993855003913855764c1b2bc61f2b04458db2fb53f926f0f6048b42fe6` |
| 5 | `def` | [UniqueWitnessEvidenceIds](../../../../Combinatorics/RegistryNamespacedEdition2.lean/declarations/uniquewitnessevidenceids.md) | 36 | `declaration-track:149e526396947d93c770a3336cf2167b096f8e519e4b8fadc74ec6d77b177b84` |
| 6 | `def` | [UniqueRelationIds](../../../../Combinatorics/RegistryNamespacedEdition2.lean/declarations/uniquerelationids.md) | 39 | `declaration-track:5c6e71446d7205349070bd0b25945afe23870e79695c62b2597b23b412ffcd2e` |
| 7 | `def` | [UniqueProjectionIds](../../../../Combinatorics/RegistryNamespacedEdition2.lean/declarations/uniqueprojectionids.md) | 42 | `declaration-track:d38892414c66b666304526c664e30b456aab6ecf532bb93bcedae35e83155a0a` |
| 8 | `def` | [findTaxon?](../../../../Combinatorics/RegistryNamespacedEdition2.lean/declarations/findtaxon.md) | 45 | `declaration-track:f9973ef2c00d84f891bc9e114a368437e58047f34def24a16f7d0823d19586cc` |
| 9 | `def` | [findEvidence?](../../../../Combinatorics/RegistryNamespacedEdition2.lean/declarations/findevidence.md) | 49 | `declaration-track:c60b5ea40b5894487a8124e5a284aca42636e997f09c2c816a5047843ed94c7d` |
| 10 | `def` | [findWitnessEvidence?](../../../../Combinatorics/RegistryNamespacedEdition2.lean/declarations/findwitnessevidence.md) | 53 | `declaration-track:621cc85763c61bb7e18c892ababd99000705da83ef61b7a6b1bfe3c68153f66b` |
| 11 | `def` | [WitnessesResolveAs](../../../../Combinatorics/RegistryNamespacedEdition2.lean/declarations/witnessesresolveas.md) | 59 | `declaration-track:546d582328124a3150d668d08a5a94c7a52a38f3f7a295b8310a3a55371d1b35` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d7bd5b01b5555c9e069ee8a7fbb22aa79048945695989ce8538e3930efefbf89 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/Registry/Variantdfb2f7ba6689e7ecd4bba518c116c1940bbb81b3c70fbcd85e7d69c03292e75a.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/Registry/Variantdfb2f7ba6689e7ecd4bba518c116c1940bbb81b3c70fbcd85e7d69c03292e75a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
