# Verification target: Rational Subtype Probe

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c76f165b308c93d818634f84fa2d3431f9d9ee47",
  "lexical_observation_count": 29,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/RationalSubtypeProbe/Variantdd0c09c1c6f727e5d01fe74715d210b193b94c6064b05f73fd310a04f10928f3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/RationalSubtypeProbe.lean/index.md) · [Full source](../../../../GeneralTopology/RationalSubtypeProbe.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c76f165b308c93d818634f84fa2d3431f9d9ee47`.

Source path: `GRWTSK/Topology/GeneralTopology/RationalSubtypeProbe/Variantdd0c09c1c6f727e5d01fe74715d210b193b94c6064b05f73fd310a04f10928f3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/RationalSubtypeProbe/Variantdd0c09c1c6f727e5d01fe74715d210b193b94c6064b05f73fd310a04f10928f3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecialFunctions.Bernstein` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fin.Rev` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [UnitInterval](../../../../GeneralTopology/RationalSubtypeProbe.lean/declarations/unitinterval.md) | 19 | `declaration-track:46c09f62fa708474b24fe64a845770a0fd18d5c5d30ff97e234fa61ece2d0094` |
| 2 | `def` | [reflect](../../../../GeneralTopology/RationalSubtypeProbe.lean/declarations/reflect.md) | 22 | `declaration-track:3ff3909f7565cc58bedaf50cdddbc2033236a1084bf915023c6297c6dc7cd671` |
| 3 | `theorem` | [coe_reflect](../../../../GeneralTopology/RationalSubtypeProbe.lean/declarations/coe-reflect.md) | 25 | `result-track:93451c3cb75c80b3018f7205b70a382eecfcb548ab4a090d2e10e9f720672e0b` |
| 4 | `theorem` | [reflect_zero](../../../../GeneralTopology/RationalSubtypeProbe.lean/declarations/reflect-zero.md) | 28 | `result-track:e1735c4f7d467ac47ad55811254cfef9f3a6fb8ce3f9fc8839343f5a813a8596` |
| 5 | `theorem` | [reflect_one](../../../../GeneralTopology/RationalSubtypeProbe.lean/declarations/reflect-one.md) | 31 | `result-track:7c835955368247b36a87f109fce4177e3381e88ffab44a456891120441c35699` |
| 6 | `theorem` | [reflect_reflect](../../../../GeneralTopology/RationalSubtypeProbe.lean/declarations/reflect-reflect.md) | 34 | `result-track:2206be443d1a3207c35563de48af689c2828f695be04cd9420c8bc26f0493447` |
| 7 | `theorem` | [continuous_reflect](../../../../GeneralTopology/RationalSubtypeProbe.lean/declarations/continuous-reflect.md) | 37 | `result-track:b663bb5392c8306af0154107b269469bc61a5c323998e2943d66be2326af14ed` |
| 8 | `theorem` | [bernstein_nonneg'](../../../../GeneralTopology/RationalSubtypeProbe.lean/declarations/bernstein-nonneg.md) | 39 | `result-track:bd48dc0f172effb9d55f80aaa0de786bace7f1ecbccad0eb59258c50e82885cd` |
| 9 | `theorem` | [bernstein_sum_one'](../../../../GeneralTopology/RationalSubtypeProbe.lean/declarations/bernstein-sum-one.md) | 42 | `result-track:a12ab0e1e07ca30e915daa9d83917fa295bd4f3174455224cb67ebd77ff2d634` |
| 10 | `theorem` | [bernstein_at_zero](../../../../GeneralTopology/RationalSubtypeProbe.lean/declarations/bernstein-at-zero.md) | 47 | `result-track:06ff40d51a298192732a7631ffe11738eca43fb15765d620b362c5c1e0ce9928` |
| 11 | `theorem` | [bernstein_at_one](../../../../GeneralTopology/RationalSubtypeProbe.lean/declarations/bernstein-at-one.md) | 58 | `result-track:b66d5a92b352dfdbbb62eaab9ce675c735c5a05fe72085850133a170f355bddb` |
| 12 | `theorem` | [bernstein_rev](../../../../GeneralTopology/RationalSubtypeProbe.lean/declarations/bernstein-rev.md) | 68 | `result-track:a5d08241dd4665aa4b7af012fdee1139e37df36e5bb3f7e93ebb6d387c639e7f` |
| 13 | `structure` | [RationalSegment](../../../../GeneralTopology/RationalSubtypeProbe.lean/declarations/rationalsegment.md) | 77 | `declaration-track:140cbcf97f0cbdb8a0a7b935a6890ebb37820916b936139b3eb57d55e9b1bfa0` |
| 14 | `def` | [denominator](../../../../GeneralTopology/RationalSubtypeProbe.lean/declarations/denominator.md) | 87 | `declaration-track:9a6bd0817dd779295d93dabe160180acf578c33ad923eb2242005b39604469bd` |
| 15 | `def` | [numerator](../../../../GeneralTopology/RationalSubtypeProbe.lean/declarations/numerator.md) | 91 | `declaration-track:e8c6db7ce1dd6a6c89bff5105beafbe4f7589544bec7a063250aa604e12d2cd1` |
| 16 | `def` | [eval](../../../../GeneralTopology/RationalSubtypeProbe.lean/declarations/eval.md) | 95 | `declaration-track:0b7da22978db3d07509604467d7a0de7bbde40ea1001bce84cd9bf18944d1692` |
| 17 | `theorem` | [denominator_pos](../../../../GeneralTopology/RationalSubtypeProbe.lean/declarations/denominator-pos.md) | 98 | `result-track:263e89e303ff8118f4731ee0cf4c80cb00d8c8f64e53929c4882a38273c20bf2` |
| 18 | `theorem` | [eval_zero](../../../../GeneralTopology/RationalSubtypeProbe.lean/declarations/eval-zero.md) | 118 | `result-track:e004b5c25924c582877beea3e63b67dcc1be7d51b84c44771df4ef71257e73f5` |
| 19 | `theorem` | [eval_one](../../../../GeneralTopology/RationalSubtypeProbe.lean/declarations/eval-one.md) | 124 | `result-track:303c1df417d10d60bf1bf97d6dec2416d0ef90385ccf2d48af336eb8cbaa74e4` |
| 20 | `theorem` | [continuous_denominator](../../../../GeneralTopology/RationalSubtypeProbe.lean/declarations/continuous-denominator.md) | 129 | `result-track:7fd36abad9c918ee361bb71d00b5f80ac2341f9e0bc35802d951deb47555c259` |
| 21 | `theorem` | [continuous_numerator](../../../../GeneralTopology/RationalSubtypeProbe.lean/declarations/continuous-numerator.md) | 140 | `result-track:12638667716262464e4bbd32593aa41ec2ddd98177c42d2136bd456e57e61f9c` |
| 22 | `theorem` | [continuous_eval](../../../../GeneralTopology/RationalSubtypeProbe.lean/declarations/continuous-eval.md) | 147 | `result-track:e507cc7594f6ea7cfb57c21e98184307f2c01da50185005bf741f7c8b1236220` |
| 23 | `def` | [reverse](../../../../GeneralTopology/RationalSubtypeProbe.lean/declarations/reverse.md) | 156 | `declaration-track:652511b8694a413e14e5665f599603001285eca2e918ebe95046013f860e09f6` |
| 24 | `theorem` | [reverse_point](../../../../GeneralTopology/RationalSubtypeProbe.lean/declarations/reverse-point.md) | 162 | `result-track:5fd9008abff24830b5f1ac961af811a08e4d72bb32bb1a2dfaca72abb76083ab` |
| 25 | `theorem` | [reverse_weight](../../../../GeneralTopology/RationalSubtypeProbe.lean/declarations/reverse-weight.md) | 166 | `result-track:81e8b9536ad787376b3e31691ee30a0380b0025394986a126ea7029848dbe285` |
| 26 | `theorem` | [reverse_reverse](../../../../GeneralTopology/RationalSubtypeProbe.lean/declarations/reverse-reverse.md) | 170 | `result-track:e6b4560e886a38ca3944049d227d08247dad45f0afaf2baa50297fc3d034bfb2` |
| 27 | `theorem` | [denominator_reverse](../../../../GeneralTopology/RationalSubtypeProbe.lean/declarations/denominator-reverse.md) | 174 | `result-track:ea3ab11226ca062356b15766be0445620311382865ee6715267b28d5b1db916c` |
| 28 | `theorem` | [numerator_reverse](../../../../GeneralTopology/RationalSubtypeProbe.lean/declarations/numerator-reverse.md) | 185 | `result-track:8bfb68cc93aa1c0fbdebaeca30d3142d64b43bd7ae224420f2ea453eb8a5f13a` |
| 29 | `theorem` | [eval_reverse](../../../../GeneralTopology/RationalSubtypeProbe.lean/declarations/eval-reverse.md) | 196 | `result-track:a747d6253e50d2164299c4bd3f24da12fa1be70f17d97273aa69e1dab4972492` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=938889055d773fc44c5b5b99f3425f74b0008ee1a95d4baa570e5b2e2e5f9db3 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/RationalSubtypeProbe/Variantdd0c09c1c6f727e5d01fe74715d210b193b94c6064b05f73fd310a04f10928f3.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/RationalSubtypeProbe/Variantdd0c09c1c6f727e5d01fe74715d210b193b94c6064b05f73fd310a04f10928f3.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
