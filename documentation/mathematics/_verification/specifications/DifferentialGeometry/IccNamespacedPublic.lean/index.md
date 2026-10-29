# Verification target: Icc Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6d8cc86e9db4c9c89cbda7c81345c49904857ca8",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/DifferentialGeometry/Icc/Variant8370c29c5f342b4b63e560832a0b4698a50388dad37cf3132e4e967121899cd6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../DifferentialGeometry/IccNamespacedPublic.lean/index.md) · [Full source](../../../../DifferentialGeometry/IccNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6d8cc86e9db4c9c89cbda7c81345c49904857ca8`.

Source path: `GRWTSK/Geometry/DifferentialGeometry/Icc/Variant8370c29c5f342b4b63e560832a0b4698a50388dad37cf3132e4e967121899cd6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/DifferentialGeometry/Icc/Variant8370c29c5f342b4b63e560832a0b4698a50388dad37cf3132e4e967121899cd6.lean.json)

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
| 1 | `instance` | [(anonymous)](../../../../DifferentialGeometry/IccNamespacedPublic.lean/declarations/instance.md) | 58 | `declaration-track:48c05eb5fb070c81a452da4259a9bf3a6e561a062e068ae4cdcccfda69c088e4` |
| 2 | `instance` | [(anonymous)](../../../../DifferentialGeometry/IccNamespacedPublic.lean/declarations/instance-source-edition-2.md) | 72 | `declaration-track:963f5942b406a785ff23e12061d9537b20279363f93c12460fba74a3c7a94e82` |
| 3 | `lemma` | [isImmersionOfComplement_subtypeVal_Icc](../../../../DifferentialGeometry/IccNamespacedPublic.lean/declarations/isimmersionofcomplement-subtypeval-icc.md) | 80 | `result-track:46da9cb7c2303908cad786741335f633df950aa36938336f0423c1d338d8a0d0` |
| 4 | `lemma` | [isSmoothEmbedding_subtypeVal_Icc](../../../../DifferentialGeometry/IccNamespacedPublic.lean/declarations/issmoothembedding-subtypeval-icc.md) | 127 | `result-track:0f62d3e266389542895a4f6e6c8c78df79e602fddac164a406bb0f568d9fa731` |
| 5 | `lemma` | [contMDiff_subtypeVal_Icc](../../../../DifferentialGeometry/IccNamespacedPublic.lean/declarations/contmdiff-subtypeval-icc.md) | 132 | `result-track:0ff36a707a2cbaae21ffeb9787a45bbe60a440b8d129892cfbea39f891f10d1a` |
| 6 | `lemma` | [contMDiff_iff_comp_subtypeVal_Icc](../../../../DifferentialGeometry/IccNamespacedPublic.lean/declarations/contmdiff-iff-comp-subtypeval-icc.md) | 140 | `result-track:21b019a24de1f85f42c14ee8743f19bcea9cbaf433be4d1a7e64569cbefe6375` |
| 7 | `lemma` | [contMDiffOn_projIcc](../../../../DifferentialGeometry/IccNamespacedPublic.lean/declarations/contmdiffon-projicc.md) | 145 | `result-track:1d9c8f8dd3f3b16463305b7e8ca8a4bafb32dcc3afaa8edf6b518950bc681e2f` |
| 8 | `lemma` | [contMDiffOn_comp_projIcc_iff](../../../../DifferentialGeometry/IccNamespacedPublic.lean/declarations/contmdiffon-comp-projicc-iff.md) | 177 | `result-track:eda359bb30fb73562abe1c0b5fd4ec5060293a4b5f91d98514534320f2499ae8` |
| 9 | `lemma` | [contMDiffWithinAt_comp_projIcc_iff](../../../../DifferentialGeometry/IccNamespacedPublic.lean/declarations/contmdiffwithinat-comp-projicc-iff.md) | 184 | `result-track:53383c8f693a12b59777ede80ed13dc06dcee6b21c541244877af7ec5ee4593b` |
| 10 | `lemma` | [mdifferentiableWithinAt_comp_projIcc_iff](../../../../DifferentialGeometry/IccNamespacedPublic.lean/declarations/mdifferentiablewithinat-comp-projicc-iff.md) | 194 | `result-track:f610339c1022e316756335b359e3d8fe2172940a0e4dfc5a3bd125bd2700364e` |
| 11 | `lemma` | [mfderivWithin_projIcc_one](../../../../DifferentialGeometry/IccNamespacedPublic.lean/declarations/mfderivwithin-projicc-one.md) | 205 | `result-track:89d5b80c478ac42daa7b5983c32d929a13676e9ebdff0b722b71e560131b8719` |
| 12 | `lemma` | [mfderivWithin_comp_projIcc_one](../../../../DifferentialGeometry/IccNamespacedPublic.lean/declarations/mfderivwithin-comp-projicc-one.md) | 212 | `result-track:d380bc0586be6ec41a3091cbd6e7c28d0d37b0006338633dba188ab830e8d514` |
| 13 | `lemma` | [mfderiv_subtypeVal_Icc_one](../../../../DifferentialGeometry/IccNamespacedPublic.lean/declarations/mfderiv-subtypeval-icc-one.md) | 228 | `result-track:caad7282880df88dac87ef9bafb94e48014bdf0e9ca988ce6513cb97cd142f49` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=fc4b8d964767e983af63effa1a39d3ac96723b90546ff8f1a64078e81ff6e1e6 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Geometry/DifferentialGeometry/Icc/Variant8370c29c5f342b4b63e560832a0b4698a50388dad37cf3132e4e967121899cd6.lean","GRWTSK/_verification/specifications/Geometry/DifferentialGeometry/Icc/Variant8370c29c5f342b4b63e560832a0b4698a50388dad37cf3132e4e967121899cd6.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
