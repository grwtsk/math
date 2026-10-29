# Verification target: Lie Tensor Product Coe Linear Map Map

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "74f6cd275182c7cde49e7136c7143fe5f6a42180",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/TensorProduct/Varianteb15e73b5e6d46cf1b913a8749a17cececee7ff41656af6d39ad330b0b4950e7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieTensorProductCoeLinearMapMap.lean/index.md) · [Full source](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieTensorProductCoeLinearMapMap.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `74f6cd275182c7cde49e7136c7143fe5f6a42180`.

Source path: `GRWTSK/Algebra/LinearAlgebra/TensorProduct/Varianteb15e73b5e6d46cf1b913a8749a17cececee7ff41656af6d39ad330b0b4950e7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/TensorProduct/Varianteb15e73b5e6d46cf1b913a8749a17cececee7ff41656af6d39ad330b0b4950e7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Lie.Abelian` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [hasBracketAux](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieTensorProductCoeLinearMapMap.lean/declarations/hasbracketaux.md) | 50 | `declaration-track:7e09ece0e1670f84fb17f93f24b98d6fcce9590297a120d40eed985cfea14ab4` |
| 2 | `instance` | [lieRingModule](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieTensorProductCoeLinearMapMap.lean/declarations/lieringmodule.md) | 55 | `declaration-track:7f6252485561a61c8b5e1c973d602b50287403b334ca7ddc0057dc927b9c6b75` |
| 3 | `instance` | [lieModule](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieTensorProductCoeLinearMapMap.lean/declarations/liemodule.md) | 75 | `declaration-track:47f093a7363af077b52edc0eea453168e1511025778f6a84170813fbacba0ecc` |
| 4 | `theorem` | [lie_tmul_right](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieTensorProductCoeLinearMapMap.lean/declarations/lie-tmul-right.md) | 84 | `result-track:39775c4333a3ffe8150a827895d886d73f40e511afc78adc6e9b293776156961` |
| 5 | `def` | [lift](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieTensorProductCoeLinearMapMap.lean/declarations/lift.md) | 94 | `declaration-track:5dcf4db2109dcd2ee45a29b73b29fc3200f9285b948d238cb191cf47ead1332d` |
| 6 | `theorem` | [lift_apply](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieTensorProductCoeLinearMapMap.lean/declarations/lift-apply.md) | 104 | `result-track:5af414e7a0b412e6b65c54ec25026284c99c76ee68c6c8adfc867433ee90075e` |
| 7 | `def` | [liftLie](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieTensorProductCoeLinearMapMap.lean/declarations/liftlie.md) | 112 | `declaration-track:67eff00914af75a6d47128be346535828313baeb1dd7c48ab6a8d5c402815808` |
| 8 | `theorem` | [coe_liftLie_eq_lift_coe](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieTensorProductCoeLinearMapMap.lean/declarations/coe-liftlie-eq-lift-coe.md) | 118 | `result-track:cf911909ba56c143f807d189b24431aecfc4766e306b4fd16a429872ca5407e1` |
| 9 | `theorem` | [liftLie_apply](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieTensorProductCoeLinearMapMap.lean/declarations/liftlie-apply.md) | 128 | `result-track:c695653695684706eb8b2c09c91b657995a16a1cc92f24ab87d26a2b5a3393cb` |
| 10 | `def` | [map](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieTensorProductCoeLinearMapMap.lean/declarations/map.md) | 137 | `declaration-track:827f62c0155adb07f2628c06f6788bedd33c459e6fa4bc3dd71815fc4cdadcaa` |
| 11 | `theorem` | [coe_linearMap_map](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieTensorProductCoeLinearMapMap.lean/declarations/coe-linearmap-map.md) | 150 | `result-track:1f490557d4711530890daf90fc64297773a00aa67bcb5929b80294a9745a1f17` |
| 12 | `theorem` | [map_tmul](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieTensorProductCoeLinearMapMap.lean/declarations/map-tmul.md) | 156 | `result-track:1e82e1fc3272ff23cbd274d49bcb5fde55e90845dc7642c6d828bdcfee20bd12` |
| 13 | `def` | [mapIncl](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieTensorProductCoeLinearMapMap.lean/declarations/mapincl.md) | 162 | `declaration-track:c2f48c6afa819c449d40bb35bef8f40edf8e7eb99790e3e9a405eda6fe37a602` |
| 14 | `theorem` | [mapIncl_def](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieTensorProductCoeLinearMapMap.lean/declarations/mapincl-def.md) | 167 | `result-track:d8f7d278d91a8be508d284b5ccd5c399c2dddddbb8708da6a7469be5edc3ab5d` |
| 15 | `def` | [toModuleHom](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieTensorProductCoeLinearMapMap.lean/declarations/tomodulehom.md) | 187 | `declaration-track:342df0e6a1b89c277d4b9d3af48c1e21a85fe1c68911318225a6b52b8197b83c` |
| 16 | `theorem` | [toModuleHom_apply](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieTensorProductCoeLinearMapMap.lean/declarations/tomodulehom-apply.md) | 194 | `result-track:0aa7640f7659a20ef2aa717c44ed40a08e29ff8d4b93e02aa64cc9593778f090` |
| 17 | `theorem` | [lieIdeal_oper_eq_tensor_map_range](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/LieTensorProductCoeLinearMapMap.lean/declarations/lieideal-oper-eq-tensor-map-range.md) | 220 | `result-track:1e4c4c34fdbc9279f38013168ee2db324dc928546a7300d6682700ca2dfbc400` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=2834391abbee9214f2ba9118274a6f6b8a1b5dc0b6a30b10a8c0359ff9259ffa -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/TensorProduct/Varianteb15e73b5e6d46cf1b913a8749a17cececee7ff41656af6d39ad330b0b4950e7.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/TensorProduct/Varianteb15e73b5e6d46cf1b913a8749a17cececee7ff41656af6d39ad330b0b4950e7.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
