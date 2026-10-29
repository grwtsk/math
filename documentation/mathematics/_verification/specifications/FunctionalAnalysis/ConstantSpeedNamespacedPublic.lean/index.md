# Verification target: Constant Speed Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7c382920ebc71da29aa4dc644bbddc05c5dc2dde",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/ConstantSpeed/Variant265cbbf53b819c820df1e48f9cc16b0dd7f2d52aa78f8bd7942587203637b06a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../FunctionalAnalysis/ConstantSpeedNamespacedPublic.lean/index.md) · [Full source](../../../../FunctionalAnalysis/ConstantSpeedNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7c382920ebc71da29aa4dc644bbddc05c5dc2dde`.

Source path: `GRWTSK/Analysis/ConstantSpeed/Variant265cbbf53b819c820df1e48f9cc16b0dd7f2d52aa78f8bd7942587203637b06a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/ConstantSpeed/Variant265cbbf53b819c820df1e48f9cc16b0dd7f2d52aa78f8bd7942587203637b06a.lean.json)

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
| 1 | `def` | [HasConstantSpeedOnWith](../../../../FunctionalAnalysis/ConstantSpeedNamespacedPublic.lean/declarations/hasconstantspeedonwith.md) | 66 | `declaration-track:cdbbb994ccf4050ea6c89ac470bb46ebb55ea941bfef3a2489d4dff1bc243643` |
| 2 | `theorem` | [HasConstantSpeedOnWith.hasLocallyBoundedVariationOn](../../../../FunctionalAnalysis/ConstantSpeedNamespacedPublic.lean/declarations/hasconstantspeedonwith-haslocallyboundedvariationon.md) | 71 | `result-track:7209a757113696c6d4068723c50318e62cde9ef18fcb826fc2a0d4c5abae5e52` |
| 3 | `theorem` | [hasConstantSpeedOnWith_of_subsingleton](../../../../FunctionalAnalysis/ConstantSpeedNamespacedPublic.lean/declarations/hasconstantspeedonwith-of-subsingleton.md) | 75 | `result-track:b70fb37f8528c7e3ae11bdd0aa60d4b42166d9c5303967311b9772d951a290ce` |
| 4 | `theorem` | [hasConstantSpeedOnWith_iff_ordered](../../../../FunctionalAnalysis/ConstantSpeedNamespacedPublic.lean/declarations/hasconstantspeedonwith-iff-ordered.md) | 81 | `result-track:9bc6ebbbbd87427521d163c6a926d89aff8e81aea38f295305ccb9c2eac76d91` |
| 5 | `theorem` | [hasConstantSpeedOnWith_iff_variationOnFromTo_eq](../../../../FunctionalAnalysis/ConstantSpeedNamespacedPublic.lean/declarations/hasconstantspeedonwith-iff-variationonfromto-eq.md) | 94 | `result-track:3d415e11ce88f01fcf6ac9a9c63f4b6cba6c85301e3cf03152198c0f83f4a38b` |
| 6 | `theorem` | [HasConstantSpeedOnWith.union](../../../../FunctionalAnalysis/ConstantSpeedNamespacedPublic.lean/declarations/hasconstantspeedonwith-union.md) | 110 | `result-track:c14cab5bfd47035af7889a9c72580889cb52d5e7d3f068fd01c9130092d4c567` |
| 7 | `theorem` | [HasConstantSpeedOnWith.Icc_Icc](../../../../FunctionalAnalysis/ConstantSpeedNamespacedPublic.lean/declarations/hasconstantspeedonwith-icc-icc.md) | 147 | `result-track:8c5cdb8276d51506c8ba2604161018d2a1919e7d4e9c53cba01344490d22d545` |
| 8 | `theorem` | [hasConstantSpeedOnWith_zero_iff](../../../../FunctionalAnalysis/ConstantSpeedNamespacedPublic.lean/declarations/hasconstantspeedonwith-zero-iff.md) | 162 | `result-track:40e6749029407f90e91dd348bf6e39beed10cfe6fa996ffff0565086fc46e160` |
| 9 | `theorem` | [HasConstantSpeedOnWith.ratio](../../../../FunctionalAnalysis/ConstantSpeedNamespacedPublic.lean/declarations/hasconstantspeedonwith-ratio.md) | 178 | `result-track:23562097b973686d666628f99fb7dc1ffe8a66c7a62167369d78944e96244570` |
| 10 | `def` | [HasUnitSpeedOn](../../../../FunctionalAnalysis/ConstantSpeedNamespacedPublic.lean/declarations/hasunitspeedon.md) | 195 | `declaration-track:c8782b24074fe6f6d6b1b113c798c6dfc26eed1f653e004344f718ef7b943c42` |
| 11 | `theorem` | [HasUnitSpeedOn.union](../../../../FunctionalAnalysis/ConstantSpeedNamespacedPublic.lean/declarations/hasunitspeedon-union.md) | 198 | `result-track:d57a5d82eac4b615e2656f4462e822f04b4cd2b47b555fff36fee5a821d0004f` |
| 12 | `theorem` | [HasUnitSpeedOn.Icc_Icc](../../../../FunctionalAnalysis/ConstantSpeedNamespacedPublic.lean/declarations/hasunitspeedon-icc-icc.md) | 203 | `result-track:1c4e0ab416aab4bf9a6b19821d5fdcee2d10ff01283d1c600d42e2bab83b9e50` |
| 13 | `theorem` | [unique_unit_speed](../../../../FunctionalAnalysis/ConstantSpeedNamespacedPublic.lean/declarations/unique-unit-speed.md) | 210 | `result-track:2ba4d343223434e552f34b977aae4b533a47231a473c831197933689dfa1c2c7` |
| 14 | `theorem` | [unique_unit_speed_on_Icc_zero](../../../../FunctionalAnalysis/ConstantSpeedNamespacedPublic.lean/declarations/unique-unit-speed-on-icc-zero.md) | 219 | `result-track:905955e7d3d640973d2a5fa4bfc9397222effb420201a7172c9407facf03eb07` |
| 15 | `def` | [naturalParameterization](../../../../FunctionalAnalysis/ConstantSpeedNamespacedPublic.lean/declarations/naturalparameterization.md) | 239 | `declaration-track:9c432da36d6e8230e2ae13d8fc41491851e332713666c11b308c927767c0ceb4` |
| 16 | `theorem` | [edist_naturalParameterization_eq_zero](../../../../FunctionalAnalysis/ConstantSpeedNamespacedPublic.lean/declarations/edist-naturalparameterization-eq-zero.md) | 242 | `result-track:4ef9f4a736dbcb57a21a06fc29f7d658cce394cb8e46633d28bbc621c47d5588` |
| 17 | `theorem` | [has_unit_speed_naturalParameterization](../../../../FunctionalAnalysis/ConstantSpeedNamespacedPublic.lean/declarations/has-unit-speed-naturalparameterization.md) | 251 | `result-track:7238d9fb40c901074895226cc882c70f882215ae9f4e26e1870396604660d492` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=29da2c3301994c7328dcecde2c7156c06b951fdd32c16fee6434f26cc0d0e9a6 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/ConstantSpeed/Variant265cbbf53b819c820df1e48f9cc16b0dd7f2d52aa78f8bd7942587203637b06a.lean","GRWTSK/_verification/specifications/Analysis/ConstantSpeed/Variant265cbbf53b819c820df1e48f9cc16b0dd7f2d52aa78f8bd7942587203637b06a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
