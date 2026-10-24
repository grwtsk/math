# Verification target: GRWTSK.Topology.MetricTopology.Diam.Variant8ea0e979da03368eb75cc6aebfe43d14e85837f814c775eb5d82b12e5f7c622c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "947b76c5a7dfb12db5aff5c6dd81553e6cb5ea38",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/MetricTopology/Diam/Variant8ea0e979da03368eb75cc6aebfe43d14e85837f814c775eb5d82b12e5f7c622c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/MetricTopology/Diam/Variant8ea0e979da03368eb75cc6aebfe43d14e85837f814c775eb5d82b12e5f7c622c.lean/index.md) · [Full source](../../../../../mathematics/Topology/MetricTopology/Diam/Variant8ea0e979da03368eb75cc6aebfe43d14e85837f814c775eb5d82b12e5f7c622c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `947b76c5a7dfb12db5aff5c6dd81553e6cb5ea38`.

Source path: `GRWTSK/Topology/MetricTopology/Diam/Variant8ea0e979da03368eb75cc6aebfe43d14e85837f814c775eb5d82b12e5f7c622c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/MetricTopology/Diam/Variant8ea0e979da03368eb75cc6aebfe43d14e85837f814c775eb5d82b12e5f7c622c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.EMetricSpace.Pi` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [diam](../../../../../mathematics/Topology/MetricTopology/Diam/Variant8ea0e979da03368eb75cc6aebfe43d14e85837f814c775eb5d82b12e5f7c622c.lean/declarations/diam--3c23518a464bc693c355a558.md) | 36 | `declaration-track:3c23518a464bc693c355a5583b7d7dffe1611d6b37496131e9270019d8c6eead` |
| 2 | `theorem` | [diam_eq_sSup](../../../../../mathematics/Topology/MetricTopology/Diam/Variant8ea0e979da03368eb75cc6aebfe43d14e85837f814c775eb5d82b12e5f7c622c.lean/declarations/diam-eq-ssup--23cc7dbb46347b657bd38bc4.md) | 39 | `result-track:23cc7dbb46347b657bd38bc49a9cb3d20e1d1f3e3d5a02fd89fe8488cdf78eea` |
| 3 | `theorem` | [diam_le_iff](../../../../../mathematics/Topology/MetricTopology/Diam/Variant8ea0e979da03368eb75cc6aebfe43d14e85837f814c775eb5d82b12e5f7c622c.lean/declarations/diam-le-iff--4cef03cd8b3ed28f74989583.md) | 41 | `result-track:4cef03cd8b3ed28f749895839793697e6d7294467ecdc85326241a1ec173308f` |
| 4 | `theorem` | [diam_image_le_iff](../../../../../mathematics/Topology/MetricTopology/Diam/Variant8ea0e979da03368eb75cc6aebfe43d14e85837f814c775eb5d82b12e5f7c622c.lean/declarations/diam-image-le-iff--138f77119fd78d8fb82d87bf.md) | 44 | `result-track:138f77119fd78d8fb82d87bf0f04df87e3c342cb66b32a34738571e3b7f81a0b` |
| 5 | `theorem` | [edist_le_of_diam_le](../../../../../mathematics/Topology/MetricTopology/Diam/Variant8ea0e979da03368eb75cc6aebfe43d14e85837f814c775eb5d82b12e5f7c622c.lean/declarations/edist-le-of-diam-le--6e230f7e0c301a7399b60d3f.md) | 48 | `result-track:6e230f7e0c301a7399b60d3f862cdff86ce26efd47be9a69ee629bbd8b4b0a45` |
| 6 | `theorem` | [edist_le_diam_of_mem](../../../../../mathematics/Topology/MetricTopology/Diam/Variant8ea0e979da03368eb75cc6aebfe43d14e85837f814c775eb5d82b12e5f7c622c.lean/declarations/edist-le-diam-of-mem--7353df0953e9fa7c8a4580b7.md) | 52 | `result-track:7353df0953e9fa7c8a4580b7b85886d59d0aaab4e3cc0b3eaee94790709eb11f` |
| 7 | `theorem` | [diam_le](../../../../../mathematics/Topology/MetricTopology/Diam/Variant8ea0e979da03368eb75cc6aebfe43d14e85837f814c775eb5d82b12e5f7c622c.lean/declarations/diam-le--c21aedabd4f30a0855531b03.md) | 57 | `result-track:c21aedabd4f30a0855531b038a8b456a4b513a79e6b0175664489353caf45009` |
| 8 | `theorem` | [diam_subsingleton](../../../../../mathematics/Topology/MetricTopology/Diam/Variant8ea0e979da03368eb75cc6aebfe43d14e85837f814c775eb5d82b12e5f7c622c.lean/declarations/diam-subsingleton--627005081aa0206d8037f241.md) | 61 | `result-track:627005081aa0206d8037f241f3bf5b30b6ad91dee3280b2a05aa7cc365962dca` |
| 9 | `theorem` | [diam_empty](../../../../../mathematics/Topology/MetricTopology/Diam/Variant8ea0e979da03368eb75cc6aebfe43d14e85837f814c775eb5d82b12e5f7c622c.lean/declarations/diam-empty--74d7d3d90f451a621c4a8d3e.md) | 66 | `result-track:74d7d3d90f451a621c4a8d3e4788ba114fda850df075fe1109164bcb64dc0fd6` |
| 10 | `theorem` | [diam_singleton](../../../../../mathematics/Topology/MetricTopology/Diam/Variant8ea0e979da03368eb75cc6aebfe43d14e85837f814c775eb5d82b12e5f7c622c.lean/declarations/diam-singleton--b579da8802907e6d9607bb88.md) | 71 | `result-track:b579da8802907e6d9607bb881dd763fc6b08ff58fad9a45de270fedd792be1bf` |
| 11 | `theorem` | [diam_one](../../../../../mathematics/Topology/MetricTopology/Diam/Variant8ea0e979da03368eb75cc6aebfe43d14e85837f814c775eb5d82b12e5f7c622c.lean/declarations/diam-one--b03513c0e36a88d75a074469.md) | 75 | `result-track:b03513c0e36a88d75a0744695f6da5f634bc729f2c971519d2bd30fec6ded573` |
| 12 | `theorem` | [diam_iUnion_mem_option](../../../../../mathematics/Topology/MetricTopology/Diam/Variant8ea0e979da03368eb75cc6aebfe43d14e85837f814c775eb5d82b12e5f7c622c.lean/declarations/diam-iunion-mem-option--519ba0f6ea98d7ea57d8ebf8.md) | 78 | `result-track:519ba0f6ea98d7ea57d8ebf852bac1e22296ef4b2d260609979d3258ae4c5fc3` |
| 13 | `theorem` | [diam_insert](../../../../../mathematics/Topology/MetricTopology/Diam/Variant8ea0e979da03368eb75cc6aebfe43d14e85837f814c775eb5d82b12e5f7c622c.lean/declarations/diam-insert--2350f6c11002e569c904ec80.md) | 81 | `result-track:2350f6c11002e569c904ec803a9bf6e444c754d5de2fc15dc5e2123ddb2014ac` |
| 14 | `theorem` | [diam_pair](../../../../../mathematics/Topology/MetricTopology/Diam/Variant8ea0e979da03368eb75cc6aebfe43d14e85837f814c775eb5d82b12e5f7c622c.lean/declarations/diam-pair--9a8586fdca7d90cf85c09cb8.md) | 86 | `result-track:9a8586fdca7d90cf85c09cb8a1393db1bb841244083e656e4758215945f7b06b` |
| 15 | `theorem` | [diam_triple](../../../../../mathematics/Topology/MetricTopology/Diam/Variant8ea0e979da03368eb75cc6aebfe43d14e85837f814c775eb5d82b12e5f7c622c.lean/declarations/diam-triple--a8ea0cf29b4936ac26eb10dd.md) | 89 | `result-track:a8ea0cf29b4936ac26eb10dd9389aed3c6430856bc06fe59a051ddb5ff7cc6f2` |
| 16 | `theorem` | [diam_mono](../../../../../mathematics/Topology/MetricTopology/Diam/Variant8ea0e979da03368eb75cc6aebfe43d14e85837f814c775eb5d82b12e5f7c622c.lean/declarations/diam-mono--a7459a6b9e071483e77880e0.md) | 94 | `result-track:a7459a6b9e071483e77880e0351f8f2f166570885f967236ab6dcabbc7abfa9f` |
| 17 | `theorem` | [diam_union](../../../../../mathematics/Topology/MetricTopology/Diam/Variant8ea0e979da03368eb75cc6aebfe43d14e85837f814c775eb5d82b12e5f7c622c.lean/declarations/diam-union--67c9295eedb1fe4576daac41.md) | 99 | `result-track:67c9295eedb1fe4576daac41fa845a8acb4cabc31fe86078f93ecccf2caeceeb` |
| 18 | `theorem` | [diam_union'](../../../../../mathematics/Topology/MetricTopology/Diam/Variant8ea0e979da03368eb75cc6aebfe43d14e85837f814c775eb5d82b12e5f7c622c.lean/declarations/diam-union--0bf9f588c2b6bf57bd5aacd3.md) | 119 | `result-track:0bf9f588c2b6bf57bd5aacd360f2b057652eff45b13914c860f4cdcb86f4cd17` |
| 19 | `theorem` | [diam_closedBall](../../../../../mathematics/Topology/MetricTopology/Diam/Variant8ea0e979da03368eb75cc6aebfe43d14e85837f814c775eb5d82b12e5f7c622c.lean/declarations/diam-closedball--2e65d05a5d6a747df506b490.md) | 123 | `result-track:2e65d05a5d6a747df506b490878e6275711e3152a0e05dc6c895905b4bb8cdeb` |
| 20 | `theorem` | [diam_ball](../../../../../mathematics/Topology/MetricTopology/Diam/Variant8ea0e979da03368eb75cc6aebfe43d14e85837f814c775eb5d82b12e5f7c622c.lean/declarations/diam-ball--f81c0ed2f609a1142b0a7230.md) | 130 | `result-track:f81c0ed2f609a1142b0a7230e4e0c648d7f443068aa0401310f8ca31a00eb584` |
| 21 | `theorem` | [diam_pi_le_of_le](../../../../../mathematics/Topology/MetricTopology/Diam/Variant8ea0e979da03368eb75cc6aebfe43d14e85837f814c775eb5d82b12e5f7c622c.lean/declarations/diam-pi-le-of-le--2dd266d7735df440a0178773.md) | 133 | `result-track:2dd266d7735df440a0178773c8fcc7ed57fc9d43cee5b4c57855684bb6c0a232` |
| 22 | `theorem` | [diam_eq_zero_iff](../../../../../mathematics/Topology/MetricTopology/Diam/Variant8ea0e979da03368eb75cc6aebfe43d14e85837f814c775eb5d82b12e5f7c622c.lean/declarations/diam-eq-zero-iff--5f878a86adff7ec239ccb755.md) | 144 | `result-track:5f878a86adff7ec239ccb7554a4c0e5b2f8759d8a519d19c53a4f91f6b5d99fb` |
| 23 | `theorem` | [diam_pos_iff](../../../../../mathematics/Topology/MetricTopology/Diam/Variant8ea0e979da03368eb75cc6aebfe43d14e85837f814c775eb5d82b12e5f7c622c.lean/declarations/diam-pos-iff--30ea2235566f978fee4a5535.md) | 147 | `result-track:30ea2235566f978fee4a55354d8c6e763011a512618d9802fb6c4a4a6517c724` |
| 24 | `theorem` | [diam_pos_iff'](../../../../../mathematics/Topology/MetricTopology/Diam/Variant8ea0e979da03368eb75cc6aebfe43d14e85837f814c775eb5d82b12e5f7c622c.lean/declarations/diam-pos-iff--78abd195d12f9efa22470bac.md) | 150 | `result-track:78abd195d12f9efa22470bacd2b8c3f861f466faf5a6a4c914243b4b90d30f7b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
