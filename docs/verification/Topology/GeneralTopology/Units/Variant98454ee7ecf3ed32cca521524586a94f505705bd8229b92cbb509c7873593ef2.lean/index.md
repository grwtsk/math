# Verification target: GRWTSK.Topology.GeneralTopology.Units.Variant98454ee7ecf3ed32cca521524586a94f505705bd8229b92cbb509c7873593ef2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "33ee7dd738c7bf807229094063138eb89831ed84",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Units/Variant98454ee7ecf3ed32cca521524586a94f505705bd8229b92cbb509c7873593ef2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Units/Variant98454ee7ecf3ed32cca521524586a94f505705bd8229b92cbb509c7873593ef2.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Units/Variant98454ee7ecf3ed32cca521524586a94f505705bd8229b92cbb509c7873593ef2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `33ee7dd738c7bf807229094063138eb89831ed84`.

Source path: `GRWTSK/Topology/GeneralTopology/Units/Variant98454ee7ecf3ed32cca521524586a94f505705bd8229b92cbb509c7873593ef2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Units/Variant98454ee7ecf3ed32cca521524586a94f505705bd8229b92cbb509c7873593ef2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Normed.Ring.Units` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Algebra.Spectrum.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.ContinuousMap.Algebra` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [unitsLift](../../../../../mathematics/Topology/GeneralTopology/Units/Variant98454ee7ecf3ed32cca521524586a94f505705bd8229b92cbb509c7873593ef2.lean/declarations/unitslift--a8975421fdab254774e5545f.md) | 33 | `declaration-track:a8975421fdab254774e5545f857977c8ddb5616e7361c58ad9743ffe18486efe` |
| 2 | `lemma` | [unitsLift_apply_inv_apply](../../../../../mathematics/Topology/GeneralTopology/Units/Variant98454ee7ecf3ed32cca521524586a94f505705bd8229b92cbb509c7873593ef2.lean/declarations/unitslift-apply-inv-apply--2f654400e2c42e361b4bd2e8.md) | 50 | `result-track:2f654400e2c42e361b4bd2e8449148ffa80ced650f75704d4e5231b5c2bfbfe4` |
| 3 | `lemma` | [unitsLift_symm_apply_apply_inv'](../../../../../mathematics/Topology/GeneralTopology/Units/Variant98454ee7ecf3ed32cca521524586a94f505705bd8229b92cbb509c7873593ef2.lean/declarations/unitslift-symm-apply-apply-inv--07375d09589f79d056a8bcca.md) | 55 | `result-track:07375d09589f79d056a8bcca4e71b2452131118e1f9343dd1f94304e4f11b43e` |
| 4 | `theorem` | [continuous_isUnit_unit](../../../../../mathematics/Topology/GeneralTopology/Units/Variant98454ee7ecf3ed32cca521524586a94f505705bd8229b92cbb509c7873593ef2.lean/declarations/continuous-isunit-unit--bebd81f19d1882cb3b71ff87.md) | 65 | `result-track:bebd81f19d1882cb3b71ff8704cdc5038df7705c250e5595955ee54b88b32fdd` |
| 5 | `def` | [unitsOfForallIsUnit](../../../../../mathematics/Topology/GeneralTopology/Units/Variant98454ee7ecf3ed32cca521524586a94f505705bd8229b92cbb509c7873593ef2.lean/declarations/unitsofforallisunit--9f55acbee955d50f6edcc937.md) | 79 | `declaration-track:9f55acbee955d50f6edcc9372779c14f7034ac67d45a5d1d538c3dcd3828962d` |
| 6 | `instance` | [canLift](../../../../../mathematics/Topology/GeneralTopology/Units/Variant98454ee7ecf3ed32cca521524586a94f505705bd8229b92cbb509c7873593ef2.lean/declarations/canlift--07b53ae468e4bca4746167c3.md) | 83 | `declaration-track:07b53ae468e4bca4746167c33b94e39ad012584e8f4eb8b0becb3cb5ac4bc450` |
| 7 | `theorem` | [isUnit_iff_forall_isUnit](../../../../../mathematics/Topology/GeneralTopology/Units/Variant98454ee7ecf3ed32cca521524586a94f505705bd8229b92cbb509c7873593ef2.lean/declarations/isunit-iff-forall-isunit--de25bbc1e82fe9adfacf1085.md) | 88 | `result-track:de25bbc1e82fe9adfacf10852e152111662dd05a57d4a942c86dc2df6e1b4724` |
| 8 | `theorem` | [isUnit_iff_forall_ne_zero](../../../../../mathematics/Topology/GeneralTopology/Units/Variant98454ee7ecf3ed32cca521524586a94f505705bd8229b92cbb509c7873593ef2.lean/declarations/isunit-iff-forall-ne-zero--5cd5e724e8c30f81422d3008.md) | 98 | `result-track:5cd5e724e8c30f81422d30085cdb209666333742b0e7a4020d5b0101ab0922f0` |
| 9 | `theorem` | [spectrum_eq_preimage_range](../../../../../mathematics/Topology/GeneralTopology/Units/Variant98454ee7ecf3ed32cca521524586a94f505705bd8229b92cbb509c7873593ef2.lean/declarations/spectrum-eq-preimage-range--b97588e769151584191c3ecb.md) | 101 | `result-track:b97588e769151584191c3ecb5ebf27fd8eace66fa45f43b64e575f13525c64c4` |
| 10 | `theorem` | [spectrum_eq_range](../../../../../mathematics/Topology/GeneralTopology/Units/Variant98454ee7ecf3ed32cca521524586a94f505705bd8229b92cbb509c7873593ef2.lean/declarations/spectrum-eq-range--212f1416f7a2a17421543fb2.md) | 109 | `result-track:212f1416f7a2a17421543fb29b215b6634369cc2bdbbd796297058e41856b164` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
