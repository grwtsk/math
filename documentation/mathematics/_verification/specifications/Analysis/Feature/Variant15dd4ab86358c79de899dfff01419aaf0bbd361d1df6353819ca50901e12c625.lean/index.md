# Verification target: GRWTSK.Analysis.Feature.Variant15dd4ab86358c79de899dfff01419aaf0bbd361d1df6353819ca50901e12c625

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2db23e61780f4d15ea8c85016c6f01aa9ca2baf8",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/Feature/Variant15dd4ab86358c79de899dfff01419aaf0bbd361d1df6353819ca50901e12c625.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../Analysis/Feature/Variant15dd4ab86358c79de899dfff01419aaf0bbd361d1df6353819ca50901e12c625.lean/index.md) · [Full source](../../../../../Analysis/Feature/Variant15dd4ab86358c79de899dfff01419aaf0bbd361d1df6353819ca50901e12c625.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2db23e61780f4d15ea8c85016c6f01aa9ca2baf8`.

Source path: `GRWTSK/Analysis/Feature/Variant15dd4ab86358c79de899dfff01419aaf0bbd361d1df6353819ca50901e12c625.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/Feature/Variant15dd4ab86358c79de899dfff01419aaf0bbd361d1df6353819ca50901e12c625.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.Kernel.Core` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Complex.Basic` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [scalarFeatureKernel](../../../../../Analysis/Feature/Variant15dd4ab86358c79de899dfff01419aaf0bbd361d1df6353819ca50901e12c625.lean/declarations/scalarfeaturekernel--55ac272996827bae3d91f80b.md) | 24 | `declaration-track:55ac272996827bae3d91f80b15cba6c25292983d44afe97c8512afa303a53ac1` |
| 2 | `theorem` | [scalarFeatureKernel_apply](../../../../../Analysis/Feature/Variant15dd4ab86358c79de899dfff01419aaf0bbd361d1df6353819ca50901e12c625.lean/declarations/scalarfeaturekernel-apply--4c12fa31e91c9262262000ff.md) | 59 | `result-track:4c12fa31e91c9262262000ffb453b791e6171d5b675f0bcec493f27764b1812d` |
| 3 | `def` | [finiteFeatureKernel](../../../../../Analysis/Feature/Variant15dd4ab86358c79de899dfff01419aaf0bbd361d1df6353819ca50901e12c625.lean/declarations/finitefeaturekernel--f85f16982ba7373dfc6fdc8e.md) | 65 | `declaration-track:f85f16982ba7373dfc6fdc8e28d9e53b45b7ed6c693486b49a89046c55536a8d` |
| 4 | `theorem` | [finiteFeatureKernel_apply](../../../../../Analysis/Feature/Variant15dd4ab86358c79de899dfff01419aaf0bbd361d1df6353819ca50901e12c625.lean/declarations/finitefeaturekernel-apply--0b1c533b5f80af0b659d3f31.md) | 75 | `result-track:0b1c533b5f80af0b659d3f31bbb0c47062a56d5476a6774ff49e7d7942a84ec5` |
| 5 | `structure` | [FiniteFeatureFamily](../../../../../Analysis/Feature/Variant15dd4ab86358c79de899dfff01419aaf0bbd361d1df6353819ca50901e12c625.lean/declarations/finitefeaturefamily--f827bed12f98d0d1a4ee2646.md) | 87 | `declaration-track:f827bed12f98d0d1a4ee264697cd314d9e750dcbd7fefb94aa47ec3c78bb62bc` |
| 6 | `def` | [FiniteFeatureFamily.kernel](../../../../../Analysis/Feature/Variant15dd4ab86358c79de899dfff01419aaf0bbd361d1df6353819ca50901e12c625.lean/declarations/finitefeaturefamily-kernel--2f4712b25e82d04524e6bc3c.md) | 92 | `declaration-track:2f4712b25e82d04524e6bc3c408c7685ccd2cb54f6c3152066ce127a68bf4371` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=55f7e425db9b2f30bf3ec7eeec106c569451b8cdbd70409ce27e886b907c69d9 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/Feature/Variant15dd4ab86358c79de899dfff01419aaf0bbd361d1df6353819ca50901e12c625.lean","GRWTSK/_verification/specifications/Analysis/Feature/Variant15dd4ab86358c79de899dfff01419aaf0bbd361d1df6353819ca50901e12c625.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
