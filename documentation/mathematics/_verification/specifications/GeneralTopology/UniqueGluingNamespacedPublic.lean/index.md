# Verification target: Unique Gluing Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0a450ecb9c3a077330b2a03bda875b8166dfed94",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/UniqueGluing/Variant367b00d77d6cdfb4b38e71501d1aaa276afae008aae6b3306f154546676ab3eb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/UniqueGluingNamespacedPublic.lean/index.md) · [Full source](../../../../GeneralTopology/UniqueGluingNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0a450ecb9c3a077330b2a03bda875b8166dfed94`.

Source path: `GRWTSK/Topology/UniqueGluing/Variant367b00d77d6cdfb4b38e71501d1aaa276afae008aae6b3306f154546676ab3eb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/UniqueGluing/Variant367b00d77d6cdfb4b38e71501d1aaa276afae008aae6b3306f154546676ab3eb.lean.json)

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
| 1 | `def` | [IsCompatible](../../../../GeneralTopology/UniqueGluingNamespacedPublic.lean/declarations/iscompatible.md) | 68 | `declaration-track:c0ae90183aa4a488ea6484310e87aa4a0c34cbcd4e4fa86bb6d7b35658016df3` |
| 2 | `def` | [IsGluing](../../../../GeneralTopology/UniqueGluingNamespacedPublic.lean/declarations/isgluing.md) | 74 | `declaration-track:e9b383213d6b838454c8954eac59e94779c4e77f835fb9f60aafe6298eedac15` |
| 3 | `def` | [IsSheafUniqueGluing](../../../../GeneralTopology/UniqueGluingNamespacedPublic.lean/declarations/issheafuniquegluing.md) | 85 | `declaration-track:6af2fd4ad684ac0e656188134249ac4e8cdb61bbdbbea2027f8a296d64ff1946` |
| 4 | `def` | [objPairwiseOfFamily](../../../../GeneralTopology/UniqueGluingNamespacedPublic.lean/declarations/objpairwiseoffamily.md) | 97 | `declaration-track:2c4262c65934182060e5d118cd3f380d352f25d5546c30d5e570902a72c9a5dc` |
| 5 | `def` | [IsCompatible.sectionPairwise](../../../../GeneralTopology/UniqueGluingNamespacedPublic.lean/declarations/iscompatible-sectionpairwise.md) | 104 | `declaration-track:54f9ab68a62382b1d9a0ce2193791def25a8c67d3596451f316dd09da283abed` |
| 6 | `theorem` | [isGluing_iff_pairwise](../../../../GeneralTopology/UniqueGluingNamespacedPublic.lean/declarations/isgluing-iff-pairwise.md) | 114 | `result-track:adef3347db2f976653108a581c0dacb526c3836129f49a9c36af686a5f04ee71` |
| 7 | `theorem` | [IsSheaf.isSheafUniqueGluing_types](../../../../GeneralTopology/UniqueGluingNamespacedPublic.lean/declarations/issheaf-issheafuniquegluing-types.md) | 122 | `result-track:0899f16e01ad9ec6b9d963d43d8d19945e5f0052af744e4232500207c95551fc` |
| 8 | `theorem` | [isSheaf_iff_isSheafUniqueGluing_types](../../../../GeneralTopology/UniqueGluingNamespacedPublic.lean/declarations/issheaf-iff-issheafuniquegluing-types.md) | 133 | `result-track:106330ff8eeae14f5f09d006b936f593dd1d9fc50335ebe09958a57fa26f60e9` |
| 9 | `theorem` | [isSheaf_of_isSheafUniqueGluing_types](../../../../GeneralTopology/UniqueGluingNamespacedPublic.lean/declarations/issheaf-of-issheafuniquegluing-types.md) | 147 | `result-track:ee351eda45b96f8f96c80e8b5613d49fb31cf04b38a2815f25f11c4a7f4ec5cf` |
| 10 | `theorem` | [IsSheaf.isSheafUniqueGluing](../../../../GeneralTopology/UniqueGluingNamespacedPublic.lean/declarations/issheaf-issheafuniquegluing.md) | 158 | `result-track:94385b00bf965d3e897e7e5f429879bc11def9ef99089d36223f6eec007be80c` |
| 11 | `theorem` | [isSheaf_iff_isSheafUniqueGluing](../../../../GeneralTopology/UniqueGluingNamespacedPublic.lean/declarations/issheaf-iff-issheafuniquegluing.md) | 168 | `result-track:bca7233f8600b0b0d63eb6c931bcf4b3f66e542a0e891ea09eeded8ad10b06a8` |
| 12 | `theorem` | [existsUnique_gluing](../../../../GeneralTopology/UniqueGluingNamespacedPublic.lean/declarations/existsunique-gluing-source-edition-2.md) | 188 | `result-track:7eb5c37e68aec08683dbdff22b151bd060b4ff99445bb6a69a48512414ba44e7` |
| 13 | `theorem` | [existsUnique_gluing'](../../../../GeneralTopology/UniqueGluingNamespacedPublic.lean/declarations/existsunique-gluing.md) | 196 | `result-track:4d6ab3b9ac17517657bb37e25b44346274c84639f1cbbceecfe86cb50b4a4c82` |
| 14 | `theorem` | [eq_of_locally_eq](../../../../GeneralTopology/UniqueGluingNamespacedPublic.lean/declarations/eq-of-locally-eq.md) | 212 | `result-track:aeac82cfb1df5b5f2825389e6711a1218b133a72ccfc076f4e4b03bfb5f52f6c` |
| 15 | `theorem` | [eq_of_locally_eq'](../../../../GeneralTopology/UniqueGluingNamespacedPublic.lean/declarations/eq-of-locally-eq-source-edition-3.md) | 232 | `result-track:c9102421c6d7bcc0b890b7aa9c0da1b2d8c4a4d4d6aae12c0be8576779ca14f4` |
| 16 | `theorem` | [eq_of_locally_eq₂](../../../../GeneralTopology/UniqueGluingNamespacedPublic.lean/declarations/eq-of-locally-eq-source-edition-2.md) | 245 | `result-track:bdb323a31bfe3c7ed893832246b61a4c25f08bdc98cc235e3634f3ccc24dbc39` |
| 17 | `theorem` | [eq_app_of_locally_eq](../../../../GeneralTopology/UniqueGluingNamespacedPublic.lean/declarations/eq-app-of-locally-eq.md) | 260 | `result-track:2389d8e2240beb14c55c3ed9ebca4ec12d1ce66ae40f7b3971b8884fe6ddeb37` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b62a0ea6f46dfb8bacf7bdde86baf10faead2293ed20651f3ec3fff3d66c2a59 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/UniqueGluing/Variant367b00d77d6cdfb4b38e71501d1aaa276afae008aae6b3306f154546676ab3eb.lean","GRWTSK/_verification/specifications/Topology/UniqueGluing/Variant367b00d77d6cdfb4b38e71501d1aaa276afae008aae6b3306f154546676ab3eb.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
