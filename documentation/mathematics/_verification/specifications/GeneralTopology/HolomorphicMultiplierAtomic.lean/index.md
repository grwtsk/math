# Verification target: GRWTSK.Analysis.Operator.HolomorphicMultiplierAtomic

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ceb1d90b259a9da68acafca162e1ad41946ba588",
  "lexical_observation_count": 34,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/Operator/HolomorphicMultiplierAtomic.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/HolomorphicMultiplierAtomic.lean/index.md) · [Full source](../../../../GeneralTopology/HolomorphicMultiplierAtomic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ceb1d90b259a9da68acafca162e1ad41946ba588`.

Source path: `GRWTSK/Analysis/Operator/HolomorphicMultiplierAtomic.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/Operator/HolomorphicMultiplierAtomic.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Analysis.Operator.HolomorphicMultiplierNorming`](../../../../OperatorTheory/HolomorphicMultiplierNorming.lean/index.md) — import line 1; pinned internal source present.
- `Mathlib.Analysis.SpecificLimits.Basic` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Bases` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [PositiveAtom](../../../../GeneralTopology/HolomorphicMultiplierAtomic.lean/declarations/positiveatom.md) | 38 | `declaration-track:18d9e33dc2840d76056d0820c2589ded29873b4908e164bec35d0b325a8dbe84` |
| 2 | `theorem` | [ae_at](../../../../GeneralTopology/HolomorphicMultiplierAtomic.lean/declarations/ae-at.md) | 48 | `result-track:c4458df1a811b1b93b9104f2737e1d77dc068c76962e0064bc889d9a1a3b2917` |
| 3 | `theorem` | [density_le](../../../../GeneralTopology/HolomorphicMultiplierAtomic.lean/declarations/density-le.md) | 58 | `result-track:c57863eb8f30ebe741334e2c46e891b693095b99b826afb0170d03fa63532a83` |
| 4 | `def` | [value](../../../../GeneralTopology/HolomorphicMultiplierAtomic.lean/declarations/value.md) | 71 | `declaration-track:75b2b1b469e6f4ddef72cf5dfcfe59dcb4a36bd694f8fedc687c3cdc9572754e` |
| 5 | `theorem` | [value_classOf](../../../../GeneralTopology/HolomorphicMultiplierAtomic.lean/declarations/value-classof.md) | 76 | `result-track:b923c766be9d347d0073ae60cdfbb778f8df74c199774b1f7068e2c7b4326202` |
| 6 | `theorem` | [value_sq_bound](../../../../GeneralTopology/HolomorphicMultiplierAtomic.lean/declarations/value-sq-bound.md) | 81 | `result-track:fb54088a61435462634c2b441768ea7934ec0ecdb2e19853b83e4c1141bd7c39` |
| 7 | `theorem` | [value_norm_bound](../../../../GeneralTopology/HolomorphicMultiplierAtomic.lean/declarations/value-norm-bound.md) | 96 | `result-track:c31d12702d0a289d07f5c54fa6896b4787088f771d50a23096dc913d2a3facc5` |
| 8 | `def` | [functional](../../../../GeneralTopology/HolomorphicMultiplierAtomic.lean/declarations/functional.md) | 113 | `declaration-track:c700eb849523b0b4f7a4fa765209b275eb3ce2a682d524ee87c626f62834330a` |
| 9 | `theorem` | [functional_classOf](../../../../GeneralTopology/HolomorphicMultiplierAtomic.lean/declarations/functional-classof.md) | 128 | `result-track:468e1167b85ab4ed23cf10e4333867684d340b8145f980818035366059e8d447` |
| 10 | `theorem` | [functional_norm_le](../../../../GeneralTopology/HolomorphicMultiplierAtomic.lean/declarations/functional-norm-le.md) | 132 | `result-track:d4f43c4bf9a982b3a40abecb0730f7e9a494e4f169565e92ef76e80d3ddc54d0` |
| 11 | `def` | [pointPort](../../../../GeneralTopology/HolomorphicMultiplierAtomic.lean/declarations/pointport.md) | 138 | `declaration-track:83d4c8e787489c9aab7a9cdc29af97e7bb8eb63e6a06448dc147064bd9da4b34` |
| 12 | `def` | [finiteMassPointPort](../../../../GeneralTopology/HolomorphicMultiplierAtomic.lean/declarations/finitemasspointport.md) | 150 | `declaration-track:adfac31a0f6fc3ab4924187205da24efeafdb074ed55a476bffc56f8d8ec8992` |
| 13 | `def` | [atomicPorts](../../../../GeneralTopology/HolomorphicMultiplierAtomic.lean/declarations/atomicports.md) | 159 | `declaration-track:05bf6b6920d433c52141cc58a8c4d95ac21919c9e8ec670c8b7a1e4913515bf1` |
| 14 | `theorem` | [norm_eq_of_dense_atoms](../../../../GeneralTopology/HolomorphicMultiplierAtomic.lean/declarations/norm-eq-of-dense-atoms.md) | 164 | `result-track:04df9f2814837e228414f24d2997b045b4e87d1c54fff6ef83e1cd7d7005e416` |
| 15 | `theorem` | [closed_range_of_dense_atoms](../../../../GeneralTopology/HolomorphicMultiplierAtomic.lean/declarations/closed-range-of-dense-atoms.md) | 170 | `result-track:7147c473431edbef3704a7f6871fab818769ded5d4cef5cad44dad980b876d30` |
| 16 | `def` | [atomicMeasure](../../../../GeneralTopology/HolomorphicMultiplierAtomic.lean/declarations/atomicmeasure.md) | 177 | `declaration-track:3352caff5484fd2d95206dff6e5e15269423a6c1aa49df64710a2a283818e88b` |
| 17 | `theorem` | [atomicMeasure_univ](../../../../GeneralTopology/HolomorphicMultiplierAtomic.lean/declarations/atomicmeasure-univ.md) | 180 | `result-track:ddb0e9d5546d934ef71e1f5784ce1df5b80fd7da8ee7aff926456a1afceeb887` |
| 18 | `def` | [summandAtom](../../../../GeneralTopology/HolomorphicMultiplierAtomic.lean/declarations/summandatom.md) | 186 | `declaration-track:5aeac3ad070ff4bd653772588e7f1da78568a3de0b3d8eb1b4319b5efd8cac95` |
| 19 | `def` | [rangeAtoms](../../../../GeneralTopology/HolomorphicMultiplierAtomic.lean/declarations/rangeatoms.md) | 192 | `declaration-track:c5088b720e80e2113015e89f351cb00ab62a366bc58a5a5b04f4f4fd258ddfa8` |
| 20 | `theorem` | [atomicMeasure_norm_eq](../../../../GeneralTopology/HolomorphicMultiplierAtomic.lean/declarations/atomicmeasure-norm-eq.md) | 199 | `result-track:a03cc8eae3633b93f04728b6ad243cfbfa4c04ab25116e321b7a5afe392f1a9e` |
| 21 | `def` | [geometricWeight](../../../../GeneralTopology/HolomorphicMultiplierAtomic.lean/declarations/geometricweight.md) | 208 | `declaration-track:0a986f669854fd92fc02095b6e3f64a24ec19805ff3a16cbfc436c8e406edf92` |
| 22 | `theorem` | [geometricWeight_pos](../../../../GeneralTopology/HolomorphicMultiplierAtomic.lean/declarations/geometricweight-pos.md) | 210 | `result-track:ef6eff383eb6dd58888a0355b07b472f73811caf6948e638f5b8c29107c34a97` |
| 23 | `theorem` | [geometricWeight_sum](../../../../GeneralTopology/HolomorphicMultiplierAtomic.lean/declarations/geometricweight-sum.md) | 213 | `result-track:93713a4383e4562f89d60782adc3d27a9794eee25dcbb82c9cec3fd9d9c4c5f3` |
| 24 | `def` | [denseAtomicMeasure](../../../../GeneralTopology/HolomorphicMultiplierAtomic.lean/declarations/denseatomicmeasure.md) | 219 | `declaration-track:34eda504ae67869bba260e93e6fba2188038c8bd391ce110556133d166503688` |
| 25 | `theorem` | [denseAtomicMeasure_univ](../../../../GeneralTopology/HolomorphicMultiplierAtomic.lean/declarations/denseatomicmeasure-univ.md) | 222 | `result-track:3261f1053f30637d79e85d97496c64ee70553bf7102ba1cba1b64a2122c62425` |
| 26 | `theorem` | [denseAtomicMeasure_finite](../../../../GeneralTopology/HolomorphicMultiplierAtomic.lean/declarations/denseatomicmeasure-finite.md) | 227 | `result-track:8da43001a42712ba6a04cd462e91136da47df8ac12ca2c0341863e29b29f0d59` |
| 27 | `theorem` | [denseAtomicMeasure_norm_eq](../../../../GeneralTopology/HolomorphicMultiplierAtomic.lean/declarations/denseatomicmeasure-norm-eq.md) | 232 | `result-track:b854c7a0b00d449b7e53108901ad1dafa3bf69ed96716bca85959d5d4836a032` |
| 28 | `def` | [denseAtomicRepresentation](../../../../GeneralTopology/HolomorphicMultiplierAtomic.lean/declarations/denseatomicrepresentation.md) | 238 | `declaration-track:93226d5ee8fc25bda6e7abdbc68c76f8f6b9bff65353c5219e3a23c3574c390a` |
| 29 | `theorem` | [denseAtomicRepresentation_apply](../../../../GeneralTopology/HolomorphicMultiplierAtomic.lean/declarations/denseatomicrepresentation-apply.md) | 245 | `result-track:b0531aa2471f5be58fa7689439da9309093f363dde0725a6d238729fb82b9a13` |
| 30 | `theorem` | [denseAtomicRepresentation_closed](../../../../GeneralTopology/HolomorphicMultiplierAtomic.lean/declarations/denseatomicrepresentation-closed.md) | 250 | `result-track:d766d6b3f312001aeccb0d65ef5bb7b46a0031b60270dc8eff574d2076532d7e` |
| 31 | `theorem` | [exists_finite_norming_measure](../../../../GeneralTopology/HolomorphicMultiplierAtomic.lean/declarations/exists-finite-norming-measure.md) | 260 | `result-track:f23135e9c279f7387c67f947c09d7b4bf621d003f8736630f4cbf57c4e066e9a` |
| 32 | `theorem` | [zero_weight_dominated](../../../../GeneralTopology/HolomorphicMultiplierAtomic.lean/declarations/zero-weight-dominated.md) | 274 | `result-track:836ec4b2bcf4ba588d4208aef7168d2544ded23c089ff19d0bce0af462e2864e` |
| 33 | `theorem` | [no_half_atom_at_center](../../../../GeneralTopology/HolomorphicMultiplierAtomic.lean/declarations/no-half-atom-at-center.md) | 278 | `result-track:0632d84da8e3b6d83a9b5db4e82f008bddd47fb80270ada93312d1539ae6265c` |
| 34 | `theorem` | [disk_has_norming_measure](../../../../GeneralTopology/HolomorphicMultiplierAtomic.lean/declarations/disk-has-norming-measure.md) | 290 | `result-track:c510da0c9181b25d5838f15bbddacbde6c6fd40d6938943eb390f3e55b31a59c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=fa9f4d33e7a83af277f800b3d5ad7d7babd367af42036a4f512249a457f1bdf4 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/Operator/HolomorphicMultiplierAtomic.lean","GRWTSK/_verification/specifications/Analysis/OperatorTheory/HolomorphicMultiplierAtomic.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
