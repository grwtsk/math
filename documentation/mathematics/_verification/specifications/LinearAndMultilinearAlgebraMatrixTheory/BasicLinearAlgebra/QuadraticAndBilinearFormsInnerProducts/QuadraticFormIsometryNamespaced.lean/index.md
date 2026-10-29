# Verification target: Quadratic Form Isometry Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c7fd6dcf1b8a8abfe27d3c407d65d6372472f611",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/MetricTopology/Isometry/Variant47cc72bb346baa6f3300bc8e533dee19f3f8c201d2121492abb99639bd828a99.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/QuadraticFormIsometryNamespaced.lean/index.md) · [Full source](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/QuadraticFormIsometryNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c7fd6dcf1b8a8abfe27d3c407d65d6372472f611`.

Source path: `GRWTSK/Topology/MetricTopology/Isometry/Variant47cc72bb346baa6f3300bc8e533dee19f3f8c201d2121492abb99639bd828a99.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/MetricTopology/Isometry/Variant47cc72bb346baa6f3300bc8e533dee19f3f8c201d2121492abb99639bd828a99.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.QuadraticForm.Basic` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Isometry](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/QuadraticFormIsometryNamespaced.lean/declarations/isometry.md) | 40 | `declaration-track:fa4cd625c7b1e8a1d69e006fe9ea62860cd8f2cc918d127017ded4dd8ef46e94` |
| 2 | `instance` | [instFunLike](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/QuadraticFormIsometryNamespaced.lean/declarations/instfunlike.md) | 52 | `declaration-track:a61f0508c50aa47f274e80dba38ed6a2d0c948130a16dc3b4759ce66705cfb1f` |
| 3 | `instance` | [instLinearMapClass](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/QuadraticFormIsometryNamespaced.lean/declarations/instlinearmapclass.md) | 56 | `declaration-track:608968c13cba4e08f9817ff8a39eaf81708ad2cbc5074952a4aa520cfbf6c169` |
| 4 | `theorem` | [toLinearMap_injective](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/QuadraticFormIsometryNamespaced.lean/declarations/tolinearmap-injective.md) | 60 | `result-track:7e45fbf28c651a428e7004e724b79dcf0aea1fc8ff79866e6f069661631efa98` |
| 5 | `theorem` | [ext](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/QuadraticFormIsometryNamespaced.lean/declarations/ext.md) | 65 | `result-track:7e64923a68b9e83614504932ea8a73768d8544514d45c75ac24f2ec019365d30` |
| 6 | `def` | [Simps.apply](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/QuadraticFormIsometryNamespaced.lean/declarations/simps-apply.md) | 69 | `declaration-track:578abef82d08e739f61e19fd4de002162d955179d0f34a85fe2932704cf1ed87` |
| 7 | `theorem` | [map_app](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/QuadraticFormIsometryNamespaced.lean/declarations/map-app.md) | 74 | `result-track:688e4b62d94b5c46cb08ffec88dee4a65ffdcc07c5a274d817ede213598aac17` |
| 8 | `theorem` | [coe_toLinearMap](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/QuadraticFormIsometryNamespaced.lean/declarations/coe-tolinearmap.md) | 78 | `result-track:5bbb658d0f12aac8835f1df57656b00264aa4bbf58834854f8df42dfec45a37b` |
| 9 | `def` | [id](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/QuadraticFormIsometryNamespaced.lean/declarations/id.md) | 83 | `declaration-track:1ae36db0db546759fd673a36c7dde8ef895ad19402924848a80991b034181ec6` |
| 10 | `def` | [ofEq](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/QuadraticFormIsometryNamespaced.lean/declarations/ofeq.md) | 89 | `declaration-track:f3ac5221151c4828f7735e656f315127b069134b38d8f04dce4f7ed50ce1e33b` |
| 11 | `theorem` | [ofEq_rfl](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/QuadraticFormIsometryNamespaced.lean/declarations/ofeq-rfl.md) | 94 | `result-track:bb99733b72eaf513c2bc5574655bdbaf8114878529a6c3ee1cf1369251244f11` |
| 12 | `def` | [comp](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/QuadraticFormIsometryNamespaced.lean/declarations/comp.md) | 98 | `declaration-track:99df2f64e9b7e3b68e07b54d054090be44849b1538d94bf5fac8d8514d5d382e` |
| 13 | `theorem` | [toLinearMap_comp](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/QuadraticFormIsometryNamespaced.lean/declarations/tolinearmap-comp.md) | 104 | `result-track:e91e4bd3b8112989dea38ee231d50747057b0ca50695a8d37ece69089c2c4c3c` |
| 14 | `theorem` | [id_comp](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/QuadraticFormIsometryNamespaced.lean/declarations/id-comp.md) | 109 | `result-track:6d48ef61711ce9e29c09b59f4d436e2a19dae8446bd272afdfd79f1aa6ffcdce` |
| 15 | `theorem` | [comp_id](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/QuadraticFormIsometryNamespaced.lean/declarations/comp-id.md) | 113 | `result-track:72cfca50f48fc9e650b2d39c352b30c4b1bb2eb9bc52d7b6a94a8ee21bf95d22` |
| 16 | `theorem` | [comp_assoc](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/QuadraticFormIsometryNamespaced.lean/declarations/comp-assoc.md) | 116 | `result-track:fb4393feb0b9833cfa86c8aab22c2b4dae9cafd68438f8ce16904a87685ca5e5` |
| 17 | `instance` | [(anonymous)](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/QuadraticFormIsometryNamespaced.lean/declarations/instance.md) | 121 | `declaration-track:510d0ea660957dbdea005bf6934bcf2fbe49cfe4cdb757cc4d470f81360ee757` |
| 18 | `instance` | [hasZeroOfSubsingleton](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/QuadraticFormIsometryNamespaced.lean/declarations/haszeroofsubsingleton.md) | 125 | `declaration-track:1f1d1b98df8ad6cdca09dac3d00b6406d2f8faeb8c47d7914a2480a4adb2e6e5` |
| 19 | `instance` | [(anonymous)](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/QuadraticFormIsometryNamespaced.lean/declarations/instance-source-edition-2.md) | 131 | `declaration-track:b248bbc5398358f367ff44089c52666b54020fcbf6af465012703a5c106507a4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a2923199798fb17649eebd98373c3972eb5a42ced7ecea5ac3083576f19e31ae -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/MetricTopology/Isometry/Variant47cc72bb346baa6f3300bc8e533dee19f3f8c201d2121492abb99639bd828a99.lean","GRWTSK/_verification/specifications/Topology/MetricTopology/Isometry/Variant47cc72bb346baa6f3300bc8e533dee19f3f8c201d2121492abb99639bd828a99.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
