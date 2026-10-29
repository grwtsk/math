# Verification target: Icc Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2bf5cd35be9e0fc47da1ad9d6f8aad0d98a4b77c",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/DifferentialGeometry/Icc/Variant26dbb6e3e4528df559c52dcc98263fead1b6b98e1833819266f81087f656a0c5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../DifferentialGeometry/IccPublic.lean/index.md) · [Full source](../../../../DifferentialGeometry/IccPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2bf5cd35be9e0fc47da1ad9d6f8aad0d98a4b77c`.

Source path: `GRWTSK/Geometry/DifferentialGeometry/Icc/Variant26dbb6e3e4528df559c52dcc98263fead1b6b98e1833819266f81087f656a0c5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/DifferentialGeometry/Icc/Variant26dbb6e3e4528df559c52dcc98263fead1b6b98e1833819266f81087f656a0c5.lean.json)

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
| 1 | `instance` | [(anonymous)](../../../../DifferentialGeometry/IccPublic.lean/declarations/instance.md) | 50 | `declaration-track:5b384453284ff5c85e7dba8750f0445150ef065d8d93c1316beb85292fe9f155` |
| 2 | `instance` | [(anonymous)](../../../../DifferentialGeometry/IccPublic.lean/declarations/instance-source-edition-2.md) | 64 | `declaration-track:b533daee7f01b09781a3b84c5964dd4b20941b5e0d545068d06aff45a97359d9` |
| 3 | `lemma` | [isImmersionOfComplement_subtypeVal_Icc](../../../../DifferentialGeometry/IccPublic.lean/declarations/isimmersionofcomplement-subtypeval-icc.md) | 72 | `result-track:8ab27c21b2ab71d31ad1deee1f83a25606b7c074311e7dbdd0521e5bb85d78e4` |
| 4 | `lemma` | [isSmoothEmbedding_subtypeVal_Icc](../../../../DifferentialGeometry/IccPublic.lean/declarations/issmoothembedding-subtypeval-icc.md) | 119 | `result-track:421fb37a0e928d831531e6bb77f0bd89a7002989c823fbc940867c341c81c0c2` |
| 5 | `lemma` | [contMDiff_subtypeVal_Icc](../../../../DifferentialGeometry/IccPublic.lean/declarations/contmdiff-subtypeval-icc.md) | 124 | `result-track:42dbba0b52eda8d99a3040b1007ab4468df699950b3d3f17093a1c406f8b9fdb` |
| 6 | `lemma` | [contMDiff_iff_comp_subtypeVal_Icc](../../../../DifferentialGeometry/IccPublic.lean/declarations/contmdiff-iff-comp-subtypeval-icc.md) | 132 | `result-track:f7b57ae0febe9198285a0ad56599d19cfa175fd15179c1c3e10dc9363797ecd7` |
| 7 | `lemma` | [contMDiffOn_projIcc](../../../../DifferentialGeometry/IccPublic.lean/declarations/contmdiffon-projicc.md) | 137 | `result-track:2611736e3d45438d2f02ea68c5564cdf0e37aee12767285fae1e9a39734b24c4` |
| 8 | `lemma` | [contMDiffOn_comp_projIcc_iff](../../../../DifferentialGeometry/IccPublic.lean/declarations/contmdiffon-comp-projicc-iff.md) | 169 | `result-track:05c18577346d2ab807a42fe033c19002ac5dfa2af88b119172bc3122732238bc` |
| 9 | `lemma` | [contMDiffWithinAt_comp_projIcc_iff](../../../../DifferentialGeometry/IccPublic.lean/declarations/contmdiffwithinat-comp-projicc-iff.md) | 176 | `result-track:d72f53dfd3914ae2b75dec8f5dd13a0191db0706f7098e1f8dc67233765b192c` |
| 10 | `lemma` | [mdifferentiableWithinAt_comp_projIcc_iff](../../../../DifferentialGeometry/IccPublic.lean/declarations/mdifferentiablewithinat-comp-projicc-iff.md) | 186 | `result-track:194d0e788f491de9bc9e60e2ac03c6ea493e3ca1ba697b0c99a12310c9881f0e` |
| 11 | `lemma` | [mfderivWithin_projIcc_one](../../../../DifferentialGeometry/IccPublic.lean/declarations/mfderivwithin-projicc-one.md) | 197 | `result-track:aa31aa1d106ee8f1c0dd58025d008508eb12407367fcae73fdb5225850fbeac8` |
| 12 | `lemma` | [mfderivWithin_comp_projIcc_one](../../../../DifferentialGeometry/IccPublic.lean/declarations/mfderivwithin-comp-projicc-one.md) | 204 | `result-track:0c367032b9818600928c2b1ecced7d2e5e2fcf47775fbd7544ac08ebdcf95a44` |
| 13 | `lemma` | [mfderiv_subtypeVal_Icc_one](../../../../DifferentialGeometry/IccPublic.lean/declarations/mfderiv-subtypeval-icc-one.md) | 220 | `result-track:3b112b5325b88dab5c4b202166ab5355146a883795501860b1119e105d8b9181` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=141a6a028ec37245873409ffdc9f3eb56037ba1786da83cdd682207018f98337 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Geometry/DifferentialGeometry/Icc/Variant26dbb6e3e4528df559c52dcc98263fead1b6b98e1833819266f81087f656a0c5.lean","GRWTSK/_verification/specifications/Geometry/DifferentialGeometry/Icc/Variant26dbb6e3e4528df559c52dcc98263fead1b6b98e1833819266f81087f656a0c5.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
