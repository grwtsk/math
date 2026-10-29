# Verification target: Group Instances Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8d2ce610938f028ee3888da55c4e944a1fd480ba",
  "lexical_observation_count": 30,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/GroupInstances/Variant05537dcd0c6144e4a67c42c4252c66e82e86cd9bca3c8beb241741a31462aa5b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupInstancesNamespaced.lean/index.md) · [Full source](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupInstancesNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8d2ce610938f028ee3888da55c4e944a1fd480ba`.

Source path: `GRWTSK/Algebra/GroupTheory/GroupInstances/Variant05537dcd0c6144e4a67c42c4252c66e82e86cd9bca3c8beb241741a31462aa5b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/GroupInstances/Variant05537dcd0c6144e4a67c42c4252c66e82e86cd9bca3c8beb241741a31462aa5b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.GroupPower.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.Basic` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [MonoidHom.commMonoid](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupInstancesNamespaced.lean/declarations/monoidhom-commmonoid.md) | 40 | `declaration-track:4c07130988cac0afc7a323b93ee5959c01a73481c6159de6ac860b928e227617` |
| 2 | `instance` | [MonoidHom.commGroup](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupInstancesNamespaced.lean/declarations/monoidhom-commgroup.md) | 60 | `declaration-track:43fa07009b4b1cce37f4a2d276b0c62010452a8ff841bce0440c2be130d2ef7b` |
| 3 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupInstancesNamespaced.lean/declarations/instance.md) | 83 | `declaration-track:3fde6e297bfca7a2e2cf8308fbda984de6ebc4330ed77f1148833c561d739ddc` |
| 4 | `instance` | [AddMonoid.End.semiring](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupInstancesNamespaced.lean/declarations/addmonoid-end-semiring.md) | 86 | `declaration-track:c22f95176c844143939472e5e26ae38bb78e5c4c16bc16296f84ae9800e9ef53` |
| 5 | `theorem` | [AddMonoid.End.natCast_apply](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupInstancesNamespaced.lean/declarations/addmonoid-end-natcast-apply.md) | 98 | `result-track:ac6dd1ac32a7b6b6cac5514b37094036b608a1547ac24de003b8ca521b5f0239` |
| 6 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupInstancesNamespaced.lean/declarations/instance-source-edition-2.md) | 103 | `declaration-track:57289da4d08ecaf6b9737f18fc41e13c00a2f23d799c5b29efbbc934edac292c` |
| 7 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupInstancesNamespaced.lean/declarations/instance-source-edition-3.md) | 106 | `declaration-track:8a8516d6a250e2249b0dbd1b39f64eb91b2f555f38d6948e6bd265014bbbc6e6` |
| 8 | `theorem` | [AddMonoid.End.int_cast_apply](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupInstancesNamespaced.lean/declarations/addmonoid-end-int-cast-apply.md) | 114 | `result-track:b8c8f77ba65d490c6c3b3c090f768e7f41aacbb6f523a6ae2143362a99eb97e0` |
| 9 | `theorem` | [ext_iff₂](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupInstancesNamespaced.lean/declarations/ext-iff.md) | 130 | `result-track:625ca5bafa306387d16dbf788cebbf7bc97397227795d74737053a787715f16e` |
| 10 | `def` | [flip](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupInstancesNamespaced.lean/declarations/flip.md) | 138 | `declaration-track:117be6ad082e005bb8f0b4030fe73f81a9ea11bb1c1ceacd9dd5e8a2938b46db` |
| 11 | `theorem` | [flip_apply](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupInstancesNamespaced.lean/declarations/flip-apply.md) | 150 | `result-track:5f7946625c510af0c16d139c9366c77345f320db6871b97cfa7fb115d32aac09` |
| 12 | `theorem` | [map_one₂](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupInstancesNamespaced.lean/declarations/map-one.md) | 157 | `result-track:b60358ef9568a035ce7ff3c862b5c0069bfc675a62aaa09130d9ced215cbcb03` |
| 13 | `theorem` | [map_mul₂](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupInstancesNamespaced.lean/declarations/map-mul.md) | 164 | `result-track:ba8b4c09d67a79a0fa9da4a5cab9017955b5f0860ed5e8d4a354f58bcce226f2` |
| 14 | `theorem` | [map_inv₂](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupInstancesNamespaced.lean/declarations/map-inv.md) | 171 | `result-track:737d12c58015cbeabd0bd73299310bd08b1f2689b6805c2bd23d82e98da15da4` |
| 15 | `theorem` | [map_div₂](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupInstancesNamespaced.lean/declarations/map-div.md) | 178 | `result-track:5c9e51078168ddc850009a6808a50ef2371872f7a545b884a17111ffa3b301ad` |
| 16 | `def` | [eval](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupInstancesNamespaced.lean/declarations/eval.md) | 189 | `declaration-track:77bb7376aa46e613bb092117c575c2de07e6cb4c69828b54aa4e995f38a0fdfd` |
| 17 | `def` | [compHom'](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupInstancesNamespaced.lean/declarations/comphom-source-edition-2.md) | 203 | `declaration-track:f40be3a7bce4a88cd0ad1376e51a6cf0379dafeff01f4ad58c2f151dc7be222b` |
| 18 | `def` | [compHom](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupInstancesNamespaced.lean/declarations/comphom.md) | 220 | `declaration-track:68416a103127177ab496d5372f9566e382e46bcb39306e0e3dabd8f779de6f40` |
| 19 | `def` | [flipHom](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupInstancesNamespaced.lean/declarations/fliphom.md) | 238 | `declaration-track:83528348bbedde8994b695b4c9b8858275e7bbb1e1eef91bd66ae348b8478f3e` |
| 20 | `def` | [compl₂](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupInstancesNamespaced.lean/declarations/compl.md) | 257 | `declaration-track:cfb2e43ac9e9b23fc7a4f90e01c413b623b4f0a92a0e091010ff02b6d073f408` |
| 21 | `theorem` | [compl₂_apply](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupInstancesNamespaced.lean/declarations/compl-apply.md) | 264 | `result-track:f6dea11a2fafd7028f324c4198a4a3d121e005ef39cdffe8b57701b21b8f5a05` |
| 22 | `def` | [compr₂](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupInstancesNamespaced.lean/declarations/compr.md) | 275 | `declaration-track:8105ec14d7c1256154e6b616bfaf4870452e152c3dbe95b6e73ab7c38ab83ac5` |
| 23 | `theorem` | [compr₂_apply](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupInstancesNamespaced.lean/declarations/compr-apply.md) | 282 | `result-track:b1ff0385d31a2b5c84a3c142f0ee7ee7f56b7cc45c12ec9e6ec8845c7c644bc0` |
| 24 | `def` | [AddMonoidHom.mul](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupInstancesNamespaced.lean/declarations/addmonoidhom-mul.md) | 310 | `declaration-track:c041df59f57a27ca58082cddcd979ed1abb52f3745c6c7d8bcb3e7aacfe9905a` |
| 25 | `theorem` | [AddMonoidHom.mul_apply](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupInstancesNamespaced.lean/declarations/addmonoidhom-mul-apply.md) | 316 | `result-track:98dc0fccb18a6a9b913fcf679a7be9d246a330707cc921a3ec4bb66f96107153` |
| 26 | `theorem` | [AddMonoidHom.coe_mul](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupInstancesNamespaced.lean/declarations/addmonoidhom-coe-mul.md) | 321 | `result-track:2cb00fe7d4840a0ae710b40215f44fb78351e9b2b8230eeb0a0a2a348feee9ec` |
| 27 | `theorem` | [AddMonoidHom.coe_flip_mul](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupInstancesNamespaced.lean/declarations/addmonoidhom-coe-flip-mul.md) | 326 | `result-track:e5b543cc175104b67535d785ad68d26cc272b98ae8cc7c025916778c908c2aae` |
| 28 | `theorem` | [AddMonoidHom.map_mul_iff](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupInstancesNamespaced.lean/declarations/addmonoidhom-map-mul-iff.md) | 335 | `result-track:ae430794b87dc29b26032f2b1fefef1c6d29180d4002c3c9e79879f61c095193` |
| 29 | `def` | [AddMonoid.End.mulLeft](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupInstancesNamespaced.lean/declarations/addmonoid-end-mulleft.md) | 343 | `declaration-track:1823338a278b0befb0e86f37cc2273839c995e6a6da05985c0b5de8c764eea1e` |
| 30 | `def` | [AddMonoid.End.mulRight](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupInstancesNamespaced.lean/declarations/addmonoid-end-mulright.md) | 350 | `declaration-track:3cf866a94f117a361613505bde12e5ba99350f17e7ff0f37cdbcebdade7776f7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c4993fdb7a73f95ff4ac570e8b7fe94e42b9130ffcff15026873ea58cd4d89be -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/GroupInstances/Variant05537dcd0c6144e4a67c42c4252c66e82e86cd9bca3c8beb241741a31462aa5b.lean","GRWTSK/_verification/specifications/Algebra/GroupTheory/GroupInstances/Variant05537dcd0c6144e4a67c42c4252c66e82e86cd9bca3c8beb241741a31462aa5b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
