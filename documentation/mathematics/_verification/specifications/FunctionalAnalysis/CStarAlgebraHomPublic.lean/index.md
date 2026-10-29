# Verification target: CStar Algebra Hom Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "073cfb8e82dce06607880a14b3d1e20c9af8ea5f",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Hom/Variant39e02df0389ade95f3747f8fc58e05836b7b708e2c64ed34ef2bdeeb696c9f68.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../FunctionalAnalysis/CStarAlgebraHomPublic.lean/index.md) · [Full source](../../../../FunctionalAnalysis/CStarAlgebraHomPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `073cfb8e82dce06607880a14b3d1e20c9af8ea5f`.

Source path: `GRWTSK/Topology/GeneralTopology/Hom/Variant39e02df0389ade95f3747f8fc58e05836b7b708e2c64ed34ef2bdeeb696c9f68.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Hom/Variant39e02df0389ade95f3747f8fc58e05836b7b708e2c64ed34ef2bdeeb696c9f68.lean.json)

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
| 1 | `lemma` | [IsSelfAdjoint.map_spectrum_real](../../../../FunctionalAnalysis/CStarAlgebraHomPublic.lean/declarations/isselfadjoint-map-spectrum-real.md) | 25 | `result-track:54e0108e6c0ea3853e6c59b2e6d71e3c15a75d8e8eefb10ac1d30e6b54e4c900` |
| 2 | `lemma` | [IsSelfAdjoint.map_quasispectrum_real](../../../../FunctionalAnalysis/CStarAlgebraHomPublic.lean/declarations/isselfadjoint-map-quasispectrum-real.md) | 57 | `result-track:725cd0f5a3367bea640ce2c9cd9e5cb913cd8721beee3ec8752658adf1e17faf` |
| 3 | `def` | [NonUnitalStarAlgHom.toOrderEmbedding](../../../../FunctionalAnalysis/CStarAlgebraHomPublic.lean/declarations/nonunitalstaralghom-toorderembedding.md) | 74 | `declaration-track:a3482a074554cf90c30871bbcdd15b17cdf3a3fb25380887f471fa7c11b2e857` |
| 4 | `lemma` | [NonUnitalStarAlgHom.map_le_map_iff](../../../../FunctionalAnalysis/CStarAlgebraHomPublic.lean/declarations/nonunitalstaralghom-map-le-map-iff.md) | 88 | `result-track:5d7ce0f784215347e9fa2d3cf0410039dfdeaf7a06c1a8a171ec33c6813287d7` |
| 5 | `lemma` | [NonUnitalStarAlgHom.map_lt_map_iff](../../../../FunctionalAnalysis/CStarAlgebraHomPublic.lean/declarations/nonunitalstaralghom-map-lt-map-iff.md) | 92 | `result-track:b7f18d1e0b3a59c63da337f21839cb733f1126d085e00b394d2e37756c105a0e` |
| 6 | `lemma` | [norm_map](../../../../FunctionalAnalysis/CStarAlgebraHomPublic.lean/declarations/norm-map.md) | 104 | `result-track:09913800f506bf00bee7a0d12300de1adb6435e2f6b74be0dbe4f2ce3c12951a` |
| 7 | `lemma` | [nnnorm_map](../../../../FunctionalAnalysis/CStarAlgebraHomPublic.lean/declarations/nnnorm-map.md) | 124 | `result-track:c8aad2a9a9560e5f2f226341d68b49bac21c6b4826d5480b840eea08305eb2a1` |
| 8 | `lemma` | [isometry](../../../../FunctionalAnalysis/CStarAlgebraHomPublic.lean/declarations/isometry.md) | 127 | `result-track:8bb3e5bb982a867926e3f7ee8c4341f80d74b0ceac7c2b89cd0429269426541e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=676cac0a3ed234dfee97bfe0e3a057576f12b3fe693a3bc90143f395fb82cf69 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/Hom/Variant39e02df0389ade95f3747f8fc58e05836b7b708e2c64ed34ef2bdeeb696c9f68.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/Hom/Variant39e02df0389ade95f3747f8fc58e05836b7b708e2c64ed34ef2bdeeb696c9f68.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
