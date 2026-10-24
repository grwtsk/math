# Verification target: GRWTSK.Topology.MetricTopology.Metric.Variant5f9c922373e3acf81afb2d29b8a7da28032fc0efb184bcfbbd37fcc19dbad858

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "af4579105ccbb581e1d072662630b704c007c8af",
  "lexical_observation_count": 50,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/MetricTopology/Metric/Variant5f9c922373e3acf81afb2d29b8a7da28032fc0efb184bcfbbd37fcc19dbad858.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/MetricTopology/Metric/Variant5f9c922373e3acf81afb2d29b8a7da28032fc0efb184bcfbbd37fcc19dbad858.lean/index.md) · [Full source](../../../../../mathematics/Topology/MetricTopology/Metric/Variant5f9c922373e3acf81afb2d29b8a7da28032fc0efb184bcfbbd37fcc19dbad858.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `af4579105ccbb581e1d072662630b704c007c8af`.

Source path: `GRWTSK/Topology/MetricTopology/Metric/Variant5f9c922373e3acf81afb2d29b8a7da28032fc0efb184bcfbbd37fcc19dbad858.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/MetricTopology/Metric/Variant5f9c922373e3acf81afb2d29b8a7da28032fc0efb184bcfbbd37fcc19dbad858.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Combinatorics.SimpleGraph.Path` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.ENat.Lattice` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [edist](../../../../../mathematics/Topology/MetricTopology/Metric/Variant5f9c922373e3acf81afb2d29b8a7da28032fc0efb184bcfbbd37fcc19dbad858.lean/declarations/edist--d07c595e955a2b5e21de4d59.md) | 57 | `declaration-track:d07c595e955a2b5e21de4d594fe719ce51788c5ce213e132e319d629a66c4604` |
| 2 | `theorem` | [edist_eq_sInf](../../../../../mathematics/Topology/MetricTopology/Metric/Variant5f9c922373e3acf81afb2d29b8a7da28032fc0efb184bcfbbd37fcc19dbad858.lean/declarations/edist-eq-sinf--f2908c3954b0404fb38a1b0d.md) | 62 | `result-track:f2908c3954b0404fb38a1b0d8fd22d7e1bb0924975b7664462840c3a9be32a22` |
| 3 | `theorem` | [Reachable.exists_walk_length_eq_edist](../../../../../mathematics/Topology/MetricTopology/Metric/Variant5f9c922373e3acf81afb2d29b8a7da28032fc0efb184bcfbbd37fcc19dbad858.lean/declarations/reachable-exists-walk-length-eq-edist--b7375370768cde06efe3beb2.md) | 64 | `result-track:b7375370768cde06efe3beb28423d2c77939800ac44768633fe60675fb7c44e3` |
| 4 | `theorem` | [Connected.exists_walk_length_eq_edist](../../../../../mathematics/Topology/MetricTopology/Metric/Variant5f9c922373e3acf81afb2d29b8a7da28032fc0efb184bcfbbd37fcc19dbad858.lean/declarations/connected-exists-walk-length-eq-edist--8f3ae902b3a07fb8e51cee6e.md) | 68 | `result-track:8f3ae902b3a07fb8e51cee6ecf447bfbdc236859b02fcf0053dbeeb19cbb433f` |
| 5 | `theorem` | [edist_le](../../../../../mathematics/Topology/MetricTopology/Metric/Variant5f9c922373e3acf81afb2d29b8a7da28032fc0efb184bcfbbd37fcc19dbad858.lean/declarations/edist-le--068f94afdb361d618cb7a8b6.md) | 72 | `result-track:068f94afdb361d618cb7a8b693584caae635bb80238e50dfb3d4dee2590000cf` |
| 6 | `theorem` | [edist_eq_zero_iff](../../../../../mathematics/Topology/MetricTopology/Metric/Variant5f9c922373e3acf81afb2d29b8a7da28032fc0efb184bcfbbd37fcc19dbad858.lean/declarations/edist-eq-zero-iff--b58e95d69327acfd6d1069c5.md) | 78 | `result-track:b58e95d69327acfd6d1069c5730290da0455996e134a6fe5a23caf62fd1dd48a` |
| 7 | `theorem` | [edist_self](../../../../../mathematics/Topology/MetricTopology/Metric/Variant5f9c922373e3acf81afb2d29b8a7da28032fc0efb184bcfbbd37fcc19dbad858.lean/declarations/edist-self--7fa0e44a14cfe9b5147a46b5.md) | 83 | `result-track:7fa0e44a14cfe9b5147a46b5605f57ac287cfbede836aec0f4cf3841656d6a87` |
| 8 | `theorem` | [edist_pos_of_ne](../../../../../mathematics/Topology/MetricTopology/Metric/Variant5f9c922373e3acf81afb2d29b8a7da28032fc0efb184bcfbbd37fcc19dbad858.lean/declarations/edist-pos-of-ne--9977ad712324d2426f58bfdd.md) | 86 | `result-track:9977ad712324d2426f58bfdd20b166c8bdb3a2c786e62429a95323ec5fbb7da1` |
| 9 | `lemma` | [edist_eq_top_of_not_reachable](../../../../../mathematics/Topology/MetricTopology/Metric/Variant5f9c922373e3acf81afb2d29b8a7da28032fc0efb184bcfbbd37fcc19dbad858.lean/declarations/edist-eq-top-of-not-reachable--39fe855fa0073efb251afe06.md) | 90 | `result-track:39fe855fa0073efb251afe067ec8e4a4242b0171d676cd95746a258c2de99227` |
| 10 | `theorem` | [reachable_of_edist_ne_top](../../../../../mathematics/Topology/MetricTopology/Metric/Variant5f9c922373e3acf81afb2d29b8a7da28032fc0efb184bcfbbd37fcc19dbad858.lean/declarations/reachable-of-edist-ne-top--cca434fc887aea508beef991.md) | 94 | `result-track:cca434fc887aea508beef991419753bcf689cdd88678471c01f65c244fa27ffd` |
| 11 | `lemma` | [exists_walk_of_edist_ne_top](../../../../../mathematics/Topology/MetricTopology/Metric/Variant5f9c922373e3acf81afb2d29b8a7da28032fc0efb184bcfbbd37fcc19dbad858.lean/declarations/exists-walk-of-edist-ne-top--073685264e500889591775bb.md) | 98 | `result-track:073685264e500889591775bb1ecb3628668d96d5ab51d42737d84fb9bdbb1fc3` |
| 12 | `theorem` | [edist_triangle](../../../../../mathematics/Topology/MetricTopology/Metric/Variant5f9c922373e3acf81afb2d29b8a7da28032fc0efb184bcfbbd37fcc19dbad858.lean/declarations/edist-triangle--9eb8494ff8c7a246bb393ed6.md) | 102 | `result-track:9eb8494ff8c7a246bb393ed6cc68a6f25d5e776d84e3eaedec93c98e44884e3d` |
| 13 | `theorem` | [edist_comm](../../../../../mathematics/Topology/MetricTopology/Metric/Variant5f9c922373e3acf81afb2d29b8a7da28032fc0efb184bcfbbd37fcc19dbad858.lean/declarations/edist-comm--0629dfa764c684b5ba3c9e67.md) | 114 | `result-track:0629dfa764c684b5ba3c9e67d465e766c1584a5becfabd88eb6a43fef51a1d82` |
| 14 | `lemma` | [exists_walk_of_edist_eq_coe](../../../../../mathematics/Topology/MetricTopology/Metric/Variant5f9c922373e3acf81afb2d29b8a7da28032fc0efb184bcfbbd37fcc19dbad858.lean/declarations/exists-walk-of-edist-eq-coe--ad5a7bc081b7fd1cfaecdae2.md) | 119 | `result-track:ad5a7bc081b7fd1cfaecdae2cc4ea21c2bb2535b2631507fa8ffb42a4bf61374` |
| 15 | `lemma` | [edist_ne_top_iff_reachable](../../../../../mathematics/Topology/MetricTopology/Metric/Variant5f9c922373e3acf81afb2d29b8a7da28032fc0efb184bcfbbd37fcc19dbad858.lean/declarations/edist-ne-top-iff-reachable--107884cffd6d3cdf7c18f230.md) | 125 | `result-track:107884cffd6d3cdf7c18f230043c7968fedb26c7ca7caafd7c76c17a9c00d758` |
| 16 | `theorem` | [edist_eq_one_iff_adj](../../../../../mathematics/Topology/MetricTopology/Metric/Variant5f9c922373e3acf81afb2d29b8a7da28032fc0efb184bcfbbd37fcc19dbad858.lean/declarations/edist-eq-one-iff-adj--4c8c2813ccfc4af269da749b.md) | 135 | `result-track:4c8c2813ccfc4af269da749b61f188d7fe310d0933819e8534cb84d26e713938` |
| 17 | `lemma` | [edist_bot_of_ne](../../../../../mathematics/Topology/MetricTopology/Metric/Variant5f9c922373e3acf81afb2d29b8a7da28032fc0efb184bcfbbd37fcc19dbad858.lean/declarations/edist-bot-of-ne--9efa36552ad332df261d0760.md) | 141 | `result-track:9efa36552ad332df261d076016d90ac82a22ceec5c53e1a9db0819a56eb493ed` |
| 18 | `lemma` | [edist_bot](../../../../../mathematics/Topology/MetricTopology/Metric/Variant5f9c922373e3acf81afb2d29b8a7da28032fc0efb184bcfbbd37fcc19dbad858.lean/declarations/edist-bot--c03c96292409fbe9f7cce1a2.md) | 144 | `result-track:c03c96292409fbe9f7cce1a2862d8b9eecdb3af03e06ba4abf07d14276bd8bca` |
| 19 | `lemma` | [edist_top_of_ne](../../../../../mathematics/Topology/MetricTopology/Metric/Variant5f9c922373e3acf81afb2d29b8a7da28032fc0efb184bcfbbd37fcc19dbad858.lean/declarations/edist-top-of-ne--9c58587e486d8918a18886dd.md) | 147 | `result-track:9c58587e486d8918a18886dd09c55f6ac4a40679527d735accdf620f9377df55` |
| 20 | `lemma` | [edist_top](../../../../../mathematics/Topology/MetricTopology/Metric/Variant5f9c922373e3acf81afb2d29b8a7da28032fc0efb184bcfbbd37fcc19dbad858.lean/declarations/edist-top--1f3fd0e8d06d20b034c85ee8.md) | 150 | `result-track:1f3fd0e8d06d20b034c85ee8f77125406dfea0e6d3b9321de86b2206a58929d7` |
| 21 | `theorem` | [edist_anti](../../../../../mathematics/Topology/MetricTopology/Metric/Variant5f9c922373e3acf81afb2d29b8a7da28032fc0efb184bcfbbd37fcc19dbad858.lean/declarations/edist-anti--b5507bb6b5d8eee5f76a7128.md) | 155 | `result-track:b5507bb6b5d8eee5f76a7128c6c2aff0de7c922e079bd89e60cc3aafaabba41a` |
| 22 | `def` | [dist](../../../../../mathematics/Topology/MetricTopology/Metric/Variant5f9c922373e3acf81afb2d29b8a7da28032fc0efb184bcfbbd37fcc19dbad858.lean/declarations/dist--242097d80e07e38d6772c2bb.md) | 171 | `declaration-track:242097d80e07e38d6772c2bb13554ff6c391537863cca8625495871ae56ad673` |
| 23 | `theorem` | [dist_eq_sInf](../../../../../mathematics/Topology/MetricTopology/Metric/Variant5f9c922373e3acf81afb2d29b8a7da28032fc0efb184bcfbbd37fcc19dbad858.lean/declarations/dist-eq-sinf--91b93ef445aebaecb7d64dd6.md) | 176 | `result-track:91b93ef445aebaecb7d64dd6c41b178130e35aeed1447efeb3cca73050677b5c` |
| 24 | `theorem` | [Reachable.exists_walk_length_eq_dist](../../../../../mathematics/Topology/MetricTopology/Metric/Variant5f9c922373e3acf81afb2d29b8a7da28032fc0efb184bcfbbd37fcc19dbad858.lean/declarations/reachable-exists-walk-length-eq-dist--a762636ce86d511cd4b4be01.md) | 179 | `result-track:a762636ce86d511cd4b4be01044cbe92047bff626d9c678967007be82bffb753` |
| 25 | `theorem` | [Connected.exists_walk_length_eq_dist](../../../../../mathematics/Topology/MetricTopology/Metric/Variant5f9c922373e3acf81afb2d29b8a7da28032fc0efb184bcfbbd37fcc19dbad858.lean/declarations/connected-exists-walk-length-eq-dist--722f24a9e195c3be4edcdba1.md) | 183 | `result-track:722f24a9e195c3be4edcdba18a1cc981ba481af843dbba5e6c7b606a98a47225` |
| 26 | `theorem` | [dist_le](../../../../../mathematics/Topology/MetricTopology/Metric/Variant5f9c922373e3acf81afb2d29b8a7da28032fc0efb184bcfbbd37fcc19dbad858.lean/declarations/dist-le--de44f9ca80f991d80fb7c22b.md) | 187 | `result-track:de44f9ca80f991d80fb7c22bcc221ec5075d4d242f46c13b4116527851bfccaf` |
| 27 | `theorem` | [dist_eq_zero_iff_eq_or_not_reachable](../../../../../mathematics/Topology/MetricTopology/Metric/Variant5f9c922373e3acf81afb2d29b8a7da28032fc0efb184bcfbbd37fcc19dbad858.lean/declarations/dist-eq-zero-iff-eq-or-not-reachable--87c76a44c67f5f813ecb1488.md) | 191 | `result-track:87c76a44c67f5f813ecb148850dbd558c159af0a0aec0ab89cf84f2436cd168b` |
| 28 | `theorem` | [dist_self](../../../../../mathematics/Topology/MetricTopology/Metric/Variant5f9c922373e3acf81afb2d29b8a7da28032fc0efb184bcfbbd37fcc19dbad858.lean/declarations/dist-self--04b30d2e4813f48833a4f85e.md) | 194 | `result-track:04b30d2e4813f48833a4f85e6fedc6b4c74d6466dda40d6bf9e11fdd1659c060` |
| 29 | `theorem` | [Reachable.dist_eq_zero_iff](../../../../../mathematics/Topology/MetricTopology/Metric/Variant5f9c922373e3acf81afb2d29b8a7da28032fc0efb184bcfbbd37fcc19dbad858.lean/declarations/reachable-dist-eq-zero-iff--d83218698e9c286334f1324d.md) | 196 | `result-track:d83218698e9c286334f1324d3d15b5cb7623ff0b630a3eafd44dbb985024f258` |
| 30 | `theorem` | [Reachable.pos_dist_of_ne](../../../../../mathematics/Topology/MetricTopology/Metric/Variant5f9c922373e3acf81afb2d29b8a7da28032fc0efb184bcfbbd37fcc19dbad858.lean/declarations/reachable-pos-dist-of-ne--af250f9812fab8d5bdde08a0.md) | 199 | `result-track:af250f9812fab8d5bdde08a054f537ca8d3d86dd03b6aae8ea49cabf128f4814` |
| 31 | `theorem` | [Reachable.one_lt_dist_of_ne_of_not_adj](../../../../../mathematics/Topology/MetricTopology/Metric/Variant5f9c922373e3acf81afb2d29b8a7da28032fc0efb184bcfbbd37fcc19dbad858.lean/declarations/reachable-one-lt-dist-of-ne-of-not-adj--c7bb79232211c1fb73190587.md) | 203 | `result-track:c7bb79232211c1fb73190587507305309a304f1ca813b065304c95c018cee3c4` |
| 32 | `theorem` | [Connected.dist_eq_zero_iff](../../../../../mathematics/Topology/MetricTopology/Metric/Variant5f9c922373e3acf81afb2d29b8a7da28032fc0efb184bcfbbd37fcc19dbad858.lean/declarations/connected-dist-eq-zero-iff--abafb15cc769ef1f4fea8128.md) | 210 | `result-track:abafb15cc769ef1f4fea81285b8d09f754988f3990c3ea883105f89783d378c9` |
| 33 | `theorem` | [Connected.pos_dist_of_ne](../../../../../mathematics/Topology/MetricTopology/Metric/Variant5f9c922373e3acf81afb2d29b8a7da28032fc0efb184bcfbbd37fcc19dbad858.lean/declarations/connected-pos-dist-of-ne--02d27984bf49ae0efb834b74.md) | 213 | `result-track:02d27984bf49ae0efb834b74b1f639c6ea301d01bf1bb270ae8bf137f92d3faf` |
| 34 | `theorem` | [Connected.one_lt_dist_of_ne_of_not_adj](../../../../../mathematics/Topology/MetricTopology/Metric/Variant5f9c922373e3acf81afb2d29b8a7da28032fc0efb184bcfbbd37fcc19dbad858.lean/declarations/connected-one-lt-dist-of-ne-of-not-adj--ae02ca674fcd4d6e94427a65.md) | 217 | `result-track:ae02ca674fcd4d6e94427a65324fd38f07e2909be22352ef64f2fb35f1791b2f` |
| 35 | `theorem` | [dist_eq_zero_of_not_reachable](../../../../../mathematics/Topology/MetricTopology/Metric/Variant5f9c922373e3acf81afb2d29b8a7da28032fc0efb184bcfbbd37fcc19dbad858.lean/declarations/dist-eq-zero-of-not-reachable--2c359ad8f648a7cce2292fc0.md) | 221 | `result-track:2c359ad8f648a7cce2292fc01e098cc55bef276b7362a270fcd24c1d26166a59` |
| 36 | `theorem` | [nonempty_of_pos_dist](../../../../../mathematics/Topology/MetricTopology/Metric/Variant5f9c922373e3acf81afb2d29b8a7da28032fc0efb184bcfbbd37fcc19dbad858.lean/declarations/nonempty-of-pos-dist--4703fcb804ca4da8db26b08d.md) | 224 | `result-track:4703fcb804ca4da8db26b08d69d67fd75ef4d5533e845b598d47ca57ca172845` |
| 37 | `theorem` | [Connected.dist_triangle](../../../../../mathematics/Topology/MetricTopology/Metric/Variant5f9c922373e3acf81afb2d29b8a7da28032fc0efb184bcfbbd37fcc19dbad858.lean/declarations/connected-dist-triangle--c99b23c06150c1a15ec02d63.md) | 230 | `result-track:c99b23c06150c1a15ec02d6331549188bb2b52dff8b0f265adbd21cf934bf6c3` |
| 38 | `theorem` | [dist_comm](../../../../../mathematics/Topology/MetricTopology/Metric/Variant5f9c922373e3acf81afb2d29b8a7da28032fc0efb184bcfbbd37fcc19dbad858.lean/declarations/dist-comm--5d931f223ff792d56136b3f1.md) | 237 | `result-track:5d931f223ff792d56136b3f174e49acbd5d1f5d467d2d18e3755d4388e55af1e` |
| 39 | `lemma` | [dist_ne_zero_iff_ne_and_reachable](../../../../../mathematics/Topology/MetricTopology/Metric/Variant5f9c922373e3acf81afb2d29b8a7da28032fc0efb184bcfbbd37fcc19dbad858.lean/declarations/dist-ne-zero-iff-ne-and-reachable--2fc668e168ccb59102a6692b.md) | 240 | `result-track:2fc668e168ccb59102a6692be1f0f8407cbbcef9a463f319b4243810883de375` |
| 40 | `lemma` | [Reachable.of_dist_ne_zero](../../../../../mathematics/Topology/MetricTopology/Metric/Variant5f9c922373e3acf81afb2d29b8a7da28032fc0efb184bcfbbd37fcc19dbad858.lean/declarations/reachable-of-dist-ne-zero--feccca3afcb4ebfd370101f3.md) | 244 | `result-track:feccca3afcb4ebfd370101f36a100dc360959100c3a3224e6e9fdbab008bdf9d` |
| 41 | `lemma` | [exists_walk_of_dist_ne_zero](../../../../../mathematics/Topology/MetricTopology/Metric/Variant5f9c922373e3acf81afb2d29b8a7da28032fc0efb184bcfbbd37fcc19dbad858.lean/declarations/exists-walk-of-dist-ne-zero--cc29c3e6687b813742cf7264.md) | 247 | `result-track:cc29c3e6687b813742cf7264804ac104a248f4820d0a1952af57ac2431c99502` |
| 42 | `theorem` | [dist_eq_one_iff_adj](../../../../../mathematics/Topology/MetricTopology/Metric/Variant5f9c922373e3acf81afb2d29b8a7da28032fc0efb184bcfbbd37fcc19dbad858.lean/declarations/dist-eq-one-iff-adj--f10416778b7c11775272bc61.md) | 255 | `result-track:f10416778b7c11775272bc6187c9c27b7d306478eb2e434cbe3be5bb53f7ee02` |
| 43 | `theorem` | [Walk.isPath_of_length_eq_dist](../../../../../mathematics/Topology/MetricTopology/Metric/Variant5f9c922373e3acf81afb2d29b8a7da28032fc0efb184bcfbbd37fcc19dbad858.lean/declarations/walk-ispath-of-length-eq-dist--9d72f13f33840a59d0b3ad18.md) | 259 | `result-track:9d72f13f33840a59d0b3ad182c9ab3ada7da8a4881f52819bb3fe1462f66aa88` |
| 44 | `lemma` | [Reachable.exists_path_of_dist](../../../../../mathematics/Topology/MetricTopology/Metric/Variant5f9c922373e3acf81afb2d29b8a7da28032fc0efb184bcfbbd37fcc19dbad858.lean/declarations/reachable-exists-path-of-dist--55a1977189b8c22f1a612f30.md) | 270 | `result-track:55a1977189b8c22f1a612f3059169625f9443089da1630959bc624a37472524f` |
| 45 | `lemma` | [Connected.exists_path_of_dist](../../../../../mathematics/Topology/MetricTopology/Metric/Variant5f9c922373e3acf81afb2d29b8a7da28032fc0efb184bcfbbd37fcc19dbad858.lean/declarations/connected-exists-path-of-dist--0bc6bab224057ef3904d98a8.md) | 275 | `result-track:0bc6bab224057ef3904d98a8b4af3ce25113fe503c3053fbad4a79f64fa42cd7` |
| 46 | `lemma` | [dist_bot](../../../../../mathematics/Topology/MetricTopology/Metric/Variant5f9c922373e3acf81afb2d29b8a7da28032fc0efb184bcfbbd37fcc19dbad858.lean/declarations/dist-bot--70ac1f5b23613a97586b578f.md) | 281 | `result-track:70ac1f5b23613a97586b578fecfe247645c8bc2d74c7b93c39c652c810dfa8a9` |
| 47 | `lemma` | [dist_top_of_ne](../../../../../mathematics/Topology/MetricTopology/Metric/Variant5f9c922373e3acf81afb2d29b8a7da28032fc0efb184bcfbbd37fcc19dbad858.lean/declarations/dist-top-of-ne--da85e13c81a50fb519d597b9.md) | 284 | `result-track:da85e13c81a50fb519d597b9fd8fb0b84568ed3d50d722058fa18e81915f0f0b` |
| 48 | `lemma` | [dist_top](../../../../../mathematics/Topology/MetricTopology/Metric/Variant5f9c922373e3acf81afb2d29b8a7da28032fc0efb184bcfbbd37fcc19dbad858.lean/declarations/dist-top--bbc753ec3e207eb91872a8a4.md) | 287 | `result-track:bbc753ec3e207eb91872a8a4c7b110bad78d08d2b2bbade37e16d02fae48db1a` |
| 49 | `theorem` | [Reachable.dist_anti](../../../../../mathematics/Topology/MetricTopology/Metric/Variant5f9c922373e3acf81afb2d29b8a7da28032fc0efb184bcfbbd37fcc19dbad858.lean/declarations/reachable-dist-anti--922643da83e9d553f3726110.md) | 292 | `result-track:922643da83e9d553f372611020916f3064b37d05cc7ac477c363a1e5961ba78f` |
| 50 | `lemma` | [Walk.exists_adj_adj_not_adj_ne](../../../../../mathematics/Topology/MetricTopology/Metric/Variant5f9c922373e3acf81afb2d29b8a7da28032fc0efb184bcfbbd37fcc19dbad858.lean/declarations/walk-exists-adj-adj-not-adj-ne--bb0a552a201d3291889f6eeb.md) | 300 | `result-track:bb0a552a201d3291889f6eeb577b61ea5251be4b50ddbc597246615628b79fcd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
