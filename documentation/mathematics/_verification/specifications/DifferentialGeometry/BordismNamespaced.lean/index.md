# Verification target: Bordism Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bcccd3e9df10b04b59361f3c055a81a8035e2787",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Bordism/Variant889f6f803e31c893c1ddbd1c98dcf793c35dba73c885e86aa1e202ff06faf882.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../DifferentialGeometry/BordismNamespaced.lean/index.md) · [Full source](../../../../DifferentialGeometry/BordismNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bcccd3e9df10b04b59361f3c055a81a8035e2787`.

Source path: `GRWTSK/Topology/GeneralTopology/Bordism/Variant889f6f803e31c893c1ddbd1c98dcf793c35dba73c885e86aa1e202ff06faf882.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Bordism/Variant889f6f803e31c893c1ddbd1c98dcf793c35dba73c885e86aa1e202ff06faf882.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Geometry.Manifold.Instances.Real` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [SingularManifold.](../../../../DifferentialGeometry/BordismNamespaced.lean/declarations/singularmanifold.md) | 113 | `declaration-track:2ee5bf741d3447c2c06bf921777541d361137035e4f30374e5726997ef3c16f7` |
| 2 | `instance` | [(anonymous)](../../../../DifferentialGeometry/BordismNamespaced.lean/declarations/instance.md) | 138 | `declaration-track:3c9f145f051106e68d3e71bb58965db6f646da82cda907f8777bc033f0485d83` |
| 3 | `instance` | [(anonymous)](../../../../DifferentialGeometry/BordismNamespaced.lean/declarations/instance-source-edition-4.md) | 140 | `declaration-track:70e98b0a7cc7f2a7b905d3ce425fb5f5e0ded5ed99f35e43ccc710591b97b975` |
| 4 | `instance` | [(anonymous)](../../../../DifferentialGeometry/BordismNamespaced.lean/declarations/instance-source-edition-5.md) | 142 | `declaration-track:90958ac50c13a5df0c8c0a3d1e2f57320a484ded03b6973ef99c5f77bbc8ce81` |
| 5 | `instance` | [(anonymous)](../../../../DifferentialGeometry/BordismNamespaced.lean/declarations/instance-source-edition-2.md) | 144 | `declaration-track:551cc0542ac90d8d404db5dc5b21da69440f3cdab5a65c1fefee497729f50452` |
| 6 | `instance` | [(anonymous)](../../../../DifferentialGeometry/BordismNamespaced.lean/declarations/instance-source-edition-6.md) | 146 | `declaration-track:aa9b07a0c54d8aa0736097adadd6c1d3e0718d4638f0f9c3ce7e92375401ee9f` |
| 7 | `def` | [map.](../../../../DifferentialGeometry/BordismNamespaced.lean/declarations/map.md) | 150 | `declaration-track:7b2b41ea81c9175458c6122a7e691b7776447aaa849f085aa35d41bfa8b64c2c` |
| 8 | `lemma` | [map_f](../../../../DifferentialGeometry/BordismNamespaced.lean/declarations/map-f.md) | 159 | `result-track:0a152e7742f2fe03571ceaa277d1061ad687ea1fac1da4e77d9fbdb6f36c97e8` |
| 9 | `lemma` | [map_M](../../../../DifferentialGeometry/BordismNamespaced.lean/declarations/map-m.md) | 164 | `result-track:9d4ce60d1b054f607e2c8c0178f625ad37cd6ad9ddd543010afee9116ec6472c` |
| 10 | `lemma` | [map_comp](../../../../DifferentialGeometry/BordismNamespaced.lean/declarations/map-comp.md) | 168 | `result-track:1783e632522a79766abda194296ef709b764b7b059c06aeed2f8208e1db0f7df` |
| 11 | `def` | [refl](../../../../DifferentialGeometry/BordismNamespaced.lean/declarations/refl.md) | 177 | `declaration-track:7fa4d560cb942eff23a6c270c877bd1bf5b5b861dfc17436228285926d4f8b2c` |
| 12 | `def` | [comap](../../../../DifferentialGeometry/BordismNamespaced.lean/declarations/comap.md) | 184 | `declaration-track:64e1a11c64de066edbfba2b7445c158caf241a55f1f3f3a4f571bf0dae1bca8f` |
| 13 | `lemma` | [comap_M](../../../../DifferentialGeometry/BordismNamespaced.lean/declarations/comap-m.md) | 191 | `result-track:4cf0c18653f8c43e674b4f12ec7cad1bdaeb745df919532d46ada54810de2ac3` |
| 14 | `lemma` | [comap_f](../../../../DifferentialGeometry/BordismNamespaced.lean/declarations/comap-f.md) | 196 | `result-track:b03f420ffaaf6339478e40b8856d7b01cbb184a262a34f8ac6f16defe55df3a0` |
| 15 | `def` | [empty.](../../../../DifferentialGeometry/BordismNamespaced.lean/declarations/empty.md) | 202 | `declaration-track:f5b417b8f07316d08e0315bbeab0f0afa4d9c585d1314933e381821982bf6f26` |
| 16 | `lemma` | [empty_M](../../../../DifferentialGeometry/BordismNamespaced.lean/declarations/empty-m.md) | 212 | `result-track:b04a5d0535a602884d1a366e09dbcc1d94a7ace931b3129d58dec30348095f3d` |
| 17 | `instance` | [(anonymous)](../../../../DifferentialGeometry/BordismNamespaced.lean/declarations/instance-source-edition-3.md) | 214 | `declaration-track:5eaed975d4ad8427f7cbcbe41e0727d364705767bd02d42894f792ef3634c929` |
| 18 | `def` | [toPUnit](../../../../DifferentialGeometry/BordismNamespaced.lean/declarations/topunit.md) | 220 | `declaration-track:79920367509d94106c0636b7d8947c013fd0ad1146411fd3a898e898b2df1625` |
| 19 | `def` | [prod](../../../../DifferentialGeometry/BordismNamespaced.lean/declarations/prod.md) | 242 | `declaration-track:d19ac54d7f392d6b318fbc11318256382b4a3b16a3a0c6be9cd7df291a0674ba` |
| 20 | `def` | [sum](../../../../DifferentialGeometry/BordismNamespaced.lean/declarations/sum.md) | 251 | `declaration-track:0e85acc70ad3781a93a7b007c5d72781cf76965c0014cdb8b8da1376d622f02f` |
| 21 | `lemma` | [sum_M](../../../../DifferentialGeometry/BordismNamespaced.lean/declarations/sum-m.md) | 257 | `result-track:ab0cd432c13c9505b1e7ffb7314a5e99d5cfea513b5ae29b67ba91c0d343c788` |
| 22 | `lemma` | [sum_f](../../../../DifferentialGeometry/BordismNamespaced.lean/declarations/sum-f.md) | 260 | `result-track:639ae5469e030fef41da24359b53eddad414469f8a5f963aa3bce7b321e1d38b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=8d4bac82599e4e105f383cfe44201a5ab9d1240c7519164bfa95bd826f426c1b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/Bordism/Variant889f6f803e31c893c1ddbd1c98dcf793c35dba73c885e86aa1e202ff06faf882.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/Bordism/Variant889f6f803e31c893c1ddbd1c98dcf793c35dba73c885e86aa1e202ff06faf882.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
